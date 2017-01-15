#!/usr/bin/env escript
%%!
%-*-Mode:erlang;coding:utf-8;tab-width:4;c-basic-offset:4;indent-tabs-mode:()-*-
% ex: set ft=erlang fenc=utf-8 sts=4 ts=4 sw=4 et nomod:

-module(create_module).
-vsn("0.1.0").

-mode(compile).

-export([main/1]).

-record(state,
        {
            version_unicode = undefined :: undefined | nonempty_string(),
            data_directory = "." :: string()
        }).

-spec main(Arguments :: list(string())) ->
    no_return().

main(Arguments) ->
    #state{version_unicode = VersionUnicode,
           data_directory = Directory} = main_arguments(Arguments),
    true = is_list(VersionUnicode) andalso is_integer(hd(VersionUnicode)),
    
    ClusterPath = filename:join(Directory, "GraphemeBreakProperty.txt"),
    true = filelib:is_file(ClusterPath),
    DataPath = filename:join(Directory, "UnicodeData.txt"),
    true = filelib:is_file(DataPath),
    SpecialPath = filename:join(Directory, "SpecialCasing.txt"),
    true = filelib:is_file(SpecialPath),
    PropPath = filename:join(Directory, "WhiteSpace.txt"),
    true = filelib:is_file(PropPath),
    ExclusionsPath = filename:join(Directory, "CompositionExclusions.txt"),
    true = filelib:is_file(ExclusionsPath),

    Cluster = cluster(ClusterPath),
    Module = [o_header(VersionUnicode),
              o_f_unicode_next_grapheme_size(Cluster),
              o_f_unicode_next_hangul_l_size(Cluster),
              o_f_unicode_next_hangul_v_size(Cluster),
              o_f_unicode_next_hangul_t_size(Cluster),
              o_f_unicode_next_regional_size(Cluster),
              o_f_unicode_next_extend_size(Cluster),
              o_f_unicode_next_prepend_size(Cluster),
              o_f_unicode_graphemes(),
              o_f_unicode_length(),
              o_f_unicode_split_at(),
              o_f_unicode_next_codepoint(),
              o_f_unicode_codepoints()],
    io:format("~s~n", [Module]),

    exit_code(0).

