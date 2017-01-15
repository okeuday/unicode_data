-compile(no_auto_import).

-file("/home/george/installed/packages/elixir-1.4.0/"
      "lib/elixir/unicode/unicode.ex",
      299).

-module('Elixir.String.Casing').

-export(['__info__'/1, downcase/1, titlecase_once/1,
	 upcase/1]).

-spec '__info__'(attributes | compile | exports |
		 functions | macros | md5 | module |
		 native_addresses) -> atom() |
				      [{atom(), any()} |
				       {atom(), byte(), integer()}].

'__info__'(functions) ->
    [{downcase, 1}, {titlecase_once, 1}, {upcase, 1}];
'__info__'(macros) -> [];
'__info__'(Einfo) ->
    erlang:get_module_info('Elixir.String.Casing', Einfo).

downcase(Estring@1) -> downcase(Estring@1, <<>>).

downcase(<<"ð\236¤¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¥\203">>);
downcase(<<"ð\236¤ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¥\202">>);
downcase(<<"ð\236¤\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¥\201">>);
downcase(<<"ð\236¤\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¥\200">>);
downcase(<<"ð\236¤\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¿">>);
downcase(<<"ð\236¤\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¾">>);
downcase(<<"ð\236¤\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤½">>);
downcase(<<"ð\236¤\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¼">>);
downcase(<<"ð\236¤\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤»">>);
downcase(<<"ð\236¤\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤º">>);
downcase(<<"ð\236¤\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¹">>);
downcase(<<"ð\236¤\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¸">>);
downcase(<<"ð\236¤\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤·">>);
downcase(<<"ð\236¤\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¶">>);
downcase(<<"ð\236¤\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤µ">>);
downcase(<<"ð\236¤\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤´">>);
downcase(<<"ð\236¤\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤³">>);
downcase(<<"ð\236¤\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤²">>);
downcase(<<"ð\236¤\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤±">>);
downcase(<<"ð\236¤\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤°">>);
downcase(<<"ð\236¤\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¯">>);
downcase(<<"ð\236¤\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤®">>);
downcase(<<"ð\236¤\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤­">>);
downcase(<<"ð\236¤\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¬">>);
downcase(<<"ð\236¤\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤«">>);
downcase(<<"ð\236¤\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤ª">>);
downcase(<<"ð\236¤\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤©">>);
downcase(<<"ð\236¤\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¨">>);
downcase(<<"ð\236¤\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤§">>);
downcase(<<"ð\236¤\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¦">>);
downcase(<<"ð\236¤\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¥">>);
downcase(<<"ð\236¤\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¤">>);
downcase(<<"ð\236¤\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤£">>);
downcase(<<"ð\236¤\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\236¤¢">>);
downcase(<<"ð\221¢¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\237">>);
downcase(<<"ð\221¢¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\236">>);
downcase(<<"ð\221¢½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\235">>);
downcase(<<"ð\221¢¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\234">>);
downcase(<<"ð\221¢»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\233">>);
downcase(<<"ð\221¢º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\232">>);
downcase(<<"ð\221¢¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\231">>);
downcase(<<"ð\221¢¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\230">>);
downcase(<<"ð\221¢·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\227">>);
downcase(<<"ð\221¢¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\226">>);
downcase(<<"ð\221¢µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\225">>);
downcase(<<"ð\221¢´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\224">>);
downcase(<<"ð\221¢³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\223">>);
downcase(<<"ð\221¢²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\222">>);
downcase(<<"ð\221¢±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\221">>);
downcase(<<"ð\221¢°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\220">>);
downcase(<<"ð\221¢¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\217">>);
downcase(<<"ð\221¢®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\216">>);
downcase(<<"ð\221¢­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\215">>);
downcase(<<"ð\221¢¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\214">>);
downcase(<<"ð\221¢«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\213">>);
downcase(<<"ð\221¢ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\212">>);
downcase(<<"ð\221¢©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\211">>);
downcase(<<"ð\221¢¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\210">>);
downcase(<<"ð\221¢§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\207">>);
downcase(<<"ð\221¢¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\206">>);
downcase(<<"ð\221¢¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\205">>);
downcase(<<"ð\221¢¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\204">>);
downcase(<<"ð\221¢£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\203">>);
downcase(<<"ð\221¢¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\202">>);
downcase(<<"ð\221¢¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\201">>);
downcase(<<"ð\221¢ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\221£\200">>);
downcase(<<"ð\220²²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³²">>);
downcase(<<"ð\220²±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³±">>);
downcase(<<"ð\220²°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³°">>);
downcase(<<"ð\220²¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¯">>);
downcase(<<"ð\220²®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³®">>);
downcase(<<"ð\220²­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³­">>);
downcase(<<"ð\220²¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¬">>);
downcase(<<"ð\220²«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³«">>);
downcase(<<"ð\220²ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³ª">>);
downcase(<<"ð\220²©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³©">>);
downcase(<<"ð\220²¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¨">>);
downcase(<<"ð\220²§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³§">>);
downcase(<<"ð\220²¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¦">>);
downcase(<<"ð\220²¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¥">>);
downcase(<<"ð\220²¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¤">>);
downcase(<<"ð\220²£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³£">>);
downcase(<<"ð\220²¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¢">>);
downcase(<<"ð\220²¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³¡">>);
downcase(<<"ð\220² ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³ ">>);
downcase(<<"ð\220²\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\237">>);
downcase(<<"ð\220²\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\236">>);
downcase(<<"ð\220²\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\235">>);
downcase(<<"ð\220²\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\234">>);
downcase(<<"ð\220²\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\233">>);
downcase(<<"ð\220²\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\232">>);
downcase(<<"ð\220²\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\231">>);
downcase(<<"ð\220²\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\230">>);
downcase(<<"ð\220²\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\227">>);
downcase(<<"ð\220²\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\226">>);
downcase(<<"ð\220²\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\225">>);
downcase(<<"ð\220²\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\224">>);
downcase(<<"ð\220²\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\223">>);
downcase(<<"ð\220²\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\222">>);
downcase(<<"ð\220²\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\221">>);
downcase(<<"ð\220²\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\220">>);
downcase(<<"ð\220²\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\217">>);
downcase(<<"ð\220²\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\216">>);
downcase(<<"ð\220²\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\215">>);
downcase(<<"ð\220²\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\214">>);
downcase(<<"ð\220²\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\213">>);
downcase(<<"ð\220²\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\212">>);
downcase(<<"ð\220²\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\211">>);
downcase(<<"ð\220²\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\210">>);
downcase(<<"ð\220²\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\207">>);
downcase(<<"ð\220²\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\206">>);
downcase(<<"ð\220²\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\205">>);
downcase(<<"ð\220²\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\204">>);
downcase(<<"ð\220²\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\203">>);
downcase(<<"ð\220²\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\202">>);
downcase(<<"ð\220²\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\201">>);
downcase(<<"ð\220²\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220³\200">>);
downcase(<<"ð\220\223\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223»">>);
downcase(<<"ð\220\223\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223º">>);
downcase(<<"ð\220\223\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¹">>);
downcase(<<"ð\220\223\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¸">>);
downcase(<<"ð\220\223\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223·">>);
downcase(<<"ð\220\223\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¶">>);
downcase(<<"ð\220\223\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223µ">>);
downcase(<<"ð\220\223\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223´">>);
downcase(<<"ð\220\223\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223³">>);
downcase(<<"ð\220\223\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223²">>);
downcase(<<"ð\220\223\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223±">>);
downcase(<<"ð\220\223\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223°">>);
downcase(<<"ð\220\223\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¯">>);
downcase(<<"ð\220\223\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223®">>);
downcase(<<"ð\220\223\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223­">>);
downcase(<<"ð\220\223\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¬">>);
downcase(<<"ð\220\223\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223«">>);
downcase(<<"ð\220\223\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223ª">>);
downcase(<<"ð\220\223\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223©">>);
downcase(<<"ð\220\223\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¨">>);
downcase(<<"ð\220\222¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223§">>);
downcase(<<"ð\220\222¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¦">>);
downcase(<<"ð\220\222½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¥">>);
downcase(<<"ð\220\222¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¤">>);
downcase(<<"ð\220\222»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223£">>);
downcase(<<"ð\220\222º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¢">>);
downcase(<<"ð\220\222¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223¡">>);
downcase(<<"ð\220\222¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223 ">>);
downcase(<<"ð\220\222·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\237">>);
downcase(<<"ð\220\222¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\236">>);
downcase(<<"ð\220\222µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\235">>);
downcase(<<"ð\220\222´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\234">>);
downcase(<<"ð\220\222³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\233">>);
downcase(<<"ð\220\222²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\232">>);
downcase(<<"ð\220\222±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\231">>);
downcase(<<"ð\220\222°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\223\230">>);
downcase(<<"ð\220\220§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\217">>);
downcase(<<"ð\220\220¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\216">>);
downcase(<<"ð\220\220¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\215">>);
downcase(<<"ð\220\220¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\214">>);
downcase(<<"ð\220\220£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\213">>);
downcase(<<"ð\220\220¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\212">>);
downcase(<<"ð\220\220¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\211">>);
downcase(<<"ð\220\220 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\210">>);
downcase(<<"ð\220\220\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\207">>);
downcase(<<"ð\220\220\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\206">>);
downcase(<<"ð\220\220\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\205">>);
downcase(<<"ð\220\220\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\204">>);
downcase(<<"ð\220\220\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\203">>);
downcase(<<"ð\220\220\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\202">>);
downcase(<<"ð\220\220\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\201">>);
downcase(<<"ð\220\220\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\221\200">>);
downcase(<<"ð\220\220\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¿">>);
downcase(<<"ð\220\220\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¾">>);
downcase(<<"ð\220\220\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220½">>);
downcase(<<"ð\220\220\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¼">>);
downcase(<<"ð\220\220\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220»">>);
downcase(<<"ð\220\220\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220º">>);
downcase(<<"ð\220\220\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¹">>);
downcase(<<"ð\220\220\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¸">>);
downcase(<<"ð\220\220\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220·">>);
downcase(<<"ð\220\220\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¶">>);
downcase(<<"ð\220\220\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220µ">>);
downcase(<<"ð\220\220\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220´">>);
downcase(<<"ð\220\220\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220³">>);
downcase(<<"ð\220\220\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220²">>);
downcase(<<"ð\220\220\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220±">>);
downcase(<<"ð\220\220\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220°">>);
downcase(<<"ð\220\220\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¯">>);
downcase(<<"ð\220\220\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220®">>);
downcase(<<"ð\220\220\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220­">>);
downcase(<<"ð\220\220\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¬">>);
downcase(<<"ð\220\220\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220«">>);
downcase(<<"ð\220\220\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220ª">>);
downcase(<<"ð\220\220\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220©">>);
downcase(<<"ð\220\220\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð\220\220¨">>);
downcase(<<"ï¼º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\232">>);
downcase(<<"ï¼¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\231">>);
downcase(<<"ï¼¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\230">>);
downcase(<<"ï¼·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\227">>);
downcase(<<"ï¼¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\226">>);
downcase(<<"ï¼µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\225">>);
downcase(<<"ï¼´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\224">>);
downcase(<<"ï¼³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\223">>);
downcase(<<"ï¼²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\222">>);
downcase(<<"ï¼±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\221">>);
downcase(<<"ï¼°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\220">>);
downcase(<<"ï¼¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\217">>);
downcase(<<"ï¼®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\216">>);
downcase(<<"ï¼­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\215">>);
downcase(<<"ï¼¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\214">>);
downcase(<<"ï¼«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\213">>);
downcase(<<"ï¼ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\212">>);
downcase(<<"ï¼©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\211">>);
downcase(<<"ï¼¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\210">>);
downcase(<<"ï¼§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\207">>);
downcase(<<"ï¼¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\206">>);
downcase(<<"ï¼¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\205">>);
downcase(<<"ï¼¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\204">>);
downcase(<<"ï¼£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\203">>);
downcase(<<"ï¼¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\202">>);
downcase(<<"ï¼¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï½\201">>);
downcase(<<"ê\236¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236·">>);
downcase(<<"ê\236´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236µ">>);
downcase(<<"ê\236³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­\223">>);
downcase(<<"ê\236²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\235">>);
downcase(<<"ê\236±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\207">>);
downcase(<<"ê\236°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\236">>);
downcase(<<"ê\236®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Éª">>);
downcase(<<"ê\236­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¬">>);
downcase(<<"ê\236¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¡">>);
downcase(<<"ê\236«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\234">>);
downcase(<<"ê\236ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¦">>);
downcase(<<"ê\236¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236©">>);
downcase(<<"ê\236¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236§">>);
downcase(<<"ê\236¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236¥">>);
downcase(<<"ê\236¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236£">>);
downcase(<<"ê\236 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236¡">>);
downcase(<<"ê\236\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\237">>);
downcase(<<"ê\236\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\235">>);
downcase(<<"ê\236\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\233">>);
downcase(<<"ê\236\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\231">>);
downcase(<<"ê\236\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\227">>);
downcase(<<"ê\236\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\223">>);
downcase(<<"ê\236\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\221">>);
downcase(<<"ê\236\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¥">>);
downcase(<<"ê\236\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\214">>);
downcase(<<"ê\236\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\207">>);
downcase(<<"ê\236\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\205">>);
downcase(<<"ê\236\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\203">>);
downcase(<<"ê\236\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\236\201">>);
downcase(<<"ê\235¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235¿">>);
downcase(<<"ê\235½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áµ¹">>);
downcase(<<"ê\235»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235¼">>);
downcase(<<"ê\235¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235º">>);
downcase(<<"ê\235®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235¯">>);
downcase(<<"ê\235¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235­">>);
downcase(<<"ê\235ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235«">>);
downcase(<<"ê\235¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235©">>);
downcase(<<"ê\235¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235§">>);
downcase(<<"ê\235¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235¥">>);
downcase(<<"ê\235¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235£">>);
downcase(<<"ê\235 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235¡">>);
downcase(<<"ê\235\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\237">>);
downcase(<<"ê\235\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\235">>);
downcase(<<"ê\235\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\233">>);
downcase(<<"ê\235\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\231">>);
downcase(<<"ê\235\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\227">>);
downcase(<<"ê\235\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\225">>);
downcase(<<"ê\235\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\223">>);
downcase(<<"ê\235\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\221">>);
downcase(<<"ê\235\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\217">>);
downcase(<<"ê\235\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\215">>);
downcase(<<"ê\235\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\213">>);
downcase(<<"ê\235\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\211">>);
downcase(<<"ê\235\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\207">>);
downcase(<<"ê\235\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\205">>);
downcase(<<"ê\235\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\203">>);
downcase(<<"ê\235\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\235\201">>);
downcase(<<"ê\234¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234¿">>);
downcase(<<"ê\234¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234½">>);
downcase(<<"ê\234º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234»">>);
downcase(<<"ê\234¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234¹">>);
downcase(<<"ê\234¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234·">>);
downcase(<<"ê\234´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234µ">>);
downcase(<<"ê\234²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234³">>);
downcase(<<"ê\234®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234¯">>);
downcase(<<"ê\234¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234­">>);
downcase(<<"ê\234ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234«">>);
downcase(<<"ê\234¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234©">>);
downcase(<<"ê\234¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234§">>);
downcase(<<"ê\234¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234¥">>);
downcase(<<"ê\234¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\234£">>);
downcase(<<"ê\232\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\233">>);
downcase(<<"ê\232\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\231">>);
downcase(<<"ê\232\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\227">>);
downcase(<<"ê\232\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\225">>);
downcase(<<"ê\232\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\223">>);
downcase(<<"ê\232\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\221">>);
downcase(<<"ê\232\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\217">>);
downcase(<<"ê\232\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\215">>);
downcase(<<"ê\232\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\213">>);
downcase(<<"ê\232\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\211">>);
downcase(<<"ê\232\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\207">>);
downcase(<<"ê\232\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\205">>);
downcase(<<"ê\232\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\203">>);
downcase(<<"ê\232\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\232\201">>);
downcase(<<"ê\231¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231­">>);
downcase(<<"ê\231ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231«">>);
downcase(<<"ê\231¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231©">>);
downcase(<<"ê\231¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231§">>);
downcase(<<"ê\231¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231¥">>);
downcase(<<"ê\231¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231£">>);
downcase(<<"ê\231 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231¡">>);
downcase(<<"ê\231\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\237">>);
downcase(<<"ê\231\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\235">>);
downcase(<<"ê\231\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\233">>);
downcase(<<"ê\231\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\231">>);
downcase(<<"ê\231\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\227">>);
downcase(<<"ê\231\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\225">>);
downcase(<<"ê\231\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\223">>);
downcase(<<"ê\231\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\221">>);
downcase(<<"ê\231\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\217">>);
downcase(<<"ê\231\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\215">>);
downcase(<<"ê\231\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\213">>);
downcase(<<"ê\231\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\211">>);
downcase(<<"ê\231\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\207">>);
downcase(<<"ê\231\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\205">>);
downcase(<<"ê\231\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\203">>);
downcase(<<"ê\231\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê\231\201">>);
downcase(<<"â³²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³³">>);
downcase(<<"â³­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³®">>);
downcase(<<"â³«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³¬">>);
downcase(<<"â³¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³£">>);
downcase(<<"â³ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³¡">>);
downcase(<<"â³\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\237">>);
downcase(<<"â³\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\235">>);
downcase(<<"â³\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\233">>);
downcase(<<"â³\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\231">>);
downcase(<<"â³\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\227">>);
downcase(<<"â³\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\225">>);
downcase(<<"â³\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\223">>);
downcase(<<"â³\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\221">>);
downcase(<<"â³\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\217">>);
downcase(<<"â³\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\215">>);
downcase(<<"â³\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\213">>);
downcase(<<"â³\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\211">>);
downcase(<<"â³\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\207">>);
downcase(<<"â³\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\205">>);
downcase(<<"â³\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\203">>);
downcase(<<"â³\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â³\201">>);
downcase(<<"â²¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²¿">>);
downcase(<<"â²¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²½">>);
downcase(<<"â²º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²»">>);
downcase(<<"â²¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²¹">>);
downcase(<<"â²¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²·">>);
downcase(<<"â²´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²µ">>);
downcase(<<"â²²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²³">>);
downcase(<<"â²°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²±">>);
downcase(<<"â²®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²¯">>);
downcase(<<"â²¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²­">>);
downcase(<<"â²ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²«">>);
downcase(<<"â²¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²©">>);
downcase(<<"â²¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²§">>);
downcase(<<"â²¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²¥">>);
downcase(<<"â²¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²£">>);
downcase(<<"â² ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²¡">>);
downcase(<<"â²\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\237">>);
downcase(<<"â²\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\235">>);
downcase(<<"â²\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\233">>);
downcase(<<"â²\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\231">>);
downcase(<<"â²\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\227">>);
downcase(<<"â²\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\225">>);
downcase(<<"â²\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\223">>);
downcase(<<"â²\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\221">>);
downcase(<<"â²\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\217">>);
downcase(<<"â²\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\215">>);
downcase(<<"â²\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\213">>);
downcase(<<"â²\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\211">>);
downcase(<<"â²\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\207">>);
downcase(<<"â²\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\205">>);
downcase(<<"â²\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\203">>);
downcase(<<"â²\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â²\201">>);
downcase(<<"â±¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\200">>);
downcase(<<"â±¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È¿">>);
downcase(<<"â±µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¶">>);
downcase(<<"â±²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±³">>);
downcase(<<"â±°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\222">>);
downcase(<<"â±¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\220">>);
downcase(<<"â±®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É±">>);
downcase(<<"â±­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\221">>);
downcase(<<"â±«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¬">>);
downcase(<<"â±©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±ª">>);
downcase(<<"â±§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¨">>);
downcase(<<"â±¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É½">>);
downcase(<<"â±£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áµ½">>);
downcase(<<"â±¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É«">>);
downcase(<<"â± ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¡">>);
downcase(<<"â°®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\236">>);
downcase(<<"â°­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\235">>);
downcase(<<"â°¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\234">>);
downcase(<<"â°«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\233">>);
downcase(<<"â°ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\232">>);
downcase(<<"â°©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\231">>);
downcase(<<"â°¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\230">>);
downcase(<<"â°§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\227">>);
downcase(<<"â°¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\226">>);
downcase(<<"â°¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\225">>);
downcase(<<"â°¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\224">>);
downcase(<<"â°£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\223">>);
downcase(<<"â°¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\222">>);
downcase(<<"â°¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\221">>);
downcase(<<"â° ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\220">>);
downcase(<<"â°\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\217">>);
downcase(<<"â°\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\216">>);
downcase(<<"â°\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\215">>);
downcase(<<"â°\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\214">>);
downcase(<<"â°\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\213">>);
downcase(<<"â°\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\212">>);
downcase(<<"â°\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\211">>);
downcase(<<"â°\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\210">>);
downcase(<<"â°\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\207">>);
downcase(<<"â°\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\206">>);
downcase(<<"â°\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\205">>);
downcase(<<"â°\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\204">>);
downcase(<<"â°\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\203">>);
downcase(<<"â°\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\202">>);
downcase(<<"â°\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\201">>);
downcase(<<"â°\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±\200">>);
downcase(<<"â°\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¿">>);
downcase(<<"â°\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¾">>);
downcase(<<"â°\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°½">>);
downcase(<<"â°\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¼">>);
downcase(<<"â°\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°»">>);
downcase(<<"â°\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°º">>);
downcase(<<"â°\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¹">>);
downcase(<<"â°\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¸">>);
downcase(<<"â°\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°·">>);
downcase(<<"â°\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°¶">>);
downcase(<<"â°\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°µ">>);
downcase(<<"â°\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°´">>);
downcase(<<"â°\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°³">>);
downcase(<<"â°\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°²">>);
downcase(<<"â°\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°±">>);
downcase(<<"â°\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â°°">>);
downcase(<<"â\223\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223©">>);
downcase(<<"â\223\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¨">>);
downcase(<<"â\223\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223§">>);
downcase(<<"â\223\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¦">>);
downcase(<<"â\223\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¥">>);
downcase(<<"â\223\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¤">>);
downcase(<<"â\223\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223£">>);
downcase(<<"â\223\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¢">>);
downcase(<<"â\223\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223¡">>);
downcase(<<"â\223\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223 ">>);
downcase(<<"â\223\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\237">>);
downcase(<<"â\223\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\236">>);
downcase(<<"â\223\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\235">>);
downcase(<<"â\223\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\234">>);
downcase(<<"â\223\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\233">>);
downcase(<<"â\223\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\232">>);
downcase(<<"â\222¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\231">>);
downcase(<<"â\222¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\230">>);
downcase(<<"â\222½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\227">>);
downcase(<<"â\222¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\226">>);
downcase(<<"â\222»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\225">>);
downcase(<<"â\222º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\224">>);
downcase(<<"â\222¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\223">>);
downcase(<<"â\222¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\222">>);
downcase(<<"â\222·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\221">>);
downcase(<<"â\222¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\223\220">>);
downcase(<<"â\206\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\206\204">>);
downcase(<<"â\205¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¿">>);
downcase(<<"â\205®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¾">>);
downcase(<<"â\205­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205½">>);
downcase(<<"â\205¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¼">>);
downcase(<<"â\205«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205»">>);
downcase(<<"â\205ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205º">>);
downcase(<<"â\205©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¹">>);
downcase(<<"â\205¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¸">>);
downcase(<<"â\205§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205·">>);
downcase(<<"â\205¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205¶">>);
downcase(<<"â\205¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205µ">>);
downcase(<<"â\205¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205´">>);
downcase(<<"â\205£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205³">>);
downcase(<<"â\205¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205²">>);
downcase(<<"â\205¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205±">>);
downcase(<<"â\205 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205°">>);
downcase(<<"â\204²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â\205\216">>);
downcase(<<"â\204«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¥">>);
downcase(<<"â\204ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "k">>);
downcase(<<"â\204¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\211">>);
downcase(<<"á¿¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿³">>);
downcase(<<"á¿»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½½">>);
downcase(<<"á¿º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¼">>);
downcase(<<"á¿¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¹">>);
downcase(<<"á¿¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¸">>);
downcase(<<"á¿¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿¥">>);
downcase(<<"á¿«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½»">>);
downcase(<<"á¿ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½º">>);
downcase(<<"á¿©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿¡">>);
downcase(<<"á¿¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿ ">>);
downcase(<<"á¿\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½·">>);
downcase(<<"á¿\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¶">>);
downcase(<<"á¿\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿\221">>);
downcase(<<"á¿\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿\220">>);
downcase(<<"á¿\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¿\203">>);
downcase(<<"á¿\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½µ">>);
downcase(<<"á¿\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½´">>);
downcase(<<"á¿\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½³">>);
downcase(<<"á¿\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½²">>);
downcase(<<"á¾¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾³">>);
downcase(<<"á¾»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½±">>);
downcase(<<"á¾º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½°">>);
downcase(<<"á¾¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾±">>);
downcase(<<"á¾¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾°">>);
downcase(<<"á¾¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾§">>);
downcase(<<"á¾®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾¦">>);
downcase(<<"á¾­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾¥">>);
downcase(<<"á¾¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾¤">>);
downcase(<<"á¾«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾£">>);
downcase(<<"á¾ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾¢">>);
downcase(<<"á¾©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾¡">>);
downcase(<<"á¾¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾ ">>);
downcase(<<"á¾\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\227">>);
downcase(<<"á¾\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\226">>);
downcase(<<"á¾\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\225">>);
downcase(<<"á¾\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\224">>);
downcase(<<"á¾\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\223">>);
downcase(<<"á¾\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\222">>);
downcase(<<"á¾\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\221">>);
downcase(<<"á¾\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\220">>);
downcase(<<"á¾\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\207">>);
downcase(<<"á¾\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\206">>);
downcase(<<"á¾\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\205">>);
downcase(<<"á¾\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\204">>);
downcase(<<"á¾\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\203">>);
downcase(<<"á¾\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\202">>);
downcase(<<"á¾\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\201">>);
downcase(<<"á¾\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¾\200">>);
downcase(<<"á½¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½§">>);
downcase(<<"á½®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¦">>);
downcase(<<"á½­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¥">>);
downcase(<<"á½¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¤">>);
downcase(<<"á½«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½£">>);
downcase(<<"á½ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¢">>);
downcase(<<"á½©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½¡">>);
downcase(<<"á½¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½ ">>);
downcase(<<"á½\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\227">>);
downcase(<<"á½\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\225">>);
downcase(<<"á½\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\223">>);
downcase(<<"á½\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\221">>);
downcase(<<"á½\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\205">>);
downcase(<<"á½\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\204">>);
downcase(<<"á½\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\203">>);
downcase(<<"á½\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\202">>);
downcase(<<"á½\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\201">>);
downcase(<<"á½\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á½\200">>);
downcase(<<"á¼¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼·">>);
downcase(<<"á¼¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¶">>);
downcase(<<"á¼½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼µ">>);
downcase(<<"á¼¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼´">>);
downcase(<<"á¼»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼³">>);
downcase(<<"á¼º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼²">>);
downcase(<<"á¼¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼±">>);
downcase(<<"á¼¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼°">>);
downcase(<<"á¼¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼§">>);
downcase(<<"á¼®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¦">>);
downcase(<<"á¼­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¥">>);
downcase(<<"á¼¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¤">>);
downcase(<<"á¼«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼£">>);
downcase(<<"á¼ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¢">>);
downcase(<<"á¼©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼¡">>);
downcase(<<"á¼¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼ ">>);
downcase(<<"á¼\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\225">>);
downcase(<<"á¼\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\224">>);
downcase(<<"á¼\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\223">>);
downcase(<<"á¼\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\222">>);
downcase(<<"á¼\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\221">>);
downcase(<<"á¼\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\220">>);
downcase(<<"á¼\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\207">>);
downcase(<<"á¼\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\206">>);
downcase(<<"á¼\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\205">>);
downcase(<<"á¼\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\204">>);
downcase(<<"á¼\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\203">>);
downcase(<<"á¼\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\202">>);
downcase(<<"á¼\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\201">>);
downcase(<<"á¼\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¼\200">>);
downcase(<<"á»¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»¿">>);
downcase(<<"á»¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»½">>);
downcase(<<"á»º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»»">>);
downcase(<<"á»¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»¹">>);
downcase(<<"á»¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»·">>);
downcase(<<"á»´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»µ">>);
downcase(<<"á»²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»³">>);
downcase(<<"á»°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»±">>);
downcase(<<"á»®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»¯">>);
downcase(<<"á»¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»­">>);
downcase(<<"á»ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»«">>);
downcase(<<"á»¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»©">>);
downcase(<<"á»¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»§">>);
downcase(<<"á»¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»¥">>);
downcase(<<"á»¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»£">>);
downcase(<<"á» ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»¡">>);
downcase(<<"á»\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\237">>);
downcase(<<"á»\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\235">>);
downcase(<<"á»\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\233">>);
downcase(<<"á»\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\231">>);
downcase(<<"á»\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\227">>);
downcase(<<"á»\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\225">>);
downcase(<<"á»\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\223">>);
downcase(<<"á»\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\221">>);
downcase(<<"á»\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\217">>);
downcase(<<"á»\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\215">>);
downcase(<<"á»\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\213">>);
downcase(<<"á»\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\211">>);
downcase(<<"á»\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\207">>);
downcase(<<"á»\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\205">>);
downcase(<<"á»\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\203">>);
downcase(<<"á»\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á»\201">>);
downcase(<<"áº¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº¿">>);
downcase(<<"áº¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº½">>);
downcase(<<"áºº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº»">>);
downcase(<<"áº¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº¹">>);
downcase(<<"áº¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº·">>);
downcase(<<"áº´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áºµ">>);
downcase(<<"áº²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº³">>);
downcase(<<"áº°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº±">>);
downcase(<<"áº®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº¯">>);
downcase(<<"áº¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº­">>);
downcase(<<"áºª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº«">>);
downcase(<<"áº¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº©">>);
downcase(<<"áº¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº§">>);
downcase(<<"áº¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº¥">>);
downcase(<<"áº¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº£">>);
downcase(<<"áº ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº¡">>);
downcase(<<"áº\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã\237">>);
downcase(<<"áº\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\225">>);
downcase(<<"áº\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\223">>);
downcase(<<"áº\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\221">>);
downcase(<<"áº\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\217">>);
downcase(<<"áº\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\215">>);
downcase(<<"áº\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\213">>);
downcase(<<"áº\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\211">>);
downcase(<<"áº\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\207">>);
downcase(<<"áº\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\205">>);
downcase(<<"áº\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\203">>);
downcase(<<"áº\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "áº\201">>);
downcase(<<"á¹¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹¿">>);
downcase(<<"á¹¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹½">>);
downcase(<<"á¹º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹»">>);
downcase(<<"á¹¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹¹">>);
downcase(<<"á¹¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹·">>);
downcase(<<"á¹´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹µ">>);
downcase(<<"á¹²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹³">>);
downcase(<<"á¹°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹±">>);
downcase(<<"á¹®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹¯">>);
downcase(<<"á¹¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹­">>);
downcase(<<"á¹ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹«">>);
downcase(<<"á¹¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹©">>);
downcase(<<"á¹¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹§">>);
downcase(<<"á¹¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹¥">>);
downcase(<<"á¹¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹£">>);
downcase(<<"á¹ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹¡">>);
downcase(<<"á¹\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\237">>);
downcase(<<"á¹\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\235">>);
downcase(<<"á¹\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\233">>);
downcase(<<"á¹\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\231">>);
downcase(<<"á¹\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\227">>);
downcase(<<"á¹\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\225">>);
downcase(<<"á¹\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\223">>);
downcase(<<"á¹\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\221">>);
downcase(<<"á¹\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\217">>);
downcase(<<"á¹\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\215">>);
downcase(<<"á¹\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\213">>);
downcase(<<"á¹\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\211">>);
downcase(<<"á¹\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\207">>);
downcase(<<"á¹\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\205">>);
downcase(<<"á¹\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\203">>);
downcase(<<"á¹\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¹\201">>);
downcase(<<"á¸¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸¿">>);
downcase(<<"á¸¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸½">>);
downcase(<<"á¸º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸»">>);
downcase(<<"á¸¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸¹">>);
downcase(<<"á¸¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸·">>);
downcase(<<"á¸´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸µ">>);
downcase(<<"á¸²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸³">>);
downcase(<<"á¸°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸±">>);
downcase(<<"á¸®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸¯">>);
downcase(<<"á¸¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸­">>);
downcase(<<"á¸ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸«">>);
downcase(<<"á¸¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸©">>);
downcase(<<"á¸¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸§">>);
downcase(<<"á¸¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸¥">>);
downcase(<<"á¸¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸£">>);
downcase(<<"á¸ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸¡">>);
downcase(<<"á¸\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\237">>);
downcase(<<"á¸\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\235">>);
downcase(<<"á¸\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\233">>);
downcase(<<"á¸\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\231">>);
downcase(<<"á¸\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\227">>);
downcase(<<"á¸\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\225">>);
downcase(<<"á¸\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\223">>);
downcase(<<"á¸\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\221">>);
downcase(<<"á¸\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\217">>);
downcase(<<"á¸\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\215">>);
downcase(<<"á¸\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\213">>);
downcase(<<"á¸\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\211">>);
downcase(<<"á¸\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\207">>);
downcase(<<"á¸\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\205">>);
downcase(<<"á¸\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\203">>);
downcase(<<"á¸\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á¸\201">>);
downcase(<<"á\217µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217½">>);
downcase(<<"á\217´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217¼">>);
downcase(<<"á\217³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217»">>);
downcase(<<"á\217²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217º">>);
downcase(<<"á\217±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217¹">>);
downcase(<<"á\217°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á\217¸">>);
downcase(<<"á\217¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¿">>);
downcase(<<"á\217®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¾">>);
downcase(<<"á\217­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®½">>);
downcase(<<"á\217¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¼">>);
downcase(<<"á\217«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®»">>);
downcase(<<"á\217ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®º">>);
downcase(<<"á\217©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¹">>);
downcase(<<"á\217¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¸">>);
downcase(<<"á\217§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®·">>);
downcase(<<"á\217¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¶">>);
downcase(<<"á\217¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®µ">>);
downcase(<<"á\217¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®´">>);
downcase(<<"á\217£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®³">>);
downcase(<<"á\217¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®²">>);
downcase(<<"á\217¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®±">>);
downcase(<<"á\217 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®°">>);
downcase(<<"á\217\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¯">>);
downcase(<<"á\217\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®®">>);
downcase(<<"á\217\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®­">>);
downcase(<<"á\217\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¬">>);
downcase(<<"á\217\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®«">>);
downcase(<<"á\217\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®ª">>);
downcase(<<"á\217\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®©">>);
downcase(<<"á\217\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¨">>);
downcase(<<"á\217\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®§">>);
downcase(<<"á\217\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¦">>);
downcase(<<"á\217\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¥">>);
downcase(<<"á\217\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¤">>);
downcase(<<"á\217\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®£">>);
downcase(<<"á\217\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¢">>);
downcase(<<"á\217\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®¡">>);
downcase(<<"á\217\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê® ">>);
downcase(<<"á\217\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\237">>);
downcase(<<"á\217\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\236">>);
downcase(<<"á\217\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\235">>);
downcase(<<"á\217\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\234">>);
downcase(<<"á\217\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\233">>);
downcase(<<"á\217\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\232">>);
downcase(<<"á\217\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\231">>);
downcase(<<"á\217\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\230">>);
downcase(<<"á\217\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\227">>);
downcase(<<"á\217\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\226">>);
downcase(<<"á\217\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\225">>);
downcase(<<"á\217\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\224">>);
downcase(<<"á\217\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\223">>);
downcase(<<"á\217\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\222">>);
downcase(<<"á\217\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\221">>);
downcase(<<"á\217\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\220">>);
downcase(<<"á\216¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\217">>);
downcase(<<"á\216¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\216">>);
downcase(<<"á\216½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\215">>);
downcase(<<"á\216¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\214">>);
downcase(<<"á\216»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\213">>);
downcase(<<"á\216º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\212">>);
downcase(<<"á\216¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\211">>);
downcase(<<"á\216¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\210">>);
downcase(<<"á\216·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\207">>);
downcase(<<"á\216¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\206">>);
downcase(<<"á\216µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\205">>);
downcase(<<"á\216´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\204">>);
downcase(<<"á\216³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\203">>);
downcase(<<"á\216²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\202">>);
downcase(<<"á\216±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\201">>);
downcase(<<"á\216°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê®\200">>);
downcase(<<"á\216¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¿">>);
downcase(<<"á\216®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¾">>);
downcase(<<"á\216­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­½">>);
downcase(<<"á\216¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¼">>);
downcase(<<"á\216«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­»">>);
downcase(<<"á\216ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­º">>);
downcase(<<"á\216©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¹">>);
downcase(<<"á\216¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¸">>);
downcase(<<"á\216§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­·">>);
downcase(<<"á\216¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­¶">>);
downcase(<<"á\216¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­µ">>);
downcase(<<"á\216¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­´">>);
downcase(<<"á\216£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­³">>);
downcase(<<"á\216¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­²">>);
downcase(<<"á\216¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­±">>);
downcase(<<"á\216 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê­°">>);
downcase(<<"á\203\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´­">>);
downcase(<<"á\203\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´§">>);
downcase(<<"á\203\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´¥">>);
downcase(<<"á\203\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´¤">>);
downcase(<<"á\203\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´£">>);
downcase(<<"á\203\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´¢">>);
downcase(<<"á\203\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´¡">>);
downcase(<<"á\203\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´ ">>);
downcase(<<"á\202¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\237">>);
downcase(<<"á\202¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\236">>);
downcase(<<"á\202½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\235">>);
downcase(<<"á\202¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\234">>);
downcase(<<"á\202»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\233">>);
downcase(<<"á\202º", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\232">>);
downcase(<<"á\202¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\231">>);
downcase(<<"á\202¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\230">>);
downcase(<<"á\202·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\227">>);
downcase(<<"á\202¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\226">>);
downcase(<<"á\202µ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\225">>);
downcase(<<"á\202´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\224">>);
downcase(<<"á\202³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\223">>);
downcase(<<"á\202²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\222">>);
downcase(<<"á\202±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\221">>);
downcase(<<"á\202°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\220">>);
downcase(<<"á\202¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\217">>);
downcase(<<"á\202®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\216">>);
downcase(<<"á\202­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\215">>);
downcase(<<"á\202¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\214">>);
downcase(<<"á\202«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\213">>);
downcase(<<"á\202ª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\212">>);
downcase(<<"á\202©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\211">>);
downcase(<<"á\202¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\210">>);
downcase(<<"á\202§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\207">>);
downcase(<<"á\202¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\206">>);
downcase(<<"á\202¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\205">>);
downcase(<<"á\202¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\204">>);
downcase(<<"á\202£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\203">>);
downcase(<<"á\202¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\202">>);
downcase(<<"á\202¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\201">>);
downcase(<<"á\202 ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â´\200">>);
downcase(<<"Õ\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\206">>);
downcase(<<"Õ\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\205">>);
downcase(<<"Õ\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\204">>);
downcase(<<"Õ\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\203">>);
downcase(<<"Õ\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\202">>);
downcase(<<"Õ\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\201">>);
downcase(<<"Õ\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ö\200">>);
downcase(<<"Õ\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¿">>);
downcase(<<"Õ\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¾">>);
downcase(<<"Õ\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ½">>);
downcase(<<"Õ\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¼">>);
downcase(<<"Õ\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ»">>);
downcase(<<"Õ\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õº">>);
downcase(<<"Õ\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¹">>);
downcase(<<"Õ\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¸">>);
downcase(<<"Õ\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ·">>);
downcase(<<"Õ\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¶">>);
downcase(<<"Õ\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õµ">>);
downcase(<<"Õ\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ´">>);
downcase(<<"Õ\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ³">>);
downcase(<<"Õ\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ²">>);
downcase(<<"Õ\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ±">>);
downcase(<<"Õ\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ°">>);
downcase(<<"Ô¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¯">>);
downcase(<<"Ô¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ®">>);
downcase(<<"Ô½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ­">>);
downcase(<<"Ô¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¬">>);
downcase(<<"Ô»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ«">>);
downcase(<<"Ôº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õª">>);
downcase(<<"Ô¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ©">>);
downcase(<<"Ô¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¨">>);
downcase(<<"Ô·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ§">>);
downcase(<<"Ô¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¦">>);
downcase(<<"Ôµ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¥">>);
downcase(<<"Ô´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¤">>);
downcase(<<"Ô³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ£">>);
downcase(<<"Ô²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¢">>);
downcase(<<"Ô±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Õ¡">>);
downcase(<<"Ô®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô¯">>);
downcase(<<"Ô¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô­">>);
downcase(<<"Ôª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô«">>);
downcase(<<"Ô¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô©">>);
downcase(<<"Ô¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô§">>);
downcase(<<"Ô¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô¥">>);
downcase(<<"Ô¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô£">>);
downcase(<<"Ô ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô¡">>);
downcase(<<"Ô\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\237">>);
downcase(<<"Ô\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\235">>);
downcase(<<"Ô\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\233">>);
downcase(<<"Ô\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\231">>);
downcase(<<"Ô\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\227">>);
downcase(<<"Ô\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\225">>);
downcase(<<"Ô\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\223">>);
downcase(<<"Ô\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\221">>);
downcase(<<"Ô\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\217">>);
downcase(<<"Ô\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\215">>);
downcase(<<"Ô\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\213">>);
downcase(<<"Ô\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\211">>);
downcase(<<"Ô\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\207">>);
downcase(<<"Ô\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\205">>);
downcase(<<"Ô\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\203">>);
downcase(<<"Ô\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ô\201">>);
downcase(<<"Ó¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó¿">>);
downcase(<<"Ó¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó½">>);
downcase(<<"Óº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó»">>);
downcase(<<"Ó¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó¹">>);
downcase(<<"Ó¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó·">>);
downcase(<<"Ó´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Óµ">>);
downcase(<<"Ó²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó³">>);
downcase(<<"Ó°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó±">>);
downcase(<<"Ó®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó¯">>);
downcase(<<"Ó¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó­">>);
downcase(<<"Óª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó«">>);
downcase(<<"Ó¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó©">>);
downcase(<<"Ó¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó§">>);
downcase(<<"Ó¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó¥">>);
downcase(<<"Ó¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó£">>);
downcase(<<"Ó ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó¡">>);
downcase(<<"Ó\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\237">>);
downcase(<<"Ó\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\235">>);
downcase(<<"Ó\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\233">>);
downcase(<<"Ó\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\231">>);
downcase(<<"Ó\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\227">>);
downcase(<<"Ó\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\225">>);
downcase(<<"Ó\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\223">>);
downcase(<<"Ó\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\221">>);
downcase(<<"Ó\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\216">>);
downcase(<<"Ó\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\214">>);
downcase(<<"Ó\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\212">>);
downcase(<<"Ó\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\210">>);
downcase(<<"Ó\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\206">>);
downcase(<<"Ó\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\204">>);
downcase(<<"Ó\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\202">>);
downcase(<<"Ó\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ó\217">>);
downcase(<<"Ò¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò¿">>);
downcase(<<"Ò¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò½">>);
downcase(<<"Òº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò»">>);
downcase(<<"Ò¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò¹">>);
downcase(<<"Ò¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò·">>);
downcase(<<"Ò´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Òµ">>);
downcase(<<"Ò²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò³">>);
downcase(<<"Ò°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò±">>);
downcase(<<"Ò®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò¯">>);
downcase(<<"Ò¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò­">>);
downcase(<<"Òª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò«">>);
downcase(<<"Ò¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò©">>);
downcase(<<"Ò¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò§">>);
downcase(<<"Ò¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò¥">>);
downcase(<<"Ò¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò£">>);
downcase(<<"Ò ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò¡">>);
downcase(<<"Ò\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\237">>);
downcase(<<"Ò\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\235">>);
downcase(<<"Ò\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\233">>);
downcase(<<"Ò\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\231">>);
downcase(<<"Ò\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\227">>);
downcase(<<"Ò\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\225">>);
downcase(<<"Ò\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\223">>);
downcase(<<"Ò\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\221">>);
downcase(<<"Ò\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\217">>);
downcase(<<"Ò\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\215">>);
downcase(<<"Ò\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\213">>);
downcase(<<"Ò\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ò\201">>);
downcase(<<"Ñ¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ¿">>);
downcase(<<"Ñ¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ½">>);
downcase(<<"Ñº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ»">>);
downcase(<<"Ñ¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ¹">>);
downcase(<<"Ñ¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ·">>);
downcase(<<"Ñ´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñµ">>);
downcase(<<"Ñ²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ³">>);
downcase(<<"Ñ°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ±">>);
downcase(<<"Ñ®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ¯">>);
downcase(<<"Ñ¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ­">>);
downcase(<<"Ñª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ«">>);
downcase(<<"Ñ¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ©">>);
downcase(<<"Ñ¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ§">>);
downcase(<<"Ñ¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ¥">>);
downcase(<<"Ñ¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ£">>);
downcase(<<"Ñ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ¡">>);
downcase(<<"Ð¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\217">>);
downcase(<<"Ð®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\216">>);
downcase(<<"Ð­", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\215">>);
downcase(<<"Ð¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\214">>);
downcase(<<"Ð«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\213">>);
downcase(<<"Ðª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\212">>);
downcase(<<"Ð©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\211">>);
downcase(<<"Ð¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\210">>);
downcase(<<"Ð§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\207">>);
downcase(<<"Ð¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\206">>);
downcase(<<"Ð¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\205">>);
downcase(<<"Ð¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\204">>);
downcase(<<"Ð£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\203">>);
downcase(<<"Ð¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\202">>);
downcase(<<"Ð¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\201">>);
downcase(<<"Ð ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\200">>);
downcase(<<"Ð\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¿">>);
downcase(<<"Ð\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¾">>);
downcase(<<"Ð\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð½">>);
downcase(<<"Ð\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¼">>);
downcase(<<"Ð\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð»">>);
downcase(<<"Ð\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ðº">>);
downcase(<<"Ð\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¹">>);
downcase(<<"Ð\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¸">>);
downcase(<<"Ð\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð·">>);
downcase(<<"Ð\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð¶">>);
downcase(<<"Ð\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ðµ">>);
downcase(<<"Ð\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð´">>);
downcase(<<"Ð\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð³">>);
downcase(<<"Ð\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð²">>);
downcase(<<"Ð\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð±">>);
downcase(<<"Ð\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ð°">>);
downcase(<<"Ð\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\237">>);
downcase(<<"Ð\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\236">>);
downcase(<<"Ð\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\235">>);
downcase(<<"Ð\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\234">>);
downcase(<<"Ð\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\233">>);
downcase(<<"Ð\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\232">>);
downcase(<<"Ð\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\231">>);
downcase(<<"Ð\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\230">>);
downcase(<<"Ð\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\227">>);
downcase(<<"Ð\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\226">>);
downcase(<<"Ð\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\225">>);
downcase(<<"Ð\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\224">>);
downcase(<<"Ð\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\223">>);
downcase(<<"Ð\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\222">>);
downcase(<<"Ð\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\221">>);
downcase(<<"Ð\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ñ\220">>);
downcase(<<"Ï¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í½">>);
downcase(<<"Ï¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í¼">>);
downcase(<<"Ï½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í»">>);
downcase(<<"Ïº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï»">>);
downcase(<<"Ï¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï²">>);
downcase(<<"Ï·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï¸">>);
downcase(<<"Ï´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¸">>);
downcase(<<"Ï®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï¯">>);
downcase(<<"Ï¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï­">>);
downcase(<<"Ïª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï«">>);
downcase(<<"Ï¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï©">>);
downcase(<<"Ï¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï§">>);
downcase(<<"Ï¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï¥">>);
downcase(<<"Ï¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï£">>);
downcase(<<"Ï ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï¡">>);
downcase(<<"Ï\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\237">>);
downcase(<<"Ï\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\235">>);
downcase(<<"Ï\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\233">>);
downcase(<<"Ï\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\231">>);
downcase(<<"Ï\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\227">>);
downcase(<<"Î«", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\213">>);
downcase(<<"Îª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\212">>);
downcase(<<"Î©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\211">>);
downcase(<<"Î¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\210">>);
downcase(<<"Î§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\207">>);
downcase(<<"Î¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\206">>);
downcase(<<"Î¥", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\205">>);
downcase(<<"Î¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\204">>);
downcase(<<"Î£", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\203">>);
downcase(<<"Î¡", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\201">>);
downcase(<<"Î ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\200">>);
downcase(<<"Î\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¿">>);
downcase(<<"Î\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¾">>);
downcase(<<"Î\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î½">>);
downcase(<<"Î\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¼">>);
downcase(<<"Î\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î»">>);
downcase(<<"Î\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Îº">>);
downcase(<<"Î\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¹">>);
downcase(<<"Î\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¸">>);
downcase(<<"Î\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î·">>);
downcase(<<"Î\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¶">>);
downcase(<<"Î\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Îµ">>);
downcase(<<"Î\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î´">>);
downcase(<<"Î\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î³">>);
downcase(<<"Î\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î²">>);
downcase(<<"Î\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î±">>);
downcase(<<"Î\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\216">>);
downcase(<<"Î\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\215">>);
downcase(<<"Î\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï\214">>);
downcase(<<"Î\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¯">>);
downcase(<<"Î\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î®">>);
downcase(<<"Î\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î­">>);
downcase(<<"Î\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Î¬">>);
downcase(<<"Í¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ï³">>);
downcase(<<"Í¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í·">>);
downcase(<<"Í²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í³">>);
downcase(<<"Í°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Í±">>);
downcase(<<"É\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\217">>);
downcase(<<"É\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\215">>);
downcase(<<"É\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\213">>);
downcase(<<"É\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\211">>);
downcase(<<"É\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\207">>);
downcase(<<"É\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\214">>);
downcase(<<"É\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\211">>);
downcase(<<"É\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\200">>);
downcase(<<"É\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\202">>);
downcase(<<"È¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¦">>);
downcase(<<"È½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\232">>);
downcase(<<"È»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È¼">>);
downcase(<<"Èº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â±¥">>);
downcase(<<"È²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È³">>);
downcase(<<"È°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È±">>);
downcase(<<"È®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È¯">>);
downcase(<<"È¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È­">>);
downcase(<<"Èª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È«">>);
downcase(<<"È¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È©">>);
downcase(<<"È¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È§">>);
downcase(<<"È¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È¥">>);
downcase(<<"È¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È£">>);
downcase(<<"È ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\236">>);
downcase(<<"È\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\237">>);
downcase(<<"È\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\235">>);
downcase(<<"È\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\233">>);
downcase(<<"È\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\231">>);
downcase(<<"È\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\227">>);
downcase(<<"È\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\225">>);
downcase(<<"È\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\223">>);
downcase(<<"È\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\221">>);
downcase(<<"È\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\217">>);
downcase(<<"È\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\215">>);
downcase(<<"È\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\213">>);
downcase(<<"È\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\211">>);
downcase(<<"È\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\207">>);
downcase(<<"È\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\205">>);
downcase(<<"È\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\203">>);
downcase(<<"È\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "È\201">>);
downcase(<<"Ç¾", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç¿">>);
downcase(<<"Ç¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç½">>);
downcase(<<"Çº", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç»">>);
downcase(<<"Ç¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç¹">>);
downcase(<<"Ç·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¿">>);
downcase(<<"Ç¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\225">>);
downcase(<<"Ç´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Çµ">>);
downcase(<<"Ç²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç³">>);
downcase(<<"Ç±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç³">>);
downcase(<<"Ç®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç¯">>);
downcase(<<"Ç¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç­">>);
downcase(<<"Çª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç«">>);
downcase(<<"Ç¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç©">>);
downcase(<<"Ç¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç§">>);
downcase(<<"Ç¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç¥">>);
downcase(<<"Ç¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç£">>);
downcase(<<"Ç ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç¡">>);
downcase(<<"Ç\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\237">>);
downcase(<<"Ç\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\234">>);
downcase(<<"Ç\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\232">>);
downcase(<<"Ç\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\230">>);
downcase(<<"Ç\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\226">>);
downcase(<<"Ç\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\224">>);
downcase(<<"Ç\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\222">>);
downcase(<<"Ç\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\220">>);
downcase(<<"Ç\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\216">>);
downcase(<<"Ç\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\214">>);
downcase(<<"Ç\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\214">>);
downcase(<<"Ç\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\211">>);
downcase(<<"Ç\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\211">>);
downcase(<<"Ç\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\206">>);
downcase(<<"Ç\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\206">>);
downcase(<<"Æ¼", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ½">>);
downcase(<<"Æ¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¹">>);
downcase(<<"Æ·", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\222">>);
downcase(<<"Æµ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¶">>);
downcase(<<"Æ³", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ´">>);
downcase(<<"Æ²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\213">>);
downcase(<<"Æ±", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\212">>);
downcase(<<"Æ¯", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ°">>);
downcase(<<"Æ®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\210">>);
downcase(<<"Æ¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ­">>);
downcase(<<"Æ©", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\203">>);
downcase(<<"Æ§", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¨">>);
downcase(<<"Æ¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ê\200">>);
downcase(<<"Æ¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¥">>);
downcase(<<"Æ¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ£">>);
downcase(<<"Æ ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ¡">>);
downcase(<<"Æ\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Éµ">>);
downcase(<<"Æ\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É²">>);
downcase(<<"Æ\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¯">>);
downcase(<<"Æ\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\231">>);
downcase(<<"Æ\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É¨">>);
downcase(<<"Æ\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É©">>);
downcase(<<"Æ\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É£">>);
downcase(<<"Æ\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É ">>);
downcase(<<"Æ\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\222">>);
downcase(<<"Æ\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\233">>);
downcase(<<"Æ\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\231">>);
downcase(<<"Æ\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ç\235">>);
downcase(<<"Æ\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\214">>);
downcase(<<"Æ\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\227">>);
downcase(<<"Æ\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\226">>);
downcase(<<"Æ\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\210">>);
downcase(<<"Æ\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\224">>);
downcase(<<"Æ\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\205">>);
downcase(<<"Æ\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Æ\203">>);
downcase(<<"Æ\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "É\223">>);
downcase(<<"Å½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å¾">>);
downcase(<<"Å»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å¼">>);
downcase(<<"Å¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Åº">>);
downcase(<<"Å¸", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¿">>);
downcase(<<"Å¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å·">>);
downcase(<<"Å´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Åµ">>);
downcase(<<"Å²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å³">>);
downcase(<<"Å°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å±">>);
downcase(<<"Å®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å¯">>);
downcase(<<"Å¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å­">>);
downcase(<<"Åª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å«">>);
downcase(<<"Å¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å©">>);
downcase(<<"Å¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å§">>);
downcase(<<"Å¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å¥">>);
downcase(<<"Å¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å£">>);
downcase(<<"Å ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å¡">>);
downcase(<<"Å\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\237">>);
downcase(<<"Å\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\235">>);
downcase(<<"Å\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\233">>);
downcase(<<"Å\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\231">>);
downcase(<<"Å\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\227">>);
downcase(<<"Å\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\225">>);
downcase(<<"Å\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\223">>);
downcase(<<"Å\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\221">>);
downcase(<<"Å\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\217">>);
downcase(<<"Å\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\215">>);
downcase(<<"Å\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\213">>);
downcase(<<"Å\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\210">>);
downcase(<<"Å\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\206">>);
downcase(<<"Å\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\204">>);
downcase(<<"Å\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\202">>);
downcase(<<"Ä¿", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Å\200">>);
downcase(<<"Ä½", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä¾">>);
downcase(<<"Ä»", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä¼">>);
downcase(<<"Ä¹", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Äº">>);
downcase(<<"Ä¶", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä·">>);
downcase(<<"Ä´", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Äµ">>);
downcase(<<"Ä²", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä³">>);
downcase(<<"Ä°", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "iÌ\207">>);
downcase(<<"Ä®", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä¯">>);
downcase(<<"Ä¬", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä­">>);
downcase(<<"Äª", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä«">>);
downcase(<<"Ä¨", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä©">>);
downcase(<<"Ä¦", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä§">>);
downcase(<<"Ä¤", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä¥">>);
downcase(<<"Ä¢", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä£">>);
downcase(<<"Ä ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä¡">>);
downcase(<<"Ä\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\237">>);
downcase(<<"Ä\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\235">>);
downcase(<<"Ä\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\233">>);
downcase(<<"Ä\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\231">>);
downcase(<<"Ä\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\227">>);
downcase(<<"Ä\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\225">>);
downcase(<<"Ä\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\223">>);
downcase(<<"Ä\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\221">>);
downcase(<<"Ä\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\217">>);
downcase(<<"Ä\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\215">>);
downcase(<<"Ä\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\213">>);
downcase(<<"Ä\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\211">>);
downcase(<<"Ä\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\207">>);
downcase(<<"Ä\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\205">>);
downcase(<<"Ä\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\203">>);
downcase(<<"Ä\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ä\201">>);
downcase(<<"Ã\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¾">>);
downcase(<<"Ã\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã½">>);
downcase(<<"Ã\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¼">>);
downcase(<<"Ã\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã»">>);
downcase(<<"Ã\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ãº">>);
downcase(<<"Ã\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¹">>);
downcase(<<"Ã\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¸">>);
downcase(<<"Ã\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¶">>);
downcase(<<"Ã\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ãµ">>);
downcase(<<"Ã\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã´">>);
downcase(<<"Ã\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã³">>);
downcase(<<"Ã\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã²">>);
downcase(<<"Ã\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã±">>);
downcase(<<"Ã\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã°">>);
downcase(<<"Ã\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¯">>);
downcase(<<"Ã\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã®">>);
downcase(<<"Ã\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã­">>);
downcase(<<"Ã\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¬">>);
downcase(<<"Ã\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã«">>);
downcase(<<"Ã\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ãª">>);
downcase(<<"Ã\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã©">>);
downcase(<<"Ã\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¨">>);
downcase(<<"Ã\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã§">>);
downcase(<<"Ã\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¦">>);
downcase(<<"Ã\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¥">>);
downcase(<<"Ã\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¤">>);
downcase(<<"Ã\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã£">>);
downcase(<<"Ã\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¢">>);
downcase(<<"Ã\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã¡">>);
downcase(<<"Ã\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "Ã ">>);
downcase(<<"Z", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "z">>);
downcase(<<"Y", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "y">>);
downcase(<<"X", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "x">>);
downcase(<<"W", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "w">>);
downcase(<<"V", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "v">>);
downcase(<<"U", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "u">>);
downcase(<<"T", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "t">>);
downcase(<<"S", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "s">>);
downcase(<<"R", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "r">>);
downcase(<<"Q", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "q">>);
downcase(<<"P", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "p">>);
downcase(<<"O", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "o">>);
downcase(<<"N", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "n">>);
downcase(<<"M", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "m">>);
downcase(<<"L", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "l">>);
downcase(<<"K", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "k">>);
downcase(<<"J", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "j">>);
downcase(<<"I", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "i">>);
downcase(<<"H", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "h">>);
downcase(<<"G", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "g">>);
downcase(<<"F", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "f">>);
downcase(<<"E", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "e">>);
downcase(<<"D", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "d">>);
downcase(<<"C", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "c">>);
downcase(<<"B", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "b">>);
downcase(<<"A", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "a">>);
downcase(<<Echar@1, Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, Echar@1>>);
downcase(<<>>, Eacc@1) -> Eacc@1.

titlecase_once(<<>>) -> {<<>>, <<>>};
titlecase_once(<<"ð\236¥\203", Erest@1/binary>>) ->
    {<<"ð\236¤¡">>, Erest@1};
titlecase_once(<<"ð\236¥\202", Erest@1/binary>>) ->
    {<<"ð\236¤ ">>, Erest@1};
titlecase_once(<<"ð\236¥\201", Erest@1/binary>>) ->
    {<<"ð\236¤\237">>, Erest@1};
titlecase_once(<<"ð\236¥\200", Erest@1/binary>>) ->
    {<<"ð\236¤\236">>, Erest@1};
titlecase_once(<<"ð\236¤¿", Erest@1/binary>>) ->
    {<<"ð\236¤\235">>, Erest@1};
titlecase_once(<<"ð\236¤¾", Erest@1/binary>>) ->
    {<<"ð\236¤\234">>, Erest@1};
titlecase_once(<<"ð\236¤½", Erest@1/binary>>) ->
    {<<"ð\236¤\233">>, Erest@1};
titlecase_once(<<"ð\236¤¼", Erest@1/binary>>) ->
    {<<"ð\236¤\232">>, Erest@1};
titlecase_once(<<"ð\236¤»", Erest@1/binary>>) ->
    {<<"ð\236¤\231">>, Erest@1};
titlecase_once(<<"ð\236¤º", Erest@1/binary>>) ->
    {<<"ð\236¤\230">>, Erest@1};
titlecase_once(<<"ð\236¤¹", Erest@1/binary>>) ->
    {<<"ð\236¤\227">>, Erest@1};
titlecase_once(<<"ð\236¤¸", Erest@1/binary>>) ->
    {<<"ð\236¤\226">>, Erest@1};
titlecase_once(<<"ð\236¤·", Erest@1/binary>>) ->
    {<<"ð\236¤\225">>, Erest@1};
titlecase_once(<<"ð\236¤¶", Erest@1/binary>>) ->
    {<<"ð\236¤\224">>, Erest@1};
titlecase_once(<<"ð\236¤µ", Erest@1/binary>>) ->
    {<<"ð\236¤\223">>, Erest@1};
titlecase_once(<<"ð\236¤´", Erest@1/binary>>) ->
    {<<"ð\236¤\222">>, Erest@1};
titlecase_once(<<"ð\236¤³", Erest@1/binary>>) ->
    {<<"ð\236¤\221">>, Erest@1};
titlecase_once(<<"ð\236¤²", Erest@1/binary>>) ->
    {<<"ð\236¤\220">>, Erest@1};
titlecase_once(<<"ð\236¤±", Erest@1/binary>>) ->
    {<<"ð\236¤\217">>, Erest@1};
titlecase_once(<<"ð\236¤°", Erest@1/binary>>) ->
    {<<"ð\236¤\216">>, Erest@1};
titlecase_once(<<"ð\236¤¯", Erest@1/binary>>) ->
    {<<"ð\236¤\215">>, Erest@1};
titlecase_once(<<"ð\236¤®", Erest@1/binary>>) ->
    {<<"ð\236¤\214">>, Erest@1};
titlecase_once(<<"ð\236¤­", Erest@1/binary>>) ->
    {<<"ð\236¤\213">>, Erest@1};
titlecase_once(<<"ð\236¤¬", Erest@1/binary>>) ->
    {<<"ð\236¤\212">>, Erest@1};
titlecase_once(<<"ð\236¤«", Erest@1/binary>>) ->
    {<<"ð\236¤\211">>, Erest@1};
titlecase_once(<<"ð\236¤ª", Erest@1/binary>>) ->
    {<<"ð\236¤\210">>, Erest@1};
titlecase_once(<<"ð\236¤©", Erest@1/binary>>) ->
    {<<"ð\236¤\207">>, Erest@1};
titlecase_once(<<"ð\236¤¨", Erest@1/binary>>) ->
    {<<"ð\236¤\206">>, Erest@1};
titlecase_once(<<"ð\236¤§", Erest@1/binary>>) ->
    {<<"ð\236¤\205">>, Erest@1};
titlecase_once(<<"ð\236¤¦", Erest@1/binary>>) ->
    {<<"ð\236¤\204">>, Erest@1};
titlecase_once(<<"ð\236¤¥", Erest@1/binary>>) ->
    {<<"ð\236¤\203">>, Erest@1};
titlecase_once(<<"ð\236¤¤", Erest@1/binary>>) ->
    {<<"ð\236¤\202">>, Erest@1};
titlecase_once(<<"ð\236¤£", Erest@1/binary>>) ->
    {<<"ð\236¤\201">>, Erest@1};
titlecase_once(<<"ð\236¤¢", Erest@1/binary>>) ->
    {<<"ð\236¤\200">>, Erest@1};
titlecase_once(<<"ð\221£\237", Erest@1/binary>>) ->
    {<<"ð\221¢¿">>, Erest@1};
titlecase_once(<<"ð\221£\236", Erest@1/binary>>) ->
    {<<"ð\221¢¾">>, Erest@1};
titlecase_once(<<"ð\221£\235", Erest@1/binary>>) ->
    {<<"ð\221¢½">>, Erest@1};
titlecase_once(<<"ð\221£\234", Erest@1/binary>>) ->
    {<<"ð\221¢¼">>, Erest@1};
titlecase_once(<<"ð\221£\233", Erest@1/binary>>) ->
    {<<"ð\221¢»">>, Erest@1};
titlecase_once(<<"ð\221£\232", Erest@1/binary>>) ->
    {<<"ð\221¢º">>, Erest@1};
titlecase_once(<<"ð\221£\231", Erest@1/binary>>) ->
    {<<"ð\221¢¹">>, Erest@1};
titlecase_once(<<"ð\221£\230", Erest@1/binary>>) ->
    {<<"ð\221¢¸">>, Erest@1};
titlecase_once(<<"ð\221£\227", Erest@1/binary>>) ->
    {<<"ð\221¢·">>, Erest@1};
titlecase_once(<<"ð\221£\226", Erest@1/binary>>) ->
    {<<"ð\221¢¶">>, Erest@1};
titlecase_once(<<"ð\221£\225", Erest@1/binary>>) ->
    {<<"ð\221¢µ">>, Erest@1};
titlecase_once(<<"ð\221£\224", Erest@1/binary>>) ->
    {<<"ð\221¢´">>, Erest@1};
titlecase_once(<<"ð\221£\223", Erest@1/binary>>) ->
    {<<"ð\221¢³">>, Erest@1};
titlecase_once(<<"ð\221£\222", Erest@1/binary>>) ->
    {<<"ð\221¢²">>, Erest@1};
titlecase_once(<<"ð\221£\221", Erest@1/binary>>) ->
    {<<"ð\221¢±">>, Erest@1};
titlecase_once(<<"ð\221£\220", Erest@1/binary>>) ->
    {<<"ð\221¢°">>, Erest@1};
titlecase_once(<<"ð\221£\217", Erest@1/binary>>) ->
    {<<"ð\221¢¯">>, Erest@1};
titlecase_once(<<"ð\221£\216", Erest@1/binary>>) ->
    {<<"ð\221¢®">>, Erest@1};
titlecase_once(<<"ð\221£\215", Erest@1/binary>>) ->
    {<<"ð\221¢­">>, Erest@1};
titlecase_once(<<"ð\221£\214", Erest@1/binary>>) ->
    {<<"ð\221¢¬">>, Erest@1};
titlecase_once(<<"ð\221£\213", Erest@1/binary>>) ->
    {<<"ð\221¢«">>, Erest@1};
titlecase_once(<<"ð\221£\212", Erest@1/binary>>) ->
    {<<"ð\221¢ª">>, Erest@1};
titlecase_once(<<"ð\221£\211", Erest@1/binary>>) ->
    {<<"ð\221¢©">>, Erest@1};
titlecase_once(<<"ð\221£\210", Erest@1/binary>>) ->
    {<<"ð\221¢¨">>, Erest@1};
titlecase_once(<<"ð\221£\207", Erest@1/binary>>) ->
    {<<"ð\221¢§">>, Erest@1};
titlecase_once(<<"ð\221£\206", Erest@1/binary>>) ->
    {<<"ð\221¢¦">>, Erest@1};
titlecase_once(<<"ð\221£\205", Erest@1/binary>>) ->
    {<<"ð\221¢¥">>, Erest@1};
titlecase_once(<<"ð\221£\204", Erest@1/binary>>) ->
    {<<"ð\221¢¤">>, Erest@1};
titlecase_once(<<"ð\221£\203", Erest@1/binary>>) ->
    {<<"ð\221¢£">>, Erest@1};
titlecase_once(<<"ð\221£\202", Erest@1/binary>>) ->
    {<<"ð\221¢¢">>, Erest@1};
titlecase_once(<<"ð\221£\201", Erest@1/binary>>) ->
    {<<"ð\221¢¡">>, Erest@1};
titlecase_once(<<"ð\221£\200", Erest@1/binary>>) ->
    {<<"ð\221¢ ">>, Erest@1};
titlecase_once(<<"ð\220³²", Erest@1/binary>>) ->
    {<<"ð\220²²">>, Erest@1};
titlecase_once(<<"ð\220³±", Erest@1/binary>>) ->
    {<<"ð\220²±">>, Erest@1};
titlecase_once(<<"ð\220³°", Erest@1/binary>>) ->
    {<<"ð\220²°">>, Erest@1};
titlecase_once(<<"ð\220³¯", Erest@1/binary>>) ->
    {<<"ð\220²¯">>, Erest@1};
titlecase_once(<<"ð\220³®", Erest@1/binary>>) ->
    {<<"ð\220²®">>, Erest@1};
titlecase_once(<<"ð\220³­", Erest@1/binary>>) ->
    {<<"ð\220²­">>, Erest@1};
titlecase_once(<<"ð\220³¬", Erest@1/binary>>) ->
    {<<"ð\220²¬">>, Erest@1};
titlecase_once(<<"ð\220³«", Erest@1/binary>>) ->
    {<<"ð\220²«">>, Erest@1};
titlecase_once(<<"ð\220³ª", Erest@1/binary>>) ->
    {<<"ð\220²ª">>, Erest@1};
titlecase_once(<<"ð\220³©", Erest@1/binary>>) ->
    {<<"ð\220²©">>, Erest@1};
titlecase_once(<<"ð\220³¨", Erest@1/binary>>) ->
    {<<"ð\220²¨">>, Erest@1};
titlecase_once(<<"ð\220³§", Erest@1/binary>>) ->
    {<<"ð\220²§">>, Erest@1};
titlecase_once(<<"ð\220³¦", Erest@1/binary>>) ->
    {<<"ð\220²¦">>, Erest@1};
titlecase_once(<<"ð\220³¥", Erest@1/binary>>) ->
    {<<"ð\220²¥">>, Erest@1};
titlecase_once(<<"ð\220³¤", Erest@1/binary>>) ->
    {<<"ð\220²¤">>, Erest@1};
titlecase_once(<<"ð\220³£", Erest@1/binary>>) ->
    {<<"ð\220²£">>, Erest@1};
titlecase_once(<<"ð\220³¢", Erest@1/binary>>) ->
    {<<"ð\220²¢">>, Erest@1};
titlecase_once(<<"ð\220³¡", Erest@1/binary>>) ->
    {<<"ð\220²¡">>, Erest@1};
titlecase_once(<<"ð\220³ ", Erest@1/binary>>) ->
    {<<"ð\220² ">>, Erest@1};
titlecase_once(<<"ð\220³\237", Erest@1/binary>>) ->
    {<<"ð\220²\237">>, Erest@1};
titlecase_once(<<"ð\220³\236", Erest@1/binary>>) ->
    {<<"ð\220²\236">>, Erest@1};
titlecase_once(<<"ð\220³\235", Erest@1/binary>>) ->
    {<<"ð\220²\235">>, Erest@1};
titlecase_once(<<"ð\220³\234", Erest@1/binary>>) ->
    {<<"ð\220²\234">>, Erest@1};
titlecase_once(<<"ð\220³\233", Erest@1/binary>>) ->
    {<<"ð\220²\233">>, Erest@1};
titlecase_once(<<"ð\220³\232", Erest@1/binary>>) ->
    {<<"ð\220²\232">>, Erest@1};
titlecase_once(<<"ð\220³\231", Erest@1/binary>>) ->
    {<<"ð\220²\231">>, Erest@1};
titlecase_once(<<"ð\220³\230", Erest@1/binary>>) ->
    {<<"ð\220²\230">>, Erest@1};
titlecase_once(<<"ð\220³\227", Erest@1/binary>>) ->
    {<<"ð\220²\227">>, Erest@1};
titlecase_once(<<"ð\220³\226", Erest@1/binary>>) ->
    {<<"ð\220²\226">>, Erest@1};
titlecase_once(<<"ð\220³\225", Erest@1/binary>>) ->
    {<<"ð\220²\225">>, Erest@1};
titlecase_once(<<"ð\220³\224", Erest@1/binary>>) ->
    {<<"ð\220²\224">>, Erest@1};
titlecase_once(<<"ð\220³\223", Erest@1/binary>>) ->
    {<<"ð\220²\223">>, Erest@1};
titlecase_once(<<"ð\220³\222", Erest@1/binary>>) ->
    {<<"ð\220²\222">>, Erest@1};
titlecase_once(<<"ð\220³\221", Erest@1/binary>>) ->
    {<<"ð\220²\221">>, Erest@1};
titlecase_once(<<"ð\220³\220", Erest@1/binary>>) ->
    {<<"ð\220²\220">>, Erest@1};
titlecase_once(<<"ð\220³\217", Erest@1/binary>>) ->
    {<<"ð\220²\217">>, Erest@1};
titlecase_once(<<"ð\220³\216", Erest@1/binary>>) ->
    {<<"ð\220²\216">>, Erest@1};
titlecase_once(<<"ð\220³\215", Erest@1/binary>>) ->
    {<<"ð\220²\215">>, Erest@1};
titlecase_once(<<"ð\220³\214", Erest@1/binary>>) ->
    {<<"ð\220²\214">>, Erest@1};
titlecase_once(<<"ð\220³\213", Erest@1/binary>>) ->
    {<<"ð\220²\213">>, Erest@1};
titlecase_once(<<"ð\220³\212", Erest@1/binary>>) ->
    {<<"ð\220²\212">>, Erest@1};
titlecase_once(<<"ð\220³\211", Erest@1/binary>>) ->
    {<<"ð\220²\211">>, Erest@1};
titlecase_once(<<"ð\220³\210", Erest@1/binary>>) ->
    {<<"ð\220²\210">>, Erest@1};
titlecase_once(<<"ð\220³\207", Erest@1/binary>>) ->
    {<<"ð\220²\207">>, Erest@1};
titlecase_once(<<"ð\220³\206", Erest@1/binary>>) ->
    {<<"ð\220²\206">>, Erest@1};
titlecase_once(<<"ð\220³\205", Erest@1/binary>>) ->
    {<<"ð\220²\205">>, Erest@1};
titlecase_once(<<"ð\220³\204", Erest@1/binary>>) ->
    {<<"ð\220²\204">>, Erest@1};
titlecase_once(<<"ð\220³\203", Erest@1/binary>>) ->
    {<<"ð\220²\203">>, Erest@1};
titlecase_once(<<"ð\220³\202", Erest@1/binary>>) ->
    {<<"ð\220²\202">>, Erest@1};
titlecase_once(<<"ð\220³\201", Erest@1/binary>>) ->
    {<<"ð\220²\201">>, Erest@1};
titlecase_once(<<"ð\220³\200", Erest@1/binary>>) ->
    {<<"ð\220²\200">>, Erest@1};
titlecase_once(<<"ð\220\223»", Erest@1/binary>>) ->
    {<<"ð\220\223\223">>, Erest@1};
titlecase_once(<<"ð\220\223º", Erest@1/binary>>) ->
    {<<"ð\220\223\222">>, Erest@1};
titlecase_once(<<"ð\220\223¹", Erest@1/binary>>) ->
    {<<"ð\220\223\221">>, Erest@1};
titlecase_once(<<"ð\220\223¸", Erest@1/binary>>) ->
    {<<"ð\220\223\220">>, Erest@1};
titlecase_once(<<"ð\220\223·", Erest@1/binary>>) ->
    {<<"ð\220\223\217">>, Erest@1};
titlecase_once(<<"ð\220\223¶", Erest@1/binary>>) ->
    {<<"ð\220\223\216">>, Erest@1};
titlecase_once(<<"ð\220\223µ", Erest@1/binary>>) ->
    {<<"ð\220\223\215">>, Erest@1};
titlecase_once(<<"ð\220\223´", Erest@1/binary>>) ->
    {<<"ð\220\223\214">>, Erest@1};
titlecase_once(<<"ð\220\223³", Erest@1/binary>>) ->
    {<<"ð\220\223\213">>, Erest@1};
titlecase_once(<<"ð\220\223²", Erest@1/binary>>) ->
    {<<"ð\220\223\212">>, Erest@1};
titlecase_once(<<"ð\220\223±", Erest@1/binary>>) ->
    {<<"ð\220\223\211">>, Erest@1};
titlecase_once(<<"ð\220\223°", Erest@1/binary>>) ->
    {<<"ð\220\223\210">>, Erest@1};
titlecase_once(<<"ð\220\223¯", Erest@1/binary>>) ->
    {<<"ð\220\223\207">>, Erest@1};
titlecase_once(<<"ð\220\223®", Erest@1/binary>>) ->
    {<<"ð\220\223\206">>, Erest@1};
titlecase_once(<<"ð\220\223­", Erest@1/binary>>) ->
    {<<"ð\220\223\205">>, Erest@1};
titlecase_once(<<"ð\220\223¬", Erest@1/binary>>) ->
    {<<"ð\220\223\204">>, Erest@1};
titlecase_once(<<"ð\220\223«", Erest@1/binary>>) ->
    {<<"ð\220\223\203">>, Erest@1};
titlecase_once(<<"ð\220\223ª", Erest@1/binary>>) ->
    {<<"ð\220\223\202">>, Erest@1};
titlecase_once(<<"ð\220\223©", Erest@1/binary>>) ->
    {<<"ð\220\223\201">>, Erest@1};
titlecase_once(<<"ð\220\223¨", Erest@1/binary>>) ->
    {<<"ð\220\223\200">>, Erest@1};
titlecase_once(<<"ð\220\223§", Erest@1/binary>>) ->
    {<<"ð\220\222¿">>, Erest@1};
titlecase_once(<<"ð\220\223¦", Erest@1/binary>>) ->
    {<<"ð\220\222¾">>, Erest@1};
titlecase_once(<<"ð\220\223¥", Erest@1/binary>>) ->
    {<<"ð\220\222½">>, Erest@1};
titlecase_once(<<"ð\220\223¤", Erest@1/binary>>) ->
    {<<"ð\220\222¼">>, Erest@1};
titlecase_once(<<"ð\220\223£", Erest@1/binary>>) ->
    {<<"ð\220\222»">>, Erest@1};
titlecase_once(<<"ð\220\223¢", Erest@1/binary>>) ->
    {<<"ð\220\222º">>, Erest@1};
titlecase_once(<<"ð\220\223¡", Erest@1/binary>>) ->
    {<<"ð\220\222¹">>, Erest@1};
titlecase_once(<<"ð\220\223 ", Erest@1/binary>>) ->
    {<<"ð\220\222¸">>, Erest@1};
titlecase_once(<<"ð\220\223\237", Erest@1/binary>>) ->
    {<<"ð\220\222·">>, Erest@1};
titlecase_once(<<"ð\220\223\236", Erest@1/binary>>) ->
    {<<"ð\220\222¶">>, Erest@1};
titlecase_once(<<"ð\220\223\235", Erest@1/binary>>) ->
    {<<"ð\220\222µ">>, Erest@1};
titlecase_once(<<"ð\220\223\234", Erest@1/binary>>) ->
    {<<"ð\220\222´">>, Erest@1};
titlecase_once(<<"ð\220\223\233", Erest@1/binary>>) ->
    {<<"ð\220\222³">>, Erest@1};
titlecase_once(<<"ð\220\223\232", Erest@1/binary>>) ->
    {<<"ð\220\222²">>, Erest@1};
titlecase_once(<<"ð\220\223\231", Erest@1/binary>>) ->
    {<<"ð\220\222±">>, Erest@1};
titlecase_once(<<"ð\220\223\230", Erest@1/binary>>) ->
    {<<"ð\220\222°">>, Erest@1};
titlecase_once(<<"ð\220\221\217", Erest@1/binary>>) ->
    {<<"ð\220\220§">>, Erest@1};
titlecase_once(<<"ð\220\221\216", Erest@1/binary>>) ->
    {<<"ð\220\220¦">>, Erest@1};
titlecase_once(<<"ð\220\221\215", Erest@1/binary>>) ->
    {<<"ð\220\220¥">>, Erest@1};
titlecase_once(<<"ð\220\221\214", Erest@1/binary>>) ->
    {<<"ð\220\220¤">>, Erest@1};
titlecase_once(<<"ð\220\221\213", Erest@1/binary>>) ->
    {<<"ð\220\220£">>, Erest@1};
titlecase_once(<<"ð\220\221\212", Erest@1/binary>>) ->
    {<<"ð\220\220¢">>, Erest@1};
titlecase_once(<<"ð\220\221\211", Erest@1/binary>>) ->
    {<<"ð\220\220¡">>, Erest@1};
titlecase_once(<<"ð\220\221\210", Erest@1/binary>>) ->
    {<<"ð\220\220 ">>, Erest@1};
titlecase_once(<<"ð\220\221\207", Erest@1/binary>>) ->
    {<<"ð\220\220\237">>, Erest@1};
titlecase_once(<<"ð\220\221\206", Erest@1/binary>>) ->
    {<<"ð\220\220\236">>, Erest@1};
titlecase_once(<<"ð\220\221\205", Erest@1/binary>>) ->
    {<<"ð\220\220\235">>, Erest@1};
titlecase_once(<<"ð\220\221\204", Erest@1/binary>>) ->
    {<<"ð\220\220\234">>, Erest@1};
titlecase_once(<<"ð\220\221\203", Erest@1/binary>>) ->
    {<<"ð\220\220\233">>, Erest@1};
titlecase_once(<<"ð\220\221\202", Erest@1/binary>>) ->
    {<<"ð\220\220\232">>, Erest@1};
titlecase_once(<<"ð\220\221\201", Erest@1/binary>>) ->
    {<<"ð\220\220\231">>, Erest@1};
titlecase_once(<<"ð\220\221\200", Erest@1/binary>>) ->
    {<<"ð\220\220\230">>, Erest@1};
titlecase_once(<<"ð\220\220¿", Erest@1/binary>>) ->
    {<<"ð\220\220\227">>, Erest@1};
titlecase_once(<<"ð\220\220¾", Erest@1/binary>>) ->
    {<<"ð\220\220\226">>, Erest@1};
titlecase_once(<<"ð\220\220½", Erest@1/binary>>) ->
    {<<"ð\220\220\225">>, Erest@1};
titlecase_once(<<"ð\220\220¼", Erest@1/binary>>) ->
    {<<"ð\220\220\224">>, Erest@1};
titlecase_once(<<"ð\220\220»", Erest@1/binary>>) ->
    {<<"ð\220\220\223">>, Erest@1};
titlecase_once(<<"ð\220\220º", Erest@1/binary>>) ->
    {<<"ð\220\220\222">>, Erest@1};
titlecase_once(<<"ð\220\220¹", Erest@1/binary>>) ->
    {<<"ð\220\220\221">>, Erest@1};
titlecase_once(<<"ð\220\220¸", Erest@1/binary>>) ->
    {<<"ð\220\220\220">>, Erest@1};
titlecase_once(<<"ð\220\220·", Erest@1/binary>>) ->
    {<<"ð\220\220\217">>, Erest@1};
titlecase_once(<<"ð\220\220¶", Erest@1/binary>>) ->
    {<<"ð\220\220\216">>, Erest@1};
titlecase_once(<<"ð\220\220µ", Erest@1/binary>>) ->
    {<<"ð\220\220\215">>, Erest@1};
titlecase_once(<<"ð\220\220´", Erest@1/binary>>) ->
    {<<"ð\220\220\214">>, Erest@1};
titlecase_once(<<"ð\220\220³", Erest@1/binary>>) ->
    {<<"ð\220\220\213">>, Erest@1};
titlecase_once(<<"ð\220\220²", Erest@1/binary>>) ->
    {<<"ð\220\220\212">>, Erest@1};
titlecase_once(<<"ð\220\220±", Erest@1/binary>>) ->
    {<<"ð\220\220\211">>, Erest@1};
titlecase_once(<<"ð\220\220°", Erest@1/binary>>) ->
    {<<"ð\220\220\210">>, Erest@1};
titlecase_once(<<"ð\220\220¯", Erest@1/binary>>) ->
    {<<"ð\220\220\207">>, Erest@1};
titlecase_once(<<"ð\220\220®", Erest@1/binary>>) ->
    {<<"ð\220\220\206">>, Erest@1};
titlecase_once(<<"ð\220\220­", Erest@1/binary>>) ->
    {<<"ð\220\220\205">>, Erest@1};
titlecase_once(<<"ð\220\220¬", Erest@1/binary>>) ->
    {<<"ð\220\220\204">>, Erest@1};
titlecase_once(<<"ð\220\220«", Erest@1/binary>>) ->
    {<<"ð\220\220\203">>, Erest@1};
titlecase_once(<<"ð\220\220ª", Erest@1/binary>>) ->
    {<<"ð\220\220\202">>, Erest@1};
titlecase_once(<<"ð\220\220©", Erest@1/binary>>) ->
    {<<"ð\220\220\201">>, Erest@1};
titlecase_once(<<"ð\220\220¨", Erest@1/binary>>) ->
    {<<"ð\220\220\200">>, Erest@1};
titlecase_once(<<"ï½\232", Erest@1/binary>>) ->
    {<<"ï¼º">>, Erest@1};
titlecase_once(<<"ï½\231", Erest@1/binary>>) ->
    {<<"ï¼¹">>, Erest@1};
titlecase_once(<<"ï½\230", Erest@1/binary>>) ->
    {<<"ï¼¸">>, Erest@1};
titlecase_once(<<"ï½\227", Erest@1/binary>>) ->
    {<<"ï¼·">>, Erest@1};
titlecase_once(<<"ï½\226", Erest@1/binary>>) ->
    {<<"ï¼¶">>, Erest@1};
titlecase_once(<<"ï½\225", Erest@1/binary>>) ->
    {<<"ï¼µ">>, Erest@1};
titlecase_once(<<"ï½\224", Erest@1/binary>>) ->
    {<<"ï¼´">>, Erest@1};
titlecase_once(<<"ï½\223", Erest@1/binary>>) ->
    {<<"ï¼³">>, Erest@1};
titlecase_once(<<"ï½\222", Erest@1/binary>>) ->
    {<<"ï¼²">>, Erest@1};
titlecase_once(<<"ï½\221", Erest@1/binary>>) ->
    {<<"ï¼±">>, Erest@1};
titlecase_once(<<"ï½\220", Erest@1/binary>>) ->
    {<<"ï¼°">>, Erest@1};
titlecase_once(<<"ï½\217", Erest@1/binary>>) ->
    {<<"ï¼¯">>, Erest@1};
titlecase_once(<<"ï½\216", Erest@1/binary>>) ->
    {<<"ï¼®">>, Erest@1};
titlecase_once(<<"ï½\215", Erest@1/binary>>) ->
    {<<"ï¼­">>, Erest@1};
titlecase_once(<<"ï½\214", Erest@1/binary>>) ->
    {<<"ï¼¬">>, Erest@1};
titlecase_once(<<"ï½\213", Erest@1/binary>>) ->
    {<<"ï¼«">>, Erest@1};
titlecase_once(<<"ï½\212", Erest@1/binary>>) ->
    {<<"ï¼ª">>, Erest@1};
titlecase_once(<<"ï½\211", Erest@1/binary>>) ->
    {<<"ï¼©">>, Erest@1};
titlecase_once(<<"ï½\210", Erest@1/binary>>) ->
    {<<"ï¼¨">>, Erest@1};
titlecase_once(<<"ï½\207", Erest@1/binary>>) ->
    {<<"ï¼§">>, Erest@1};
titlecase_once(<<"ï½\206", Erest@1/binary>>) ->
    {<<"ï¼¦">>, Erest@1};
titlecase_once(<<"ï½\205", Erest@1/binary>>) ->
    {<<"ï¼¥">>, Erest@1};
titlecase_once(<<"ï½\204", Erest@1/binary>>) ->
    {<<"ï¼¤">>, Erest@1};
titlecase_once(<<"ï½\203", Erest@1/binary>>) ->
    {<<"ï¼£">>, Erest@1};
titlecase_once(<<"ï½\202", Erest@1/binary>>) ->
    {<<"ï¼¢">>, Erest@1};
titlecase_once(<<"ï½\201", Erest@1/binary>>) ->
    {<<"ï¼¡">>, Erest@1};
titlecase_once(<<"ê®¿", Erest@1/binary>>) ->
    {<<"á\217¯">>, Erest@1};
titlecase_once(<<"ê®¾", Erest@1/binary>>) ->
    {<<"á\217®">>, Erest@1};
titlecase_once(<<"ê®½", Erest@1/binary>>) ->
    {<<"á\217­">>, Erest@1};
titlecase_once(<<"ê®¼", Erest@1/binary>>) ->
    {<<"á\217¬">>, Erest@1};
titlecase_once(<<"ê®»", Erest@1/binary>>) ->
    {<<"á\217«">>, Erest@1};
titlecase_once(<<"ê®º", Erest@1/binary>>) ->
    {<<"á\217ª">>, Erest@1};
titlecase_once(<<"ê®¹", Erest@1/binary>>) ->
    {<<"á\217©">>, Erest@1};
titlecase_once(<<"ê®¸", Erest@1/binary>>) ->
    {<<"á\217¨">>, Erest@1};
titlecase_once(<<"ê®·", Erest@1/binary>>) ->
    {<<"á\217§">>, Erest@1};
titlecase_once(<<"ê®¶", Erest@1/binary>>) ->
    {<<"á\217¦">>, Erest@1};
titlecase_once(<<"ê®µ", Erest@1/binary>>) ->
    {<<"á\217¥">>, Erest@1};
titlecase_once(<<"ê®´", Erest@1/binary>>) ->
    {<<"á\217¤">>, Erest@1};
titlecase_once(<<"ê®³", Erest@1/binary>>) ->
    {<<"á\217£">>, Erest@1};
titlecase_once(<<"ê®²", Erest@1/binary>>) ->
    {<<"á\217¢">>, Erest@1};
titlecase_once(<<"ê®±", Erest@1/binary>>) ->
    {<<"á\217¡">>, Erest@1};
titlecase_once(<<"ê®°", Erest@1/binary>>) ->
    {<<"á\217 ">>, Erest@1};
titlecase_once(<<"ê®¯", Erest@1/binary>>) ->
    {<<"á\217\237">>, Erest@1};
titlecase_once(<<"ê®®", Erest@1/binary>>) ->
    {<<"á\217\236">>, Erest@1};
titlecase_once(<<"ê®­", Erest@1/binary>>) ->
    {<<"á\217\235">>, Erest@1};
titlecase_once(<<"ê®¬", Erest@1/binary>>) ->
    {<<"á\217\234">>, Erest@1};
titlecase_once(<<"ê®«", Erest@1/binary>>) ->
    {<<"á\217\233">>, Erest@1};
titlecase_once(<<"ê®ª", Erest@1/binary>>) ->
    {<<"á\217\232">>, Erest@1};
titlecase_once(<<"ê®©", Erest@1/binary>>) ->
    {<<"á\217\231">>, Erest@1};
titlecase_once(<<"ê®¨", Erest@1/binary>>) ->
    {<<"á\217\230">>, Erest@1};
titlecase_once(<<"ê®§", Erest@1/binary>>) ->
    {<<"á\217\227">>, Erest@1};
titlecase_once(<<"ê®¦", Erest@1/binary>>) ->
    {<<"á\217\226">>, Erest@1};
titlecase_once(<<"ê®¥", Erest@1/binary>>) ->
    {<<"á\217\225">>, Erest@1};
titlecase_once(<<"ê®¤", Erest@1/binary>>) ->
    {<<"á\217\224">>, Erest@1};
titlecase_once(<<"ê®£", Erest@1/binary>>) ->
    {<<"á\217\223">>, Erest@1};
titlecase_once(<<"ê®¢", Erest@1/binary>>) ->
    {<<"á\217\222">>, Erest@1};
titlecase_once(<<"ê®¡", Erest@1/binary>>) ->
    {<<"á\217\221">>, Erest@1};
titlecase_once(<<"ê® ", Erest@1/binary>>) ->
    {<<"á\217\220">>, Erest@1};
titlecase_once(<<"ê®\237", Erest@1/binary>>) ->
    {<<"á\217\217">>, Erest@1};
titlecase_once(<<"ê®\236", Erest@1/binary>>) ->
    {<<"á\217\216">>, Erest@1};
titlecase_once(<<"ê®\235", Erest@1/binary>>) ->
    {<<"á\217\215">>, Erest@1};
titlecase_once(<<"ê®\234", Erest@1/binary>>) ->
    {<<"á\217\214">>, Erest@1};
titlecase_once(<<"ê®\233", Erest@1/binary>>) ->
    {<<"á\217\213">>, Erest@1};
titlecase_once(<<"ê®\232", Erest@1/binary>>) ->
    {<<"á\217\212">>, Erest@1};
titlecase_once(<<"ê®\231", Erest@1/binary>>) ->
    {<<"á\217\211">>, Erest@1};
titlecase_once(<<"ê®\230", Erest@1/binary>>) ->
    {<<"á\217\210">>, Erest@1};
titlecase_once(<<"ê®\227", Erest@1/binary>>) ->
    {<<"á\217\207">>, Erest@1};
titlecase_once(<<"ê®\226", Erest@1/binary>>) ->
    {<<"á\217\206">>, Erest@1};
titlecase_once(<<"ê®\225", Erest@1/binary>>) ->
    {<<"á\217\205">>, Erest@1};
titlecase_once(<<"ê®\224", Erest@1/binary>>) ->
    {<<"á\217\204">>, Erest@1};
titlecase_once(<<"ê®\223", Erest@1/binary>>) ->
    {<<"á\217\203">>, Erest@1};
titlecase_once(<<"ê®\222", Erest@1/binary>>) ->
    {<<"á\217\202">>, Erest@1};
titlecase_once(<<"ê®\221", Erest@1/binary>>) ->
    {<<"á\217\201">>, Erest@1};
titlecase_once(<<"ê®\220", Erest@1/binary>>) ->
    {<<"á\217\200">>, Erest@1};
titlecase_once(<<"ê®\217", Erest@1/binary>>) ->
    {<<"á\216¿">>, Erest@1};
titlecase_once(<<"ê®\216", Erest@1/binary>>) ->
    {<<"á\216¾">>, Erest@1};
titlecase_once(<<"ê®\215", Erest@1/binary>>) ->
    {<<"á\216½">>, Erest@1};
titlecase_once(<<"ê®\214", Erest@1/binary>>) ->
    {<<"á\216¼">>, Erest@1};
titlecase_once(<<"ê®\213", Erest@1/binary>>) ->
    {<<"á\216»">>, Erest@1};
titlecase_once(<<"ê®\212", Erest@1/binary>>) ->
    {<<"á\216º">>, Erest@1};
titlecase_once(<<"ê®\211", Erest@1/binary>>) ->
    {<<"á\216¹">>, Erest@1};
titlecase_once(<<"ê®\210", Erest@1/binary>>) ->
    {<<"á\216¸">>, Erest@1};
titlecase_once(<<"ê®\207", Erest@1/binary>>) ->
    {<<"á\216·">>, Erest@1};
titlecase_once(<<"ê®\206", Erest@1/binary>>) ->
    {<<"á\216¶">>, Erest@1};
titlecase_once(<<"ê®\205", Erest@1/binary>>) ->
    {<<"á\216µ">>, Erest@1};
titlecase_once(<<"ê®\204", Erest@1/binary>>) ->
    {<<"á\216´">>, Erest@1};
titlecase_once(<<"ê®\203", Erest@1/binary>>) ->
    {<<"á\216³">>, Erest@1};
titlecase_once(<<"ê®\202", Erest@1/binary>>) ->
    {<<"á\216²">>, Erest@1};
titlecase_once(<<"ê®\201", Erest@1/binary>>) ->
    {<<"á\216±">>, Erest@1};
titlecase_once(<<"ê®\200", Erest@1/binary>>) ->
    {<<"á\216°">>, Erest@1};
titlecase_once(<<"ê­¿", Erest@1/binary>>) ->
    {<<"á\216¯">>, Erest@1};
titlecase_once(<<"ê­¾", Erest@1/binary>>) ->
    {<<"á\216®">>, Erest@1};
titlecase_once(<<"ê­½", Erest@1/binary>>) ->
    {<<"á\216­">>, Erest@1};
titlecase_once(<<"ê­¼", Erest@1/binary>>) ->
    {<<"á\216¬">>, Erest@1};
titlecase_once(<<"ê­»", Erest@1/binary>>) ->
    {<<"á\216«">>, Erest@1};
titlecase_once(<<"ê­º", Erest@1/binary>>) ->
    {<<"á\216ª">>, Erest@1};
titlecase_once(<<"ê­¹", Erest@1/binary>>) ->
    {<<"á\216©">>, Erest@1};
titlecase_once(<<"ê­¸", Erest@1/binary>>) ->
    {<<"á\216¨">>, Erest@1};
titlecase_once(<<"ê­·", Erest@1/binary>>) ->
    {<<"á\216§">>, Erest@1};
titlecase_once(<<"ê­¶", Erest@1/binary>>) ->
    {<<"á\216¦">>, Erest@1};
titlecase_once(<<"ê­µ", Erest@1/binary>>) ->
    {<<"á\216¥">>, Erest@1};
titlecase_once(<<"ê­´", Erest@1/binary>>) ->
    {<<"á\216¤">>, Erest@1};
titlecase_once(<<"ê­³", Erest@1/binary>>) ->
    {<<"á\216£">>, Erest@1};
titlecase_once(<<"ê­²", Erest@1/binary>>) ->
    {<<"á\216¢">>, Erest@1};
titlecase_once(<<"ê­±", Erest@1/binary>>) ->
    {<<"á\216¡">>, Erest@1};
titlecase_once(<<"ê­°", Erest@1/binary>>) ->
    {<<"á\216 ">>, Erest@1};
titlecase_once(<<"ê­\223", Erest@1/binary>>) ->
    {<<"ê\236³">>, Erest@1};
titlecase_once(<<"ê\236·", Erest@1/binary>>) ->
    {<<"ê\236¶">>, Erest@1};
titlecase_once(<<"ê\236µ", Erest@1/binary>>) ->
    {<<"ê\236´">>, Erest@1};
titlecase_once(<<"ê\236©", Erest@1/binary>>) ->
    {<<"ê\236¨">>, Erest@1};
titlecase_once(<<"ê\236§", Erest@1/binary>>) ->
    {<<"ê\236¦">>, Erest@1};
titlecase_once(<<"ê\236¥", Erest@1/binary>>) ->
    {<<"ê\236¤">>, Erest@1};
titlecase_once(<<"ê\236£", Erest@1/binary>>) ->
    {<<"ê\236¢">>, Erest@1};
titlecase_once(<<"ê\236¡", Erest@1/binary>>) ->
    {<<"ê\236 ">>, Erest@1};
titlecase_once(<<"ê\236\237", Erest@1/binary>>) ->
    {<<"ê\236\236">>, Erest@1};
titlecase_once(<<"ê\236\235", Erest@1/binary>>) ->
    {<<"ê\236\234">>, Erest@1};
titlecase_once(<<"ê\236\233", Erest@1/binary>>) ->
    {<<"ê\236\232">>, Erest@1};
titlecase_once(<<"ê\236\231", Erest@1/binary>>) ->
    {<<"ê\236\230">>, Erest@1};
titlecase_once(<<"ê\236\227", Erest@1/binary>>) ->
    {<<"ê\236\226">>, Erest@1};
titlecase_once(<<"ê\236\223", Erest@1/binary>>) ->
    {<<"ê\236\222">>, Erest@1};
titlecase_once(<<"ê\236\221", Erest@1/binary>>) ->
    {<<"ê\236\220">>, Erest@1};
titlecase_once(<<"ê\236\214", Erest@1/binary>>) ->
    {<<"ê\236\213">>, Erest@1};
titlecase_once(<<"ê\236\207", Erest@1/binary>>) ->
    {<<"ê\236\206">>, Erest@1};
titlecase_once(<<"ê\236\205", Erest@1/binary>>) ->
    {<<"ê\236\204">>, Erest@1};
titlecase_once(<<"ê\236\203", Erest@1/binary>>) ->
    {<<"ê\236\202">>, Erest@1};
titlecase_once(<<"ê\236\201", Erest@1/binary>>) ->
    {<<"ê\236\200">>, Erest@1};
titlecase_once(<<"ê\235¿", Erest@1/binary>>) ->
    {<<"ê\235¾">>, Erest@1};
titlecase_once(<<"ê\235¼", Erest@1/binary>>) ->
    {<<"ê\235»">>, Erest@1};
titlecase_once(<<"ê\235º", Erest@1/binary>>) ->
    {<<"ê\235¹">>, Erest@1};
titlecase_once(<<"ê\235¯", Erest@1/binary>>) ->
    {<<"ê\235®">>, Erest@1};
titlecase_once(<<"ê\235­", Erest@1/binary>>) ->
    {<<"ê\235¬">>, Erest@1};
titlecase_once(<<"ê\235«", Erest@1/binary>>) ->
    {<<"ê\235ª">>, Erest@1};
titlecase_once(<<"ê\235©", Erest@1/binary>>) ->
    {<<"ê\235¨">>, Erest@1};
titlecase_once(<<"ê\235§", Erest@1/binary>>) ->
    {<<"ê\235¦">>, Erest@1};
titlecase_once(<<"ê\235¥", Erest@1/binary>>) ->
    {<<"ê\235¤">>, Erest@1};
titlecase_once(<<"ê\235£", Erest@1/binary>>) ->
    {<<"ê\235¢">>, Erest@1};
titlecase_once(<<"ê\235¡", Erest@1/binary>>) ->
    {<<"ê\235 ">>, Erest@1};
titlecase_once(<<"ê\235\237", Erest@1/binary>>) ->
    {<<"ê\235\236">>, Erest@1};
titlecase_once(<<"ê\235\235", Erest@1/binary>>) ->
    {<<"ê\235\234">>, Erest@1};
titlecase_once(<<"ê\235\233", Erest@1/binary>>) ->
    {<<"ê\235\232">>, Erest@1};
titlecase_once(<<"ê\235\231", Erest@1/binary>>) ->
    {<<"ê\235\230">>, Erest@1};
titlecase_once(<<"ê\235\227", Erest@1/binary>>) ->
    {<<"ê\235\226">>, Erest@1};
titlecase_once(<<"ê\235\225", Erest@1/binary>>) ->
    {<<"ê\235\224">>, Erest@1};
titlecase_once(<<"ê\235\223", Erest@1/binary>>) ->
    {<<"ê\235\222">>, Erest@1};
titlecase_once(<<"ê\235\221", Erest@1/binary>>) ->
    {<<"ê\235\220">>, Erest@1};
titlecase_once(<<"ê\235\217", Erest@1/binary>>) ->
    {<<"ê\235\216">>, Erest@1};
titlecase_once(<<"ê\235\215", Erest@1/binary>>) ->
    {<<"ê\235\214">>, Erest@1};
titlecase_once(<<"ê\235\213", Erest@1/binary>>) ->
    {<<"ê\235\212">>, Erest@1};
titlecase_once(<<"ê\235\211", Erest@1/binary>>) ->
    {<<"ê\235\210">>, Erest@1};
titlecase_once(<<"ê\235\207", Erest@1/binary>>) ->
    {<<"ê\235\206">>, Erest@1};
titlecase_once(<<"ê\235\205", Erest@1/binary>>) ->
    {<<"ê\235\204">>, Erest@1};
titlecase_once(<<"ê\235\203", Erest@1/binary>>) ->
    {<<"ê\235\202">>, Erest@1};
titlecase_once(<<"ê\235\201", Erest@1/binary>>) ->
    {<<"ê\235\200">>, Erest@1};
titlecase_once(<<"ê\234¿", Erest@1/binary>>) ->
    {<<"ê\234¾">>, Erest@1};
titlecase_once(<<"ê\234½", Erest@1/binary>>) ->
    {<<"ê\234¼">>, Erest@1};
titlecase_once(<<"ê\234»", Erest@1/binary>>) ->
    {<<"ê\234º">>, Erest@1};
titlecase_once(<<"ê\234¹", Erest@1/binary>>) ->
    {<<"ê\234¸">>, Erest@1};
titlecase_once(<<"ê\234·", Erest@1/binary>>) ->
    {<<"ê\234¶">>, Erest@1};
titlecase_once(<<"ê\234µ", Erest@1/binary>>) ->
    {<<"ê\234´">>, Erest@1};
titlecase_once(<<"ê\234³", Erest@1/binary>>) ->
    {<<"ê\234²">>, Erest@1};
titlecase_once(<<"ê\234¯", Erest@1/binary>>) ->
    {<<"ê\234®">>, Erest@1};
titlecase_once(<<"ê\234­", Erest@1/binary>>) ->
    {<<"ê\234¬">>, Erest@1};
titlecase_once(<<"ê\234«", Erest@1/binary>>) ->
    {<<"ê\234ª">>, Erest@1};
titlecase_once(<<"ê\234©", Erest@1/binary>>) ->
    {<<"ê\234¨">>, Erest@1};
titlecase_once(<<"ê\234§", Erest@1/binary>>) ->
    {<<"ê\234¦">>, Erest@1};
titlecase_once(<<"ê\234¥", Erest@1/binary>>) ->
    {<<"ê\234¤">>, Erest@1};
titlecase_once(<<"ê\234£", Erest@1/binary>>) ->
    {<<"ê\234¢">>, Erest@1};
titlecase_once(<<"ê\232\233", Erest@1/binary>>) ->
    {<<"ê\232\232">>, Erest@1};
titlecase_once(<<"ê\232\231", Erest@1/binary>>) ->
    {<<"ê\232\230">>, Erest@1};
titlecase_once(<<"ê\232\227", Erest@1/binary>>) ->
    {<<"ê\232\226">>, Erest@1};
titlecase_once(<<"ê\232\225", Erest@1/binary>>) ->
    {<<"ê\232\224">>, Erest@1};
titlecase_once(<<"ê\232\223", Erest@1/binary>>) ->
    {<<"ê\232\222">>, Erest@1};
titlecase_once(<<"ê\232\221", Erest@1/binary>>) ->
    {<<"ê\232\220">>, Erest@1};
titlecase_once(<<"ê\232\217", Erest@1/binary>>) ->
    {<<"ê\232\216">>, Erest@1};
titlecase_once(<<"ê\232\215", Erest@1/binary>>) ->
    {<<"ê\232\214">>, Erest@1};
titlecase_once(<<"ê\232\213", Erest@1/binary>>) ->
    {<<"ê\232\212">>, Erest@1};
titlecase_once(<<"ê\232\211", Erest@1/binary>>) ->
    {<<"ê\232\210">>, Erest@1};
titlecase_once(<<"ê\232\207", Erest@1/binary>>) ->
    {<<"ê\232\206">>, Erest@1};
titlecase_once(<<"ê\232\205", Erest@1/binary>>) ->
    {<<"ê\232\204">>, Erest@1};
titlecase_once(<<"ê\232\203", Erest@1/binary>>) ->
    {<<"ê\232\202">>, Erest@1};
titlecase_once(<<"ê\232\201", Erest@1/binary>>) ->
    {<<"ê\232\200">>, Erest@1};
titlecase_once(<<"ê\231­", Erest@1/binary>>) ->
    {<<"ê\231¬">>, Erest@1};
titlecase_once(<<"ê\231«", Erest@1/binary>>) ->
    {<<"ê\231ª">>, Erest@1};
titlecase_once(<<"ê\231©", Erest@1/binary>>) ->
    {<<"ê\231¨">>, Erest@1};
titlecase_once(<<"ê\231§", Erest@1/binary>>) ->
    {<<"ê\231¦">>, Erest@1};
titlecase_once(<<"ê\231¥", Erest@1/binary>>) ->
    {<<"ê\231¤">>, Erest@1};
titlecase_once(<<"ê\231£", Erest@1/binary>>) ->
    {<<"ê\231¢">>, Erest@1};
titlecase_once(<<"ê\231¡", Erest@1/binary>>) ->
    {<<"ê\231 ">>, Erest@1};
titlecase_once(<<"ê\231\237", Erest@1/binary>>) ->
    {<<"ê\231\236">>, Erest@1};
titlecase_once(<<"ê\231\235", Erest@1/binary>>) ->
    {<<"ê\231\234">>, Erest@1};
titlecase_once(<<"ê\231\233", Erest@1/binary>>) ->
    {<<"ê\231\232">>, Erest@1};
titlecase_once(<<"ê\231\231", Erest@1/binary>>) ->
    {<<"ê\231\230">>, Erest@1};
titlecase_once(<<"ê\231\227", Erest@1/binary>>) ->
    {<<"ê\231\226">>, Erest@1};
titlecase_once(<<"ê\231\225", Erest@1/binary>>) ->
    {<<"ê\231\224">>, Erest@1};
titlecase_once(<<"ê\231\223", Erest@1/binary>>) ->
    {<<"ê\231\222">>, Erest@1};
titlecase_once(<<"ê\231\221", Erest@1/binary>>) ->
    {<<"ê\231\220">>, Erest@1};
titlecase_once(<<"ê\231\217", Erest@1/binary>>) ->
    {<<"ê\231\216">>, Erest@1};
titlecase_once(<<"ê\231\215", Erest@1/binary>>) ->
    {<<"ê\231\214">>, Erest@1};
titlecase_once(<<"ê\231\213", Erest@1/binary>>) ->
    {<<"ê\231\212">>, Erest@1};
titlecase_once(<<"ê\231\211", Erest@1/binary>>) ->
    {<<"ê\231\210">>, Erest@1};
titlecase_once(<<"ê\231\207", Erest@1/binary>>) ->
    {<<"ê\231\206">>, Erest@1};
titlecase_once(<<"ê\231\205", Erest@1/binary>>) ->
    {<<"ê\231\204">>, Erest@1};
titlecase_once(<<"ê\231\203", Erest@1/binary>>) ->
    {<<"ê\231\202">>, Erest@1};
titlecase_once(<<"ê\231\201", Erest@1/binary>>) ->
    {<<"ê\231\200">>, Erest@1};
titlecase_once(<<"â´­", Erest@1/binary>>) ->
    {<<"á\203\215">>, Erest@1};
titlecase_once(<<"â´§", Erest@1/binary>>) ->
    {<<"á\203\207">>, Erest@1};
titlecase_once(<<"â´¥", Erest@1/binary>>) ->
    {<<"á\203\205">>, Erest@1};
titlecase_once(<<"â´¤", Erest@1/binary>>) ->
    {<<"á\203\204">>, Erest@1};
titlecase_once(<<"â´£", Erest@1/binary>>) ->
    {<<"á\203\203">>, Erest@1};
titlecase_once(<<"â´¢", Erest@1/binary>>) ->
    {<<"á\203\202">>, Erest@1};
titlecase_once(<<"â´¡", Erest@1/binary>>) ->
    {<<"á\203\201">>, Erest@1};
titlecase_once(<<"â´ ", Erest@1/binary>>) ->
    {<<"á\203\200">>, Erest@1};
titlecase_once(<<"â´\237", Erest@1/binary>>) ->
    {<<"á\202¿">>, Erest@1};
titlecase_once(<<"â´\236", Erest@1/binary>>) ->
    {<<"á\202¾">>, Erest@1};
titlecase_once(<<"â´\235", Erest@1/binary>>) ->
    {<<"á\202½">>, Erest@1};
titlecase_once(<<"â´\234", Erest@1/binary>>) ->
    {<<"á\202¼">>, Erest@1};
titlecase_once(<<"â´\233", Erest@1/binary>>) ->
    {<<"á\202»">>, Erest@1};
titlecase_once(<<"â´\232", Erest@1/binary>>) ->
    {<<"á\202º">>, Erest@1};
titlecase_once(<<"â´\231", Erest@1/binary>>) ->
    {<<"á\202¹">>, Erest@1};
titlecase_once(<<"â´\230", Erest@1/binary>>) ->
    {<<"á\202¸">>, Erest@1};
titlecase_once(<<"â´\227", Erest@1/binary>>) ->
    {<<"á\202·">>, Erest@1};
titlecase_once(<<"â´\226", Erest@1/binary>>) ->
    {<<"á\202¶">>, Erest@1};
titlecase_once(<<"â´\225", Erest@1/binary>>) ->
    {<<"á\202µ">>, Erest@1};
titlecase_once(<<"â´\224", Erest@1/binary>>) ->
    {<<"á\202´">>, Erest@1};
titlecase_once(<<"â´\223", Erest@1/binary>>) ->
    {<<"á\202³">>, Erest@1};
titlecase_once(<<"â´\222", Erest@1/binary>>) ->
    {<<"á\202²">>, Erest@1};
titlecase_once(<<"â´\221", Erest@1/binary>>) ->
    {<<"á\202±">>, Erest@1};
titlecase_once(<<"â´\220", Erest@1/binary>>) ->
    {<<"á\202°">>, Erest@1};
titlecase_once(<<"â´\217", Erest@1/binary>>) ->
    {<<"á\202¯">>, Erest@1};
titlecase_once(<<"â´\216", Erest@1/binary>>) ->
    {<<"á\202®">>, Erest@1};
titlecase_once(<<"â´\215", Erest@1/binary>>) ->
    {<<"á\202­">>, Erest@1};
titlecase_once(<<"â´\214", Erest@1/binary>>) ->
    {<<"á\202¬">>, Erest@1};
titlecase_once(<<"â´\213", Erest@1/binary>>) ->
    {<<"á\202«">>, Erest@1};
titlecase_once(<<"â´\212", Erest@1/binary>>) ->
    {<<"á\202ª">>, Erest@1};
titlecase_once(<<"â´\211", Erest@1/binary>>) ->
    {<<"á\202©">>, Erest@1};
titlecase_once(<<"â´\210", Erest@1/binary>>) ->
    {<<"á\202¨">>, Erest@1};
titlecase_once(<<"â´\207", Erest@1/binary>>) ->
    {<<"á\202§">>, Erest@1};
titlecase_once(<<"â´\206", Erest@1/binary>>) ->
    {<<"á\202¦">>, Erest@1};
titlecase_once(<<"â´\205", Erest@1/binary>>) ->
    {<<"á\202¥">>, Erest@1};
titlecase_once(<<"â´\204", Erest@1/binary>>) ->
    {<<"á\202¤">>, Erest@1};
titlecase_once(<<"â´\203", Erest@1/binary>>) ->
    {<<"á\202£">>, Erest@1};
titlecase_once(<<"â´\202", Erest@1/binary>>) ->
    {<<"á\202¢">>, Erest@1};
titlecase_once(<<"â´\201", Erest@1/binary>>) ->
    {<<"á\202¡">>, Erest@1};
titlecase_once(<<"â´\200", Erest@1/binary>>) ->
    {<<"á\202 ">>, Erest@1};
titlecase_once(<<"â³³", Erest@1/binary>>) ->
    {<<"â³²">>, Erest@1};
titlecase_once(<<"â³®", Erest@1/binary>>) ->
    {<<"â³­">>, Erest@1};
titlecase_once(<<"â³¬", Erest@1/binary>>) ->
    {<<"â³«">>, Erest@1};
titlecase_once(<<"â³£", Erest@1/binary>>) ->
    {<<"â³¢">>, Erest@1};
titlecase_once(<<"â³¡", Erest@1/binary>>) ->
    {<<"â³ ">>, Erest@1};
titlecase_once(<<"â³\237", Erest@1/binary>>) ->
    {<<"â³\236">>, Erest@1};
titlecase_once(<<"â³\235", Erest@1/binary>>) ->
    {<<"â³\234">>, Erest@1};
titlecase_once(<<"â³\233", Erest@1/binary>>) ->
    {<<"â³\232">>, Erest@1};
titlecase_once(<<"â³\231", Erest@1/binary>>) ->
    {<<"â³\230">>, Erest@1};
titlecase_once(<<"â³\227", Erest@1/binary>>) ->
    {<<"â³\226">>, Erest@1};
titlecase_once(<<"â³\225", Erest@1/binary>>) ->
    {<<"â³\224">>, Erest@1};
titlecase_once(<<"â³\223", Erest@1/binary>>) ->
    {<<"â³\222">>, Erest@1};
titlecase_once(<<"â³\221", Erest@1/binary>>) ->
    {<<"â³\220">>, Erest@1};
titlecase_once(<<"â³\217", Erest@1/binary>>) ->
    {<<"â³\216">>, Erest@1};
titlecase_once(<<"â³\215", Erest@1/binary>>) ->
    {<<"â³\214">>, Erest@1};
titlecase_once(<<"â³\213", Erest@1/binary>>) ->
    {<<"â³\212">>, Erest@1};
titlecase_once(<<"â³\211", Erest@1/binary>>) ->
    {<<"â³\210">>, Erest@1};
titlecase_once(<<"â³\207", Erest@1/binary>>) ->
    {<<"â³\206">>, Erest@1};
titlecase_once(<<"â³\205", Erest@1/binary>>) ->
    {<<"â³\204">>, Erest@1};
titlecase_once(<<"â³\203", Erest@1/binary>>) ->
    {<<"â³\202">>, Erest@1};
titlecase_once(<<"â³\201", Erest@1/binary>>) ->
    {<<"â³\200">>, Erest@1};
titlecase_once(<<"â²¿", Erest@1/binary>>) ->
    {<<"â²¾">>, Erest@1};
titlecase_once(<<"â²½", Erest@1/binary>>) ->
    {<<"â²¼">>, Erest@1};
titlecase_once(<<"â²»", Erest@1/binary>>) ->
    {<<"â²º">>, Erest@1};
titlecase_once(<<"â²¹", Erest@1/binary>>) ->
    {<<"â²¸">>, Erest@1};
titlecase_once(<<"â²·", Erest@1/binary>>) ->
    {<<"â²¶">>, Erest@1};
titlecase_once(<<"â²µ", Erest@1/binary>>) ->
    {<<"â²´">>, Erest@1};
titlecase_once(<<"â²³", Erest@1/binary>>) ->
    {<<"â²²">>, Erest@1};
titlecase_once(<<"â²±", Erest@1/binary>>) ->
    {<<"â²°">>, Erest@1};
titlecase_once(<<"â²¯", Erest@1/binary>>) ->
    {<<"â²®">>, Erest@1};
titlecase_once(<<"â²­", Erest@1/binary>>) ->
    {<<"â²¬">>, Erest@1};
titlecase_once(<<"â²«", Erest@1/binary>>) ->
    {<<"â²ª">>, Erest@1};
titlecase_once(<<"â²©", Erest@1/binary>>) ->
    {<<"â²¨">>, Erest@1};
titlecase_once(<<"â²§", Erest@1/binary>>) ->
    {<<"â²¦">>, Erest@1};
titlecase_once(<<"â²¥", Erest@1/binary>>) ->
    {<<"â²¤">>, Erest@1};
titlecase_once(<<"â²£", Erest@1/binary>>) ->
    {<<"â²¢">>, Erest@1};
titlecase_once(<<"â²¡", Erest@1/binary>>) ->
    {<<"â² ">>, Erest@1};
titlecase_once(<<"â²\237", Erest@1/binary>>) ->
    {<<"â²\236">>, Erest@1};
titlecase_once(<<"â²\235", Erest@1/binary>>) ->
    {<<"â²\234">>, Erest@1};
titlecase_once(<<"â²\233", Erest@1/binary>>) ->
    {<<"â²\232">>, Erest@1};
titlecase_once(<<"â²\231", Erest@1/binary>>) ->
    {<<"â²\230">>, Erest@1};
titlecase_once(<<"â²\227", Erest@1/binary>>) ->
    {<<"â²\226">>, Erest@1};
titlecase_once(<<"â²\225", Erest@1/binary>>) ->
    {<<"â²\224">>, Erest@1};
titlecase_once(<<"â²\223", Erest@1/binary>>) ->
    {<<"â²\222">>, Erest@1};
titlecase_once(<<"â²\221", Erest@1/binary>>) ->
    {<<"â²\220">>, Erest@1};
titlecase_once(<<"â²\217", Erest@1/binary>>) ->
    {<<"â²\216">>, Erest@1};
titlecase_once(<<"â²\215", Erest@1/binary>>) ->
    {<<"â²\214">>, Erest@1};
titlecase_once(<<"â²\213", Erest@1/binary>>) ->
    {<<"â²\212">>, Erest@1};
titlecase_once(<<"â²\211", Erest@1/binary>>) ->
    {<<"â²\210">>, Erest@1};
titlecase_once(<<"â²\207", Erest@1/binary>>) ->
    {<<"â²\206">>, Erest@1};
titlecase_once(<<"â²\205", Erest@1/binary>>) ->
    {<<"â²\204">>, Erest@1};
titlecase_once(<<"â²\203", Erest@1/binary>>) ->
    {<<"â²\202">>, Erest@1};
titlecase_once(<<"â²\201", Erest@1/binary>>) ->
    {<<"â²\200">>, Erest@1};
titlecase_once(<<"â±¶", Erest@1/binary>>) ->
    {<<"â±µ">>, Erest@1};
titlecase_once(<<"â±³", Erest@1/binary>>) ->
    {<<"â±²">>, Erest@1};
titlecase_once(<<"â±¬", Erest@1/binary>>) ->
    {<<"â±«">>, Erest@1};
titlecase_once(<<"â±ª", Erest@1/binary>>) ->
    {<<"â±©">>, Erest@1};
titlecase_once(<<"â±¨", Erest@1/binary>>) ->
    {<<"â±§">>, Erest@1};
titlecase_once(<<"â±¦", Erest@1/binary>>) ->
    {<<"È¾">>, Erest@1};
titlecase_once(<<"â±¥", Erest@1/binary>>) ->
    {<<"Èº">>, Erest@1};
titlecase_once(<<"â±¡", Erest@1/binary>>) ->
    {<<"â± ">>, Erest@1};
titlecase_once(<<"â±\236", Erest@1/binary>>) ->
    {<<"â°®">>, Erest@1};
titlecase_once(<<"â±\235", Erest@1/binary>>) ->
    {<<"â°­">>, Erest@1};
titlecase_once(<<"â±\234", Erest@1/binary>>) ->
    {<<"â°¬">>, Erest@1};
titlecase_once(<<"â±\233", Erest@1/binary>>) ->
    {<<"â°«">>, Erest@1};
titlecase_once(<<"â±\232", Erest@1/binary>>) ->
    {<<"â°ª">>, Erest@1};
titlecase_once(<<"â±\231", Erest@1/binary>>) ->
    {<<"â°©">>, Erest@1};
titlecase_once(<<"â±\230", Erest@1/binary>>) ->
    {<<"â°¨">>, Erest@1};
titlecase_once(<<"â±\227", Erest@1/binary>>) ->
    {<<"â°§">>, Erest@1};
titlecase_once(<<"â±\226", Erest@1/binary>>) ->
    {<<"â°¦">>, Erest@1};
titlecase_once(<<"â±\225", Erest@1/binary>>) ->
    {<<"â°¥">>, Erest@1};
titlecase_once(<<"â±\224", Erest@1/binary>>) ->
    {<<"â°¤">>, Erest@1};
titlecase_once(<<"â±\223", Erest@1/binary>>) ->
    {<<"â°£">>, Erest@1};
titlecase_once(<<"â±\222", Erest@1/binary>>) ->
    {<<"â°¢">>, Erest@1};
titlecase_once(<<"â±\221", Erest@1/binary>>) ->
    {<<"â°¡">>, Erest@1};
titlecase_once(<<"â±\220", Erest@1/binary>>) ->
    {<<"â° ">>, Erest@1};
titlecase_once(<<"â±\217", Erest@1/binary>>) ->
    {<<"â°\237">>, Erest@1};
titlecase_once(<<"â±\216", Erest@1/binary>>) ->
    {<<"â°\236">>, Erest@1};
titlecase_once(<<"â±\215", Erest@1/binary>>) ->
    {<<"â°\235">>, Erest@1};
titlecase_once(<<"â±\214", Erest@1/binary>>) ->
    {<<"â°\234">>, Erest@1};
titlecase_once(<<"â±\213", Erest@1/binary>>) ->
    {<<"â°\233">>, Erest@1};
titlecase_once(<<"â±\212", Erest@1/binary>>) ->
    {<<"â°\232">>, Erest@1};
titlecase_once(<<"â±\211", Erest@1/binary>>) ->
    {<<"â°\231">>, Erest@1};
titlecase_once(<<"â±\210", Erest@1/binary>>) ->
    {<<"â°\230">>, Erest@1};
titlecase_once(<<"â±\207", Erest@1/binary>>) ->
    {<<"â°\227">>, Erest@1};
titlecase_once(<<"â±\206", Erest@1/binary>>) ->
    {<<"â°\226">>, Erest@1};
titlecase_once(<<"â±\205", Erest@1/binary>>) ->
    {<<"â°\225">>, Erest@1};
titlecase_once(<<"â±\204", Erest@1/binary>>) ->
    {<<"â°\224">>, Erest@1};
titlecase_once(<<"â±\203", Erest@1/binary>>) ->
    {<<"â°\223">>, Erest@1};
titlecase_once(<<"â±\202", Erest@1/binary>>) ->
    {<<"â°\222">>, Erest@1};
titlecase_once(<<"â±\201", Erest@1/binary>>) ->
    {<<"â°\221">>, Erest@1};
titlecase_once(<<"â±\200", Erest@1/binary>>) ->
    {<<"â°\220">>, Erest@1};
titlecase_once(<<"â°¿", Erest@1/binary>>) ->
    {<<"â°\217">>, Erest@1};
titlecase_once(<<"â°¾", Erest@1/binary>>) ->
    {<<"â°\216">>, Erest@1};
titlecase_once(<<"â°½", Erest@1/binary>>) ->
    {<<"â°\215">>, Erest@1};
titlecase_once(<<"â°¼", Erest@1/binary>>) ->
    {<<"â°\214">>, Erest@1};
titlecase_once(<<"â°»", Erest@1/binary>>) ->
    {<<"â°\213">>, Erest@1};
titlecase_once(<<"â°º", Erest@1/binary>>) ->
    {<<"â°\212">>, Erest@1};
titlecase_once(<<"â°¹", Erest@1/binary>>) ->
    {<<"â°\211">>, Erest@1};
titlecase_once(<<"â°¸", Erest@1/binary>>) ->
    {<<"â°\210">>, Erest@1};
titlecase_once(<<"â°·", Erest@1/binary>>) ->
    {<<"â°\207">>, Erest@1};
titlecase_once(<<"â°¶", Erest@1/binary>>) ->
    {<<"â°\206">>, Erest@1};
titlecase_once(<<"â°µ", Erest@1/binary>>) ->
    {<<"â°\205">>, Erest@1};
titlecase_once(<<"â°´", Erest@1/binary>>) ->
    {<<"â°\204">>, Erest@1};
titlecase_once(<<"â°³", Erest@1/binary>>) ->
    {<<"â°\203">>, Erest@1};
titlecase_once(<<"â°²", Erest@1/binary>>) ->
    {<<"â°\202">>, Erest@1};
titlecase_once(<<"â°±", Erest@1/binary>>) ->
    {<<"â°\201">>, Erest@1};
titlecase_once(<<"â°°", Erest@1/binary>>) ->
    {<<"â°\200">>, Erest@1};
titlecase_once(<<"â\223©", Erest@1/binary>>) ->
    {<<"â\223\217">>, Erest@1};
titlecase_once(<<"â\223¨", Erest@1/binary>>) ->
    {<<"â\223\216">>, Erest@1};
titlecase_once(<<"â\223§", Erest@1/binary>>) ->
    {<<"â\223\215">>, Erest@1};
titlecase_once(<<"â\223¦", Erest@1/binary>>) ->
    {<<"â\223\214">>, Erest@1};
titlecase_once(<<"â\223¥", Erest@1/binary>>) ->
    {<<"â\223\213">>, Erest@1};
titlecase_once(<<"â\223¤", Erest@1/binary>>) ->
    {<<"â\223\212">>, Erest@1};
titlecase_once(<<"â\223£", Erest@1/binary>>) ->
    {<<"â\223\211">>, Erest@1};
titlecase_once(<<"â\223¢", Erest@1/binary>>) ->
    {<<"â\223\210">>, Erest@1};
titlecase_once(<<"â\223¡", Erest@1/binary>>) ->
    {<<"â\223\207">>, Erest@1};
titlecase_once(<<"â\223 ", Erest@1/binary>>) ->
    {<<"â\223\206">>, Erest@1};
titlecase_once(<<"â\223\237", Erest@1/binary>>) ->
    {<<"â\223\205">>, Erest@1};
titlecase_once(<<"â\223\236", Erest@1/binary>>) ->
    {<<"â\223\204">>, Erest@1};
titlecase_once(<<"â\223\235", Erest@1/binary>>) ->
    {<<"â\223\203">>, Erest@1};
titlecase_once(<<"â\223\234", Erest@1/binary>>) ->
    {<<"â\223\202">>, Erest@1};
titlecase_once(<<"â\223\233", Erest@1/binary>>) ->
    {<<"â\223\201">>, Erest@1};
titlecase_once(<<"â\223\232", Erest@1/binary>>) ->
    {<<"â\223\200">>, Erest@1};
titlecase_once(<<"â\223\231", Erest@1/binary>>) ->
    {<<"â\222¿">>, Erest@1};
titlecase_once(<<"â\223\230", Erest@1/binary>>) ->
    {<<"â\222¾">>, Erest@1};
titlecase_once(<<"â\223\227", Erest@1/binary>>) ->
    {<<"â\222½">>, Erest@1};
titlecase_once(<<"â\223\226", Erest@1/binary>>) ->
    {<<"â\222¼">>, Erest@1};
titlecase_once(<<"â\223\225", Erest@1/binary>>) ->
    {<<"â\222»">>, Erest@1};
titlecase_once(<<"â\223\224", Erest@1/binary>>) ->
    {<<"â\222º">>, Erest@1};
titlecase_once(<<"â\223\223", Erest@1/binary>>) ->
    {<<"â\222¹">>, Erest@1};
titlecase_once(<<"â\223\222", Erest@1/binary>>) ->
    {<<"â\222¸">>, Erest@1};
titlecase_once(<<"â\223\221", Erest@1/binary>>) ->
    {<<"â\222·">>, Erest@1};
titlecase_once(<<"â\223\220", Erest@1/binary>>) ->
    {<<"â\222¶">>, Erest@1};
titlecase_once(<<"â\206\204", Erest@1/binary>>) ->
    {<<"â\206\203">>, Erest@1};
titlecase_once(<<"â\205¿", Erest@1/binary>>) ->
    {<<"â\205¯">>, Erest@1};
titlecase_once(<<"â\205¾", Erest@1/binary>>) ->
    {<<"â\205®">>, Erest@1};
titlecase_once(<<"â\205½", Erest@1/binary>>) ->
    {<<"â\205­">>, Erest@1};
titlecase_once(<<"â\205¼", Erest@1/binary>>) ->
    {<<"â\205¬">>, Erest@1};
titlecase_once(<<"â\205»", Erest@1/binary>>) ->
    {<<"â\205«">>, Erest@1};
titlecase_once(<<"â\205º", Erest@1/binary>>) ->
    {<<"â\205ª">>, Erest@1};
titlecase_once(<<"â\205¹", Erest@1/binary>>) ->
    {<<"â\205©">>, Erest@1};
titlecase_once(<<"â\205¸", Erest@1/binary>>) ->
    {<<"â\205¨">>, Erest@1};
titlecase_once(<<"â\205·", Erest@1/binary>>) ->
    {<<"â\205§">>, Erest@1};
titlecase_once(<<"â\205¶", Erest@1/binary>>) ->
    {<<"â\205¦">>, Erest@1};
titlecase_once(<<"â\205µ", Erest@1/binary>>) ->
    {<<"â\205¥">>, Erest@1};
titlecase_once(<<"â\205´", Erest@1/binary>>) ->
    {<<"â\205¤">>, Erest@1};
titlecase_once(<<"â\205³", Erest@1/binary>>) ->
    {<<"â\205£">>, Erest@1};
titlecase_once(<<"â\205²", Erest@1/binary>>) ->
    {<<"â\205¢">>, Erest@1};
titlecase_once(<<"â\205±", Erest@1/binary>>) ->
    {<<"â\205¡">>, Erest@1};
titlecase_once(<<"â\205°", Erest@1/binary>>) ->
    {<<"â\205 ">>, Erest@1};
titlecase_once(<<"â\205\216", Erest@1/binary>>) ->
    {<<"â\204²">>, Erest@1};
titlecase_once(<<"á¿³", Erest@1/binary>>) ->
    {<<"á¿¼">>, Erest@1};
titlecase_once(<<"á¿¥", Erest@1/binary>>) ->
    {<<"á¿¬">>, Erest@1};
titlecase_once(<<"á¿¡", Erest@1/binary>>) ->
    {<<"á¿©">>, Erest@1};
titlecase_once(<<"á¿ ", Erest@1/binary>>) ->
    {<<"á¿¨">>, Erest@1};
titlecase_once(<<"á¿\221", Erest@1/binary>>) ->
    {<<"á¿\231">>, Erest@1};
titlecase_once(<<"á¿\220", Erest@1/binary>>) ->
    {<<"á¿\230">>, Erest@1};
titlecase_once(<<"á¿\203", Erest@1/binary>>) ->
    {<<"á¿\214">>, Erest@1};
titlecase_once(<<"á¾¾", Erest@1/binary>>) ->
    {<<"Î\231">>, Erest@1};
titlecase_once(<<"á¾³", Erest@1/binary>>) ->
    {<<"á¾¼">>, Erest@1};
titlecase_once(<<"á¾±", Erest@1/binary>>) ->
    {<<"á¾¹">>, Erest@1};
titlecase_once(<<"á¾°", Erest@1/binary>>) ->
    {<<"á¾¸">>, Erest@1};
titlecase_once(<<"á¾§", Erest@1/binary>>) ->
    {<<"á¾¯">>, Erest@1};
titlecase_once(<<"á¾¦", Erest@1/binary>>) ->
    {<<"á¾®">>, Erest@1};
titlecase_once(<<"á¾¥", Erest@1/binary>>) ->
    {<<"á¾­">>, Erest@1};
titlecase_once(<<"á¾¤", Erest@1/binary>>) ->
    {<<"á¾¬">>, Erest@1};
titlecase_once(<<"á¾£", Erest@1/binary>>) ->
    {<<"á¾«">>, Erest@1};
titlecase_once(<<"á¾¢", Erest@1/binary>>) ->
    {<<"á¾ª">>, Erest@1};
titlecase_once(<<"á¾¡", Erest@1/binary>>) ->
    {<<"á¾©">>, Erest@1};
titlecase_once(<<"á¾ ", Erest@1/binary>>) ->
    {<<"á¾¨">>, Erest@1};
titlecase_once(<<"á¾\227", Erest@1/binary>>) ->
    {<<"á¾\237">>, Erest@1};
titlecase_once(<<"á¾\226", Erest@1/binary>>) ->
    {<<"á¾\236">>, Erest@1};
titlecase_once(<<"á¾\225", Erest@1/binary>>) ->
    {<<"á¾\235">>, Erest@1};
titlecase_once(<<"á¾\224", Erest@1/binary>>) ->
    {<<"á¾\234">>, Erest@1};
titlecase_once(<<"á¾\223", Erest@1/binary>>) ->
    {<<"á¾\233">>, Erest@1};
titlecase_once(<<"á¾\222", Erest@1/binary>>) ->
    {<<"á¾\232">>, Erest@1};
titlecase_once(<<"á¾\221", Erest@1/binary>>) ->
    {<<"á¾\231">>, Erest@1};
titlecase_once(<<"á¾\220", Erest@1/binary>>) ->
    {<<"á¾\230">>, Erest@1};
titlecase_once(<<"á¾\207", Erest@1/binary>>) ->
    {<<"á¾\217">>, Erest@1};
titlecase_once(<<"á¾\206", Erest@1/binary>>) ->
    {<<"á¾\216">>, Erest@1};
titlecase_once(<<"á¾\205", Erest@1/binary>>) ->
    {<<"á¾\215">>, Erest@1};
titlecase_once(<<"á¾\204", Erest@1/binary>>) ->
    {<<"á¾\214">>, Erest@1};
titlecase_once(<<"á¾\203", Erest@1/binary>>) ->
    {<<"á¾\213">>, Erest@1};
titlecase_once(<<"á¾\202", Erest@1/binary>>) ->
    {<<"á¾\212">>, Erest@1};
titlecase_once(<<"á¾\201", Erest@1/binary>>) ->
    {<<"á¾\211">>, Erest@1};
titlecase_once(<<"á¾\200", Erest@1/binary>>) ->
    {<<"á¾\210">>, Erest@1};
titlecase_once(<<"á½½", Erest@1/binary>>) ->
    {<<"á¿»">>, Erest@1};
titlecase_once(<<"á½¼", Erest@1/binary>>) ->
    {<<"á¿º">>, Erest@1};
titlecase_once(<<"á½»", Erest@1/binary>>) ->
    {<<"á¿«">>, Erest@1};
titlecase_once(<<"á½º", Erest@1/binary>>) ->
    {<<"á¿ª">>, Erest@1};
titlecase_once(<<"á½¹", Erest@1/binary>>) ->
    {<<"á¿¹">>, Erest@1};
titlecase_once(<<"á½¸", Erest@1/binary>>) ->
    {<<"á¿¸">>, Erest@1};
titlecase_once(<<"á½·", Erest@1/binary>>) ->
    {<<"á¿\233">>, Erest@1};
titlecase_once(<<"á½¶", Erest@1/binary>>) ->
    {<<"á¿\232">>, Erest@1};
titlecase_once(<<"á½µ", Erest@1/binary>>) ->
    {<<"á¿\213">>, Erest@1};
titlecase_once(<<"á½´", Erest@1/binary>>) ->
    {<<"á¿\212">>, Erest@1};
titlecase_once(<<"á½³", Erest@1/binary>>) ->
    {<<"á¿\211">>, Erest@1};
titlecase_once(<<"á½²", Erest@1/binary>>) ->
    {<<"á¿\210">>, Erest@1};
titlecase_once(<<"á½±", Erest@1/binary>>) ->
    {<<"á¾»">>, Erest@1};
titlecase_once(<<"á½°", Erest@1/binary>>) ->
    {<<"á¾º">>, Erest@1};
titlecase_once(<<"á½§", Erest@1/binary>>) ->
    {<<"á½¯">>, Erest@1};
titlecase_once(<<"á½¦", Erest@1/binary>>) ->
    {<<"á½®">>, Erest@1};
titlecase_once(<<"á½¥", Erest@1/binary>>) ->
    {<<"á½­">>, Erest@1};
titlecase_once(<<"á½¤", Erest@1/binary>>) ->
    {<<"á½¬">>, Erest@1};
titlecase_once(<<"á½£", Erest@1/binary>>) ->
    {<<"á½«">>, Erest@1};
titlecase_once(<<"á½¢", Erest@1/binary>>) ->
    {<<"á½ª">>, Erest@1};
titlecase_once(<<"á½¡", Erest@1/binary>>) ->
    {<<"á½©">>, Erest@1};
titlecase_once(<<"á½ ", Erest@1/binary>>) ->
    {<<"á½¨">>, Erest@1};
titlecase_once(<<"á½\227", Erest@1/binary>>) ->
    {<<"á½\237">>, Erest@1};
titlecase_once(<<"á½\225", Erest@1/binary>>) ->
    {<<"á½\235">>, Erest@1};
titlecase_once(<<"á½\223", Erest@1/binary>>) ->
    {<<"á½\233">>, Erest@1};
titlecase_once(<<"á½\221", Erest@1/binary>>) ->
    {<<"á½\231">>, Erest@1};
titlecase_once(<<"á½\205", Erest@1/binary>>) ->
    {<<"á½\215">>, Erest@1};
titlecase_once(<<"á½\204", Erest@1/binary>>) ->
    {<<"á½\214">>, Erest@1};
titlecase_once(<<"á½\203", Erest@1/binary>>) ->
    {<<"á½\213">>, Erest@1};
titlecase_once(<<"á½\202", Erest@1/binary>>) ->
    {<<"á½\212">>, Erest@1};
titlecase_once(<<"á½\201", Erest@1/binary>>) ->
    {<<"á½\211">>, Erest@1};
titlecase_once(<<"á½\200", Erest@1/binary>>) ->
    {<<"á½\210">>, Erest@1};
titlecase_once(<<"á¼·", Erest@1/binary>>) ->
    {<<"á¼¿">>, Erest@1};
titlecase_once(<<"á¼¶", Erest@1/binary>>) ->
    {<<"á¼¾">>, Erest@1};
titlecase_once(<<"á¼µ", Erest@1/binary>>) ->
    {<<"á¼½">>, Erest@1};
titlecase_once(<<"á¼´", Erest@1/binary>>) ->
    {<<"á¼¼">>, Erest@1};
titlecase_once(<<"á¼³", Erest@1/binary>>) ->
    {<<"á¼»">>, Erest@1};
titlecase_once(<<"á¼²", Erest@1/binary>>) ->
    {<<"á¼º">>, Erest@1};
titlecase_once(<<"á¼±", Erest@1/binary>>) ->
    {<<"á¼¹">>, Erest@1};
titlecase_once(<<"á¼°", Erest@1/binary>>) ->
    {<<"á¼¸">>, Erest@1};
titlecase_once(<<"á¼§", Erest@1/binary>>) ->
    {<<"á¼¯">>, Erest@1};
titlecase_once(<<"á¼¦", Erest@1/binary>>) ->
    {<<"á¼®">>, Erest@1};
titlecase_once(<<"á¼¥", Erest@1/binary>>) ->
    {<<"á¼­">>, Erest@1};
titlecase_once(<<"á¼¤", Erest@1/binary>>) ->
    {<<"á¼¬">>, Erest@1};
titlecase_once(<<"á¼£", Erest@1/binary>>) ->
    {<<"á¼«">>, Erest@1};
titlecase_once(<<"á¼¢", Erest@1/binary>>) ->
    {<<"á¼ª">>, Erest@1};
titlecase_once(<<"á¼¡", Erest@1/binary>>) ->
    {<<"á¼©">>, Erest@1};
titlecase_once(<<"á¼ ", Erest@1/binary>>) ->
    {<<"á¼¨">>, Erest@1};
titlecase_once(<<"á¼\225", Erest@1/binary>>) ->
    {<<"á¼\235">>, Erest@1};
titlecase_once(<<"á¼\224", Erest@1/binary>>) ->
    {<<"á¼\234">>, Erest@1};
titlecase_once(<<"á¼\223", Erest@1/binary>>) ->
    {<<"á¼\233">>, Erest@1};
titlecase_once(<<"á¼\222", Erest@1/binary>>) ->
    {<<"á¼\232">>, Erest@1};
titlecase_once(<<"á¼\221", Erest@1/binary>>) ->
    {<<"á¼\231">>, Erest@1};
titlecase_once(<<"á¼\220", Erest@1/binary>>) ->
    {<<"á¼\230">>, Erest@1};
titlecase_once(<<"á¼\207", Erest@1/binary>>) ->
    {<<"á¼\217">>, Erest@1};
titlecase_once(<<"á¼\206", Erest@1/binary>>) ->
    {<<"á¼\216">>, Erest@1};
titlecase_once(<<"á¼\205", Erest@1/binary>>) ->
    {<<"á¼\215">>, Erest@1};
titlecase_once(<<"á¼\204", Erest@1/binary>>) ->
    {<<"á¼\214">>, Erest@1};
titlecase_once(<<"á¼\203", Erest@1/binary>>) ->
    {<<"á¼\213">>, Erest@1};
titlecase_once(<<"á¼\202", Erest@1/binary>>) ->
    {<<"á¼\212">>, Erest@1};
titlecase_once(<<"á¼\201", Erest@1/binary>>) ->
    {<<"á¼\211">>, Erest@1};
titlecase_once(<<"á¼\200", Erest@1/binary>>) ->
    {<<"á¼\210">>, Erest@1};
titlecase_once(<<"á»¿", Erest@1/binary>>) ->
    {<<"á»¾">>, Erest@1};
titlecase_once(<<"á»½", Erest@1/binary>>) ->
    {<<"á»¼">>, Erest@1};
titlecase_once(<<"á»»", Erest@1/binary>>) ->
    {<<"á»º">>, Erest@1};
titlecase_once(<<"á»¹", Erest@1/binary>>) ->
    {<<"á»¸">>, Erest@1};
titlecase_once(<<"á»·", Erest@1/binary>>) ->
    {<<"á»¶">>, Erest@1};
titlecase_once(<<"á»µ", Erest@1/binary>>) ->
    {<<"á»´">>, Erest@1};
titlecase_once(<<"á»³", Erest@1/binary>>) ->
    {<<"á»²">>, Erest@1};
titlecase_once(<<"á»±", Erest@1/binary>>) ->
    {<<"á»°">>, Erest@1};
titlecase_once(<<"á»¯", Erest@1/binary>>) ->
    {<<"á»®">>, Erest@1};
titlecase_once(<<"á»­", Erest@1/binary>>) ->
    {<<"á»¬">>, Erest@1};
titlecase_once(<<"á»«", Erest@1/binary>>) ->
    {<<"á»ª">>, Erest@1};
titlecase_once(<<"á»©", Erest@1/binary>>) ->
    {<<"á»¨">>, Erest@1};
titlecase_once(<<"á»§", Erest@1/binary>>) ->
    {<<"á»¦">>, Erest@1};
titlecase_once(<<"á»¥", Erest@1/binary>>) ->
    {<<"á»¤">>, Erest@1};
titlecase_once(<<"á»£", Erest@1/binary>>) ->
    {<<"á»¢">>, Erest@1};
titlecase_once(<<"á»¡", Erest@1/binary>>) ->
    {<<"á» ">>, Erest@1};
titlecase_once(<<"á»\237", Erest@1/binary>>) ->
    {<<"á»\236">>, Erest@1};
titlecase_once(<<"á»\235", Erest@1/binary>>) ->
    {<<"á»\234">>, Erest@1};
titlecase_once(<<"á»\233", Erest@1/binary>>) ->
    {<<"á»\232">>, Erest@1};
titlecase_once(<<"á»\231", Erest@1/binary>>) ->
    {<<"á»\230">>, Erest@1};
titlecase_once(<<"á»\227", Erest@1/binary>>) ->
    {<<"á»\226">>, Erest@1};
titlecase_once(<<"á»\225", Erest@1/binary>>) ->
    {<<"á»\224">>, Erest@1};
titlecase_once(<<"á»\223", Erest@1/binary>>) ->
    {<<"á»\222">>, Erest@1};
titlecase_once(<<"á»\221", Erest@1/binary>>) ->
    {<<"á»\220">>, Erest@1};
titlecase_once(<<"á»\217", Erest@1/binary>>) ->
    {<<"á»\216">>, Erest@1};
titlecase_once(<<"á»\215", Erest@1/binary>>) ->
    {<<"á»\214">>, Erest@1};
titlecase_once(<<"á»\213", Erest@1/binary>>) ->
    {<<"á»\212">>, Erest@1};
titlecase_once(<<"á»\211", Erest@1/binary>>) ->
    {<<"á»\210">>, Erest@1};
titlecase_once(<<"á»\207", Erest@1/binary>>) ->
    {<<"á»\206">>, Erest@1};
titlecase_once(<<"á»\205", Erest@1/binary>>) ->
    {<<"á»\204">>, Erest@1};
titlecase_once(<<"á»\203", Erest@1/binary>>) ->
    {<<"á»\202">>, Erest@1};
titlecase_once(<<"á»\201", Erest@1/binary>>) ->
    {<<"á»\200">>, Erest@1};
titlecase_once(<<"áº¿", Erest@1/binary>>) ->
    {<<"áº¾">>, Erest@1};
titlecase_once(<<"áº½", Erest@1/binary>>) ->
    {<<"áº¼">>, Erest@1};
titlecase_once(<<"áº»", Erest@1/binary>>) ->
    {<<"áºº">>, Erest@1};
titlecase_once(<<"áº¹", Erest@1/binary>>) ->
    {<<"áº¸">>, Erest@1};
titlecase_once(<<"áº·", Erest@1/binary>>) ->
    {<<"áº¶">>, Erest@1};
titlecase_once(<<"áºµ", Erest@1/binary>>) ->
    {<<"áº´">>, Erest@1};
titlecase_once(<<"áº³", Erest@1/binary>>) ->
    {<<"áº²">>, Erest@1};
titlecase_once(<<"áº±", Erest@1/binary>>) ->
    {<<"áº°">>, Erest@1};
titlecase_once(<<"áº¯", Erest@1/binary>>) ->
    {<<"áº®">>, Erest@1};
titlecase_once(<<"áº­", Erest@1/binary>>) ->
    {<<"áº¬">>, Erest@1};
titlecase_once(<<"áº«", Erest@1/binary>>) ->
    {<<"áºª">>, Erest@1};
titlecase_once(<<"áº©", Erest@1/binary>>) ->
    {<<"áº¨">>, Erest@1};
titlecase_once(<<"áº§", Erest@1/binary>>) ->
    {<<"áº¦">>, Erest@1};
titlecase_once(<<"áº¥", Erest@1/binary>>) ->
    {<<"áº¤">>, Erest@1};
titlecase_once(<<"áº£", Erest@1/binary>>) ->
    {<<"áº¢">>, Erest@1};
titlecase_once(<<"áº¡", Erest@1/binary>>) ->
    {<<"áº ">>, Erest@1};
titlecase_once(<<"áº\233", Erest@1/binary>>) ->
    {<<"á¹ ">>, Erest@1};
titlecase_once(<<"áº\225", Erest@1/binary>>) ->
    {<<"áº\224">>, Erest@1};
titlecase_once(<<"áº\223", Erest@1/binary>>) ->
    {<<"áº\222">>, Erest@1};
titlecase_once(<<"áº\221", Erest@1/binary>>) ->
    {<<"áº\220">>, Erest@1};
titlecase_once(<<"áº\217", Erest@1/binary>>) ->
    {<<"áº\216">>, Erest@1};
titlecase_once(<<"áº\215", Erest@1/binary>>) ->
    {<<"áº\214">>, Erest@1};
titlecase_once(<<"áº\213", Erest@1/binary>>) ->
    {<<"áº\212">>, Erest@1};
titlecase_once(<<"áº\211", Erest@1/binary>>) ->
    {<<"áº\210">>, Erest@1};
titlecase_once(<<"áº\207", Erest@1/binary>>) ->
    {<<"áº\206">>, Erest@1};
titlecase_once(<<"áº\205", Erest@1/binary>>) ->
    {<<"áº\204">>, Erest@1};
titlecase_once(<<"áº\203", Erest@1/binary>>) ->
    {<<"áº\202">>, Erest@1};
titlecase_once(<<"áº\201", Erest@1/binary>>) ->
    {<<"áº\200">>, Erest@1};
titlecase_once(<<"á¹¿", Erest@1/binary>>) ->
    {<<"á¹¾">>, Erest@1};
titlecase_once(<<"á¹½", Erest@1/binary>>) ->
    {<<"á¹¼">>, Erest@1};
titlecase_once(<<"á¹»", Erest@1/binary>>) ->
    {<<"á¹º">>, Erest@1};
titlecase_once(<<"á¹¹", Erest@1/binary>>) ->
    {<<"á¹¸">>, Erest@1};
titlecase_once(<<"á¹·", Erest@1/binary>>) ->
    {<<"á¹¶">>, Erest@1};
titlecase_once(<<"á¹µ", Erest@1/binary>>) ->
    {<<"á¹´">>, Erest@1};
titlecase_once(<<"á¹³", Erest@1/binary>>) ->
    {<<"á¹²">>, Erest@1};
titlecase_once(<<"á¹±", Erest@1/binary>>) ->
    {<<"á¹°">>, Erest@1};
titlecase_once(<<"á¹¯", Erest@1/binary>>) ->
    {<<"á¹®">>, Erest@1};
titlecase_once(<<"á¹­", Erest@1/binary>>) ->
    {<<"á¹¬">>, Erest@1};
titlecase_once(<<"á¹«", Erest@1/binary>>) ->
    {<<"á¹ª">>, Erest@1};
titlecase_once(<<"á¹©", Erest@1/binary>>) ->
    {<<"á¹¨">>, Erest@1};
titlecase_once(<<"á¹§", Erest@1/binary>>) ->
    {<<"á¹¦">>, Erest@1};
titlecase_once(<<"á¹¥", Erest@1/binary>>) ->
    {<<"á¹¤">>, Erest@1};
titlecase_once(<<"á¹£", Erest@1/binary>>) ->
    {<<"á¹¢">>, Erest@1};
titlecase_once(<<"á¹¡", Erest@1/binary>>) ->
    {<<"á¹ ">>, Erest@1};
titlecase_once(<<"á¹\237", Erest@1/binary>>) ->
    {<<"á¹\236">>, Erest@1};
titlecase_once(<<"á¹\235", Erest@1/binary>>) ->
    {<<"á¹\234">>, Erest@1};
titlecase_once(<<"á¹\233", Erest@1/binary>>) ->
    {<<"á¹\232">>, Erest@1};
titlecase_once(<<"á¹\231", Erest@1/binary>>) ->
    {<<"á¹\230">>, Erest@1};
titlecase_once(<<"á¹\227", Erest@1/binary>>) ->
    {<<"á¹\226">>, Erest@1};
titlecase_once(<<"á¹\225", Erest@1/binary>>) ->
    {<<"á¹\224">>, Erest@1};
titlecase_once(<<"á¹\223", Erest@1/binary>>) ->
    {<<"á¹\222">>, Erest@1};
titlecase_once(<<"á¹\221", Erest@1/binary>>) ->
    {<<"á¹\220">>, Erest@1};
titlecase_once(<<"á¹\217", Erest@1/binary>>) ->
    {<<"á¹\216">>, Erest@1};
titlecase_once(<<"á¹\215", Erest@1/binary>>) ->
    {<<"á¹\214">>, Erest@1};
titlecase_once(<<"á¹\213", Erest@1/binary>>) ->
    {<<"á¹\212">>, Erest@1};
titlecase_once(<<"á¹\211", Erest@1/binary>>) ->
    {<<"á¹\210">>, Erest@1};
titlecase_once(<<"á¹\207", Erest@1/binary>>) ->
    {<<"á¹\206">>, Erest@1};
titlecase_once(<<"á¹\205", Erest@1/binary>>) ->
    {<<"á¹\204">>, Erest@1};
titlecase_once(<<"á¹\203", Erest@1/binary>>) ->
    {<<"á¹\202">>, Erest@1};
titlecase_once(<<"á¹\201", Erest@1/binary>>) ->
    {<<"á¹\200">>, Erest@1};
titlecase_once(<<"á¸¿", Erest@1/binary>>) ->
    {<<"á¸¾">>, Erest@1};
titlecase_once(<<"á¸½", Erest@1/binary>>) ->
    {<<"á¸¼">>, Erest@1};
titlecase_once(<<"á¸»", Erest@1/binary>>) ->
    {<<"á¸º">>, Erest@1};
titlecase_once(<<"á¸¹", Erest@1/binary>>) ->
    {<<"á¸¸">>, Erest@1};
titlecase_once(<<"á¸·", Erest@1/binary>>) ->
    {<<"á¸¶">>, Erest@1};
titlecase_once(<<"á¸µ", Erest@1/binary>>) ->
    {<<"á¸´">>, Erest@1};
titlecase_once(<<"á¸³", Erest@1/binary>>) ->
    {<<"á¸²">>, Erest@1};
titlecase_once(<<"á¸±", Erest@1/binary>>) ->
    {<<"á¸°">>, Erest@1};
titlecase_once(<<"á¸¯", Erest@1/binary>>) ->
    {<<"á¸®">>, Erest@1};
titlecase_once(<<"á¸­", Erest@1/binary>>) ->
    {<<"á¸¬">>, Erest@1};
titlecase_once(<<"á¸«", Erest@1/binary>>) ->
    {<<"á¸ª">>, Erest@1};
titlecase_once(<<"á¸©", Erest@1/binary>>) ->
    {<<"á¸¨">>, Erest@1};
titlecase_once(<<"á¸§", Erest@1/binary>>) ->
    {<<"á¸¦">>, Erest@1};
titlecase_once(<<"á¸¥", Erest@1/binary>>) ->
    {<<"á¸¤">>, Erest@1};
titlecase_once(<<"á¸£", Erest@1/binary>>) ->
    {<<"á¸¢">>, Erest@1};
titlecase_once(<<"á¸¡", Erest@1/binary>>) ->
    {<<"á¸ ">>, Erest@1};
titlecase_once(<<"á¸\237", Erest@1/binary>>) ->
    {<<"á¸\236">>, Erest@1};
titlecase_once(<<"á¸\235", Erest@1/binary>>) ->
    {<<"á¸\234">>, Erest@1};
titlecase_once(<<"á¸\233", Erest@1/binary>>) ->
    {<<"á¸\232">>, Erest@1};
titlecase_once(<<"á¸\231", Erest@1/binary>>) ->
    {<<"á¸\230">>, Erest@1};
titlecase_once(<<"á¸\227", Erest@1/binary>>) ->
    {<<"á¸\226">>, Erest@1};
titlecase_once(<<"á¸\225", Erest@1/binary>>) ->
    {<<"á¸\224">>, Erest@1};
titlecase_once(<<"á¸\223", Erest@1/binary>>) ->
    {<<"á¸\222">>, Erest@1};
titlecase_once(<<"á¸\221", Erest@1/binary>>) ->
    {<<"á¸\220">>, Erest@1};
titlecase_once(<<"á¸\217", Erest@1/binary>>) ->
    {<<"á¸\216">>, Erest@1};
titlecase_once(<<"á¸\215", Erest@1/binary>>) ->
    {<<"á¸\214">>, Erest@1};
titlecase_once(<<"á¸\213", Erest@1/binary>>) ->
    {<<"á¸\212">>, Erest@1};
titlecase_once(<<"á¸\211", Erest@1/binary>>) ->
    {<<"á¸\210">>, Erest@1};
titlecase_once(<<"á¸\207", Erest@1/binary>>) ->
    {<<"á¸\206">>, Erest@1};
titlecase_once(<<"á¸\205", Erest@1/binary>>) ->
    {<<"á¸\204">>, Erest@1};
titlecase_once(<<"á¸\203", Erest@1/binary>>) ->
    {<<"á¸\202">>, Erest@1};
titlecase_once(<<"á¸\201", Erest@1/binary>>) ->
    {<<"á¸\200">>, Erest@1};
titlecase_once(<<"áµ½", Erest@1/binary>>) ->
    {<<"â±£">>, Erest@1};
titlecase_once(<<"áµ¹", Erest@1/binary>>) ->
    {<<"ê\235½">>, Erest@1};
titlecase_once(<<"á²\210", Erest@1/binary>>) ->
    {<<"ê\231\212">>, Erest@1};
titlecase_once(<<"á²\207", Erest@1/binary>>) ->
    {<<"Ñ¢">>, Erest@1};
titlecase_once(<<"á²\206", Erest@1/binary>>) ->
    {<<"Ðª">>, Erest@1};
titlecase_once(<<"á²\205", Erest@1/binary>>) ->
    {<<"Ð¢">>, Erest@1};
titlecase_once(<<"á²\204", Erest@1/binary>>) ->
    {<<"Ð¢">>, Erest@1};
titlecase_once(<<"á²\203", Erest@1/binary>>) ->
    {<<"Ð¡">>, Erest@1};
titlecase_once(<<"á²\202", Erest@1/binary>>) ->
    {<<"Ð\236">>, Erest@1};
titlecase_once(<<"á²\201", Erest@1/binary>>) ->
    {<<"Ð\224">>, Erest@1};
titlecase_once(<<"á²\200", Erest@1/binary>>) ->
    {<<"Ð\222">>, Erest@1};
titlecase_once(<<"á\217½", Erest@1/binary>>) ->
    {<<"á\217µ">>, Erest@1};
titlecase_once(<<"á\217¼", Erest@1/binary>>) ->
    {<<"á\217´">>, Erest@1};
titlecase_once(<<"á\217»", Erest@1/binary>>) ->
    {<<"á\217³">>, Erest@1};
titlecase_once(<<"á\217º", Erest@1/binary>>) ->
    {<<"á\217²">>, Erest@1};
titlecase_once(<<"á\217¹", Erest@1/binary>>) ->
    {<<"á\217±">>, Erest@1};
titlecase_once(<<"á\217¸", Erest@1/binary>>) ->
    {<<"á\217°">>, Erest@1};
titlecase_once(<<"Ö\206", Erest@1/binary>>) ->
    {<<"Õ\226">>, Erest@1};
titlecase_once(<<"Ö\205", Erest@1/binary>>) ->
    {<<"Õ\225">>, Erest@1};
titlecase_once(<<"Ö\204", Erest@1/binary>>) ->
    {<<"Õ\224">>, Erest@1};
titlecase_once(<<"Ö\203", Erest@1/binary>>) ->
    {<<"Õ\223">>, Erest@1};
titlecase_once(<<"Ö\202", Erest@1/binary>>) ->
    {<<"Õ\222">>, Erest@1};
titlecase_once(<<"Ö\201", Erest@1/binary>>) ->
    {<<"Õ\221">>, Erest@1};
titlecase_once(<<"Ö\200", Erest@1/binary>>) ->
    {<<"Õ\220">>, Erest@1};
titlecase_once(<<"Õ¿", Erest@1/binary>>) ->
    {<<"Õ\217">>, Erest@1};
titlecase_once(<<"Õ¾", Erest@1/binary>>) ->
    {<<"Õ\216">>, Erest@1};
titlecase_once(<<"Õ½", Erest@1/binary>>) ->
    {<<"Õ\215">>, Erest@1};
titlecase_once(<<"Õ¼", Erest@1/binary>>) ->
    {<<"Õ\214">>, Erest@1};
titlecase_once(<<"Õ»", Erest@1/binary>>) ->
    {<<"Õ\213">>, Erest@1};
titlecase_once(<<"Õº", Erest@1/binary>>) ->
    {<<"Õ\212">>, Erest@1};
titlecase_once(<<"Õ¹", Erest@1/binary>>) ->
    {<<"Õ\211">>, Erest@1};
titlecase_once(<<"Õ¸", Erest@1/binary>>) ->
    {<<"Õ\210">>, Erest@1};
titlecase_once(<<"Õ·", Erest@1/binary>>) ->
    {<<"Õ\207">>, Erest@1};
titlecase_once(<<"Õ¶", Erest@1/binary>>) ->
    {<<"Õ\206">>, Erest@1};
titlecase_once(<<"Õµ", Erest@1/binary>>) ->
    {<<"Õ\205">>, Erest@1};
titlecase_once(<<"Õ´", Erest@1/binary>>) ->
    {<<"Õ\204">>, Erest@1};
titlecase_once(<<"Õ³", Erest@1/binary>>) ->
    {<<"Õ\203">>, Erest@1};
titlecase_once(<<"Õ²", Erest@1/binary>>) ->
    {<<"Õ\202">>, Erest@1};
titlecase_once(<<"Õ±", Erest@1/binary>>) ->
    {<<"Õ\201">>, Erest@1};
titlecase_once(<<"Õ°", Erest@1/binary>>) ->
    {<<"Õ\200">>, Erest@1};
titlecase_once(<<"Õ¯", Erest@1/binary>>) ->
    {<<"Ô¿">>, Erest@1};
titlecase_once(<<"Õ®", Erest@1/binary>>) ->
    {<<"Ô¾">>, Erest@1};
titlecase_once(<<"Õ­", Erest@1/binary>>) ->
    {<<"Ô½">>, Erest@1};
titlecase_once(<<"Õ¬", Erest@1/binary>>) ->
    {<<"Ô¼">>, Erest@1};
titlecase_once(<<"Õ«", Erest@1/binary>>) ->
    {<<"Ô»">>, Erest@1};
titlecase_once(<<"Õª", Erest@1/binary>>) ->
    {<<"Ôº">>, Erest@1};
titlecase_once(<<"Õ©", Erest@1/binary>>) ->
    {<<"Ô¹">>, Erest@1};
titlecase_once(<<"Õ¨", Erest@1/binary>>) ->
    {<<"Ô¸">>, Erest@1};
titlecase_once(<<"Õ§", Erest@1/binary>>) ->
    {<<"Ô·">>, Erest@1};
titlecase_once(<<"Õ¦", Erest@1/binary>>) ->
    {<<"Ô¶">>, Erest@1};
titlecase_once(<<"Õ¥", Erest@1/binary>>) ->
    {<<"Ôµ">>, Erest@1};
titlecase_once(<<"Õ¤", Erest@1/binary>>) ->
    {<<"Ô´">>, Erest@1};
titlecase_once(<<"Õ£", Erest@1/binary>>) ->
    {<<"Ô³">>, Erest@1};
titlecase_once(<<"Õ¢", Erest@1/binary>>) ->
    {<<"Ô²">>, Erest@1};
titlecase_once(<<"Õ¡", Erest@1/binary>>) ->
    {<<"Ô±">>, Erest@1};
titlecase_once(<<"Ô¯", Erest@1/binary>>) ->
    {<<"Ô®">>, Erest@1};
titlecase_once(<<"Ô­", Erest@1/binary>>) ->
    {<<"Ô¬">>, Erest@1};
titlecase_once(<<"Ô«", Erest@1/binary>>) ->
    {<<"Ôª">>, Erest@1};
titlecase_once(<<"Ô©", Erest@1/binary>>) ->
    {<<"Ô¨">>, Erest@1};
titlecase_once(<<"Ô§", Erest@1/binary>>) ->
    {<<"Ô¦">>, Erest@1};
titlecase_once(<<"Ô¥", Erest@1/binary>>) ->
    {<<"Ô¤">>, Erest@1};
titlecase_once(<<"Ô£", Erest@1/binary>>) ->
    {<<"Ô¢">>, Erest@1};
titlecase_once(<<"Ô¡", Erest@1/binary>>) ->
    {<<"Ô ">>, Erest@1};
titlecase_once(<<"Ô\237", Erest@1/binary>>) ->
    {<<"Ô\236">>, Erest@1};
titlecase_once(<<"Ô\235", Erest@1/binary>>) ->
    {<<"Ô\234">>, Erest@1};
titlecase_once(<<"Ô\233", Erest@1/binary>>) ->
    {<<"Ô\232">>, Erest@1};
titlecase_once(<<"Ô\231", Erest@1/binary>>) ->
    {<<"Ô\230">>, Erest@1};
titlecase_once(<<"Ô\227", Erest@1/binary>>) ->
    {<<"Ô\226">>, Erest@1};
titlecase_once(<<"Ô\225", Erest@1/binary>>) ->
    {<<"Ô\224">>, Erest@1};
titlecase_once(<<"Ô\223", Erest@1/binary>>) ->
    {<<"Ô\222">>, Erest@1};
titlecase_once(<<"Ô\221", Erest@1/binary>>) ->
    {<<"Ô\220">>, Erest@1};
titlecase_once(<<"Ô\217", Erest@1/binary>>) ->
    {<<"Ô\216">>, Erest@1};
titlecase_once(<<"Ô\215", Erest@1/binary>>) ->
    {<<"Ô\214">>, Erest@1};
titlecase_once(<<"Ô\213", Erest@1/binary>>) ->
    {<<"Ô\212">>, Erest@1};
titlecase_once(<<"Ô\211", Erest@1/binary>>) ->
    {<<"Ô\210">>, Erest@1};
titlecase_once(<<"Ô\207", Erest@1/binary>>) ->
    {<<"Ô\206">>, Erest@1};
titlecase_once(<<"Ô\205", Erest@1/binary>>) ->
    {<<"Ô\204">>, Erest@1};
titlecase_once(<<"Ô\203", Erest@1/binary>>) ->
    {<<"Ô\202">>, Erest@1};
titlecase_once(<<"Ô\201", Erest@1/binary>>) ->
    {<<"Ô\200">>, Erest@1};
titlecase_once(<<"Ó¿", Erest@1/binary>>) ->
    {<<"Ó¾">>, Erest@1};
titlecase_once(<<"Ó½", Erest@1/binary>>) ->
    {<<"Ó¼">>, Erest@1};
titlecase_once(<<"Ó»", Erest@1/binary>>) ->
    {<<"Óº">>, Erest@1};
titlecase_once(<<"Ó¹", Erest@1/binary>>) ->
    {<<"Ó¸">>, Erest@1};
titlecase_once(<<"Ó·", Erest@1/binary>>) ->
    {<<"Ó¶">>, Erest@1};
titlecase_once(<<"Óµ", Erest@1/binary>>) ->
    {<<"Ó´">>, Erest@1};
titlecase_once(<<"Ó³", Erest@1/binary>>) ->
    {<<"Ó²">>, Erest@1};
titlecase_once(<<"Ó±", Erest@1/binary>>) ->
    {<<"Ó°">>, Erest@1};
titlecase_once(<<"Ó¯", Erest@1/binary>>) ->
    {<<"Ó®">>, Erest@1};
titlecase_once(<<"Ó­", Erest@1/binary>>) ->
    {<<"Ó¬">>, Erest@1};
titlecase_once(<<"Ó«", Erest@1/binary>>) ->
    {<<"Óª">>, Erest@1};
titlecase_once(<<"Ó©", Erest@1/binary>>) ->
    {<<"Ó¨">>, Erest@1};
titlecase_once(<<"Ó§", Erest@1/binary>>) ->
    {<<"Ó¦">>, Erest@1};
titlecase_once(<<"Ó¥", Erest@1/binary>>) ->
    {<<"Ó¤">>, Erest@1};
titlecase_once(<<"Ó£", Erest@1/binary>>) ->
    {<<"Ó¢">>, Erest@1};
titlecase_once(<<"Ó¡", Erest@1/binary>>) ->
    {<<"Ó ">>, Erest@1};
titlecase_once(<<"Ó\237", Erest@1/binary>>) ->
    {<<"Ó\236">>, Erest@1};
titlecase_once(<<"Ó\235", Erest@1/binary>>) ->
    {<<"Ó\234">>, Erest@1};
titlecase_once(<<"Ó\233", Erest@1/binary>>) ->
    {<<"Ó\232">>, Erest@1};
titlecase_once(<<"Ó\231", Erest@1/binary>>) ->
    {<<"Ó\230">>, Erest@1};
titlecase_once(<<"Ó\227", Erest@1/binary>>) ->
    {<<"Ó\226">>, Erest@1};
titlecase_once(<<"Ó\225", Erest@1/binary>>) ->
    {<<"Ó\224">>, Erest@1};
titlecase_once(<<"Ó\223", Erest@1/binary>>) ->
    {<<"Ó\222">>, Erest@1};
titlecase_once(<<"Ó\221", Erest@1/binary>>) ->
    {<<"Ó\220">>, Erest@1};
titlecase_once(<<"Ó\217", Erest@1/binary>>) ->
    {<<"Ó\200">>, Erest@1};
titlecase_once(<<"Ó\216", Erest@1/binary>>) ->
    {<<"Ó\215">>, Erest@1};
titlecase_once(<<"Ó\214", Erest@1/binary>>) ->
    {<<"Ó\213">>, Erest@1};
titlecase_once(<<"Ó\212", Erest@1/binary>>) ->
    {<<"Ó\211">>, Erest@1};
titlecase_once(<<"Ó\210", Erest@1/binary>>) ->
    {<<"Ó\207">>, Erest@1};
titlecase_once(<<"Ó\206", Erest@1/binary>>) ->
    {<<"Ó\205">>, Erest@1};
titlecase_once(<<"Ó\204", Erest@1/binary>>) ->
    {<<"Ó\203">>, Erest@1};
titlecase_once(<<"Ó\202", Erest@1/binary>>) ->
    {<<"Ó\201">>, Erest@1};
titlecase_once(<<"Ò¿", Erest@1/binary>>) ->
    {<<"Ò¾">>, Erest@1};
titlecase_once(<<"Ò½", Erest@1/binary>>) ->
    {<<"Ò¼">>, Erest@1};
titlecase_once(<<"Ò»", Erest@1/binary>>) ->
    {<<"Òº">>, Erest@1};
titlecase_once(<<"Ò¹", Erest@1/binary>>) ->
    {<<"Ò¸">>, Erest@1};
titlecase_once(<<"Ò·", Erest@1/binary>>) ->
    {<<"Ò¶">>, Erest@1};
titlecase_once(<<"Òµ", Erest@1/binary>>) ->
    {<<"Ò´">>, Erest@1};
titlecase_once(<<"Ò³", Erest@1/binary>>) ->
    {<<"Ò²">>, Erest@1};
titlecase_once(<<"Ò±", Erest@1/binary>>) ->
    {<<"Ò°">>, Erest@1};
titlecase_once(<<"Ò¯", Erest@1/binary>>) ->
    {<<"Ò®">>, Erest@1};
titlecase_once(<<"Ò­", Erest@1/binary>>) ->
    {<<"Ò¬">>, Erest@1};
titlecase_once(<<"Ò«", Erest@1/binary>>) ->
    {<<"Òª">>, Erest@1};
titlecase_once(<<"Ò©", Erest@1/binary>>) ->
    {<<"Ò¨">>, Erest@1};
titlecase_once(<<"Ò§", Erest@1/binary>>) ->
    {<<"Ò¦">>, Erest@1};
titlecase_once(<<"Ò¥", Erest@1/binary>>) ->
    {<<"Ò¤">>, Erest@1};
titlecase_once(<<"Ò£", Erest@1/binary>>) ->
    {<<"Ò¢">>, Erest@1};
titlecase_once(<<"Ò¡", Erest@1/binary>>) ->
    {<<"Ò ">>, Erest@1};
titlecase_once(<<"Ò\237", Erest@1/binary>>) ->
    {<<"Ò\236">>, Erest@1};
titlecase_once(<<"Ò\235", Erest@1/binary>>) ->
    {<<"Ò\234">>, Erest@1};
titlecase_once(<<"Ò\233", Erest@1/binary>>) ->
    {<<"Ò\232">>, Erest@1};
titlecase_once(<<"Ò\231", Erest@1/binary>>) ->
    {<<"Ò\230">>, Erest@1};
titlecase_once(<<"Ò\227", Erest@1/binary>>) ->
    {<<"Ò\226">>, Erest@1};
titlecase_once(<<"Ò\225", Erest@1/binary>>) ->
    {<<"Ò\224">>, Erest@1};
titlecase_once(<<"Ò\223", Erest@1/binary>>) ->
    {<<"Ò\222">>, Erest@1};
titlecase_once(<<"Ò\221", Erest@1/binary>>) ->
    {<<"Ò\220">>, Erest@1};
titlecase_once(<<"Ò\217", Erest@1/binary>>) ->
    {<<"Ò\216">>, Erest@1};
titlecase_once(<<"Ò\215", Erest@1/binary>>) ->
    {<<"Ò\214">>, Erest@1};
titlecase_once(<<"Ò\213", Erest@1/binary>>) ->
    {<<"Ò\212">>, Erest@1};
titlecase_once(<<"Ò\201", Erest@1/binary>>) ->
    {<<"Ò\200">>, Erest@1};
titlecase_once(<<"Ñ¿", Erest@1/binary>>) ->
    {<<"Ñ¾">>, Erest@1};
titlecase_once(<<"Ñ½", Erest@1/binary>>) ->
    {<<"Ñ¼">>, Erest@1};
titlecase_once(<<"Ñ»", Erest@1/binary>>) ->
    {<<"Ñº">>, Erest@1};
titlecase_once(<<"Ñ¹", Erest@1/binary>>) ->
    {<<"Ñ¸">>, Erest@1};
titlecase_once(<<"Ñ·", Erest@1/binary>>) ->
    {<<"Ñ¶">>, Erest@1};
titlecase_once(<<"Ñµ", Erest@1/binary>>) ->
    {<<"Ñ´">>, Erest@1};
titlecase_once(<<"Ñ³", Erest@1/binary>>) ->
    {<<"Ñ²">>, Erest@1};
titlecase_once(<<"Ñ±", Erest@1/binary>>) ->
    {<<"Ñ°">>, Erest@1};
titlecase_once(<<"Ñ¯", Erest@1/binary>>) ->
    {<<"Ñ®">>, Erest@1};
titlecase_once(<<"Ñ­", Erest@1/binary>>) ->
    {<<"Ñ¬">>, Erest@1};
titlecase_once(<<"Ñ«", Erest@1/binary>>) ->
    {<<"Ñª">>, Erest@1};
titlecase_once(<<"Ñ©", Erest@1/binary>>) ->
    {<<"Ñ¨">>, Erest@1};
titlecase_once(<<"Ñ§", Erest@1/binary>>) ->
    {<<"Ñ¦">>, Erest@1};
titlecase_once(<<"Ñ¥", Erest@1/binary>>) ->
    {<<"Ñ¤">>, Erest@1};
titlecase_once(<<"Ñ£", Erest@1/binary>>) ->
    {<<"Ñ¢">>, Erest@1};
titlecase_once(<<"Ñ¡", Erest@1/binary>>) ->
    {<<"Ñ ">>, Erest@1};
titlecase_once(<<"Ñ\237", Erest@1/binary>>) ->
    {<<"Ð\217">>, Erest@1};
titlecase_once(<<"Ñ\236", Erest@1/binary>>) ->
    {<<"Ð\216">>, Erest@1};
titlecase_once(<<"Ñ\235", Erest@1/binary>>) ->
    {<<"Ð\215">>, Erest@1};
titlecase_once(<<"Ñ\234", Erest@1/binary>>) ->
    {<<"Ð\214">>, Erest@1};
titlecase_once(<<"Ñ\233", Erest@1/binary>>) ->
    {<<"Ð\213">>, Erest@1};
titlecase_once(<<"Ñ\232", Erest@1/binary>>) ->
    {<<"Ð\212">>, Erest@1};
titlecase_once(<<"Ñ\231", Erest@1/binary>>) ->
    {<<"Ð\211">>, Erest@1};
titlecase_once(<<"Ñ\230", Erest@1/binary>>) ->
    {<<"Ð\210">>, Erest@1};
titlecase_once(<<"Ñ\227", Erest@1/binary>>) ->
    {<<"Ð\207">>, Erest@1};
titlecase_once(<<"Ñ\226", Erest@1/binary>>) ->
    {<<"Ð\206">>, Erest@1};
titlecase_once(<<"Ñ\225", Erest@1/binary>>) ->
    {<<"Ð\205">>, Erest@1};
titlecase_once(<<"Ñ\224", Erest@1/binary>>) ->
    {<<"Ð\204">>, Erest@1};
titlecase_once(<<"Ñ\223", Erest@1/binary>>) ->
    {<<"Ð\203">>, Erest@1};
titlecase_once(<<"Ñ\222", Erest@1/binary>>) ->
    {<<"Ð\202">>, Erest@1};
titlecase_once(<<"Ñ\221", Erest@1/binary>>) ->
    {<<"Ð\201">>, Erest@1};
titlecase_once(<<"Ñ\220", Erest@1/binary>>) ->
    {<<"Ð\200">>, Erest@1};
titlecase_once(<<"Ñ\217", Erest@1/binary>>) ->
    {<<"Ð¯">>, Erest@1};
titlecase_once(<<"Ñ\216", Erest@1/binary>>) ->
    {<<"Ð®">>, Erest@1};
titlecase_once(<<"Ñ\215", Erest@1/binary>>) ->
    {<<"Ð­">>, Erest@1};
titlecase_once(<<"Ñ\214", Erest@1/binary>>) ->
    {<<"Ð¬">>, Erest@1};
titlecase_once(<<"Ñ\213", Erest@1/binary>>) ->
    {<<"Ð«">>, Erest@1};
titlecase_once(<<"Ñ\212", Erest@1/binary>>) ->
    {<<"Ðª">>, Erest@1};
titlecase_once(<<"Ñ\211", Erest@1/binary>>) ->
    {<<"Ð©">>, Erest@1};
titlecase_once(<<"Ñ\210", Erest@1/binary>>) ->
    {<<"Ð¨">>, Erest@1};
titlecase_once(<<"Ñ\207", Erest@1/binary>>) ->
    {<<"Ð§">>, Erest@1};
titlecase_once(<<"Ñ\206", Erest@1/binary>>) ->
    {<<"Ð¦">>, Erest@1};
titlecase_once(<<"Ñ\205", Erest@1/binary>>) ->
    {<<"Ð¥">>, Erest@1};
titlecase_once(<<"Ñ\204", Erest@1/binary>>) ->
    {<<"Ð¤">>, Erest@1};
titlecase_once(<<"Ñ\203", Erest@1/binary>>) ->
    {<<"Ð£">>, Erest@1};
titlecase_once(<<"Ñ\202", Erest@1/binary>>) ->
    {<<"Ð¢">>, Erest@1};
titlecase_once(<<"Ñ\201", Erest@1/binary>>) ->
    {<<"Ð¡">>, Erest@1};
titlecase_once(<<"Ñ\200", Erest@1/binary>>) ->
    {<<"Ð ">>, Erest@1};
titlecase_once(<<"Ð¿", Erest@1/binary>>) ->
    {<<"Ð\237">>, Erest@1};
titlecase_once(<<"Ð¾", Erest@1/binary>>) ->
    {<<"Ð\236">>, Erest@1};
titlecase_once(<<"Ð½", Erest@1/binary>>) ->
    {<<"Ð\235">>, Erest@1};
titlecase_once(<<"Ð¼", Erest@1/binary>>) ->
    {<<"Ð\234">>, Erest@1};
titlecase_once(<<"Ð»", Erest@1/binary>>) ->
    {<<"Ð\233">>, Erest@1};
titlecase_once(<<"Ðº", Erest@1/binary>>) ->
    {<<"Ð\232">>, Erest@1};
titlecase_once(<<"Ð¹", Erest@1/binary>>) ->
    {<<"Ð\231">>, Erest@1};
titlecase_once(<<"Ð¸", Erest@1/binary>>) ->
    {<<"Ð\230">>, Erest@1};
titlecase_once(<<"Ð·", Erest@1/binary>>) ->
    {<<"Ð\227">>, Erest@1};
titlecase_once(<<"Ð¶", Erest@1/binary>>) ->
    {<<"Ð\226">>, Erest@1};
titlecase_once(<<"Ðµ", Erest@1/binary>>) ->
    {<<"Ð\225">>, Erest@1};
titlecase_once(<<"Ð´", Erest@1/binary>>) ->
    {<<"Ð\224">>, Erest@1};
titlecase_once(<<"Ð³", Erest@1/binary>>) ->
    {<<"Ð\223">>, Erest@1};
titlecase_once(<<"Ð²", Erest@1/binary>>) ->
    {<<"Ð\222">>, Erest@1};
titlecase_once(<<"Ð±", Erest@1/binary>>) ->
    {<<"Ð\221">>, Erest@1};
titlecase_once(<<"Ð°", Erest@1/binary>>) ->
    {<<"Ð\220">>, Erest@1};
titlecase_once(<<"Ï»", Erest@1/binary>>) ->
    {<<"Ïº">>, Erest@1};
titlecase_once(<<"Ï¸", Erest@1/binary>>) ->
    {<<"Ï·">>, Erest@1};
titlecase_once(<<"Ïµ", Erest@1/binary>>) ->
    {<<"Î\225">>, Erest@1};
titlecase_once(<<"Ï³", Erest@1/binary>>) ->
    {<<"Í¿">>, Erest@1};
titlecase_once(<<"Ï²", Erest@1/binary>>) ->
    {<<"Ï¹">>, Erest@1};
titlecase_once(<<"Ï±", Erest@1/binary>>) ->
    {<<"Î¡">>, Erest@1};
titlecase_once(<<"Ï°", Erest@1/binary>>) ->
    {<<"Î\232">>, Erest@1};
titlecase_once(<<"Ï¯", Erest@1/binary>>) ->
    {<<"Ï®">>, Erest@1};
titlecase_once(<<"Ï­", Erest@1/binary>>) ->
    {<<"Ï¬">>, Erest@1};
titlecase_once(<<"Ï«", Erest@1/binary>>) ->
    {<<"Ïª">>, Erest@1};
titlecase_once(<<"Ï©", Erest@1/binary>>) ->
    {<<"Ï¨">>, Erest@1};
titlecase_once(<<"Ï§", Erest@1/binary>>) ->
    {<<"Ï¦">>, Erest@1};
titlecase_once(<<"Ï¥", Erest@1/binary>>) ->
    {<<"Ï¤">>, Erest@1};
titlecase_once(<<"Ï£", Erest@1/binary>>) ->
    {<<"Ï¢">>, Erest@1};
titlecase_once(<<"Ï¡", Erest@1/binary>>) ->
    {<<"Ï ">>, Erest@1};
titlecase_once(<<"Ï\237", Erest@1/binary>>) ->
    {<<"Ï\236">>, Erest@1};
titlecase_once(<<"Ï\235", Erest@1/binary>>) ->
    {<<"Ï\234">>, Erest@1};
titlecase_once(<<"Ï\233", Erest@1/binary>>) ->
    {<<"Ï\232">>, Erest@1};
titlecase_once(<<"Ï\231", Erest@1/binary>>) ->
    {<<"Ï\230">>, Erest@1};
titlecase_once(<<"Ï\227", Erest@1/binary>>) ->
    {<<"Ï\217">>, Erest@1};
titlecase_once(<<"Ï\226", Erest@1/binary>>) ->
    {<<"Î ">>, Erest@1};
titlecase_once(<<"Ï\225", Erest@1/binary>>) ->
    {<<"Î¦">>, Erest@1};
titlecase_once(<<"Ï\221", Erest@1/binary>>) ->
    {<<"Î\230">>, Erest@1};
titlecase_once(<<"Ï\220", Erest@1/binary>>) ->
    {<<"Î\222">>, Erest@1};
titlecase_once(<<"Ï\216", Erest@1/binary>>) ->
    {<<"Î\217">>, Erest@1};
titlecase_once(<<"Ï\215", Erest@1/binary>>) ->
    {<<"Î\216">>, Erest@1};
titlecase_once(<<"Ï\214", Erest@1/binary>>) ->
    {<<"Î\214">>, Erest@1};
titlecase_once(<<"Ï\213", Erest@1/binary>>) ->
    {<<"Î«">>, Erest@1};
titlecase_once(<<"Ï\212", Erest@1/binary>>) ->
    {<<"Îª">>, Erest@1};
titlecase_once(<<"Ï\211", Erest@1/binary>>) ->
    {<<"Î©">>, Erest@1};
titlecase_once(<<"Ï\210", Erest@1/binary>>) ->
    {<<"Î¨">>, Erest@1};
titlecase_once(<<"Ï\207", Erest@1/binary>>) ->
    {<<"Î§">>, Erest@1};
titlecase_once(<<"Ï\206", Erest@1/binary>>) ->
    {<<"Î¦">>, Erest@1};
titlecase_once(<<"Ï\205", Erest@1/binary>>) ->
    {<<"Î¥">>, Erest@1};
titlecase_once(<<"Ï\204", Erest@1/binary>>) ->
    {<<"Î¤">>, Erest@1};
titlecase_once(<<"Ï\203", Erest@1/binary>>) ->
    {<<"Î£">>, Erest@1};
titlecase_once(<<"Ï\202", Erest@1/binary>>) ->
    {<<"Î£">>, Erest@1};
titlecase_once(<<"Ï\201", Erest@1/binary>>) ->
    {<<"Î¡">>, Erest@1};
titlecase_once(<<"Ï\200", Erest@1/binary>>) ->
    {<<"Î ">>, Erest@1};
titlecase_once(<<"Î¿", Erest@1/binary>>) ->
    {<<"Î\237">>, Erest@1};
titlecase_once(<<"Î¾", Erest@1/binary>>) ->
    {<<"Î\236">>, Erest@1};
titlecase_once(<<"Î½", Erest@1/binary>>) ->
    {<<"Î\235">>, Erest@1};
titlecase_once(<<"Î¼", Erest@1/binary>>) ->
    {<<"Î\234">>, Erest@1};
titlecase_once(<<"Î»", Erest@1/binary>>) ->
    {<<"Î\233">>, Erest@1};
titlecase_once(<<"Îº", Erest@1/binary>>) ->
    {<<"Î\232">>, Erest@1};
titlecase_once(<<"Î¹", Erest@1/binary>>) ->
    {<<"Î\231">>, Erest@1};
titlecase_once(<<"Î¸", Erest@1/binary>>) ->
    {<<"Î\230">>, Erest@1};
titlecase_once(<<"Î·", Erest@1/binary>>) ->
    {<<"Î\227">>, Erest@1};
titlecase_once(<<"Î¶", Erest@1/binary>>) ->
    {<<"Î\226">>, Erest@1};
titlecase_once(<<"Îµ", Erest@1/binary>>) ->
    {<<"Î\225">>, Erest@1};
titlecase_once(<<"Î´", Erest@1/binary>>) ->
    {<<"Î\224">>, Erest@1};
titlecase_once(<<"Î³", Erest@1/binary>>) ->
    {<<"Î\223">>, Erest@1};
titlecase_once(<<"Î²", Erest@1/binary>>) ->
    {<<"Î\222">>, Erest@1};
titlecase_once(<<"Î±", Erest@1/binary>>) ->
    {<<"Î\221">>, Erest@1};
titlecase_once(<<"Î¯", Erest@1/binary>>) ->
    {<<"Î\212">>, Erest@1};
titlecase_once(<<"Î®", Erest@1/binary>>) ->
    {<<"Î\211">>, Erest@1};
titlecase_once(<<"Î­", Erest@1/binary>>) ->
    {<<"Î\210">>, Erest@1};
titlecase_once(<<"Î¬", Erest@1/binary>>) ->
    {<<"Î\206">>, Erest@1};
titlecase_once(<<"Í½", Erest@1/binary>>) ->
    {<<"Ï¿">>, Erest@1};
titlecase_once(<<"Í¼", Erest@1/binary>>) ->
    {<<"Ï¾">>, Erest@1};
titlecase_once(<<"Í»", Erest@1/binary>>) ->
    {<<"Ï½">>, Erest@1};
titlecase_once(<<"Í·", Erest@1/binary>>) ->
    {<<"Í¶">>, Erest@1};
titlecase_once(<<"Í³", Erest@1/binary>>) ->
    {<<"Í²">>, Erest@1};
titlecase_once(<<"Í±", Erest@1/binary>>) ->
    {<<"Í°">>, Erest@1};
titlecase_once(<<"Í\205", Erest@1/binary>>) ->
    {<<"Î\231">>, Erest@1};
titlecase_once(<<"Ê\236", Erest@1/binary>>) ->
    {<<"ê\236°">>, Erest@1};
titlecase_once(<<"Ê\235", Erest@1/binary>>) ->
    {<<"ê\236²">>, Erest@1};
titlecase_once(<<"Ê\222", Erest@1/binary>>) ->
    {<<"Æ·">>, Erest@1};
titlecase_once(<<"Ê\214", Erest@1/binary>>) ->
    {<<"É\205">>, Erest@1};
titlecase_once(<<"Ê\213", Erest@1/binary>>) ->
    {<<"Æ²">>, Erest@1};
titlecase_once(<<"Ê\212", Erest@1/binary>>) ->
    {<<"Æ±">>, Erest@1};
titlecase_once(<<"Ê\211", Erest@1/binary>>) ->
    {<<"É\204">>, Erest@1};
titlecase_once(<<"Ê\210", Erest@1/binary>>) ->
    {<<"Æ®">>, Erest@1};
titlecase_once(<<"Ê\207", Erest@1/binary>>) ->
    {<<"ê\236±">>, Erest@1};
titlecase_once(<<"Ê\203", Erest@1/binary>>) ->
    {<<"Æ©">>, Erest@1};
titlecase_once(<<"Ê\200", Erest@1/binary>>) ->
    {<<"Æ¦">>, Erest@1};
titlecase_once(<<"É½", Erest@1/binary>>) ->
    {<<"â±¤">>, Erest@1};
titlecase_once(<<"Éµ", Erest@1/binary>>) ->
    {<<"Æ\237">>, Erest@1};
titlecase_once(<<"É²", Erest@1/binary>>) ->
    {<<"Æ\235">>, Erest@1};
titlecase_once(<<"É±", Erest@1/binary>>) ->
    {<<"â±®">>, Erest@1};
titlecase_once(<<"É¯", Erest@1/binary>>) ->
    {<<"Æ\234">>, Erest@1};
titlecase_once(<<"É¬", Erest@1/binary>>) ->
    {<<"ê\236­">>, Erest@1};
titlecase_once(<<"É«", Erest@1/binary>>) ->
    {<<"â±¢">>, Erest@1};
titlecase_once(<<"Éª", Erest@1/binary>>) ->
    {<<"ê\236®">>, Erest@1};
titlecase_once(<<"É©", Erest@1/binary>>) ->
    {<<"Æ\226">>, Erest@1};
titlecase_once(<<"É¨", Erest@1/binary>>) ->
    {<<"Æ\227">>, Erest@1};
titlecase_once(<<"É¦", Erest@1/binary>>) ->
    {<<"ê\236ª">>, Erest@1};
titlecase_once(<<"É¥", Erest@1/binary>>) ->
    {<<"ê\236\215">>, Erest@1};
titlecase_once(<<"É£", Erest@1/binary>>) ->
    {<<"Æ\224">>, Erest@1};
titlecase_once(<<"É¡", Erest@1/binary>>) ->
    {<<"ê\236¬">>, Erest@1};
titlecase_once(<<"É ", Erest@1/binary>>) ->
    {<<"Æ\223">>, Erest@1};
titlecase_once(<<"É\234", Erest@1/binary>>) ->
    {<<"ê\236«">>, Erest@1};
titlecase_once(<<"É\233", Erest@1/binary>>) ->
    {<<"Æ\220">>, Erest@1};
titlecase_once(<<"É\231", Erest@1/binary>>) ->
    {<<"Æ\217">>, Erest@1};
titlecase_once(<<"É\227", Erest@1/binary>>) ->
    {<<"Æ\212">>, Erest@1};
titlecase_once(<<"É\226", Erest@1/binary>>) ->
    {<<"Æ\211">>, Erest@1};
titlecase_once(<<"É\224", Erest@1/binary>>) ->
    {<<"Æ\206">>, Erest@1};
titlecase_once(<<"É\223", Erest@1/binary>>) ->
    {<<"Æ\201">>, Erest@1};
titlecase_once(<<"É\222", Erest@1/binary>>) ->
    {<<"â±°">>, Erest@1};
titlecase_once(<<"É\221", Erest@1/binary>>) ->
    {<<"â±­">>, Erest@1};
titlecase_once(<<"É\220", Erest@1/binary>>) ->
    {<<"â±¯">>, Erest@1};
titlecase_once(<<"É\217", Erest@1/binary>>) ->
    {<<"É\216">>, Erest@1};
titlecase_once(<<"É\215", Erest@1/binary>>) ->
    {<<"É\214">>, Erest@1};
titlecase_once(<<"É\213", Erest@1/binary>>) ->
    {<<"É\212">>, Erest@1};
titlecase_once(<<"É\211", Erest@1/binary>>) ->
    {<<"É\210">>, Erest@1};
titlecase_once(<<"É\207", Erest@1/binary>>) ->
    {<<"É\206">>, Erest@1};
titlecase_once(<<"É\202", Erest@1/binary>>) ->
    {<<"É\201">>, Erest@1};
titlecase_once(<<"É\200", Erest@1/binary>>) ->
    {<<"â±¿">>, Erest@1};
titlecase_once(<<"È¿", Erest@1/binary>>) ->
    {<<"â±¾">>, Erest@1};
titlecase_once(<<"È¼", Erest@1/binary>>) ->
    {<<"È»">>, Erest@1};
titlecase_once(<<"È³", Erest@1/binary>>) ->
    {<<"È²">>, Erest@1};
titlecase_once(<<"È±", Erest@1/binary>>) ->
    {<<"È°">>, Erest@1};
titlecase_once(<<"È¯", Erest@1/binary>>) ->
    {<<"È®">>, Erest@1};
titlecase_once(<<"È­", Erest@1/binary>>) ->
    {<<"È¬">>, Erest@1};
titlecase_once(<<"È«", Erest@1/binary>>) ->
    {<<"Èª">>, Erest@1};
titlecase_once(<<"È©", Erest@1/binary>>) ->
    {<<"È¨">>, Erest@1};
titlecase_once(<<"È§", Erest@1/binary>>) ->
    {<<"È¦">>, Erest@1};
titlecase_once(<<"È¥", Erest@1/binary>>) ->
    {<<"È¤">>, Erest@1};
titlecase_once(<<"È£", Erest@1/binary>>) ->
    {<<"È¢">>, Erest@1};
titlecase_once(<<"È\237", Erest@1/binary>>) ->
    {<<"È\236">>, Erest@1};
titlecase_once(<<"È\235", Erest@1/binary>>) ->
    {<<"È\234">>, Erest@1};
titlecase_once(<<"È\233", Erest@1/binary>>) ->
    {<<"È\232">>, Erest@1};
titlecase_once(<<"È\231", Erest@1/binary>>) ->
    {<<"È\230">>, Erest@1};
titlecase_once(<<"È\227", Erest@1/binary>>) ->
    {<<"È\226">>, Erest@1};
titlecase_once(<<"È\225", Erest@1/binary>>) ->
    {<<"È\224">>, Erest@1};
titlecase_once(<<"È\223", Erest@1/binary>>) ->
    {<<"È\222">>, Erest@1};
titlecase_once(<<"È\221", Erest@1/binary>>) ->
    {<<"È\220">>, Erest@1};
titlecase_once(<<"È\217", Erest@1/binary>>) ->
    {<<"È\216">>, Erest@1};
titlecase_once(<<"È\215", Erest@1/binary>>) ->
    {<<"È\214">>, Erest@1};
titlecase_once(<<"È\213", Erest@1/binary>>) ->
    {<<"È\212">>, Erest@1};
titlecase_once(<<"È\211", Erest@1/binary>>) ->
    {<<"È\210">>, Erest@1};
titlecase_once(<<"È\207", Erest@1/binary>>) ->
    {<<"È\206">>, Erest@1};
titlecase_once(<<"È\205", Erest@1/binary>>) ->
    {<<"È\204">>, Erest@1};
titlecase_once(<<"È\203", Erest@1/binary>>) ->
    {<<"È\202">>, Erest@1};
titlecase_once(<<"È\201", Erest@1/binary>>) ->
    {<<"È\200">>, Erest@1};
titlecase_once(<<"Ç¿", Erest@1/binary>>) ->
    {<<"Ç¾">>, Erest@1};
titlecase_once(<<"Ç½", Erest@1/binary>>) ->
    {<<"Ç¼">>, Erest@1};
titlecase_once(<<"Ç»", Erest@1/binary>>) ->
    {<<"Çº">>, Erest@1};
titlecase_once(<<"Ç¹", Erest@1/binary>>) ->
    {<<"Ç¸">>, Erest@1};
titlecase_once(<<"Çµ", Erest@1/binary>>) ->
    {<<"Ç´">>, Erest@1};
titlecase_once(<<"Ç³", Erest@1/binary>>) ->
    {<<"Ç²">>, Erest@1};
titlecase_once(<<"Ç±", Erest@1/binary>>) ->
    {<<"Ç²">>, Erest@1};
titlecase_once(<<"Ç¯", Erest@1/binary>>) ->
    {<<"Ç®">>, Erest@1};
titlecase_once(<<"Ç­", Erest@1/binary>>) ->
    {<<"Ç¬">>, Erest@1};
titlecase_once(<<"Ç«", Erest@1/binary>>) ->
    {<<"Çª">>, Erest@1};
titlecase_once(<<"Ç©", Erest@1/binary>>) ->
    {<<"Ç¨">>, Erest@1};
titlecase_once(<<"Ç§", Erest@1/binary>>) ->
    {<<"Ç¦">>, Erest@1};
titlecase_once(<<"Ç¥", Erest@1/binary>>) ->
    {<<"Ç¤">>, Erest@1};
titlecase_once(<<"Ç£", Erest@1/binary>>) ->
    {<<"Ç¢">>, Erest@1};
titlecase_once(<<"Ç¡", Erest@1/binary>>) ->
    {<<"Ç ">>, Erest@1};
titlecase_once(<<"Ç\237", Erest@1/binary>>) ->
    {<<"Ç\236">>, Erest@1};
titlecase_once(<<"Ç\235", Erest@1/binary>>) ->
    {<<"Æ\216">>, Erest@1};
titlecase_once(<<"Ç\234", Erest@1/binary>>) ->
    {<<"Ç\233">>, Erest@1};
titlecase_once(<<"Ç\232", Erest@1/binary>>) ->
    {<<"Ç\231">>, Erest@1};
titlecase_once(<<"Ç\230", Erest@1/binary>>) ->
    {<<"Ç\227">>, Erest@1};
titlecase_once(<<"Ç\226", Erest@1/binary>>) ->
    {<<"Ç\225">>, Erest@1};
titlecase_once(<<"Ç\224", Erest@1/binary>>) ->
    {<<"Ç\223">>, Erest@1};
titlecase_once(<<"Ç\222", Erest@1/binary>>) ->
    {<<"Ç\221">>, Erest@1};
titlecase_once(<<"Ç\220", Erest@1/binary>>) ->
    {<<"Ç\217">>, Erest@1};
titlecase_once(<<"Ç\216", Erest@1/binary>>) ->
    {<<"Ç\215">>, Erest@1};
titlecase_once(<<"Ç\214", Erest@1/binary>>) ->
    {<<"Ç\213">>, Erest@1};
titlecase_once(<<"Ç\212", Erest@1/binary>>) ->
    {<<"Ç\213">>, Erest@1};
titlecase_once(<<"Ç\211", Erest@1/binary>>) ->
    {<<"Ç\210">>, Erest@1};
titlecase_once(<<"Ç\207", Erest@1/binary>>) ->
    {<<"Ç\210">>, Erest@1};
titlecase_once(<<"Ç\206", Erest@1/binary>>) ->
    {<<"Ç\205">>, Erest@1};
titlecase_once(<<"Ç\204", Erest@1/binary>>) ->
    {<<"Ç\205">>, Erest@1};
titlecase_once(<<"Æ¿", Erest@1/binary>>) ->
    {<<"Ç·">>, Erest@1};
titlecase_once(<<"Æ½", Erest@1/binary>>) ->
    {<<"Æ¼">>, Erest@1};
titlecase_once(<<"Æ¹", Erest@1/binary>>) ->
    {<<"Æ¸">>, Erest@1};
titlecase_once(<<"Æ¶", Erest@1/binary>>) ->
    {<<"Æµ">>, Erest@1};
titlecase_once(<<"Æ´", Erest@1/binary>>) ->
    {<<"Æ³">>, Erest@1};
titlecase_once(<<"Æ°", Erest@1/binary>>) ->
    {<<"Æ¯">>, Erest@1};
titlecase_once(<<"Æ­", Erest@1/binary>>) ->
    {<<"Æ¬">>, Erest@1};
titlecase_once(<<"Æ¨", Erest@1/binary>>) ->
    {<<"Æ§">>, Erest@1};
titlecase_once(<<"Æ¥", Erest@1/binary>>) ->
    {<<"Æ¤">>, Erest@1};
titlecase_once(<<"Æ£", Erest@1/binary>>) ->
    {<<"Æ¢">>, Erest@1};
titlecase_once(<<"Æ¡", Erest@1/binary>>) ->
    {<<"Æ ">>, Erest@1};
titlecase_once(<<"Æ\236", Erest@1/binary>>) ->
    {<<"È ">>, Erest@1};
titlecase_once(<<"Æ\232", Erest@1/binary>>) ->
    {<<"È½">>, Erest@1};
titlecase_once(<<"Æ\231", Erest@1/binary>>) ->
    {<<"Æ\230">>, Erest@1};
titlecase_once(<<"Æ\225", Erest@1/binary>>) ->
    {<<"Ç¶">>, Erest@1};
titlecase_once(<<"Æ\222", Erest@1/binary>>) ->
    {<<"Æ\221">>, Erest@1};
titlecase_once(<<"Æ\214", Erest@1/binary>>) ->
    {<<"Æ\213">>, Erest@1};
titlecase_once(<<"Æ\210", Erest@1/binary>>) ->
    {<<"Æ\207">>, Erest@1};
titlecase_once(<<"Æ\205", Erest@1/binary>>) ->
    {<<"Æ\204">>, Erest@1};
titlecase_once(<<"Æ\203", Erest@1/binary>>) ->
    {<<"Æ\202">>, Erest@1};
titlecase_once(<<"Æ\200", Erest@1/binary>>) ->
    {<<"É\203">>, Erest@1};
titlecase_once(<<"Å¿", Erest@1/binary>>) ->
    {<<"S">>, Erest@1};
titlecase_once(<<"Å¾", Erest@1/binary>>) ->
    {<<"Å½">>, Erest@1};
titlecase_once(<<"Å¼", Erest@1/binary>>) ->
    {<<"Å»">>, Erest@1};
titlecase_once(<<"Åº", Erest@1/binary>>) ->
    {<<"Å¹">>, Erest@1};
titlecase_once(<<"Å·", Erest@1/binary>>) ->
    {<<"Å¶">>, Erest@1};
titlecase_once(<<"Åµ", Erest@1/binary>>) ->
    {<<"Å´">>, Erest@1};
titlecase_once(<<"Å³", Erest@1/binary>>) ->
    {<<"Å²">>, Erest@1};
titlecase_once(<<"Å±", Erest@1/binary>>) ->
    {<<"Å°">>, Erest@1};
titlecase_once(<<"Å¯", Erest@1/binary>>) ->
    {<<"Å®">>, Erest@1};
titlecase_once(<<"Å­", Erest@1/binary>>) ->
    {<<"Å¬">>, Erest@1};
titlecase_once(<<"Å«", Erest@1/binary>>) ->
    {<<"Åª">>, Erest@1};
titlecase_once(<<"Å©", Erest@1/binary>>) ->
    {<<"Å¨">>, Erest@1};
titlecase_once(<<"Å§", Erest@1/binary>>) ->
    {<<"Å¦">>, Erest@1};
titlecase_once(<<"Å¥", Erest@1/binary>>) ->
    {<<"Å¤">>, Erest@1};
titlecase_once(<<"Å£", Erest@1/binary>>) ->
    {<<"Å¢">>, Erest@1};
titlecase_once(<<"Å¡", Erest@1/binary>>) ->
    {<<"Å ">>, Erest@1};
titlecase_once(<<"Å\237", Erest@1/binary>>) ->
    {<<"Å\236">>, Erest@1};
titlecase_once(<<"Å\235", Erest@1/binary>>) ->
    {<<"Å\234">>, Erest@1};
titlecase_once(<<"Å\233", Erest@1/binary>>) ->
    {<<"Å\232">>, Erest@1};
titlecase_once(<<"Å\231", Erest@1/binary>>) ->
    {<<"Å\230">>, Erest@1};
titlecase_once(<<"Å\227", Erest@1/binary>>) ->
    {<<"Å\226">>, Erest@1};
titlecase_once(<<"Å\225", Erest@1/binary>>) ->
    {<<"Å\224">>, Erest@1};
titlecase_once(<<"Å\223", Erest@1/binary>>) ->
    {<<"Å\222">>, Erest@1};
titlecase_once(<<"Å\221", Erest@1/binary>>) ->
    {<<"Å\220">>, Erest@1};
titlecase_once(<<"Å\217", Erest@1/binary>>) ->
    {<<"Å\216">>, Erest@1};
titlecase_once(<<"Å\215", Erest@1/binary>>) ->
    {<<"Å\214">>, Erest@1};
titlecase_once(<<"Å\213", Erest@1/binary>>) ->
    {<<"Å\212">>, Erest@1};
titlecase_once(<<"Å\210", Erest@1/binary>>) ->
    {<<"Å\207">>, Erest@1};
titlecase_once(<<"Å\206", Erest@1/binary>>) ->
    {<<"Å\205">>, Erest@1};
titlecase_once(<<"Å\204", Erest@1/binary>>) ->
    {<<"Å\203">>, Erest@1};
titlecase_once(<<"Å\202", Erest@1/binary>>) ->
    {<<"Å\201">>, Erest@1};
titlecase_once(<<"Å\200", Erest@1/binary>>) ->
    {<<"Ä¿">>, Erest@1};
titlecase_once(<<"Ä¾", Erest@1/binary>>) ->
    {<<"Ä½">>, Erest@1};
titlecase_once(<<"Ä¼", Erest@1/binary>>) ->
    {<<"Ä»">>, Erest@1};
titlecase_once(<<"Äº", Erest@1/binary>>) ->
    {<<"Ä¹">>, Erest@1};
titlecase_once(<<"Ä·", Erest@1/binary>>) ->
    {<<"Ä¶">>, Erest@1};
titlecase_once(<<"Äµ", Erest@1/binary>>) ->
    {<<"Ä´">>, Erest@1};
titlecase_once(<<"Ä³", Erest@1/binary>>) ->
    {<<"Ä²">>, Erest@1};
titlecase_once(<<"Ä±", Erest@1/binary>>) ->
    {<<"I">>, Erest@1};
titlecase_once(<<"Ä¯", Erest@1/binary>>) ->
    {<<"Ä®">>, Erest@1};
titlecase_once(<<"Ä­", Erest@1/binary>>) ->
    {<<"Ä¬">>, Erest@1};
titlecase_once(<<"Ä«", Erest@1/binary>>) ->
    {<<"Äª">>, Erest@1};
titlecase_once(<<"Ä©", Erest@1/binary>>) ->
    {<<"Ä¨">>, Erest@1};
titlecase_once(<<"Ä§", Erest@1/binary>>) ->
    {<<"Ä¦">>, Erest@1};
titlecase_once(<<"Ä¥", Erest@1/binary>>) ->
    {<<"Ä¤">>, Erest@1};
titlecase_once(<<"Ä£", Erest@1/binary>>) ->
    {<<"Ä¢">>, Erest@1};
titlecase_once(<<"Ä¡", Erest@1/binary>>) ->
    {<<"Ä ">>, Erest@1};
titlecase_once(<<"Ä\237", Erest@1/binary>>) ->
    {<<"Ä\236">>, Erest@1};
titlecase_once(<<"Ä\235", Erest@1/binary>>) ->
    {<<"Ä\234">>, Erest@1};
titlecase_once(<<"Ä\233", Erest@1/binary>>) ->
    {<<"Ä\232">>, Erest@1};
titlecase_once(<<"Ä\231", Erest@1/binary>>) ->
    {<<"Ä\230">>, Erest@1};
titlecase_once(<<"Ä\227", Erest@1/binary>>) ->
    {<<"Ä\226">>, Erest@1};
titlecase_once(<<"Ä\225", Erest@1/binary>>) ->
    {<<"Ä\224">>, Erest@1};
titlecase_once(<<"Ä\223", Erest@1/binary>>) ->
    {<<"Ä\222">>, Erest@1};
titlecase_once(<<"Ä\221", Erest@1/binary>>) ->
    {<<"Ä\220">>, Erest@1};
titlecase_once(<<"Ä\217", Erest@1/binary>>) ->
    {<<"Ä\216">>, Erest@1};
titlecase_once(<<"Ä\215", Erest@1/binary>>) ->
    {<<"Ä\214">>, Erest@1};
titlecase_once(<<"Ä\213", Erest@1/binary>>) ->
    {<<"Ä\212">>, Erest@1};
titlecase_once(<<"Ä\211", Erest@1/binary>>) ->
    {<<"Ä\210">>, Erest@1};
titlecase_once(<<"Ä\207", Erest@1/binary>>) ->
    {<<"Ä\206">>, Erest@1};
titlecase_once(<<"Ä\205", Erest@1/binary>>) ->
    {<<"Ä\204">>, Erest@1};
titlecase_once(<<"Ä\203", Erest@1/binary>>) ->
    {<<"Ä\202">>, Erest@1};
titlecase_once(<<"Ä\201", Erest@1/binary>>) ->
    {<<"Ä\200">>, Erest@1};
titlecase_once(<<"Ã¿", Erest@1/binary>>) ->
    {<<"Å¸">>, Erest@1};
titlecase_once(<<"Ã¾", Erest@1/binary>>) ->
    {<<"Ã\236">>, Erest@1};
titlecase_once(<<"Ã½", Erest@1/binary>>) ->
    {<<"Ã\235">>, Erest@1};
titlecase_once(<<"Ã¼", Erest@1/binary>>) ->
    {<<"Ã\234">>, Erest@1};
titlecase_once(<<"Ã»", Erest@1/binary>>) ->
    {<<"Ã\233">>, Erest@1};
titlecase_once(<<"Ãº", Erest@1/binary>>) ->
    {<<"Ã\232">>, Erest@1};
titlecase_once(<<"Ã¹", Erest@1/binary>>) ->
    {<<"Ã\231">>, Erest@1};
titlecase_once(<<"Ã¸", Erest@1/binary>>) ->
    {<<"Ã\230">>, Erest@1};
titlecase_once(<<"Ã¶", Erest@1/binary>>) ->
    {<<"Ã\226">>, Erest@1};
titlecase_once(<<"Ãµ", Erest@1/binary>>) ->
    {<<"Ã\225">>, Erest@1};
titlecase_once(<<"Ã´", Erest@1/binary>>) ->
    {<<"Ã\224">>, Erest@1};
titlecase_once(<<"Ã³", Erest@1/binary>>) ->
    {<<"Ã\223">>, Erest@1};
titlecase_once(<<"Ã²", Erest@1/binary>>) ->
    {<<"Ã\222">>, Erest@1};
titlecase_once(<<"Ã±", Erest@1/binary>>) ->
    {<<"Ã\221">>, Erest@1};
titlecase_once(<<"Ã°", Erest@1/binary>>) ->
    {<<"Ã\220">>, Erest@1};
titlecase_once(<<"Ã¯", Erest@1/binary>>) ->
    {<<"Ã\217">>, Erest@1};
titlecase_once(<<"Ã®", Erest@1/binary>>) ->
    {<<"Ã\216">>, Erest@1};
titlecase_once(<<"Ã­", Erest@1/binary>>) ->
    {<<"Ã\215">>, Erest@1};
titlecase_once(<<"Ã¬", Erest@1/binary>>) ->
    {<<"Ã\214">>, Erest@1};
titlecase_once(<<"Ã«", Erest@1/binary>>) ->
    {<<"Ã\213">>, Erest@1};
titlecase_once(<<"Ãª", Erest@1/binary>>) ->
    {<<"Ã\212">>, Erest@1};
titlecase_once(<<"Ã©", Erest@1/binary>>) ->
    {<<"Ã\211">>, Erest@1};
titlecase_once(<<"Ã¨", Erest@1/binary>>) ->
    {<<"Ã\210">>, Erest@1};
titlecase_once(<<"Ã§", Erest@1/binary>>) ->
    {<<"Ã\207">>, Erest@1};
titlecase_once(<<"Ã¦", Erest@1/binary>>) ->
    {<<"Ã\206">>, Erest@1};
titlecase_once(<<"Ã¥", Erest@1/binary>>) ->
    {<<"Ã\205">>, Erest@1};
titlecase_once(<<"Ã¤", Erest@1/binary>>) ->
    {<<"Ã\204">>, Erest@1};
titlecase_once(<<"Ã£", Erest@1/binary>>) ->
    {<<"Ã\203">>, Erest@1};
titlecase_once(<<"Ã¢", Erest@1/binary>>) ->
    {<<"Ã\202">>, Erest@1};
titlecase_once(<<"Ã¡", Erest@1/binary>>) ->
    {<<"Ã\201">>, Erest@1};
titlecase_once(<<"Ã ", Erest@1/binary>>) ->
    {<<"Ã\200">>, Erest@1};
titlecase_once(<<"Âµ", Erest@1/binary>>) ->
    {<<"Î\234">>, Erest@1};
titlecase_once(<<"z", Erest@1/binary>>) ->
    {<<"Z">>, Erest@1};
titlecase_once(<<"y", Erest@1/binary>>) ->
    {<<"Y">>, Erest@1};
titlecase_once(<<"x", Erest@1/binary>>) ->
    {<<"X">>, Erest@1};
titlecase_once(<<"w", Erest@1/binary>>) ->
    {<<"W">>, Erest@1};
titlecase_once(<<"v", Erest@1/binary>>) ->
    {<<"V">>, Erest@1};
titlecase_once(<<"u", Erest@1/binary>>) ->
    {<<"U">>, Erest@1};
titlecase_once(<<"t", Erest@1/binary>>) ->
    {<<"T">>, Erest@1};
titlecase_once(<<"s", Erest@1/binary>>) ->
    {<<"S">>, Erest@1};
titlecase_once(<<"r", Erest@1/binary>>) ->
    {<<"R">>, Erest@1};
titlecase_once(<<"q", Erest@1/binary>>) ->
    {<<"Q">>, Erest@1};
titlecase_once(<<"p", Erest@1/binary>>) ->
    {<<"P">>, Erest@1};
titlecase_once(<<"o", Erest@1/binary>>) ->
    {<<"O">>, Erest@1};
titlecase_once(<<"n", Erest@1/binary>>) ->
    {<<"N">>, Erest@1};
titlecase_once(<<"m", Erest@1/binary>>) ->
    {<<"M">>, Erest@1};
titlecase_once(<<"l", Erest@1/binary>>) ->
    {<<"L">>, Erest@1};
titlecase_once(<<"k", Erest@1/binary>>) ->
    {<<"K">>, Erest@1};
titlecase_once(<<"j", Erest@1/binary>>) ->
    {<<"J">>, Erest@1};
titlecase_once(<<"i", Erest@1/binary>>) ->
    {<<"I">>, Erest@1};
titlecase_once(<<"h", Erest@1/binary>>) ->
    {<<"H">>, Erest@1};
titlecase_once(<<"g", Erest@1/binary>>) ->
    {<<"G">>, Erest@1};
titlecase_once(<<"f", Erest@1/binary>>) ->
    {<<"F">>, Erest@1};
titlecase_once(<<"e", Erest@1/binary>>) ->
    {<<"E">>, Erest@1};
titlecase_once(<<"d", Erest@1/binary>>) ->
    {<<"D">>, Erest@1};
titlecase_once(<<"c", Erest@1/binary>>) ->
    {<<"C">>, Erest@1};
titlecase_once(<<"b", Erest@1/binary>>) ->
    {<<"B">>, Erest@1};
titlecase_once(<<"a", Erest@1/binary>>) ->
    {<<"A">>, Erest@1};
titlecase_once(<<"Ã\237", Erest@1/binary>>) ->
    {<<"Ss">>, Erest@1};
titlecase_once(<<"ï¬\200", Erest@1/binary>>) ->
    {<<"Ff">>, Erest@1};
titlecase_once(<<"ï¬\201", Erest@1/binary>>) ->
    {<<"Fi">>, Erest@1};
titlecase_once(<<"ï¬\202", Erest@1/binary>>) ->
    {<<"Fl">>, Erest@1};
titlecase_once(<<"ï¬\203", Erest@1/binary>>) ->
    {<<"Ffi">>, Erest@1};
titlecase_once(<<"ï¬\204", Erest@1/binary>>) ->
    {<<"Ffl">>, Erest@1};
titlecase_once(<<"ï¬\205", Erest@1/binary>>) ->
    {<<"St">>, Erest@1};
titlecase_once(<<"ï¬\206", Erest@1/binary>>) ->
    {<<"St">>, Erest@1};
titlecase_once(<<"Ö\207", Erest@1/binary>>) ->
    {<<"ÔµÖ\202">>, Erest@1};
titlecase_once(<<"ï¬\223", Erest@1/binary>>) ->
    {<<"Õ\204Õ¶">>, Erest@1};
titlecase_once(<<"ï¬\224", Erest@1/binary>>) ->
    {<<"Õ\204Õ¥">>, Erest@1};
titlecase_once(<<"ï¬\225", Erest@1/binary>>) ->
    {<<"Õ\204Õ«">>, Erest@1};
titlecase_once(<<"ï¬\226", Erest@1/binary>>) ->
    {<<"Õ\216Õ¶">>, Erest@1};
titlecase_once(<<"ï¬\227", Erest@1/binary>>) ->
    {<<"Õ\204Õ­">>, Erest@1};
titlecase_once(<<"Å\211", Erest@1/binary>>) ->
    {<<"Ê¼N">>, Erest@1};
titlecase_once(<<"Î\220", Erest@1/binary>>) ->
    {<<"Î\231Ì\210Ì\201">>, Erest@1};
titlecase_once(<<"Î°", Erest@1/binary>>) ->
    {<<"Î¥Ì\210Ì\201">>, Erest@1};
titlecase_once(<<"Ç°", Erest@1/binary>>) ->
    {<<"JÌ\214">>, Erest@1};
titlecase_once(<<"áº\226", Erest@1/binary>>) ->
    {<<"HÌ±">>, Erest@1};
titlecase_once(<<"áº\227", Erest@1/binary>>) ->
    {<<"TÌ\210">>, Erest@1};
titlecase_once(<<"áº\230", Erest@1/binary>>) ->
    {<<"WÌ\212">>, Erest@1};
titlecase_once(<<"áº\231", Erest@1/binary>>) ->
    {<<"YÌ\212">>, Erest@1};
titlecase_once(<<"áº\232", Erest@1/binary>>) ->
    {<<"AÊ¾">>, Erest@1};
titlecase_once(<<"á½\220", Erest@1/binary>>) ->
    {<<"Î¥Ì\223">>, Erest@1};
titlecase_once(<<"á½\222", Erest@1/binary>>) ->
    {<<"Î¥Ì\223Ì\200">>, Erest@1};
titlecase_once(<<"á½\224", Erest@1/binary>>) ->
    {<<"Î¥Ì\223Ì\201">>, Erest@1};
titlecase_once(<<"á½\226", Erest@1/binary>>) ->
    {<<"Î¥Ì\223Í\202">>, Erest@1};
titlecase_once(<<"á¾¶", Erest@1/binary>>) ->
    {<<"Î\221Í\202">>, Erest@1};
titlecase_once(<<"á¿\206", Erest@1/binary>>) ->
    {<<"Î\227Í\202">>, Erest@1};
titlecase_once(<<"á¿\222", Erest@1/binary>>) ->
    {<<"Î\231Ì\210Ì\200">>, Erest@1};
titlecase_once(<<"á¿\223", Erest@1/binary>>) ->
    {<<"Î\231Ì\210Ì\201">>, Erest@1};
titlecase_once(<<"á¿\226", Erest@1/binary>>) ->
    {<<"Î\231Í\202">>, Erest@1};
titlecase_once(<<"á¿\227", Erest@1/binary>>) ->
    {<<"Î\231Ì\210Í\202">>, Erest@1};
titlecase_once(<<"á¿¢", Erest@1/binary>>) ->
    {<<"Î¥Ì\210Ì\200">>, Erest@1};
titlecase_once(<<"á¿£", Erest@1/binary>>) ->
    {<<"Î¥Ì\210Ì\201">>, Erest@1};
titlecase_once(<<"á¿¤", Erest@1/binary>>) ->
    {<<"Î¡Ì\223">>, Erest@1};
titlecase_once(<<"á¿¦", Erest@1/binary>>) ->
    {<<"Î¥Í\202">>, Erest@1};
titlecase_once(<<"á¿§", Erest@1/binary>>) ->
    {<<"Î¥Ì\210Í\202">>, Erest@1};
titlecase_once(<<"á¿¶", Erest@1/binary>>) ->
    {<<"Î©Í\202">>, Erest@1};
titlecase_once(<<"á¾²", Erest@1/binary>>) ->
    {<<"á¾ºÍ\205">>, Erest@1};
titlecase_once(<<"á¾´", Erest@1/binary>>) ->
    {<<"Î\206Í\205">>, Erest@1};
titlecase_once(<<"á¿\202", Erest@1/binary>>) ->
    {<<"á¿\212Í\205">>, Erest@1};
titlecase_once(<<"á¿\204", Erest@1/binary>>) ->
    {<<"Î\211Í\205">>, Erest@1};
titlecase_once(<<"á¿²", Erest@1/binary>>) ->
    {<<"á¿ºÍ\205">>, Erest@1};
titlecase_once(<<"á¿´", Erest@1/binary>>) ->
    {<<"Î\217Í\205">>, Erest@1};
titlecase_once(<<"á¾·", Erest@1/binary>>) ->
    {<<"Î\221Í\202Í\205">>, Erest@1};
titlecase_once(<<"á¿\207", Erest@1/binary>>) ->
    {<<"Î\227Í\202Í\205">>, Erest@1};
titlecase_once(<<"á¿·", Erest@1/binary>>) ->
    {<<"Î©Í\202Í\205">>, Erest@1};
titlecase_once(<<Echar@1, Erest@1/binary>>) ->
    {<<Echar@1>>, Erest@1}.

upcase(Estring@1) -> upcase(Estring@1, <<>>).

upcase(<<"ð\236¥\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤¡">>);
upcase(<<"ð\236¥\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤ ">>);
upcase(<<"ð\236¥\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\237">>);
upcase(<<"ð\236¥\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\236">>);
upcase(<<"ð\236¤¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\235">>);
upcase(<<"ð\236¤¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\234">>);
upcase(<<"ð\236¤½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\233">>);
upcase(<<"ð\236¤¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\232">>);
upcase(<<"ð\236¤»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\231">>);
upcase(<<"ð\236¤º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\230">>);
upcase(<<"ð\236¤¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\227">>);
upcase(<<"ð\236¤¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\226">>);
upcase(<<"ð\236¤·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\225">>);
upcase(<<"ð\236¤¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\224">>);
upcase(<<"ð\236¤µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\223">>);
upcase(<<"ð\236¤´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\222">>);
upcase(<<"ð\236¤³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\221">>);
upcase(<<"ð\236¤²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\220">>);
upcase(<<"ð\236¤±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\217">>);
upcase(<<"ð\236¤°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\216">>);
upcase(<<"ð\236¤¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\215">>);
upcase(<<"ð\236¤®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\214">>);
upcase(<<"ð\236¤­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\213">>);
upcase(<<"ð\236¤¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\212">>);
upcase(<<"ð\236¤«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\211">>);
upcase(<<"ð\236¤ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\210">>);
upcase(<<"ð\236¤©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\207">>);
upcase(<<"ð\236¤¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\206">>);
upcase(<<"ð\236¤§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\205">>);
upcase(<<"ð\236¤¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\204">>);
upcase(<<"ð\236¤¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\203">>);
upcase(<<"ð\236¤¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\202">>);
upcase(<<"ð\236¤£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\201">>);
upcase(<<"ð\236¤¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\236¤\200">>);
upcase(<<"ð\221£\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¿">>);
upcase(<<"ð\221£\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¾">>);
upcase(<<"ð\221£\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢½">>);
upcase(<<"ð\221£\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¼">>);
upcase(<<"ð\221£\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢»">>);
upcase(<<"ð\221£\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢º">>);
upcase(<<"ð\221£\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¹">>);
upcase(<<"ð\221£\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¸">>);
upcase(<<"ð\221£\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢·">>);
upcase(<<"ð\221£\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¶">>);
upcase(<<"ð\221£\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢µ">>);
upcase(<<"ð\221£\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢´">>);
upcase(<<"ð\221£\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢³">>);
upcase(<<"ð\221£\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢²">>);
upcase(<<"ð\221£\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢±">>);
upcase(<<"ð\221£\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢°">>);
upcase(<<"ð\221£\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¯">>);
upcase(<<"ð\221£\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢®">>);
upcase(<<"ð\221£\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢­">>);
upcase(<<"ð\221£\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¬">>);
upcase(<<"ð\221£\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢«">>);
upcase(<<"ð\221£\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢ª">>);
upcase(<<"ð\221£\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢©">>);
upcase(<<"ð\221£\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¨">>);
upcase(<<"ð\221£\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢§">>);
upcase(<<"ð\221£\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¦">>);
upcase(<<"ð\221£\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¥">>);
upcase(<<"ð\221£\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¤">>);
upcase(<<"ð\221£\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢£">>);
upcase(<<"ð\221£\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¢">>);
upcase(<<"ð\221£\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢¡">>);
upcase(<<"ð\221£\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\221¢ ">>);
upcase(<<"ð\220³²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²²">>);
upcase(<<"ð\220³±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²±">>);
upcase(<<"ð\220³°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²°">>);
upcase(<<"ð\220³¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¯">>);
upcase(<<"ð\220³®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²®">>);
upcase(<<"ð\220³­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²­">>);
upcase(<<"ð\220³¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¬">>);
upcase(<<"ð\220³«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²«">>);
upcase(<<"ð\220³ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²ª">>);
upcase(<<"ð\220³©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²©">>);
upcase(<<"ð\220³¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¨">>);
upcase(<<"ð\220³§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²§">>);
upcase(<<"ð\220³¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¦">>);
upcase(<<"ð\220³¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¥">>);
upcase(<<"ð\220³¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¤">>);
upcase(<<"ð\220³£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²£">>);
upcase(<<"ð\220³¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¢">>);
upcase(<<"ð\220³¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²¡">>);
upcase(<<"ð\220³ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220² ">>);
upcase(<<"ð\220³\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\237">>);
upcase(<<"ð\220³\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\236">>);
upcase(<<"ð\220³\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\235">>);
upcase(<<"ð\220³\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\234">>);
upcase(<<"ð\220³\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\233">>);
upcase(<<"ð\220³\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\232">>);
upcase(<<"ð\220³\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\231">>);
upcase(<<"ð\220³\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\230">>);
upcase(<<"ð\220³\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\227">>);
upcase(<<"ð\220³\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\226">>);
upcase(<<"ð\220³\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\225">>);
upcase(<<"ð\220³\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\224">>);
upcase(<<"ð\220³\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\223">>);
upcase(<<"ð\220³\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\222">>);
upcase(<<"ð\220³\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\221">>);
upcase(<<"ð\220³\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\220">>);
upcase(<<"ð\220³\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\217">>);
upcase(<<"ð\220³\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\216">>);
upcase(<<"ð\220³\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\215">>);
upcase(<<"ð\220³\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\214">>);
upcase(<<"ð\220³\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\213">>);
upcase(<<"ð\220³\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\212">>);
upcase(<<"ð\220³\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\211">>);
upcase(<<"ð\220³\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\210">>);
upcase(<<"ð\220³\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\207">>);
upcase(<<"ð\220³\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\206">>);
upcase(<<"ð\220³\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\205">>);
upcase(<<"ð\220³\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\204">>);
upcase(<<"ð\220³\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\203">>);
upcase(<<"ð\220³\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\202">>);
upcase(<<"ð\220³\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\201">>);
upcase(<<"ð\220³\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220²\200">>);
upcase(<<"ð\220\223»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\223">>);
upcase(<<"ð\220\223º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\222">>);
upcase(<<"ð\220\223¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\221">>);
upcase(<<"ð\220\223¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\220">>);
upcase(<<"ð\220\223·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\217">>);
upcase(<<"ð\220\223¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\216">>);
upcase(<<"ð\220\223µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\215">>);
upcase(<<"ð\220\223´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\214">>);
upcase(<<"ð\220\223³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\213">>);
upcase(<<"ð\220\223²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\212">>);
upcase(<<"ð\220\223±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\211">>);
upcase(<<"ð\220\223°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\210">>);
upcase(<<"ð\220\223¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\207">>);
upcase(<<"ð\220\223®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\206">>);
upcase(<<"ð\220\223­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\205">>);
upcase(<<"ð\220\223¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\204">>);
upcase(<<"ð\220\223«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\203">>);
upcase(<<"ð\220\223ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\202">>);
upcase(<<"ð\220\223©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\201">>);
upcase(<<"ð\220\223¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\223\200">>);
upcase(<<"ð\220\223§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¿">>);
upcase(<<"ð\220\223¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¾">>);
upcase(<<"ð\220\223¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222½">>);
upcase(<<"ð\220\223¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¼">>);
upcase(<<"ð\220\223£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222»">>);
upcase(<<"ð\220\223¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222º">>);
upcase(<<"ð\220\223¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¹">>);
upcase(<<"ð\220\223 ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¸">>);
upcase(<<"ð\220\223\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222·">>);
upcase(<<"ð\220\223\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222¶">>);
upcase(<<"ð\220\223\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222µ">>);
upcase(<<"ð\220\223\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222´">>);
upcase(<<"ð\220\223\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222³">>);
upcase(<<"ð\220\223\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222²">>);
upcase(<<"ð\220\223\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222±">>);
upcase(<<"ð\220\223\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\222°">>);
upcase(<<"ð\220\221\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220§">>);
upcase(<<"ð\220\221\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220¦">>);
upcase(<<"ð\220\221\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220¥">>);
upcase(<<"ð\220\221\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220¤">>);
upcase(<<"ð\220\221\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220£">>);
upcase(<<"ð\220\221\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220¢">>);
upcase(<<"ð\220\221\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220¡">>);
upcase(<<"ð\220\221\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220 ">>);
upcase(<<"ð\220\221\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\237">>);
upcase(<<"ð\220\221\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\236">>);
upcase(<<"ð\220\221\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\235">>);
upcase(<<"ð\220\221\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\234">>);
upcase(<<"ð\220\221\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\233">>);
upcase(<<"ð\220\221\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\232">>);
upcase(<<"ð\220\221\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\231">>);
upcase(<<"ð\220\221\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\230">>);
upcase(<<"ð\220\220¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\227">>);
upcase(<<"ð\220\220¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\226">>);
upcase(<<"ð\220\220½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\225">>);
upcase(<<"ð\220\220¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\224">>);
upcase(<<"ð\220\220»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\223">>);
upcase(<<"ð\220\220º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\222">>);
upcase(<<"ð\220\220¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\221">>);
upcase(<<"ð\220\220¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\220">>);
upcase(<<"ð\220\220·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\217">>);
upcase(<<"ð\220\220¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\216">>);
upcase(<<"ð\220\220µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\215">>);
upcase(<<"ð\220\220´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\214">>);
upcase(<<"ð\220\220³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\213">>);
upcase(<<"ð\220\220²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\212">>);
upcase(<<"ð\220\220±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\211">>);
upcase(<<"ð\220\220°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\210">>);
upcase(<<"ð\220\220¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\207">>);
upcase(<<"ð\220\220®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\206">>);
upcase(<<"ð\220\220­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\205">>);
upcase(<<"ð\220\220¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\204">>);
upcase(<<"ð\220\220«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\203">>);
upcase(<<"ð\220\220ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\202">>);
upcase(<<"ð\220\220©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\201">>);
upcase(<<"ð\220\220¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ð\220\220\200">>);
upcase(<<"ï½\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼º">>);
upcase(<<"ï½\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¹">>);
upcase(<<"ï½\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¸">>);
upcase(<<"ï½\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼·">>);
upcase(<<"ï½\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¶">>);
upcase(<<"ï½\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼µ">>);
upcase(<<"ï½\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼´">>);
upcase(<<"ï½\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼³">>);
upcase(<<"ï½\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼²">>);
upcase(<<"ï½\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼±">>);
upcase(<<"ï½\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼°">>);
upcase(<<"ï½\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¯">>);
upcase(<<"ï½\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼®">>);
upcase(<<"ï½\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼­">>);
upcase(<<"ï½\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¬">>);
upcase(<<"ï½\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼«">>);
upcase(<<"ï½\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼ª">>);
upcase(<<"ï½\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼©">>);
upcase(<<"ï½\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¨">>);
upcase(<<"ï½\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼§">>);
upcase(<<"ï½\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¦">>);
upcase(<<"ï½\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¥">>);
upcase(<<"ï½\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¤">>);
upcase(<<"ï½\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼£">>);
upcase(<<"ï½\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¢">>);
upcase(<<"ï½\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ï¼¡">>);
upcase(<<"ê®¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¯">>);
upcase(<<"ê®¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217®">>);
upcase(<<"ê®½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217­">>);
upcase(<<"ê®¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¬">>);
upcase(<<"ê®»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217«">>);
upcase(<<"ê®º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217ª">>);
upcase(<<"ê®¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217©">>);
upcase(<<"ê®¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¨">>);
upcase(<<"ê®·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217§">>);
upcase(<<"ê®¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¦">>);
upcase(<<"ê®µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¥">>);
upcase(<<"ê®´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¤">>);
upcase(<<"ê®³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217£">>);
upcase(<<"ê®²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¢">>);
upcase(<<"ê®±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217¡">>);
upcase(<<"ê®°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217 ">>);
upcase(<<"ê®¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\237">>);
upcase(<<"ê®®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\236">>);
upcase(<<"ê®­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\235">>);
upcase(<<"ê®¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\234">>);
upcase(<<"ê®«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\233">>);
upcase(<<"ê®ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\232">>);
upcase(<<"ê®©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\231">>);
upcase(<<"ê®¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\230">>);
upcase(<<"ê®§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\227">>);
upcase(<<"ê®¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\226">>);
upcase(<<"ê®¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\225">>);
upcase(<<"ê®¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\224">>);
upcase(<<"ê®£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\223">>);
upcase(<<"ê®¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\222">>);
upcase(<<"ê®¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\221">>);
upcase(<<"ê® ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\220">>);
upcase(<<"ê®\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\217">>);
upcase(<<"ê®\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\216">>);
upcase(<<"ê®\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\215">>);
upcase(<<"ê®\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\214">>);
upcase(<<"ê®\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\213">>);
upcase(<<"ê®\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\212">>);
upcase(<<"ê®\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\211">>);
upcase(<<"ê®\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\210">>);
upcase(<<"ê®\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\207">>);
upcase(<<"ê®\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\206">>);
upcase(<<"ê®\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\205">>);
upcase(<<"ê®\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\204">>);
upcase(<<"ê®\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\203">>);
upcase(<<"ê®\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\202">>);
upcase(<<"ê®\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\201">>);
upcase(<<"ê®\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217\200">>);
upcase(<<"ê®\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¿">>);
upcase(<<"ê®\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¾">>);
upcase(<<"ê®\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216½">>);
upcase(<<"ê®\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¼">>);
upcase(<<"ê®\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216»">>);
upcase(<<"ê®\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216º">>);
upcase(<<"ê®\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¹">>);
upcase(<<"ê®\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¸">>);
upcase(<<"ê®\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216·">>);
upcase(<<"ê®\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¶">>);
upcase(<<"ê®\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216µ">>);
upcase(<<"ê®\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216´">>);
upcase(<<"ê®\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216³">>);
upcase(<<"ê®\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216²">>);
upcase(<<"ê®\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216±">>);
upcase(<<"ê®\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216°">>);
upcase(<<"ê­¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¯">>);
upcase(<<"ê­¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216®">>);
upcase(<<"ê­½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216­">>);
upcase(<<"ê­¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¬">>);
upcase(<<"ê­»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216«">>);
upcase(<<"ê­º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216ª">>);
upcase(<<"ê­¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216©">>);
upcase(<<"ê­¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¨">>);
upcase(<<"ê­·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216§">>);
upcase(<<"ê­¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¦">>);
upcase(<<"ê­µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¥">>);
upcase(<<"ê­´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¤">>);
upcase(<<"ê­³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216£">>);
upcase(<<"ê­²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¢">>);
upcase(<<"ê­±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216¡">>);
upcase(<<"ê­°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\216 ">>);
upcase(<<"ê­\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236³">>);
upcase(<<"ê\236·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¶">>);
upcase(<<"ê\236µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236´">>);
upcase(<<"ê\236©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¨">>);
upcase(<<"ê\236§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¦">>);
upcase(<<"ê\236¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¤">>);
upcase(<<"ê\236£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¢">>);
upcase(<<"ê\236¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236 ">>);
upcase(<<"ê\236\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\236">>);
upcase(<<"ê\236\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\234">>);
upcase(<<"ê\236\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\232">>);
upcase(<<"ê\236\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\230">>);
upcase(<<"ê\236\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\226">>);
upcase(<<"ê\236\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\222">>);
upcase(<<"ê\236\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\220">>);
upcase(<<"ê\236\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\213">>);
upcase(<<"ê\236\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\206">>);
upcase(<<"ê\236\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\204">>);
upcase(<<"ê\236\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\202">>);
upcase(<<"ê\236\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\200">>);
upcase(<<"ê\235¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¾">>);
upcase(<<"ê\235¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235»">>);
upcase(<<"ê\235º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¹">>);
upcase(<<"ê\235¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235®">>);
upcase(<<"ê\235­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¬">>);
upcase(<<"ê\235«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235ª">>);
upcase(<<"ê\235©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¨">>);
upcase(<<"ê\235§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¦">>);
upcase(<<"ê\235¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¤">>);
upcase(<<"ê\235£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235¢">>);
upcase(<<"ê\235¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235 ">>);
upcase(<<"ê\235\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\236">>);
upcase(<<"ê\235\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\234">>);
upcase(<<"ê\235\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\232">>);
upcase(<<"ê\235\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\230">>);
upcase(<<"ê\235\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\226">>);
upcase(<<"ê\235\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\224">>);
upcase(<<"ê\235\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\222">>);
upcase(<<"ê\235\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\220">>);
upcase(<<"ê\235\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\216">>);
upcase(<<"ê\235\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\214">>);
upcase(<<"ê\235\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\212">>);
upcase(<<"ê\235\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\210">>);
upcase(<<"ê\235\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\206">>);
upcase(<<"ê\235\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\204">>);
upcase(<<"ê\235\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\202">>);
upcase(<<"ê\235\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235\200">>);
upcase(<<"ê\234¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¾">>);
upcase(<<"ê\234½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¼">>);
upcase(<<"ê\234»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234º">>);
upcase(<<"ê\234¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¸">>);
upcase(<<"ê\234·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¶">>);
upcase(<<"ê\234µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234´">>);
upcase(<<"ê\234³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234²">>);
upcase(<<"ê\234¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234®">>);
upcase(<<"ê\234­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¬">>);
upcase(<<"ê\234«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234ª">>);
upcase(<<"ê\234©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¨">>);
upcase(<<"ê\234§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¦">>);
upcase(<<"ê\234¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¤">>);
upcase(<<"ê\234£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\234¢">>);
upcase(<<"ê\232\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\232">>);
upcase(<<"ê\232\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\230">>);
upcase(<<"ê\232\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\226">>);
upcase(<<"ê\232\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\224">>);
upcase(<<"ê\232\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\222">>);
upcase(<<"ê\232\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\220">>);
upcase(<<"ê\232\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\216">>);
upcase(<<"ê\232\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\214">>);
upcase(<<"ê\232\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\212">>);
upcase(<<"ê\232\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\210">>);
upcase(<<"ê\232\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\206">>);
upcase(<<"ê\232\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\204">>);
upcase(<<"ê\232\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\202">>);
upcase(<<"ê\232\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\232\200">>);
upcase(<<"ê\231­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231¬">>);
upcase(<<"ê\231«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231ª">>);
upcase(<<"ê\231©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231¨">>);
upcase(<<"ê\231§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231¦">>);
upcase(<<"ê\231¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231¤">>);
upcase(<<"ê\231£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231¢">>);
upcase(<<"ê\231¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231 ">>);
upcase(<<"ê\231\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\236">>);
upcase(<<"ê\231\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\234">>);
upcase(<<"ê\231\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\232">>);
upcase(<<"ê\231\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\230">>);
upcase(<<"ê\231\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\226">>);
upcase(<<"ê\231\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\224">>);
upcase(<<"ê\231\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\222">>);
upcase(<<"ê\231\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\220">>);
upcase(<<"ê\231\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\216">>);
upcase(<<"ê\231\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\214">>);
upcase(<<"ê\231\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\212">>);
upcase(<<"ê\231\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\210">>);
upcase(<<"ê\231\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\206">>);
upcase(<<"ê\231\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\204">>);
upcase(<<"ê\231\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\202">>);
upcase(<<"ê\231\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\200">>);
upcase(<<"â´­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\215">>);
upcase(<<"â´§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\207">>);
upcase(<<"â´¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\205">>);
upcase(<<"â´¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\204">>);
upcase(<<"â´£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\203">>);
upcase(<<"â´¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\202">>);
upcase(<<"â´¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\201">>);
upcase(<<"â´ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\203\200">>);
upcase(<<"â´\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¿">>);
upcase(<<"â´\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¾">>);
upcase(<<"â´\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202½">>);
upcase(<<"â´\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¼">>);
upcase(<<"â´\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202»">>);
upcase(<<"â´\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202º">>);
upcase(<<"â´\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¹">>);
upcase(<<"â´\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¸">>);
upcase(<<"â´\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202·">>);
upcase(<<"â´\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¶">>);
upcase(<<"â´\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202µ">>);
upcase(<<"â´\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202´">>);
upcase(<<"â´\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202³">>);
upcase(<<"â´\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202²">>);
upcase(<<"â´\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202±">>);
upcase(<<"â´\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202°">>);
upcase(<<"â´\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¯">>);
upcase(<<"â´\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202®">>);
upcase(<<"â´\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202­">>);
upcase(<<"â´\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¬">>);
upcase(<<"â´\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202«">>);
upcase(<<"â´\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202ª">>);
upcase(<<"â´\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202©">>);
upcase(<<"â´\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¨">>);
upcase(<<"â´\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202§">>);
upcase(<<"â´\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¦">>);
upcase(<<"â´\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¥">>);
upcase(<<"â´\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¤">>);
upcase(<<"â´\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202£">>);
upcase(<<"â´\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¢">>);
upcase(<<"â´\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202¡">>);
upcase(<<"â´\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\202 ">>);
upcase(<<"â³³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³²">>);
upcase(<<"â³®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³­">>);
upcase(<<"â³¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³«">>);
upcase(<<"â³£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³¢">>);
upcase(<<"â³¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³ ">>);
upcase(<<"â³\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\236">>);
upcase(<<"â³\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\234">>);
upcase(<<"â³\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\232">>);
upcase(<<"â³\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\230">>);
upcase(<<"â³\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\226">>);
upcase(<<"â³\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\224">>);
upcase(<<"â³\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\222">>);
upcase(<<"â³\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\220">>);
upcase(<<"â³\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\216">>);
upcase(<<"â³\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\214">>);
upcase(<<"â³\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\212">>);
upcase(<<"â³\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\210">>);
upcase(<<"â³\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\206">>);
upcase(<<"â³\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\204">>);
upcase(<<"â³\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\202">>);
upcase(<<"â³\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â³\200">>);
upcase(<<"â²¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¾">>);
upcase(<<"â²½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¼">>);
upcase(<<"â²»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²º">>);
upcase(<<"â²¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¸">>);
upcase(<<"â²·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¶">>);
upcase(<<"â²µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²´">>);
upcase(<<"â²³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²²">>);
upcase(<<"â²±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²°">>);
upcase(<<"â²¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²®">>);
upcase(<<"â²­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¬">>);
upcase(<<"â²«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²ª">>);
upcase(<<"â²©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¨">>);
upcase(<<"â²§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¦">>);
upcase(<<"â²¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¤">>);
upcase(<<"â²£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²¢">>);
upcase(<<"â²¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â² ">>);
upcase(<<"â²\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\236">>);
upcase(<<"â²\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\234">>);
upcase(<<"â²\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\232">>);
upcase(<<"â²\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\230">>);
upcase(<<"â²\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\226">>);
upcase(<<"â²\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\224">>);
upcase(<<"â²\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\222">>);
upcase(<<"â²\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\220">>);
upcase(<<"â²\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\216">>);
upcase(<<"â²\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\214">>);
upcase(<<"â²\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\212">>);
upcase(<<"â²\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\210">>);
upcase(<<"â²\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\206">>);
upcase(<<"â²\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\204">>);
upcase(<<"â²\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\202">>);
upcase(<<"â²\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â²\200">>);
upcase(<<"â±¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±µ">>);
upcase(<<"â±³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±²">>);
upcase(<<"â±¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±«">>);
upcase(<<"â±ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±©">>);
upcase(<<"â±¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±§">>);
upcase(<<"â±¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¾">>);
upcase(<<"â±¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Èº">>);
upcase(<<"â±¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â± ">>);
upcase(<<"â±\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°®">>);
upcase(<<"â±\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°­">>);
upcase(<<"â±\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¬">>);
upcase(<<"â±\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°«">>);
upcase(<<"â±\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°ª">>);
upcase(<<"â±\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°©">>);
upcase(<<"â±\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¨">>);
upcase(<<"â±\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°§">>);
upcase(<<"â±\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¦">>);
upcase(<<"â±\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¥">>);
upcase(<<"â±\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¤">>);
upcase(<<"â±\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°£">>);
upcase(<<"â±\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¢">>);
upcase(<<"â±\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°¡">>);
upcase(<<"â±\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â° ">>);
upcase(<<"â±\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\237">>);
upcase(<<"â±\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\236">>);
upcase(<<"â±\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\235">>);
upcase(<<"â±\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\234">>);
upcase(<<"â±\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\233">>);
upcase(<<"â±\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\232">>);
upcase(<<"â±\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\231">>);
upcase(<<"â±\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\230">>);
upcase(<<"â±\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\227">>);
upcase(<<"â±\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\226">>);
upcase(<<"â±\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\225">>);
upcase(<<"â±\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\224">>);
upcase(<<"â±\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\223">>);
upcase(<<"â±\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\222">>);
upcase(<<"â±\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\221">>);
upcase(<<"â±\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\220">>);
upcase(<<"â°¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\217">>);
upcase(<<"â°¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\216">>);
upcase(<<"â°½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\215">>);
upcase(<<"â°¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\214">>);
upcase(<<"â°»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\213">>);
upcase(<<"â°º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\212">>);
upcase(<<"â°¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\211">>);
upcase(<<"â°¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\210">>);
upcase(<<"â°·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\207">>);
upcase(<<"â°¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\206">>);
upcase(<<"â°µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\205">>);
upcase(<<"â°´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\204">>);
upcase(<<"â°³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\203">>);
upcase(<<"â°²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\202">>);
upcase(<<"â°±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\201">>);
upcase(<<"â°°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â°\200">>);
upcase(<<"â\223©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\217">>);
upcase(<<"â\223¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\216">>);
upcase(<<"â\223§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\215">>);
upcase(<<"â\223¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\214">>);
upcase(<<"â\223¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\213">>);
upcase(<<"â\223¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\212">>);
upcase(<<"â\223£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\211">>);
upcase(<<"â\223¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\210">>);
upcase(<<"â\223¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\207">>);
upcase(<<"â\223 ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\206">>);
upcase(<<"â\223\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\205">>);
upcase(<<"â\223\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\204">>);
upcase(<<"â\223\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\203">>);
upcase(<<"â\223\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\202">>);
upcase(<<"â\223\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\201">>);
upcase(<<"â\223\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\223\200">>);
upcase(<<"â\223\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¿">>);
upcase(<<"â\223\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¾">>);
upcase(<<"â\223\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222½">>);
upcase(<<"â\223\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¼">>);
upcase(<<"â\223\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222»">>);
upcase(<<"â\223\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222º">>);
upcase(<<"â\223\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¹">>);
upcase(<<"â\223\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¸">>);
upcase(<<"â\223\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222·">>);
upcase(<<"â\223\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\222¶">>);
upcase(<<"â\206\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\206\203">>);
upcase(<<"â\205¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¯">>);
upcase(<<"â\205¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205®">>);
upcase(<<"â\205½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205­">>);
upcase(<<"â\205¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¬">>);
upcase(<<"â\205»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205«">>);
upcase(<<"â\205º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205ª">>);
upcase(<<"â\205¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205©">>);
upcase(<<"â\205¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¨">>);
upcase(<<"â\205·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205§">>);
upcase(<<"â\205¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¦">>);
upcase(<<"â\205µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¥">>);
upcase(<<"â\205´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¤">>);
upcase(<<"â\205³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205£">>);
upcase(<<"â\205²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¢">>);
upcase(<<"â\205±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205¡">>);
upcase(<<"â\205°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\205 ">>);
upcase(<<"â\205\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â\204²">>);
upcase(<<"á¿¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î©Î\231">>);
upcase(<<"á¿³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î©Î\231">>);
upcase(<<"á¿¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿¬">>);
upcase(<<"á¿¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿©">>);
upcase(<<"á¿ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿¨">>);
upcase(<<"á¿\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\231">>);
upcase(<<"á¿\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\230">>);
upcase(<<"á¿\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\227Î\231">>);
upcase(<<"á¿\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\227Î\231">>);
upcase(<<"á¾¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231">>);
upcase(<<"á¾¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\221Î\231">>);
upcase(<<"á¾³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\221Î\231">>);
upcase(<<"á¾±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¾¹">>);
upcase(<<"á¾°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¾¸">>);
upcase(<<"á¾¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¯Î\231">>);
upcase(<<"á¾®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½®Î\231">>);
upcase(<<"á¾­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½­Î\231">>);
upcase(<<"á¾¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¬Î\231">>);
upcase(<<"á¾«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½«Î\231">>);
upcase(<<"á¾ª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½ªÎ\231">>);
upcase(<<"á¾©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½©Î\231">>);
upcase(<<"á¾¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¨Î\231">>);
upcase(<<"á¾§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¯Î\231">>);
upcase(<<"á¾¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½®Î\231">>);
upcase(<<"á¾¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½­Î\231">>);
upcase(<<"á¾¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¬Î\231">>);
upcase(<<"á¾£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½«Î\231">>);
upcase(<<"á¾¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½ªÎ\231">>);
upcase(<<"á¾¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½©Î\231">>);
upcase(<<"á¾ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¨Î\231">>);
upcase(<<"á¾\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¯Î\231">>);
upcase(<<"á¾\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼®Î\231">>);
upcase(<<"á¾\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼­Î\231">>);
upcase(<<"á¾\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¬Î\231">>);
upcase(<<"á¾\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼«Î\231">>);
upcase(<<"á¾\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼ªÎ\231">>);
upcase(<<"á¾\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼©Î\231">>);
upcase(<<"á¾\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¨Î\231">>);
upcase(<<"á¾\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¯Î\231">>);
upcase(<<"á¾\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼®Î\231">>);
upcase(<<"á¾\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼­Î\231">>);
upcase(<<"á¾\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¬Î\231">>);
upcase(<<"á¾\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼«Î\231">>);
upcase(<<"á¾\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼ªÎ\231">>);
upcase(<<"á¾\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼©Î\231">>);
upcase(<<"á¾\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¨Î\231">>);
upcase(<<"á¾\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\217Î\231">>);
upcase(<<"á¾\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\216Î\231">>);
upcase(<<"á¾\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\215Î\231">>);
upcase(<<"á¾\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\214Î\231">>);
upcase(<<"á¾\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\213Î\231">>);
upcase(<<"á¾\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\212Î\231">>);
upcase(<<"á¾\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\211Î\231">>);
upcase(<<"á¾\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\210Î\231">>);
upcase(<<"á¾\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\217Î\231">>);
upcase(<<"á¾\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\216Î\231">>);
upcase(<<"á¾\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\215Î\231">>);
upcase(<<"á¾\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\214Î\231">>);
upcase(<<"á¾\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\213Î\231">>);
upcase(<<"á¾\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\212Î\231">>);
upcase(<<"á¾\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\211Î\231">>);
upcase(<<"á¾\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\210Î\231">>);
upcase(<<"á½½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿»">>);
upcase(<<"á½¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿º">>);
upcase(<<"á½»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿«">>);
upcase(<<"á½º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿ª">>);
upcase(<<"á½¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿¹">>);
upcase(<<"á½¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿¸">>);
upcase(<<"á½·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\233">>);
upcase(<<"á½¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\232">>);
upcase(<<"á½µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\213">>);
upcase(<<"á½´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\212">>);
upcase(<<"á½³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\211">>);
upcase(<<"á½²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\210">>);
upcase(<<"á½±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¾»">>);
upcase(<<"á½°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¾º">>);
upcase(<<"á½§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¯">>);
upcase(<<"á½¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½®">>);
upcase(<<"á½¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½­">>);
upcase(<<"á½¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¬">>);
upcase(<<"á½£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½«">>);
upcase(<<"á½¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½ª">>);
upcase(<<"á½¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½©">>);
upcase(<<"á½ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½¨">>);
upcase(<<"á½\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\237">>);
upcase(<<"á½\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\235">>);
upcase(<<"á½\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\233">>);
upcase(<<"á½\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\231">>);
upcase(<<"á½\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\215">>);
upcase(<<"á½\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\214">>);
upcase(<<"á½\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\213">>);
upcase(<<"á½\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\212">>);
upcase(<<"á½\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\211">>);
upcase(<<"á½\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á½\210">>);
upcase(<<"á¼·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¿">>);
upcase(<<"á¼¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¾">>);
upcase(<<"á¼µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼½">>);
upcase(<<"á¼´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¼">>);
upcase(<<"á¼³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼»">>);
upcase(<<"á¼²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼º">>);
upcase(<<"á¼±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¹">>);
upcase(<<"á¼°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¸">>);
upcase(<<"á¼§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¯">>);
upcase(<<"á¼¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼®">>);
upcase(<<"á¼¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼­">>);
upcase(<<"á¼¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¬">>);
upcase(<<"á¼£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼«">>);
upcase(<<"á¼¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼ª">>);
upcase(<<"á¼¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼©">>);
upcase(<<"á¼ ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼¨">>);
upcase(<<"á¼\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\235">>);
upcase(<<"á¼\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\234">>);
upcase(<<"á¼\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\233">>);
upcase(<<"á¼\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\232">>);
upcase(<<"á¼\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\231">>);
upcase(<<"á¼\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\230">>);
upcase(<<"á¼\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\217">>);
upcase(<<"á¼\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\216">>);
upcase(<<"á¼\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\215">>);
upcase(<<"á¼\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\214">>);
upcase(<<"á¼\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\213">>);
upcase(<<"á¼\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\212">>);
upcase(<<"á¼\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\211">>);
upcase(<<"á¼\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¼\210">>);
upcase(<<"á»¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¾">>);
upcase(<<"á»½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¼">>);
upcase(<<"á»»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»º">>);
upcase(<<"á»¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¸">>);
upcase(<<"á»·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¶">>);
upcase(<<"á»µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»´">>);
upcase(<<"á»³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»²">>);
upcase(<<"á»±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»°">>);
upcase(<<"á»¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»®">>);
upcase(<<"á»­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¬">>);
upcase(<<"á»«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»ª">>);
upcase(<<"á»©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¨">>);
upcase(<<"á»§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¦">>);
upcase(<<"á»¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¤">>);
upcase(<<"á»£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»¢">>);
upcase(<<"á»¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á» ">>);
upcase(<<"á»\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\236">>);
upcase(<<"á»\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\234">>);
upcase(<<"á»\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\232">>);
upcase(<<"á»\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\230">>);
upcase(<<"á»\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\226">>);
upcase(<<"á»\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\224">>);
upcase(<<"á»\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\222">>);
upcase(<<"á»\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\220">>);
upcase(<<"á»\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\216">>);
upcase(<<"á»\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\214">>);
upcase(<<"á»\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\212">>);
upcase(<<"á»\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\210">>);
upcase(<<"á»\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\206">>);
upcase(<<"á»\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\204">>);
upcase(<<"á»\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\202">>);
upcase(<<"á»\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á»\200">>);
upcase(<<"áº¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¾">>);
upcase(<<"áº½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¼">>);
upcase(<<"áº»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áºº">>);
upcase(<<"áº¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¸">>);
upcase(<<"áº·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¶">>);
upcase(<<"áºµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº´">>);
upcase(<<"áº³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº²">>);
upcase(<<"áº±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº°">>);
upcase(<<"áº¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº®">>);
upcase(<<"áº­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¬">>);
upcase(<<"áº«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áºª">>);
upcase(<<"áº©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¨">>);
upcase(<<"áº§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¦">>);
upcase(<<"áº¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¤">>);
upcase(<<"áº£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº¢">>);
upcase(<<"áº¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº ">>);
upcase(<<"áº\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹ ">>);
upcase(<<"áº\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\224">>);
upcase(<<"áº\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\222">>);
upcase(<<"áº\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\220">>);
upcase(<<"áº\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\216">>);
upcase(<<"áº\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\214">>);
upcase(<<"áº\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\212">>);
upcase(<<"áº\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\210">>);
upcase(<<"áº\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\206">>);
upcase(<<"áº\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\204">>);
upcase(<<"áº\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\202">>);
upcase(<<"áº\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "áº\200">>);
upcase(<<"á¹¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¾">>);
upcase(<<"á¹½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¼">>);
upcase(<<"á¹»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹º">>);
upcase(<<"á¹¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¸">>);
upcase(<<"á¹·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¶">>);
upcase(<<"á¹µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹´">>);
upcase(<<"á¹³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹²">>);
upcase(<<"á¹±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹°">>);
upcase(<<"á¹¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹®">>);
upcase(<<"á¹­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¬">>);
upcase(<<"á¹«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹ª">>);
upcase(<<"á¹©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¨">>);
upcase(<<"á¹§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¦">>);
upcase(<<"á¹¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¤">>);
upcase(<<"á¹£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹¢">>);
upcase(<<"á¹¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹ ">>);
upcase(<<"á¹\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\236">>);
upcase(<<"á¹\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\234">>);
upcase(<<"á¹\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\232">>);
upcase(<<"á¹\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\230">>);
upcase(<<"á¹\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\226">>);
upcase(<<"á¹\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\224">>);
upcase(<<"á¹\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\222">>);
upcase(<<"á¹\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\220">>);
upcase(<<"á¹\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\216">>);
upcase(<<"á¹\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\214">>);
upcase(<<"á¹\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\212">>);
upcase(<<"á¹\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\210">>);
upcase(<<"á¹\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\206">>);
upcase(<<"á¹\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\204">>);
upcase(<<"á¹\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\202">>);
upcase(<<"á¹\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¹\200">>);
upcase(<<"á¸¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¾">>);
upcase(<<"á¸½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¼">>);
upcase(<<"á¸»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸º">>);
upcase(<<"á¸¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¸">>);
upcase(<<"á¸·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¶">>);
upcase(<<"á¸µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸´">>);
upcase(<<"á¸³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸²">>);
upcase(<<"á¸±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸°">>);
upcase(<<"á¸¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸®">>);
upcase(<<"á¸­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¬">>);
upcase(<<"á¸«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸ª">>);
upcase(<<"á¸©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¨">>);
upcase(<<"á¸§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¦">>);
upcase(<<"á¸¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¤">>);
upcase(<<"á¸£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸¢">>);
upcase(<<"á¸¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸ ">>);
upcase(<<"á¸\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\236">>);
upcase(<<"á¸\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\234">>);
upcase(<<"á¸\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\232">>);
upcase(<<"á¸\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\230">>);
upcase(<<"á¸\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\226">>);
upcase(<<"á¸\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\224">>);
upcase(<<"á¸\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\222">>);
upcase(<<"á¸\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\220">>);
upcase(<<"á¸\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\216">>);
upcase(<<"á¸\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\214">>);
upcase(<<"á¸\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\212">>);
upcase(<<"á¸\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\210">>);
upcase(<<"á¸\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\206">>);
upcase(<<"á¸\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\204">>);
upcase(<<"á¸\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\202">>);
upcase(<<"á¸\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¸\200">>);
upcase(<<"áµ½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±£">>);
upcase(<<"áµ¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\235½">>);
upcase(<<"á²\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\231\212">>);
upcase(<<"á²\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¢">>);
upcase(<<"á²\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ðª">>);
upcase(<<"á²\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¢">>);
upcase(<<"á²\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¢">>);
upcase(<<"á²\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¡">>);
upcase(<<"á²\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\236">>);
upcase(<<"á²\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\224">>);
upcase(<<"á²\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\222">>);
upcase(<<"á\217½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217µ">>);
upcase(<<"á\217¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217´">>);
upcase(<<"á\217»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217³">>);
upcase(<<"á\217º", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217²">>);
upcase(<<"á\217¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217±">>);
upcase(<<"á\217¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á\217°">>);
upcase(<<"Ö\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\226">>);
upcase(<<"Ö\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\225">>);
upcase(<<"Ö\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\224">>);
upcase(<<"Ö\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\223">>);
upcase(<<"Ö\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\222">>);
upcase(<<"Ö\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\221">>);
upcase(<<"Ö\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\220">>);
upcase(<<"Õ¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\217">>);
upcase(<<"Õ¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\216">>);
upcase(<<"Õ½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\215">>);
upcase(<<"Õ¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\214">>);
upcase(<<"Õ»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\213">>);
upcase(<<"Õº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\212">>);
upcase(<<"Õ¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\211">>);
upcase(<<"Õ¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\210">>);
upcase(<<"Õ·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\207">>);
upcase(<<"Õ¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\206">>);
upcase(<<"Õµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\205">>);
upcase(<<"Õ´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\204">>);
upcase(<<"Õ³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\203">>);
upcase(<<"Õ²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\202">>);
upcase(<<"Õ±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\201">>);
upcase(<<"Õ°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\200">>);
upcase(<<"Õ¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¿">>);
upcase(<<"Õ®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¾">>);
upcase(<<"Õ­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô½">>);
upcase(<<"Õ¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¼">>);
upcase(<<"Õ«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô»">>);
upcase(<<"Õª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ôº">>);
upcase(<<"Õ©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¹">>);
upcase(<<"Õ¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¸">>);
upcase(<<"Õ§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô·">>);
upcase(<<"Õ¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¶">>);
upcase(<<"Õ¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ôµ">>);
upcase(<<"Õ¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô´">>);
upcase(<<"Õ£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô³">>);
upcase(<<"Õ¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô²">>);
upcase(<<"Õ¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô±">>);
upcase(<<"Ô¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô®">>);
upcase(<<"Ô­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¬">>);
upcase(<<"Ô«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ôª">>);
upcase(<<"Ô©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¨">>);
upcase(<<"Ô§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¦">>);
upcase(<<"Ô¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¤">>);
upcase(<<"Ô£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô¢">>);
upcase(<<"Ô¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô ">>);
upcase(<<"Ô\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\236">>);
upcase(<<"Ô\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\234">>);
upcase(<<"Ô\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\232">>);
upcase(<<"Ô\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\230">>);
upcase(<<"Ô\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\226">>);
upcase(<<"Ô\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\224">>);
upcase(<<"Ô\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\222">>);
upcase(<<"Ô\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\220">>);
upcase(<<"Ô\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\216">>);
upcase(<<"Ô\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\214">>);
upcase(<<"Ô\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\212">>);
upcase(<<"Ô\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\210">>);
upcase(<<"Ô\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\206">>);
upcase(<<"Ô\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\204">>);
upcase(<<"Ô\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\202">>);
upcase(<<"Ô\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ô\200">>);
upcase(<<"Ó¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¾">>);
upcase(<<"Ó½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¼">>);
upcase(<<"Ó»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Óº">>);
upcase(<<"Ó¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¸">>);
upcase(<<"Ó·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¶">>);
upcase(<<"Óµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó´">>);
upcase(<<"Ó³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó²">>);
upcase(<<"Ó±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó°">>);
upcase(<<"Ó¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó®">>);
upcase(<<"Ó­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¬">>);
upcase(<<"Ó«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Óª">>);
upcase(<<"Ó©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¨">>);
upcase(<<"Ó§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¦">>);
upcase(<<"Ó¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¤">>);
upcase(<<"Ó£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó¢">>);
upcase(<<"Ó¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó ">>);
upcase(<<"Ó\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\236">>);
upcase(<<"Ó\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\234">>);
upcase(<<"Ó\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\232">>);
upcase(<<"Ó\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\230">>);
upcase(<<"Ó\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\226">>);
upcase(<<"Ó\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\224">>);
upcase(<<"Ó\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\222">>);
upcase(<<"Ó\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\220">>);
upcase(<<"Ó\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\200">>);
upcase(<<"Ó\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\215">>);
upcase(<<"Ó\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\213">>);
upcase(<<"Ó\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\211">>);
upcase(<<"Ó\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\207">>);
upcase(<<"Ó\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\205">>);
upcase(<<"Ó\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\203">>);
upcase(<<"Ó\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ó\201">>);
upcase(<<"Ò¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¾">>);
upcase(<<"Ò½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¼">>);
upcase(<<"Ò»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Òº">>);
upcase(<<"Ò¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¸">>);
upcase(<<"Ò·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¶">>);
upcase(<<"Òµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò´">>);
upcase(<<"Ò³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò²">>);
upcase(<<"Ò±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò°">>);
upcase(<<"Ò¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò®">>);
upcase(<<"Ò­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¬">>);
upcase(<<"Ò«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Òª">>);
upcase(<<"Ò©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¨">>);
upcase(<<"Ò§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¦">>);
upcase(<<"Ò¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¤">>);
upcase(<<"Ò£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò¢">>);
upcase(<<"Ò¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò ">>);
upcase(<<"Ò\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\236">>);
upcase(<<"Ò\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\234">>);
upcase(<<"Ò\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\232">>);
upcase(<<"Ò\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\230">>);
upcase(<<"Ò\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\226">>);
upcase(<<"Ò\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\224">>);
upcase(<<"Ò\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\222">>);
upcase(<<"Ò\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\220">>);
upcase(<<"Ò\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\216">>);
upcase(<<"Ò\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\214">>);
upcase(<<"Ò\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\212">>);
upcase(<<"Ò\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ò\200">>);
upcase(<<"Ñ¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¾">>);
upcase(<<"Ñ½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¼">>);
upcase(<<"Ñ»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñº">>);
upcase(<<"Ñ¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¸">>);
upcase(<<"Ñ·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¶">>);
upcase(<<"Ñµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ´">>);
upcase(<<"Ñ³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ²">>);
upcase(<<"Ñ±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ°">>);
upcase(<<"Ñ¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ®">>);
upcase(<<"Ñ­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¬">>);
upcase(<<"Ñ«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñª">>);
upcase(<<"Ñ©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¨">>);
upcase(<<"Ñ§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¦">>);
upcase(<<"Ñ¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¤">>);
upcase(<<"Ñ£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ¢">>);
upcase(<<"Ñ¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ñ ">>);
upcase(<<"Ñ\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\217">>);
upcase(<<"Ñ\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\216">>);
upcase(<<"Ñ\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\215">>);
upcase(<<"Ñ\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\214">>);
upcase(<<"Ñ\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\213">>);
upcase(<<"Ñ\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\212">>);
upcase(<<"Ñ\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\211">>);
upcase(<<"Ñ\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\210">>);
upcase(<<"Ñ\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\207">>);
upcase(<<"Ñ\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\206">>);
upcase(<<"Ñ\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\205">>);
upcase(<<"Ñ\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\204">>);
upcase(<<"Ñ\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\203">>);
upcase(<<"Ñ\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\202">>);
upcase(<<"Ñ\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\201">>);
upcase(<<"Ñ\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\200">>);
upcase(<<"Ñ\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¯">>);
upcase(<<"Ñ\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð®">>);
upcase(<<"Ñ\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð­">>);
upcase(<<"Ñ\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¬">>);
upcase(<<"Ñ\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð«">>);
upcase(<<"Ñ\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ðª">>);
upcase(<<"Ñ\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð©">>);
upcase(<<"Ñ\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¨">>);
upcase(<<"Ñ\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð§">>);
upcase(<<"Ñ\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¦">>);
upcase(<<"Ñ\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¥">>);
upcase(<<"Ñ\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¤">>);
upcase(<<"Ñ\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð£">>);
upcase(<<"Ñ\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¢">>);
upcase(<<"Ñ\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð¡">>);
upcase(<<"Ñ\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð ">>);
upcase(<<"Ð¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\237">>);
upcase(<<"Ð¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\236">>);
upcase(<<"Ð½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\235">>);
upcase(<<"Ð¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\234">>);
upcase(<<"Ð»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\233">>);
upcase(<<"Ðº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\232">>);
upcase(<<"Ð¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\231">>);
upcase(<<"Ð¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\230">>);
upcase(<<"Ð·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\227">>);
upcase(<<"Ð¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\226">>);
upcase(<<"Ðµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\225">>);
upcase(<<"Ð´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\224">>);
upcase(<<"Ð³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\223">>);
upcase(<<"Ð²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\222">>);
upcase(<<"Ð±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\221">>);
upcase(<<"Ð°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ð\220">>);
upcase(<<"Ï»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ïº">>);
upcase(<<"Ï¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï·">>);
upcase(<<"Ïµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\225">>);
upcase(<<"Ï³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Í¿">>);
upcase(<<"Ï²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¹">>);
upcase(<<"Ï±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¡">>);
upcase(<<"Ï°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\232">>);
upcase(<<"Ï¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï®">>);
upcase(<<"Ï­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¬">>);
upcase(<<"Ï«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ïª">>);
upcase(<<"Ï©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¨">>);
upcase(<<"Ï§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¦">>);
upcase(<<"Ï¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¤">>);
upcase(<<"Ï£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¢">>);
upcase(<<"Ï¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï ">>);
upcase(<<"Ï\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï\236">>);
upcase(<<"Ï\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï\234">>);
upcase(<<"Ï\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï\232">>);
upcase(<<"Ï\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï\230">>);
upcase(<<"Ï\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï\217">>);
upcase(<<"Ï\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î ">>);
upcase(<<"Ï\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¦">>);
upcase(<<"Ï\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\230">>);
upcase(<<"Ï\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\222">>);
upcase(<<"Ï\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\217">>);
upcase(<<"Ï\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\216">>);
upcase(<<"Ï\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\214">>);
upcase(<<"Ï\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î«">>);
upcase(<<"Ï\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Îª">>);
upcase(<<"Ï\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î©">>);
upcase(<<"Ï\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¨">>);
upcase(<<"Ï\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î§">>);
upcase(<<"Ï\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¦">>);
upcase(<<"Ï\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥">>);
upcase(<<"Ï\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¤">>);
upcase(<<"Ï\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î£">>);
upcase(<<"Ï\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î£">>);
upcase(<<"Ï\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¡">>);
upcase(<<"Ï\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î ">>);
upcase(<<"Î¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\237">>);
upcase(<<"Î¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\236">>);
upcase(<<"Î½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\235">>);
upcase(<<"Î¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\234">>);
upcase(<<"Î»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\233">>);
upcase(<<"Îº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\232">>);
upcase(<<"Î¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231">>);
upcase(<<"Î¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\230">>);
upcase(<<"Î·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\227">>);
upcase(<<"Î¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\226">>);
upcase(<<"Îµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\225">>);
upcase(<<"Î´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\224">>);
upcase(<<"Î³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\223">>);
upcase(<<"Î²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\222">>);
upcase(<<"Î±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\221">>);
upcase(<<"Î¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\212">>);
upcase(<<"Î®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\211">>);
upcase(<<"Î­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\210">>);
upcase(<<"Î¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\206">>);
upcase(<<"Í½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¿">>);
upcase(<<"Í¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï¾">>);
upcase(<<"Í»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ï½">>);
upcase(<<"Í·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Í¶">>);
upcase(<<"Í³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Í²">>);
upcase(<<"Í±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Í°">>);
upcase(<<"Í\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231">>);
upcase(<<"Ê\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236°">>);
upcase(<<"Ê\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236²">>);
upcase(<<"Ê\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ·">>);
upcase(<<"Ê\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\205">>);
upcase(<<"Ê\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ²">>);
upcase(<<"Ê\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ±">>);
upcase(<<"Ê\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\204">>);
upcase(<<"Ê\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ®">>);
upcase(<<"Ê\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236±">>);
upcase(<<"Ê\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ©">>);
upcase(<<"Ê\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¦">>);
upcase(<<"É½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±¤">>);
upcase(<<"Éµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\237">>);
upcase(<<"É²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\235">>);
upcase(<<"É±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±®">>);
upcase(<<"É¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\234">>);
upcase(<<"É¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236­">>);
upcase(<<"É«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±¢">>);
upcase(<<"Éª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236®">>);
upcase(<<"É©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\226">>);
upcase(<<"É¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\227">>);
upcase(<<"É¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236ª">>);
upcase(<<"É¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236\215">>);
upcase(<<"É£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\224">>);
upcase(<<"É¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236¬">>);
upcase(<<"É ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\223">>);
upcase(<<"É\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ê\236«">>);
upcase(<<"É\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\220">>);
upcase(<<"É\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\217">>);
upcase(<<"É\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\212">>);
upcase(<<"É\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\211">>);
upcase(<<"É\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\206">>);
upcase(<<"É\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\201">>);
upcase(<<"É\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±°">>);
upcase(<<"É\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±­">>);
upcase(<<"É\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±¯">>);
upcase(<<"É\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\216">>);
upcase(<<"É\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\214">>);
upcase(<<"É\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\212">>);
upcase(<<"É\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\210">>);
upcase(<<"É\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\206">>);
upcase(<<"É\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\201">>);
upcase(<<"É\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±¿">>);
upcase(<<"È¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "â±¾">>);
upcase(<<"È¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È»">>);
upcase(<<"È³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È²">>);
upcase(<<"È±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È°">>);
upcase(<<"È¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È®">>);
upcase(<<"È­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¬">>);
upcase(<<"È«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Èª">>);
upcase(<<"È©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¨">>);
upcase(<<"È§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¦">>);
upcase(<<"È¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¤">>);
upcase(<<"È£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È¢">>);
upcase(<<"È\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\236">>);
upcase(<<"È\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\234">>);
upcase(<<"È\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\232">>);
upcase(<<"È\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\230">>);
upcase(<<"È\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\226">>);
upcase(<<"È\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\224">>);
upcase(<<"È\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\222">>);
upcase(<<"È\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\220">>);
upcase(<<"È\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\216">>);
upcase(<<"È\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\214">>);
upcase(<<"È\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\212">>);
upcase(<<"È\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\210">>);
upcase(<<"È\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\206">>);
upcase(<<"È\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\204">>);
upcase(<<"È\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\202">>);
upcase(<<"È\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È\200">>);
upcase(<<"Ç¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¾">>);
upcase(<<"Ç½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¼">>);
upcase(<<"Ç»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Çº">>);
upcase(<<"Ç¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¸">>);
upcase(<<"Çµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç´">>);
upcase(<<"Ç³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç±">>);
upcase(<<"Ç²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç±">>);
upcase(<<"Ç¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç®">>);
upcase(<<"Ç­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¬">>);
upcase(<<"Ç«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Çª">>);
upcase(<<"Ç©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¨">>);
upcase(<<"Ç§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¦">>);
upcase(<<"Ç¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¤">>);
upcase(<<"Ç£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¢">>);
upcase(<<"Ç¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç ">>);
upcase(<<"Ç\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\236">>);
upcase(<<"Ç\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\216">>);
upcase(<<"Ç\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\233">>);
upcase(<<"Ç\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\231">>);
upcase(<<"Ç\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\227">>);
upcase(<<"Ç\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\225">>);
upcase(<<"Ç\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\223">>);
upcase(<<"Ç\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\221">>);
upcase(<<"Ç\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\217">>);
upcase(<<"Ç\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\215">>);
upcase(<<"Ç\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\212">>);
upcase(<<"Ç\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\212">>);
upcase(<<"Ç\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\207">>);
upcase(<<"Ç\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\207">>);
upcase(<<"Ç\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\204">>);
upcase(<<"Ç\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç\204">>);
upcase(<<"Æ¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç·">>);
upcase(<<"Æ½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¼">>);
upcase(<<"Æ¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¸">>);
upcase(<<"Æ¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æµ">>);
upcase(<<"Æ´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ³">>);
upcase(<<"Æ°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¯">>);
upcase(<<"Æ­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¬">>);
upcase(<<"Æ¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ§">>);
upcase(<<"Æ¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¤">>);
upcase(<<"Æ£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ¢">>);
upcase(<<"Æ¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ ">>);
upcase(<<"Æ\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È ">>);
upcase(<<"Æ\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "È½">>);
upcase(<<"Æ\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\230">>);
upcase(<<"Æ\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ç¶">>);
upcase(<<"Æ\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\221">>);
upcase(<<"Æ\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\213">>);
upcase(<<"Æ\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\207">>);
upcase(<<"Æ\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\204">>);
upcase(<<"Æ\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Æ\202">>);
upcase(<<"Æ\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "É\203">>);
upcase(<<"Å¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "S">>);
upcase(<<"Å¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å½">>);
upcase(<<"Å¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å»">>);
upcase(<<"Åº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¹">>);
upcase(<<"Å·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¶">>);
upcase(<<"Åµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å´">>);
upcase(<<"Å³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å²">>);
upcase(<<"Å±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å°">>);
upcase(<<"Å¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å®">>);
upcase(<<"Å­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¬">>);
upcase(<<"Å«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Åª">>);
upcase(<<"Å©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¨">>);
upcase(<<"Å§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¦">>);
upcase(<<"Å¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¤">>);
upcase(<<"Å£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¢">>);
upcase(<<"Å¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å ">>);
upcase(<<"Å\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\236">>);
upcase(<<"Å\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\234">>);
upcase(<<"Å\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\232">>);
upcase(<<"Å\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\230">>);
upcase(<<"Å\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\226">>);
upcase(<<"Å\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\224">>);
upcase(<<"Å\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\222">>);
upcase(<<"Å\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\220">>);
upcase(<<"Å\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\216">>);
upcase(<<"Å\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\214">>);
upcase(<<"Å\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\212">>);
upcase(<<"Å\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\207">>);
upcase(<<"Å\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\205">>);
upcase(<<"Å\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\203">>);
upcase(<<"Å\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å\201">>);
upcase(<<"Å\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¿">>);
upcase(<<"Ä¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä½">>);
upcase(<<"Ä¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä»">>);
upcase(<<"Äº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¹">>);
upcase(<<"Ä·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¶">>);
upcase(<<"Äµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä´">>);
upcase(<<"Ä³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä²">>);
upcase(<<"Ä±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "I">>);
upcase(<<"Ä¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä®">>);
upcase(<<"Ä­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¬">>);
upcase(<<"Ä«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Äª">>);
upcase(<<"Ä©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¨">>);
upcase(<<"Ä§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¦">>);
upcase(<<"Ä¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¤">>);
upcase(<<"Ä£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä¢">>);
upcase(<<"Ä¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä ">>);
upcase(<<"Ä\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\236">>);
upcase(<<"Ä\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\234">>);
upcase(<<"Ä\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\232">>);
upcase(<<"Ä\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\230">>);
upcase(<<"Ä\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\226">>);
upcase(<<"Ä\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\224">>);
upcase(<<"Ä\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\222">>);
upcase(<<"Ä\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\220">>);
upcase(<<"Ä\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\216">>);
upcase(<<"Ä\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\214">>);
upcase(<<"Ä\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\212">>);
upcase(<<"Ä\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\210">>);
upcase(<<"Ä\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\206">>);
upcase(<<"Ä\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\204">>);
upcase(<<"Ä\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\202">>);
upcase(<<"Ä\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ä\200">>);
upcase(<<"Ã¿", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Å¸">>);
upcase(<<"Ã¾", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\236">>);
upcase(<<"Ã½", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\235">>);
upcase(<<"Ã¼", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\234">>);
upcase(<<"Ã»", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\233">>);
upcase(<<"Ãº", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\232">>);
upcase(<<"Ã¹", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\231">>);
upcase(<<"Ã¸", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\230">>);
upcase(<<"Ã¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\226">>);
upcase(<<"Ãµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\225">>);
upcase(<<"Ã´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\224">>);
upcase(<<"Ã³", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\223">>);
upcase(<<"Ã²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\222">>);
upcase(<<"Ã±", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\221">>);
upcase(<<"Ã°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\220">>);
upcase(<<"Ã¯", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\217">>);
upcase(<<"Ã®", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\216">>);
upcase(<<"Ã­", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\215">>);
upcase(<<"Ã¬", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\214">>);
upcase(<<"Ã«", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\213">>);
upcase(<<"Ãª", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\212">>);
upcase(<<"Ã©", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\211">>);
upcase(<<"Ã¨", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\210">>);
upcase(<<"Ã§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\207">>);
upcase(<<"Ã¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\206">>);
upcase(<<"Ã¥", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\205">>);
upcase(<<"Ã¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\204">>);
upcase(<<"Ã£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\203">>);
upcase(<<"Ã¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\202">>);
upcase(<<"Ã¡", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\201">>);
upcase(<<"Ã ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ã\200">>);
upcase(<<"Âµ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\234">>);
upcase(<<"z", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Z">>);
upcase(<<"y", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Y">>);
upcase(<<"x", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "X">>);
upcase(<<"w", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "W">>);
upcase(<<"v", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "V">>);
upcase(<<"u", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "U">>);
upcase(<<"t", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "T">>);
upcase(<<"s", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "S">>);
upcase(<<"r", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "R">>);
upcase(<<"q", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Q">>);
upcase(<<"p", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "P">>);
upcase(<<"o", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "O">>);
upcase(<<"n", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "N">>);
upcase(<<"m", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "M">>);
upcase(<<"l", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "L">>);
upcase(<<"k", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "K">>);
upcase(<<"j", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "J">>);
upcase(<<"i", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "I">>);
upcase(<<"h", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "H">>);
upcase(<<"g", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "G">>);
upcase(<<"f", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "F">>);
upcase(<<"e", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "E">>);
upcase(<<"d", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "D">>);
upcase(<<"c", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "C">>);
upcase(<<"b", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "B">>);
upcase(<<"a", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "A">>);
upcase(<<"Ã\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "SS">>);
upcase(<<"ï¬\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FF">>);
upcase(<<"ï¬\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FI">>);
upcase(<<"ï¬\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FL">>);
upcase(<<"ï¬\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FFI">>);
upcase(<<"ï¬\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FFL">>);
upcase(<<"ï¬\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ST">>);
upcase(<<"ï¬\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ST">>);
upcase(<<"Ö\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ÔµÕ\222">>);
upcase(<<"ï¬\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\204Õ\206">>);
upcase(<<"ï¬\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\204Ôµ">>);
upcase(<<"ï¬\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\204Ô»">>);
upcase(<<"ï¬\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\216Õ\206">>);
upcase(<<"ï¬\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Õ\204Ô½">>);
upcase(<<"Å\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ê¼N">>);
upcase(<<"Î\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231Ì\210Ì\201">>);
upcase(<<"Î°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\210Ì\201">>);
upcase(<<"Ç°", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "JÌ\214">>);
upcase(<<"áº\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "HÌ±">>);
upcase(<<"áº\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "TÌ\210">>);
upcase(<<"áº\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "WÌ\212">>);
upcase(<<"áº\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "YÌ\212">>);
upcase(<<"áº\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "AÊ¾">>);
upcase(<<"á½\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\223">>);
upcase(<<"á½\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\223Ì\200">>);
upcase(<<"á½\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\223Ì\201">>);
upcase(<<"á½\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\223Í\202">>);
upcase(<<"á¾¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\221Í\202">>);
upcase(<<"á¿\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\227Í\202">>);
upcase(<<"á¿\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231Ì\210Ì\200">>);
upcase(<<"á¿\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231Ì\210Ì\201">>);
upcase(<<"á¿\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231Í\202">>);
upcase(<<"á¿\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\231Ì\210Í\202">>);
upcase(<<"á¿¢", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\210Ì\200">>);
upcase(<<"á¿£", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\210Ì\201">>);
upcase(<<"á¿¤", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¡Ì\223">>);
upcase(<<"á¿¦", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Í\202">>);
upcase(<<"á¿§", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î¥Ì\210Í\202">>);
upcase(<<"á¿¶", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î©Í\202">>);
upcase(<<"á¾²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¾ºÎ\231">>);
upcase(<<"á¾´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\206Î\231">>);
upcase(<<"á¿\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿\212Î\231">>);
upcase(<<"á¿\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\211Î\231">>);
upcase(<<"á¿²", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "á¿ºÎ\231">>);
upcase(<<"á¿´", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\217Î\231">>);
upcase(<<"á¾·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\221Í\202Î\231">>);
upcase(<<"á¿\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î\227Í\202Î\231">>);
upcase(<<"á¿·", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Î©Í\202Î\231">>);
upcase(<<Echar@1, Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, Echar@1>>);
upcase(<<>>, Eacc@1) -> Eacc@1.