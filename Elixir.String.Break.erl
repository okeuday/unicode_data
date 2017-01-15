-compile(no_auto_import).

-file("/home/george/installed/packages/elixir-1.4.0/"
      "lib/elixir/unicode/unicode.ex",
      360).

-module('Elixir.String.Break').

-export(['__info__'/1, decompose/2, split/1,
	 trim_leading/1, trim_trailing/1]).

-spec '__info__'(attributes | compile | exports |
		 functions | macros | md5 | module |
		 native_addresses) -> atom() |
				      [{atom(), any()} |
				       {atom(), byte(), integer()}].

'__info__'(functions) ->
    [{decompose, 2}, {split, 1}, {trim_leading, 1},
     {trim_trailing, 1}];
'__info__'(macros) -> [];
'__info__'(Einfo) ->
    erlang:get_module_info('Elixir.String.Break', Einfo).

decompose(Eentries@1, Emap@1) ->
    lists:reverse('Elixir.Enum':reduce(Eentries@1, [],
				       fun (Eentry@1, _E@1) ->
					       [case Emap@1 of
						  #{Eentry@1 := Ematch@1} ->
						      decompose(Ematch@1,
								Emap@1);
						  #{} -> <<Eentry@1/utf8>>
						end
						| _E@1]
				       end)).

do_trim_trailing_l(<<"ã\200\200">>) -> -3;
do_trim_trailing_l(<<"â\201\237">>) -> -3;
do_trim_trailing_l(<<"â\200¯">>) -> -3;
do_trim_trailing_l(<<"â\200©">>) -> -3;
do_trim_trailing_l(<<"â\200¨">>) -> -3;
do_trim_trailing_l(<<"â\200\200">>) -> -3;
do_trim_trailing_l(<<"â\200\201">>) -> -3;
do_trim_trailing_l(<<"â\200\202">>) -> -3;
do_trim_trailing_l(<<"â\200\203">>) -> -3;
do_trim_trailing_l(<<"â\200\204">>) -> -3;
do_trim_trailing_l(<<"â\200\205">>) -> -3;
do_trim_trailing_l(<<"â\200\206">>) -> -3;
do_trim_trailing_l(<<"â\200\207">>) -> -3;
do_trim_trailing_l(<<"â\200\210">>) -> -3;
do_trim_trailing_l(<<"â\200\211">>) -> -3;
do_trim_trailing_l(<<"â\200\212">>) -> -3;
do_trim_trailing_l(<<"á\232\200">>) -> -3;
do_trim_trailing_l(<<_E, "Â ">>) -> -2;
do_trim_trailing_l(<<_E, "Â\205">>) -> -2;
do_trim_trailing_l(<<" ", " ", " ">>) -> -3;
do_trim_trailing_l(<<_E, " ", " ">>) -> -2;
do_trim_trailing_l(<<_E, _E, " ">>) -> -1;
do_trim_trailing_l(<<"\t", "\t", "\t">>) -> -3;
do_trim_trailing_l(<<_E, "\t", "\t">>) -> -2;
do_trim_trailing_l(<<_E, _E, "\t">>) -> -1;
do_trim_trailing_l(<<"\n", "\n", "\n">>) -> -3;
do_trim_trailing_l(<<_E, "\n", "\n">>) -> -2;
do_trim_trailing_l(<<_E, _E, "\n">>) -> -1;
do_trim_trailing_l(<<"\v", "\v", "\v">>) -> -3;
do_trim_trailing_l(<<_E, "\v", "\v">>) -> -2;
do_trim_trailing_l(<<_E, _E, "\v">>) -> -1;
do_trim_trailing_l(<<"\f", "\f", "\f">>) -> -3;
do_trim_trailing_l(<<_E, "\f", "\f">>) -> -2;
do_trim_trailing_l(<<_E, _E, "\f">>) -> -1;
do_trim_trailing_l(<<"\r", "\r", "\r">>) -> -3;
do_trim_trailing_l(<<_E, "\r", "\r">>) -> -2;
do_trim_trailing_l(<<_E, _E, "\r">>) -> -1;
do_trim_trailing_l(_E) -> 0.

do_trim_trailing_s(<<"Â ">>) -> <<>>;
do_trim_trailing_s(<<"Â\205">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, " ">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<" ">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, "\t">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<"\t">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, "\n">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<"\n">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, "\v">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<"\v">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, "\f">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<"\f">>) -> <<>>;
do_trim_trailing_s(<<Ex@1, "\r">>) ->
    do_trim_trailing_s(<<Ex@1>>);
do_trim_trailing_s(<<"\r">>) -> <<>>;
do_trim_trailing_s(Eo@1) -> Eo@1.

split(Estring@1) ->
    lists:reverse('Elixir.Enum':reduce(binary:split(Estring@1,
						    [<<"ã\200\200">>,
						     <<"â\201\237">>,
						     <<"â\200©">>, <<"â\200¨">>,
						     <<"â\200\200">>,
						     <<"â\200\201">>,
						     <<"â\200\202">>,
						     <<"â\200\203">>,
						     <<"â\200\204">>,
						     <<"â\200\205">>,
						     <<"â\200\206">>,
						     <<"â\200\210">>,
						     <<"â\200\211">>,
						     <<"â\200\212">>,
						     <<"á\232\200">>,
						     <<"Â\205">>, <<" ">>,
						     <<"\t">>, <<"\n">>,
						     <<"\v">>, <<"\f">>,
						     <<"\r">>],
						    [global]),
				       [],
				       fun (Epiece@1, _E@1) ->
					       case Epiece@1 /= <<>> of
						 true -> [Epiece@1 | _E@1];
						 false -> _E@1
					       end
				       end)).

trim_leading(<<"ã\200\200", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\201\237", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200¯", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200©", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200¨", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\200", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\201", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\202", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\203", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\204", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\205", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\206", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\207", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\210", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\211", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"â\200\212", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"á\232\200", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"Â ", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"Â\205", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<" ", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"\t", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"\n", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"\v", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"\f", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<"\r", Erest@1/binary>>) ->
    trim_leading(Erest@1);
trim_leading(<<>>) -> <<>>;
trim_leading(Estring@1)
    when erlang:is_binary(Estring@1) ->
    Estring@1.

trim_trailing(Estring@1)
    when erlang:is_binary(Estring@1) ->
    trim_trailing(Estring@1, erlang:byte_size(Estring@1)).

trim_trailing(Estring@1, Esize@1) when Esize@1 < 3 ->
    do_trim_trailing_s(Estring@1);
trim_trailing(Estring@1, Esize@1) ->
    Etrail@1 = erlang:binary_part(Estring@1, Esize@1, -3),
    case do_trim_trailing_l(Etrail@1) of
      0 -> Estring@1;
      Ex@1 ->
	  trim_trailing(erlang:binary_part(Estring@1, 0,
					   Esize@1 + Ex@1),
			Esize@1 + Ex@1)
    end.