cluster(ClusterPath) ->
    RegexStr = "(?:^([0-9A-F]+)(?:\\.\\.([0-9A-F]+))?)\\s+;\\s(\\w+)",
    {ok, Regex} = re:compile(RegexStr, [multiline]),
    {ok, ClusterFile} = file:open(ClusterPath, [read, binary, raw, read_ahead]),
    cluster_read(#{}, ClusterFile, Regex).

cluster_read(Acc, ClusterFile, Regex) ->
    case file:read_line(ClusterFile) of
        {ok, Line} ->
            NewAcc = case re:run(Line, Regex,
                                 [{capture, all_but_first, list}]) of
                nomatch ->
                    Acc;
                {match, ["D800", "DFFF", _Class]} ->
                    Acc;
                {match, [First, "", Class]} ->
                    Codepoint = erlang:list_to_integer(First, 16),
                    maps:update_with(Class, fun(OldCodepoints) ->
                        [Codepoint | OldCodepoints]
                    end, [Codepoint], Acc);
                {match, [First, Last, Class]} ->
                    Codepoints = lists:seq(erlang:list_to_integer(First, 16),
                                           erlang:list_to_integer(Last, 16)),
                    maps:update_with(Class, fun(OldCodepoints) ->
                        Codepoints ++ OldCodepoints
                    end, Codepoints, Acc)
            end,
            cluster_read(NewAcc, ClusterFile, Regex);
        eof ->
            Acc
    end.

main_arguments(Arguments) ->
    main_arguments(Arguments, #state{}).

main_arguments([], State) ->
    State;
main_arguments(["-d", Directory | Arguments], State) ->
    main_arguments(Arguments, State#state{data_directory = Directory});
main_arguments(["-h" | _], _) ->
    io:format(help(), [filename:basename(?FILE)]),
    exit_code(0);
main_arguments(["-V" | _], _) ->
    version_info(),
    exit_code(0);
main_arguments(["-" ++ InvalidParameter | _], _) ->
    erlang:error({invalid_parameter, InvalidParameter});
main_arguments([VersionUnicode | Arguments], State) ->
    main_arguments(Arguments, State#state{version_unicode = VersionUnicode}).

o_header(VersionUnicode) ->
    ["%-*-Mode:erlang;coding:utf-8;tab-width:4;c-basic-offset:4;indent-tabs-mode:()-*-
% ex: set ft=erlang fenc=utf-8 sts=4 ts=4 sw=4 et nomod:
-module(unicode_data).
",
     o_vsn(VersionUnicode), "
% exports from module 'Elixir.String.Unicode' from processing unicode.ex
-export([codepoints/1,
         graphemes/1,
         length/1,
         next_codepoint/1,
         next_grapheme_size/1,
         split_at/2]).
"].

o_vsn(VersionUnicode) ->
    Timestamp = os:timestamp(),
    {_, _, MicroSeconds} = Timestamp,
    {{DateYYYY, DateMM, DateDD},
     {TimeHH, TimeMM, TimeSS}} = calendar:now_to_universal_time(Timestamp),
    io_lib:format("-vsn(\"~s"
                         "(~4..0w-~2..0w-~2..0wT"
                          "~2..0w:~2..0w:~2..0w.~6..0wZ)\").~n",
                  [VersionUnicode,
                   DateYYYY, DateMM, DateDD,
                   TimeHH, TimeMM, TimeSS, MicroSeconds]).

codepoint_to_str_size(I) ->
    L = erlang:binary_to_list(<<I/utf8>>),
    {io_lib:format("~w", [L]), erlang:integer_to_list(length(L))}.

o_f_unicode_next_grapheme_size(Cluster) ->
    [% Don't break CRLF
     "
next_grapheme_size([$\\r, $\\n | Rest]) ->
    {2, Rest};",
     % Break on control
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_grapheme_size(", CodepointStr, " ++ Rest) ->
    {", CodepointSize, ", Rest};"]
     end, maps:get("CR", Cluster) ++
          maps:get("LF", Cluster) ++
          maps:get("Control", Cluster)),
     % Break on Prepend*
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_grapheme_size(", CodepointStr, " ++ Rest) ->
    next_prepend_size(Rest, ", CodepointSize, ");"]
     end, maps:get("Prepend", Cluster)),
     % Handle Hangul L
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_grapheme_size(", CodepointStr, " ++ Rest) ->
    next_hangul_l_size(Rest, ", CodepointSize, ");"]
     end, maps:get("L", Cluster)),
     % Handle Hangul T
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_grapheme_size(", CodepointStr, " ++ Rest) ->
    next_hangul_t_size(Rest, ", CodepointSize, ");"]
     end, maps:get("T", Cluster)),
     % Handle Regional
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_grapheme_size(", CodepointStr, " ++ Rest) ->
    next_regional_size(Rest, ", CodepointSize, ");"]
     end, maps:get("Regional_Indicator", Cluster)),
     % Handle extended entries
     "
next_grapheme_size([Ex | Rest]) ->
    if
        Ex =< 127 ->
            next_extend_size(Rest, 1);
        Ex =< 2047 ->
            next_extend_size(Rest, 2);
        Ex =< 65535 ->
            next_extend_size(Rest, 3);
        true ->
            next_extend_size(Rest, 4)
    end;
next_grapheme_size([]) ->
    undefined.
"].

o_f_unicode_next_hangul_l_size(Cluster) ->
    [% Handle Hangul L
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_hangul_l_size(", CodepointStr, " ++ Rest, Size) ->
    next_hangul_l_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("L", Cluster)),
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_hangul_l_size(", CodepointStr, " ++ Rest, Size) ->
    next_hangul_v_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("LV", Cluster)),
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_hangul_l_size(", CodepointStr, " ++ Rest, Size) ->
    next_hangul_t_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("LVT", Cluster)),
     "
next_hangul_l_size(Rest, Size) ->
    next_hangul_v_size(Rest, Size).
"].

o_f_unicode_next_hangul_v_size(Cluster) ->
    [% Handle Hangul V
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_hangul_v_size(", CodepointStr, " ++ Rest, Size) ->
    next_hangul_v_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("V", Cluster)),
     "
next_hangul_v_size(Rest, Size) ->
    next_hangul_t_size(Rest, Size).
"].

o_f_unicode_next_hangul_t_size(Cluster) ->
    [% Handle Hangul T
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_hangul_t_size(", CodepointStr, " ++ Rest, Size) ->
    next_hangul_t_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("T", Cluster)),
     "
next_hangul_t_size(Rest, Size) ->
    next_extend_size(Rest, Size).
"].

o_f_unicode_next_regional_size(Cluster) ->
    [% Handle regional
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_regional_size(", CodepointStr, " ++ Rest, Size) ->
    next_regional_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("Regional_Indicator", Cluster)),
     "
next_regional_size(Rest, Size) ->
    next_extend_size(Rest, Size).
"].

o_f_unicode_next_extend_size(Cluster) ->
    [% Handle Extend+SpacingMark
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_extend_size(", CodepointStr, " ++ Rest, Size) ->
    next_extend_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("Extend", Cluster) ++
          maps:get("SpacingMark", Cluster)),
     "
next_extend_size(Rest, Size) ->
    {Size, Rest}.
"].

o_f_unicode_next_prepend_size(Cluster) ->
    [% Handle Prepend
     lists:map(fun(Codepoint) ->
         {CodepointStr, CodepointSize} = codepoint_to_str_size(Codepoint),
         ["
next_prepend_size(", CodepointStr, " ++ Rest, Size) ->
    next_prepend_size(Rest, Size + ", CodepointSize, ");"]
     end, maps:get("Prepend", Cluster)),
     "
next_prepend_size(Rest, Size) ->
    {Size, Rest}.
"].

o_f_unicode_graphemes() ->
    "
graphemes(L) when is_list(L) ->
    graphemes_do(next_grapheme_size(L), L).

graphemes_do({Size, Rest}, L) ->
    [lists:sublist(L, Size) | graphemes_do(next_grapheme_size(Rest), Rest)];
graphemes_do(undefined, _) ->
    [].
".

o_f_unicode_length() ->
    "
length(L) when is_list(L) ->
    length_do(next_grapheme_size(L), 0).

length_do({_, Rest}, Acc) ->
    length_do(next_grapheme_size(Rest), Acc + 1);
length_do(undefined, Acc) ->
    Acc.
".

o_f_unicode_split_at() ->
    "
split_at(L, Pos) when is_list(L) ->
    split_at_do(L, 0, Pos, 0).

split_at_do(L, Acc, DesiredPos, CurrentPos) when DesiredPos > CurrentPos ->
    case next_grapheme_size(L) of
        {Count, Rest} ->
            split_at_do(Rest, Acc + Count, DesiredPos, CurrentPos + 1);
        undefined ->
            {Acc, undefined}
    end;
split_at_do(L, Acc, DesiredPos, DesiredPos) ->
    {Acc, L}.
".

o_f_unicode_next_codepoint() ->
    "
next_codepoint([CP | Rest]) ->
    {CP, Rest};
next_codepoint([]) ->
    undefined.
".

o_f_unicode_codepoints() ->
    "
% returns L
codepoints(L) when is_list(L) ->
    codepoints_do(next_codepoint(L)).

codepoints_do({C, Rest}) ->
    [C | codepoints_do(next_codepoint(Rest))];
codepoints_do(undefined) ->
    [].
".

exit_code(ExitCode) when is_integer(ExitCode) ->
    erlang:halt(ExitCode, [{flush, true}]).

version_info() ->
    Version = case ?MODULE:module_info(attributes) of
        [] ->
            "UNKNOWN!";
        Attributes ->
            VersionListN = lists:foldr(fun(Attribute, VersionList0) ->
                case Attribute of
                    {vsn, VSN} ->
                        VSN ++ VersionList0;
                    _ ->
                        VersionList0
                end
            end, [], Attributes),
            io_lib:format("~p", [VersionListN])
    end,
    {ok, Data} = file:read_file(?FILE),
    FileHash = erlang:phash2(Data),
    io:format("~s version ~s (~w)~n",
              [filename:basename(?FILE),
               Version, FileHash]).

help() ->
"Usage ~s VERSION

  -d DIRECTORY    Set the data directory for text file inputs
  -h              List available command line flags
  -V              Print version information
".

