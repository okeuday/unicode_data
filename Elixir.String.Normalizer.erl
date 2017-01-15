-compile(no_auto_import).

-file("/home/george/installed/packages/elixir-1.4.0/"
      "lib/elixir/unicode/unicode.ex",
      446).

-module('Elixir.String.Normalizer').

-export(['__info__'/1, normalize/2]).

-spec '__info__'(attributes | compile | exports |
		 functions | macros | md5 | module |
		 native_addresses) -> atom() |
				      [{atom(), any()} |
				       {atom(), byte(), integer()}].

'__info__'(functions) -> [{normalize, 2}];
'__info__'(macros) -> [];
'__info__'(Einfo) ->
    erlang:get_module_info('Elixir.String.Normalizer',
			   Einfo).

canonical_order([{Ex@1, _E}]) -> <<Ex@1/utf8>>;
canonical_order(Eacc@1) ->
    erlang:iolist_to_binary('Elixir.Enum':map(lists:keysort(2,
							    case Eacc@1 of
							      _E@1
								  when
								    erlang:is_list(_E@1) ->
								  lists:reverse(_E@1);
							      _E@2 ->
								  'Elixir.Enum':reverse(_E@2,
											[])
							    end),
					      fun (_E@3) ->
						      <<(erlang:element(1,
									_E@3))/utf8>>
					      end)).

canonical_order(<<"Ç\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\205ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\232\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ §", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\235¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä³\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¿µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Æ¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\220¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è±\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\210Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\211ºÌ¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\204\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¿¾Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\204Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð\235\205£", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥ð\235\205±",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\212±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è£¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð§¥¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¯ã\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\212\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à½\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\214à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ñ\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÐºÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¦¬¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¶Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÐµÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\215\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\215á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ·¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\210\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é§\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ£Ì\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\227¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\202\235ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç£»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¥\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â¨Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\203¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð\221\202\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\202\231ð\221\202º",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢\233\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ñ·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÑµÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¡\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç³\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\233´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\207Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ï\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\223\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233Ì£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\217¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð ¨¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è¶¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥¥¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¸Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ \227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\212\206Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\230®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"éº\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233Ì£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç°¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã«¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\201\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\207\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¦\236§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\226Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\210Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\213¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\204\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\221±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\204Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×©×\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"åº¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð  \204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤ \224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\230Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ·\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\201Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð £\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\223ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¤ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\213\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð©\222\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦µ«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¥\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\231¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\207Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¾¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ§Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\233®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ »", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\220\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ´\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"MÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\233\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"vÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¼»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\203\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Îª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç´¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\201\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\215\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\233¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢\206\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"äº\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211²Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\214\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"åªµ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\200à¾µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"åµ¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïªª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\235\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç£\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ¶\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\210Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\224¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\230­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\212\207Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\235\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\235«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\214\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð ­£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\227\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å£®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á­\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬¾á¬µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è¼¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212³Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¬¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\203Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å£\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¥\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\217§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\227¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\207\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\225ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è£\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à©\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨«à¨¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\207\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\207\222Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\203¯ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¤¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å£\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð£Ì\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¾¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾¡à¾·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦°¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½±à½´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\214ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é³½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢¡\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\202\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\202\233ð\221\202º",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã­\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\200\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\216\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð·Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\220Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¬\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\221¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è´\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\203Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\220\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä»\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\230µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\233ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205 ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¨ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\205¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\210\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¸½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\205®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\203Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç£\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\222»", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\222¹ð\221\222º",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\225«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\220\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð£Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Æ¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\232¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\210¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¾\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½±à¾\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\220Ö¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é·º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\200¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½±à½²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¦§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\223±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¬\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\206¿", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206¹ð\235\205¥ð\235\205¯",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¨\227\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\210\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\202\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¯\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¼¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç¢\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202¯ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"PÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\227Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"çª±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¿¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\210Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ³\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¸¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¿¾Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\230\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\222\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\203Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\202¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202·ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¢\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"åµ®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è£\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\202à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\232©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\220\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¸ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\226«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è³\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£´\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\221Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\226\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à©\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨\227à¨¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç§\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212¨Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð \204¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áºµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\206Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Í¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<";", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\231\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\217\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\207\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Óª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ó¨Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\207Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"PÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\222¼", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\222¹ð\221\222°",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\213ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\223\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ê\222Ì\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\234\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å \215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\204\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\237³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\230\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\220¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\231\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¾½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\222¾", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\222¹ð\221\222½",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä§¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡·¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¤©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\204Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¨\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ð\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\225Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\203\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\207\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"kÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\212\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\226·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\227¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\220\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à·\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à·\231à·\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\210Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202µã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦³\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã´³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\236\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\216\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\233´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\225\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\206Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\200\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¸²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¦\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áºº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è·\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201²ã\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦¼¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ £", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\211·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\224\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\222\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×©×\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"pÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ§Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¨¯º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¥¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç²¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\236\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\233¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\216\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\214¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\206Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\225ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\203±ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¾\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾\222à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\211²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¾\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å½¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð§¼¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ó\230Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Äª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¡¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¸½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"àµ\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"àµ\206à´¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æµ·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"xÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\234Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ­·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¡\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\235\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¼¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201»ã\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ãº¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ±\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç·´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\225°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¡Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä½ ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\210\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\210\213Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å³\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã¸Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡\233ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\200\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é­¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"× Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã¿¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ£Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è´\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\207\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\224\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\224Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\211¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¨¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨¸à¨¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\213\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\222\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"èªª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"åº³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\233\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\231§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð«Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\233ã\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\204\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä³­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡\232¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\204ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"K", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¸·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é±\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\217ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\211\210Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ø£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ø§Ù\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\220\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"äº\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\221\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð©\220\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\227\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è \201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"àµ\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"àµ\207à´¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç²\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\234\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Çµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è³\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\225£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã¼\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç©\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×£Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\215\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\215\207ð\221\215\227",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð§²¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\212¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Í\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ì\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\210Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¥\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¾¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾\220à¾µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\233\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\235\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ø¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ø§Ù\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\233Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212\222Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à½¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾³à¾\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\232´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\226\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¬\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\221á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¢\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"àµ\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"àµ\206àµ\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\230\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\200«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\214\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\204\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\215\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æº\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ­¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä³¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã©¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¦\236µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¬\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\213\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×²Ö·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\231©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212©Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\210¼Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¨\227­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\222¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¾¿Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212²Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Æ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¯\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¯\207à®¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¦\207\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\225\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æµ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å»\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïªº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\203½ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à·\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à·\231à·\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡§\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\233¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥ª§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\223¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¦\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Äº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç³§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\205\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\206Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð \224¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á­\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬¿á¬µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¸\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¤\216«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¾Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å±¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ­\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à­\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à­\207à­\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è±\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å®\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Û\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Û\225Ù\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\202\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ£Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¹©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áºª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\200¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç± ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\201²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\205\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\227ð\235\205¥",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å½©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à§\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¦¢à¦¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\232\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\206Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è»\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\231\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\234£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è£º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202­ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ \237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"çª\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è«­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211¥Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ð\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\230Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è®\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\216²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\231µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¸Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\225¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïªµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\235¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\220¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¿\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\207\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Çº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\212Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\227£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\211\203Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð©\207\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\210¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\210£Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è·°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\201ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â¨Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×¤Ö¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¡\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\222¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\233ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¢¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¥\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤¢à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¸¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\201¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\215¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\237¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\204Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\206\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"äº®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ³¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è·¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥¾\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ»\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\225¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¯\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à­\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à­\207à¬¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\231\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\210\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¾­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ§ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¨§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¾¿Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å ²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\231Ö´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\216­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\226Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\207­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¨\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ø¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ù\210Ù\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð \224\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å·½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¢\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\211¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\221«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\221\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ñ\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÐµÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\201º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤\213®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã ¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\226Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é©ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¾¿Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\210\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\233\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\206\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\206\222Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\225Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\210´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\213Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à§\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¦¡à¦¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Í\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä»¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\222»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\217\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¡\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥²\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\221\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é »", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é»\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"cÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\204Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¬»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬ºá¬µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å»¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¾\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤\234µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ¹®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¿¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¢\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\236§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\206\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\206\220Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"äª²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð£Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"åº°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é »", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ð\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð£Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\214´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"bÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\212\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"èª¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï© ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¤\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¨\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è´\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ãµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"BÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\236Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¾©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\203Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\213\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\227\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\203Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\202«", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\202¥ð\221\202º",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï­\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×§Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\226\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð§\231§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\204®", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\204±ð\221\204§",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\201\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\213¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211½Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\231¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç±»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è³\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¬\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç·´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\233§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\230\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\216¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\202­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\237¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\221ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\204Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\200£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ãº¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"kÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\214ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ³\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\232\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¬\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\221à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¶\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\212\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\212\203Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¨³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨²à¨¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã\230Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï­\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×¤Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç³\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à½\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\226à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç¡\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\222Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\237\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æµ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"<Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à©\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨\226à¨¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\204Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\201°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\210Ì\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¼¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\230ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç¦\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ£Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\230Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\202²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¾\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\210©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\205\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Û\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Û\201Ù\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"éº\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\231´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\204Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\222ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à½¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾²à¾\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢¬\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\213á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡´\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\236º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\201µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¦\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233Ì£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç³¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤²\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\230\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð°Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\207\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¦\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é»¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\206µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\206ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¡¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\216\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Í\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"mÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è»\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\226Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¬\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\211á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç´¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¼¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\204¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¨®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à³\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à³\206à³\202à³\225",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¶´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\217¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ·\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã££", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð \225\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\224£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\231\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£¢§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç«\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ´\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¼¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è¡£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¸Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Åª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡¬\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\235ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"`", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\221\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¯\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¯\206à®¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£½\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å·¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Æ°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202³ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¨\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\222\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï­\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×©Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\201¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â¨Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à³\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à³\206à³\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\203\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\217ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\225Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å°¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ´´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\224»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\211¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¸\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è¾\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¸\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å©¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\212£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¸¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\222½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211\215Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ¸¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\200\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"bÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è¡ ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\221·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213 ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211¼Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"éº»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é \213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\201Ì\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\203²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\227¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç³£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\215»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã®\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\206®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\206\224Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è \237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¨\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\207\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\207\224Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\222\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é±\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¥\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤¡à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\210\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\207\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\207\220Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\226\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\216 ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æµ·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\223\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ´¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬¼á¬µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202½ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï­\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\233Ö¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥\211\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð§»\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\203Ì\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å± ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¤\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\204ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\201Ì\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\211¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211·Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¿º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¾\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¼\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\225ã\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¾\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã¬\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¾°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\236\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð©\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\232Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¯\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¯\206à¯\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\210Ì\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\204«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¢¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\237´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\231\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç½¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¡\223¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ï\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¾\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¡ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à³\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à³\206à³\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\203±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"kÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯  ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\210»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212µÌ¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\214\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\216½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\220½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¨\234®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\223¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç©\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\210\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¿¾Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201 ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201\237ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\230Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ð\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\210\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¹\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\221Ö¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\213¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ãº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¦ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\213¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\214¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¬¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¥\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤«à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æµª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¢\214±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¢\214±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\212\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\230ã\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á­\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á­\202á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¦®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¥\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤\225à¤¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\211¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\206Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\211¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211¡Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è½¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ï\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ£Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥³\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¼\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"VÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\225°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð§\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Í\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â«\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â«\235Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\215\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\215\207ð\221\214¾",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\217\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\210\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\203°ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\210\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\232\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ«\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\224\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"KÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"XÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\215£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211 ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"=Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¤±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤°à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¤\211£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\223Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\215ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\223³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\217\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç©\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ó©Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\215\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\213¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212´Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç£\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Çª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¦£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¼ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å·¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¼£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\231ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\225¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"åµ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æµ©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð°Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤¾¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\210ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\225\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"MÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\237\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\235\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£\217\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\216\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\212\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"hÌ®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\226\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¢¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð§Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\236\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\210¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æµ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"åº¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥\201\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"çµ\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¦\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\203\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\233Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\217\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à­\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¬¡à¬¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\206´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã¤\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\231´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"XÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\225\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ï\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\222Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ð\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\206Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¡\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\206¾", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206ºð\235\205¥ð\235\205®",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\211°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211¤Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Æ·Ì\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ð\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\230Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ø¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ø§Ù\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202±ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\205·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¬¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\224\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è®\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¶²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Ì\200Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¼\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\211\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¢\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Èª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\203´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202¦ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201µã\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\203\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£¾\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¿\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å²\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\221\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ»\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\203Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\202\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¢³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\212³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð§¢®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\201\227ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Åº", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ø¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ù\212Ù\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\205§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\210´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ï\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\222Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä©¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç·\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\207¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\221\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212«Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã\206Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¥®«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ»\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç·´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\235\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"jÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\211\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¬¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å°¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\232£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\234\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ²\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\217ã\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\206Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¾\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾\234à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\222\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æµ¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\210\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æª¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥ª§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\231Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\200\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\202\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"CÌ§Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×©Ö¼×\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\202­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã\206Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å±¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à­\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¬¢à¬¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\206ã\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£ª\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¹\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\227º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¥\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\232\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\231\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¬\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à©\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¨\234à¨¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¢\206\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å»\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð©¬°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\226»", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\226¹ð\221\226¯",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\210\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\210\203Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\223Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¨µ·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"bÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\204¯", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\204²ð\221\204§",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ´\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ§Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\212½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\234\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"KÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¼¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\225¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¾\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ¿\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð©\210\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ£Ì\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\205\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¦\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"VÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\221©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å½\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¹\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\230¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å±®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¾\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é»¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"éµ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÐµÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à·\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à·\231à·\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤\230\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\207µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\204Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\214ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\200\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"dÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¬¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\204Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç«®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¬¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Í\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\226³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ï\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\231¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\216\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\205¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¶ ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\226­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¾¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\210º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤°¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å½«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\204\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\224«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\203§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\200¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\214©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\200\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\213¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\200\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¥\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤\234à¤¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Î¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã®\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ´Ì\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç¥\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¥\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤¯à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"pÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\233\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\203\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Ì\201Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\210¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\210¥Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"èµ·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¥\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Åµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"wÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\202¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202»ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã°\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\237 ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦¾±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¾\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\211¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\207Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\223®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\237¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\230¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¥³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¬³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\223Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\201½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã¦Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201µã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è­\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\210®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Å¿Ì\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä¾®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ½®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¦\226¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\226\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¾\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×¡Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\227\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Í\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ»\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\207\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å£·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\201 ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\200\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\235»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ãº¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201²ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\232¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\212 ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\206\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\201¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£²¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\231©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\203³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\200\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\203Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¡\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"èª ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\233¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\223Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\203§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"gÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¸\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è®\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\205á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ó\231Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\201°", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯££", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£\221­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\203²ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¥\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤\226à¤¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\237Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à¾§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾¦à¾·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç½²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç½º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ²¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\214\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¾®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201»ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¤´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤³à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"BÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<">Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\234\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\202Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¤\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\206·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\236\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"KÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\217«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Í\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ì\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\234\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211³Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï­\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×¨Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\214¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"KÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\210Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\202Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à§\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à§\207à¦¾", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¥¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à®\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à®\222à¯\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã¤º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Óµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\207Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¶¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð§\203\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\205\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\215µ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\221\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"BÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\200¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\216©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¬\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á¬\207á¬µ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¾»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\200\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\200\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¾\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\207\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ã¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Û\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Û\222Ù\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é \213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"åµ\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\221©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×©Ö¼×\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¼\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¤©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤¨à¤¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"åµ«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\200\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\200\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç§«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\206»", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206¹ð\235\205¥",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\234\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é ©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"WÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\234\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ£Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\225\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\227\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\201¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¤ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\225\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"JÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é£¯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"fÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á\200¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"á\200¥á\200®", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\232\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä©®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\207\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¦\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\233´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\213¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212\221Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\202º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202¹ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\210\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\214Ì\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à³\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à²¿à³\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¼¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¹´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æºº", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\203Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ¨Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\206½", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206¹ð\235\205¥ð\235\205®",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¾\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\230\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¤\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\205¢", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥ð\235\205°",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\203£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\203\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\215º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\210§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\211»Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ZÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×¦Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ±§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\202Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¡·¦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\205¤", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥ð\235\205²",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è²«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å£²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¾¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¾«à¾·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ñ\215Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð­Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\231´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»µ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¡«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¢\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à±\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à±\206à±\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\211\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"DÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"çµ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ«\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¹Í\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\232\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"áº¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\206Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"MÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è£\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\213¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\220\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢¡\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"vÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à³\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à³\206à³\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\203½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð©\226¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Ì\201Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ °", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\215½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ®\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\200¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\216\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£\232£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\206\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ó\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¶Ì\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"uÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è£\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\234¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ¨Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\221\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¢¯±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\222\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¬³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\223Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\211¶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\205®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\203Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å©¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ð\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\225Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\204¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã£\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è£¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¨\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"èªª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\210\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\210\210Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"IÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\225¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\231\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\236\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¹¿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¿«", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Â¨Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\221\226º", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\221\226¸ð\221\226¯",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"KÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é½\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\233\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£»\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\221¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\220Ì\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\204¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¯\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤¶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\224¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ïª­", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¯\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ­", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\225Ö¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"tÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ï\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¾º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¥\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¦\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ñ\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð³Ì\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"FÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\227Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ðª\203\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\237º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\233Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é£¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î·Ì\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"SÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç\221±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\225Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ\202Ì\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð\235\205 ", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥ð\235\205®",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"oÌ£Ì\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Î°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\210Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206¤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ð¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð¸Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"GÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦ ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\215\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"zÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\211\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\211\205Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Å\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\224Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"äµ\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ã¤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\231Ì\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ð\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\232Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\207²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\206¼", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206ºð\235\205¥",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"rÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä»\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\203\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å±¥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¨\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é§¾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\223\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å¤¢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯§¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\220\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\211¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\211¶Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç´\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\220Ö·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¤¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\234²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¯\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\235\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"TÌ±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç´\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\223Í\202Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\200\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"â\212\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"â\212\202Ì¸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯£\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\234¡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"xÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à¥\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¤\227à¤¼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å§\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¿Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é£¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â\212¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"â\212¢Ì¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"HÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\200\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¦«", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å¶º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á½\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á»°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\233Ì£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à½\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à½\233à¾·", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è\214£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á»·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"yÌ\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¸±", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"kÌ\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201º", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¸ã\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\202¿ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à§\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à¦¯à¦¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é \230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾©", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î©Ì\224Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"nÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è\217±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"iÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\210\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¤¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð¤¾¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¤\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\201·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¢\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð£\212¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¬ ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¿¨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î¥Ì\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ·ª", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¸¸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï­\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×ªÖ¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\205¡", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥ð\235\205¯",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à·\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à·\231à·\217à·\212",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¤\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é§±", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å±®", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¤¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\211\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ïª\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ»\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Å\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"RÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\205\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\205\230ð\235\205¥",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"à­\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à­\207à­\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ \215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð \230º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¦¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯§\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"è³\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"YÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á½\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\205Ì\224Í\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä¯\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á» ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"OÌ\233Ì\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Í´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ê¹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ­²", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à§\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"à§\207à§\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¸¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"LÌ£Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\201°", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\201¯ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¼\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î±Ì\224Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ç»", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ\212Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹§", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"sÌ\214Ì\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨¯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\232·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¨½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¥\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð¥\204³", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ \227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"å\206\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ä¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"lÌ\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ ¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\213\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿¥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\201Ì\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\214½", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"UÌ\203Ì\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¨\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"é¼\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¬¾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"×\236Ö¼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç£", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ã¦Ì\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"æ\217\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¡¢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å§¬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é \213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¹\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"mÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï§\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å´\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä·", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"kÌ§", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð\235\207\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ð\235\206ºð\235\205¥ð\235\205¯",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¿²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ï\211Ì\200Í\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï«\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é\233£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\215\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¢³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ\210\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯¦®", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ä\225\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¹\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"mÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç©\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï©\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ¸\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"áº¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ£", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á¾\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Î\221Ì\224Í\202Í\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï¨\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è¼»", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ä\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"aÌ¨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¡³", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å°\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ó\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ð\220Ì\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ã\202¬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã\202«ã\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È¦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£²", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ã±\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯ «", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\214\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"á¼\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ÎµÌ\223Ì\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï©\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç¥\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ç¸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"NÌ\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯£¹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ð£«º", Erest@1/binary>>, Eacc@1);
canonical_order(<<"È\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"AÌ\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã\203\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ã\203\222ã\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ð¯ ª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"å\214\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"È\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"EÌ\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï¥½", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"è«\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¥\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ç\234\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Äµ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"jÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ð¯¦\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"ä\220\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ï§\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¡\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï«\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"é¾\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ãª", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"eÌ\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<Eh@1/utf8, Et@1/binary>>, Eacc@1) ->
    case combining_class(Eh@1) of
      0 ->
	  <<(canonical_order(Eacc@1))/binary,
	    (canonical_order(Et@1, [{Eh@1, 0}]))/binary>>;
      En@1 -> canonical_order(Et@1, [{Eh@1, En@1} | Eacc@1])
    end;
canonical_order(<<>>, Eacc@1) ->
    canonical_order(Eacc@1).

combining_class(6836) -> 230;
combining_class(7636) -> 230;
combining_class(8406) -> 230;
combining_class(122910) -> 230;
combining_class(6459) -> 220;
combining_class(878) -> 230;
combining_class(2637) -> 9;
combining_class(3405) -> 9;
combining_class(1851) -> 220;
combining_class(92980) -> 230;
combining_class(122888) -> 230;
combining_class(7378) -> 230;
combining_class(1559) -> 230;
combining_class(1773) -> 220;
combining_class(6679) -> 230;
combining_class(2293) -> 230;
combining_class(7377) -> 230;
combining_class(831) -> 230;
combining_class(1763) -> 220;
combining_class(7382) -> 220;
combining_class(7626) -> 220;
combining_class(7655) -> 230;
combining_class(42737) -> 230;
combining_class(1450) -> 220;
combining_class(3659) -> 107;
combining_class(851) -> 220;
combining_class(43307) -> 220;
combining_class(3971) -> 230;
combining_class(2028) -> 230;
combining_class(1442) -> 220;
combining_class(821) -> 1;
combining_class(11765) -> 230;
combining_class(65069) -> 220;
combining_class(1477) -> 220;
combining_class(125257) -> 230;
combining_class(65071) -> 230;
combining_class(8401) -> 230;
combining_class(775) -> 230;
combining_class(65065) -> 220;
combining_class(43240) -> 230;
combining_class(841) -> 220;
combining_class(1454) -> 228;
combining_class(1447) -> 220;
combining_class(850) -> 230;
combining_class(7616) -> 230;
combining_class(125254) -> 230;
combining_class(7659) -> 230;
combining_class(7398) -> 1;
combining_class(71103) -> 9;
combining_class(784) -> 230;
combining_class(7660) -> 230;
combining_class(7646) -> 230;
combining_class(2035) -> 230;
combining_class(803) -> 220;
combining_class(69940) -> 9;
combining_class(806) -> 220;
combining_class(2079) -> 230;
combining_class(70003) -> 7;
combining_class(1461) -> 15;
combining_class(70198) -> 7;
combining_class(42620) -> 230;
combining_class(70377) -> 7;
combining_class(11763) -> 230;
combining_class(2080) -> 230;
combining_class(838) -> 230;
combining_class(1616) -> 32;
combining_class(1621) -> 220;
combining_class(7025) -> 230;
combining_class(7632) -> 202;
combining_class(70507) -> 230;
combining_class(6778) -> 230;
combining_class(866) -> 233;
combining_class(811) -> 220;
combining_class(1553) -> 230;
combining_class(1772) -> 230;
combining_class(3657) -> 107;
combining_class(7388) -> 220;
combining_class(1463) -> 17;
combining_class(1453) -> 222;
combining_class(70851) -> 7;
combining_class(1631) -> 220;
combining_class(70506) -> 230;
combining_class(119176) -> 230;
combining_class(92913) -> 1;
combining_class(879) -> 230;
combining_class(42612) -> 230;
combining_class(2029) -> 230;
combining_class(794) -> 232;
combining_class(7625) -> 230;
combining_class(856) -> 232;
combining_class(119144) -> 1;
combining_class(11775) -> 230;
combining_class(8430) -> 220;
combining_class(125137) -> 220;
combining_class(4959) -> 230;
combining_class(7383) -> 220;
combining_class(3530) -> 9;
combining_class(1850) -> 230;
combining_class(3974) -> 230;
combining_class(122913) -> 230;
combining_class(1557) -> 230;
combining_class(2090) -> 230;
combining_class(6774) -> 230;
combining_class(2086) -> 230;
combining_class(2301) -> 230;
combining_class(1558) -> 230;
combining_class(816) -> 220;
combining_class(7023) -> 230;
combining_class(3768) -> 118;
combining_class(1771) -> 230;
combining_class(799) -> 220;
combining_class(43246) -> 230;
combining_class(2137) -> 220;
combining_class(1427) -> 230;
combining_class(1860) -> 220;
combining_class(769) -> 230;
combining_class(43766) -> 9;
combining_class(119153) -> 216;
combining_class(8422) -> 1;
combining_class(122916) -> 230;
combining_class(819) -> 220;
combining_class(1855) -> 230;
combining_class(871) -> 230;
combining_class(119362) -> 230;
combining_class(2269) -> 230;
combining_class(802) -> 202;
combining_class(7628) -> 230;
combining_class(8423) -> 230;
combining_class(779) -> 230;
combining_class(1156) -> 230;
combining_class(873) -> 230;
combining_class(119177) -> 230;
combining_class(119164) -> 220;
combining_class(1471) -> 23;
combining_class(1853) -> 230;
combining_class(7386) -> 230;
combining_class(11761) -> 230;
combining_class(2294) -> 220;
combining_class(1443) -> 220;
combining_class(1856) -> 230;
combining_class(3641) -> 103;
combining_class(2033) -> 230;
combining_class(2284) -> 230;
combining_class(1159) -> 230;
combining_class(122895) -> 230;
combining_class(876) -> 230;
combining_class(2278) -> 220;
combining_class(119152) -> 216;
combining_class(1768) -> 230;
combining_class(1857) -> 230;
combining_class(119212) -> 230;
combining_class(3642) -> 9;
combining_class(69759) -> 9;
combining_class(8429) -> 220;
combining_class(1445) -> 220;
combining_class(7666) -> 230;
combining_class(2268) -> 230;
combining_class(122893) -> 230;
combining_class(122886) -> 230;
combining_class(2492) -> 7;
combining_class(11745) -> 230;
combining_class(867) -> 230;
combining_class(6832) -> 230;
combining_class(7380) -> 1;
combining_class(122902) -> 230;
combining_class(7223) -> 7;
combining_class(43233) -> 230;
combining_class(785) -> 230;
combining_class(7679) -> 220;
combining_class(11760) -> 230;
combining_class(7631) -> 220;
combining_class(11504) -> 230;
combining_class(72767) -> 9;
combining_class(119143) -> 1;
combining_class(1155) -> 230;
combining_class(7024) -> 230;
combining_class(66272) -> 220;
combining_class(71351) -> 7;
combining_class(7635) -> 230;
combining_class(7642) -> 230;
combining_class(7082) -> 9;
combining_class(43245) -> 230;
combining_class(1425) -> 220;
combining_class(1858) -> 220;
combining_class(119141) -> 216;
combining_class(125139) -> 220;
combining_class(43248) -> 230;
combining_class(2085) -> 230;
combining_class(7623) -> 230;
combining_class(857) -> 220;
combining_class(854) -> 220;
combining_class(65060) -> 230;
combining_class(4237) -> 220;
combining_class(6843) -> 230;
combining_class(875) -> 230;
combining_class(11757) -> 230;
combining_class(1628) -> 220;
combining_class(2267) -> 230;
combining_class(7651) -> 230;
combining_class(1840) -> 230;
combining_class(2272) -> 230;
combining_class(66424) -> 230;
combining_class(8409) -> 1;
combining_class(1629) -> 230;
combining_class(11759) -> 230;
combining_class(2027) -> 230;
combining_class(2081) -> 230;
combining_class(7668) -> 230;
combining_class(863) -> 233;
combining_class(7654) -> 230;
combining_class(8432) -> 230;
combining_class(1429) -> 230;
combining_class(1843) -> 230;
combining_class(6109) -> 230;
combining_class(2139) -> 220;
combining_class(12333) -> 222;
combining_class(92914) -> 1;
combining_class(2138) -> 220;
combining_class(1759) -> 230;
combining_class(773) -> 230;
combining_class(1479) -> 18;
combining_class(7412) -> 230;
combining_class(1845) -> 230;
combining_class(836) -> 230;
combining_class(2876) -> 7;
combining_class(2295) -> 230;
combining_class(1626) -> 230;
combining_class(43239) -> 230;
combining_class(69818) -> 7;
combining_class(7154) -> 9;
combining_class(1618) -> 34;
combining_class(65058) -> 230;
combining_class(122909) -> 230;
combining_class(1433) -> 230;
combining_class(64286) -> 26;
combining_class(2073) -> 230;
combining_class(42736) -> 230;
combining_class(3864) -> 220;
combining_class(43237) -> 230;
combining_class(820) -> 1;
combining_class(8404) -> 230;
combining_class(6837) -> 220;
combining_class(68159) -> 9;
combining_class(66425) -> 230;
combining_class(8410) -> 1;
combining_class(122900) -> 230;
combining_class(797) -> 220;
combining_class(3149) -> 9;
combining_class(12442) -> 8;
combining_class(11772) -> 230;
combining_class(70512) -> 230;
combining_class(1760) -> 230;
combining_class(70502) -> 230;
combining_class(122882) -> 230;
combining_class(842) -> 230;
combining_class(2271) -> 230;
combining_class(5940) -> 9;
combining_class(2262) -> 230;
combining_class(1612) -> 28;
combining_class(1435) -> 220;
combining_class(69939) -> 9;
combining_class(3784) -> 122;
combining_class(852) -> 220;
combining_class(70513) -> 230;
combining_class(8405) -> 230;
combining_class(1753) -> 230;
combining_class(1841) -> 220;
combining_class(7669) -> 230;
combining_class(2279) -> 230;
combining_class(3260) -> 7;
combining_class(7397) -> 1;
combining_class(7405) -> 220;
combining_class(125258) -> 7;
combining_class(7641) -> 230;
combining_class(122880) -> 230;
combining_class(2265) -> 230;
combining_class(43249) -> 230;
combining_class(71467) -> 9;
combining_class(66426) -> 230;
combining_class(798) -> 220;
combining_class(119211) -> 230;
combining_class(42614) -> 230;
combining_class(844) -> 230;
combining_class(4151) -> 7;
combining_class(815) -> 220;
combining_class(2077) -> 230;
combining_class(826) -> 220;
combining_class(6845) -> 220;
combining_class(7627) -> 230;
combining_class(7650) -> 230;
combining_class(1465) -> 19;
combining_class(122921) -> 230;
combining_class(125138) -> 220;
combining_class(11767) -> 230;
combining_class(122918) -> 230;
combining_class(125256) -> 230;
combining_class(65063) -> 220;
combining_class(43309) -> 220;
combining_class(122889) -> 230;
combining_class(6777) -> 230;
combining_class(6841) -> 220;
combining_class(6835) -> 230;
combining_class(11771) -> 230;
combining_class(68325) -> 230;
combining_class(3972) -> 9;
combining_class(1560) -> 30;
combining_class(3656) -> 107;
combining_class(1436) -> 230;
combining_class(42613) -> 230;
combining_class(7620) -> 230;
combining_class(862) -> 234;
combining_class(1848) -> 220;
combining_class(7658) -> 230;
combining_class(790) -> 220;
combining_class(1157) -> 230;
combining_class(119145) -> 1;
combining_class(1764) -> 230;
combining_class(7155) -> 9;
combining_class(122908) -> 230;
combining_class(7021) -> 230;
combining_class(7389) -> 220;
combining_class(2765) -> 9;
combining_class(7662) -> 230;
combining_class(2509) -> 9;
combining_class(43699) -> 230;
combining_class(70516) -> 230;
combining_class(789) -> 232;
combining_class(6780) -> 230;
combining_class(70726) -> 7;
combining_class(8412) -> 230;
combining_class(865) -> 234;
combining_class(44013) -> 9;
combining_class(65061) -> 230;
combining_class(7392) -> 230;
combining_class(3968) -> 130;
combining_class(11752) -> 230;
combining_class(788) -> 230;
combining_class(1438) -> 230;
combining_class(11769) -> 230;
combining_class(7634) -> 230;
combining_class(1552) -> 230;
combining_class(807) -> 202;
combining_class(829) -> 230;
combining_class(66423) -> 230;
combining_class(1444) -> 220;
combining_class(1158) -> 230;
combining_class(2275) -> 220;
combining_class(70508) -> 230;
combining_class(1854) -> 220;
combining_class(70505) -> 230;
combining_class(43443) -> 7;
combining_class(2620) -> 7;
combining_class(1452) -> 230;
combining_class(2292) -> 230;
combining_class(8402) -> 1;
combining_class(1614) -> 30;
combining_class(1446) -> 220;
combining_class(12335) -> 224;
combining_class(12334) -> 224;
combining_class(119142) -> 216;
combining_class(122885) -> 230;
combining_class(7416) -> 230;
combining_class(7639) -> 230;
combining_class(11755) -> 230;
combining_class(125253) -> 230;
combining_class(1770) -> 220;
combining_class(122890) -> 230;
combining_class(7390) -> 220;
combining_class(809) -> 220;
combining_class(3895) -> 220;
combining_class(122899) -> 230;
combining_class(3786) -> 122;
combining_class(113822) -> 1;
combining_class(7394) -> 1;
combining_class(1474) -> 25;
combining_class(2748) -> 7;
combining_class(7630) -> 214;
combining_class(1861) -> 230;
combining_class(43232) -> 230;
combining_class(42654) -> 230;
combining_class(3963) -> 130;
combining_class(11753) -> 230;
combining_class(796) -> 220;
combining_class(71104) -> 7;
combining_class(11647) -> 9;
combining_class(1430) -> 220;
combining_class(7617) -> 230;
combining_class(119179) -> 220;
combining_class(122903) -> 230;
combining_class(43704) -> 230;
combining_class(2300) -> 230;
combining_class(3865) -> 220;
combining_class(7652) -> 230;
combining_class(1756) -> 230;
combining_class(3658) -> 107;
combining_class(877) -> 230;
combining_class(4038) -> 220;
combining_class(65066) -> 220;
combining_class(2280) -> 230;
combining_class(7633) -> 230;
combining_class(7027) -> 230;
combining_class(7400) -> 1;
combining_class(2078) -> 230;
combining_class(6783) -> 220;
combining_class(814) -> 220;
combining_class(2261) -> 230;
combining_class(1617) -> 33;
combining_class(777) -> 230;
combining_class(2082) -> 230;
combining_class(7667) -> 230;
combining_class(43698) -> 230;
combining_class(42615) -> 230;
combining_class(92979) -> 230;
combining_class(12330) -> 218;
combining_class(834) -> 230;
combining_class(1864) -> 220;
combining_class(69817) -> 9;
combining_class(11748) -> 230;
combining_class(2270) -> 230;
combining_class(11768) -> 230;
combining_class(859) -> 230;
combining_class(70503) -> 230;
combining_class(864) -> 234;
combining_class(2299) -> 230;
combining_class(7621) -> 230;
combining_class(6680) -> 220;
combining_class(2030) -> 230;
combining_class(70722) -> 9;
combining_class(7645) -> 230;
combining_class(791) -> 220;
combining_class(1457) -> 11;
combining_class(2072) -> 230;
combining_class(70514) -> 230;
combining_class(68109) -> 220;
combining_class(119213) -> 230;
combining_class(11744) -> 230;
combining_class(71350) -> 9;
combining_class(11747) -> 230;
combining_class(1623) -> 230;
combining_class(2388) -> 230;
combining_class(119163) -> 220;
combining_class(839) -> 220;
combining_class(1451) -> 230;
combining_class(7083) -> 9;
combining_class(828) -> 220;
combining_class(42607) -> 230;
combining_class(6833) -> 230;
combining_class(43241) -> 230;
combining_class(2083) -> 230;
combining_class(8411) -> 230;
combining_class(2296) -> 230;
combining_class(6980) -> 9;
combining_class(1469) -> 22;
combining_class(774) -> 230;
combining_class(1428) -> 230;
combining_class(822) -> 1;
combining_class(7622) -> 230;
combining_class(11754) -> 230;
combining_class(2303) -> 230;
combining_class(7391) -> 220;
combining_class(1460) -> 14;
combining_class(119363) -> 230;
combining_class(770) -> 230;
combining_class(3954) -> 130;
combining_class(7020) -> 220;
combining_class(122892) -> 230;
combining_class(68111) -> 230;
combining_class(1844) -> 220;
combining_class(1847) -> 220;
combining_class(2286) -> 220;
combining_class(42621) -> 230;
combining_class(122897) -> 230;
combining_class(1852) -> 220;
combining_class(824) -> 1;
combining_class(2289) -> 28;
combining_class(7026) -> 230;
combining_class(70197) -> 9;
combining_class(3277) -> 9;
combining_class(8428) -> 220;
combining_class(2264) -> 230;
combining_class(1842) -> 230;
combining_class(837) -> 240;
combining_class(1767) -> 230;
combining_class(4154) -> 9;
combining_class(12332) -> 232;
combining_class(7675) -> 230;
combining_class(122881) -> 230;
combining_class(6834) -> 230;
combining_class(92916) -> 1;
combining_class(43204) -> 9;
combining_class(65056) -> 230;
combining_class(2893) -> 9;
combining_class(7647) -> 230;
combining_class(42619) -> 230;
combining_class(122904) -> 230;
combining_class(70477) -> 9;
combining_class(7399) -> 1;
combining_class(1863) -> 230;
combining_class(7019) -> 230;
combining_class(3975) -> 230;
combining_class(2273) -> 230;
combining_class(125142) -> 220;
combining_class(1849) -> 220;
combining_class(69702) -> 9;
combining_class(125252) -> 230;
combining_class(68152) -> 230;
combining_class(2092) -> 230;
combining_class(8426) -> 1;
combining_class(42616) -> 230;
combining_class(119169) -> 220;
combining_class(92981) -> 230;
combining_class(1466) -> 19;
combining_class(122922) -> 230;
combining_class(805) -> 220;
combining_class(7417) -> 230;
combining_class(1615) -> 31;
combining_class(768) -> 230;
combining_class(7657) -> 230;
combining_class(119150) -> 216;
combining_class(122901) -> 230;
combining_class(6964) -> 7;
combining_class(2298) -> 220;
combining_class(122919) -> 230;
combining_class(3956) -> 132;
combining_class(2297) -> 220;
combining_class(7376) -> 230;
combining_class(3970) -> 230;
combining_class(65062) -> 230;
combining_class(2290) -> 29;
combining_class(2287) -> 220;
combining_class(861) -> 234;
combining_class(823) -> 1;
combining_class(870) -> 230;
combining_class(8403) -> 1;
combining_class(2291) -> 230;
combining_class(2093) -> 230;
combining_class(4153) -> 9;
combining_class(43014) -> 9;
combining_class(7661) -> 230;
combining_class(119151) -> 216;
combining_class(42655) -> 230;
combining_class(1456) -> 10;
combining_class(11762) -> 230;
combining_class(70080) -> 9;
combining_class(855) -> 230;
combining_class(119174) -> 230;
combining_class(783) -> 230;
combining_class(43700) -> 220;
combining_class(125255) -> 230;
combining_class(122898) -> 230;
combining_class(1622) -> 220;
combining_class(119178) -> 220;
combining_class(122912) -> 230;
combining_class(92982) -> 230;
combining_class(2266) -> 230;
combining_class(2385) -> 230;
combining_class(43713) -> 230;
combining_class(1613) -> 29;
combining_class(1434) -> 222;
combining_class(7629) -> 234;
combining_class(119168) -> 220;
combining_class(8408) -> 1;
combining_class(3964) -> 130;
combining_class(68326) -> 220;
combining_class(3021) -> 9;
combining_class(92915) -> 1;
combining_class(780) -> 230;
combining_class(65070) -> 230;
combining_class(830) -> 230;
combining_class(65068) -> 220;
combining_class(1648) -> 35;
combining_class(7677) -> 220;
combining_class(69888) -> 230;
combining_class(119170) -> 220;
combining_class(69889) -> 230;
combining_class(1620) -> 230;
combining_class(849) -> 230;
combining_class(1761) -> 230;
combining_class(6775) -> 230;
combining_class(6773) -> 230;
combining_class(1468) -> 21;
combining_class(778) -> 230;
combining_class(43236) -> 230;
combining_class(43711) -> 230;
combining_class(1862) -> 220;
combining_class(43456) -> 9;
combining_class(787) -> 230;
combining_class(2281) -> 220;
combining_class(1441) -> 230;
combining_class(1439) -> 230;
combining_class(70850) -> 9;
combining_class(1865) -> 230;
combining_class(1809) -> 36;
combining_class(66045) -> 220;
combining_class(7381) -> 220;
combining_class(1455) -> 230;
combining_class(7678) -> 230;
combining_class(6840) -> 220;
combining_class(2285) -> 220;
combining_class(1627) -> 230;
combining_class(1555) -> 230;
combining_class(2032) -> 230;
combining_class(2076) -> 230;
combining_class(818) -> 220;
combining_class(8421) -> 1;
combining_class(65067) -> 220;
combining_class(2034) -> 220;
combining_class(6844) -> 230;
combining_class(833) -> 230;
combining_class(125140) -> 220;
combining_class(1467) -> 20;
combining_class(810) -> 220;
combining_class(6838) -> 220;
combining_class(3785) -> 122;
combining_class(6839) -> 220;
combining_class(11764) -> 230;
combining_class(7640) -> 230;
combining_class(11756) -> 230;
combining_class(1462) -> 16;
combining_class(812) -> 220;
combining_class(12441) -> 8;
combining_class(66422) -> 230;
combining_class(1846) -> 230;
combining_class(1859) -> 230;
combining_class(70378) -> 9;
combining_class(776) -> 230;
combining_class(122883) -> 230;
combining_class(43235) -> 230;
combining_class(3965) -> 130;
combining_class(1473) -> 24;
combining_class(1448) -> 230;
combining_class(2386) -> 220;
combining_class(1750) -> 230;
combining_class(832) -> 230;
combining_class(782) -> 230;
combining_class(2070) -> 230;
combining_class(122891) -> 230;
combining_class(11770) -> 230;
combining_class(6776) -> 230;
combining_class(11758) -> 230;
combining_class(11774) -> 230;
combining_class(8417) -> 230;
combining_class(7649) -> 230;
combining_class(1762) -> 230;
combining_class(1464) -> 18;
combining_class(70090) -> 7;
combining_class(122920) -> 230;
combining_class(92977) -> 230;
combining_class(70460) -> 7;
combining_class(3953) -> 129;
combining_class(1630) -> 230;
combining_class(7676) -> 233;
combining_class(11503) -> 230;
combining_class(868) -> 230;
combining_class(771) -> 230;
combining_class(860) -> 233;
combining_class(11749) -> 230;
combining_class(817) -> 220;
combining_class(7384) -> 220;
combining_class(125136) -> 220;
combining_class(848) -> 230;
combining_class(843) -> 230;
combining_class(2263) -> 230;
combining_class(8425) -> 230;
combining_class(813) -> 220;
combining_class(3962) -> 130;
combining_class(1752) -> 230;
combining_class(793) -> 220;
combining_class(92976) -> 230;
combining_class(8407) -> 230;
combining_class(12331) -> 228;
combining_class(835) -> 230;
combining_class(2089) -> 230;
combining_class(2260) -> 230;
combining_class(7637) -> 230;
combining_class(8431) -> 220;
combining_class(119210) -> 230;
combining_class(11766) -> 230;
combining_class(7663) -> 230;
combining_class(43347) -> 9;
combining_class(43243) -> 230;
combining_class(122915) -> 230;
combining_class(2276) -> 230;
combining_class(65064) -> 220;
combining_class(43242) -> 230;
combining_class(122896) -> 230;
combining_class(69890) -> 230;
combining_class(65059) -> 230;
combining_class(7638) -> 230;
combining_class(6752) -> 9;
combining_class(119149) -> 226;
combining_class(2364) -> 7;
combining_class(1619) -> 230;
combining_class(70515) -> 230;
combining_class(8427) -> 1;
combining_class(43696) -> 230;
combining_class(1458) -> 12;
combining_class(1561) -> 31;
combining_class(2282) -> 230;
combining_class(4957) -> 230;
combining_class(7385) -> 220;
combining_class(68153) -> 1;
combining_class(825) -> 220;
combining_class(2071) -> 230;
combining_class(6842) -> 220;
combining_class(872) -> 230;
combining_class(7644) -> 230;
combining_class(7665) -> 230;
combining_class(125141) -> 220;
combining_class(7656) -> 230;
combining_class(11773) -> 230;
combining_class(2087) -> 230;
combining_class(858) -> 220;
combining_class(119165) -> 220;
combining_class(43703) -> 230;
combining_class(119175) -> 230;
combining_class(6313) -> 228;
combining_class(7142) -> 7;
combining_class(1554) -> 230;
combining_class(122911) -> 230;
combining_class(11505) -> 230;
combining_class(8424) -> 220;
combining_class(2387) -> 230;
combining_class(43247) -> 230;
combining_class(122907) -> 230;
combining_class(795) -> 216;
combining_class(11750) -> 230;
combining_class(1449) -> 230;
combining_class(869) -> 230;
combining_class(92978) -> 230;
combining_class(2283) -> 230;
combining_class(43244) -> 230;
combining_class(7022) -> 230;
combining_class(1755) -> 230;
combining_class(1440) -> 230;
combining_class(43710) -> 230;
combining_class(65057) -> 230;
combining_class(1459) -> 13;
combining_class(2277) -> 230;
combining_class(1624) -> 230;
combining_class(781) -> 230;
combining_class(1866) -> 230;
combining_class(3893) -> 220;
combining_class(7619) -> 230;
combining_class(119173) -> 230;
combining_class(6098) -> 9;
combining_class(11751) -> 230;
combining_class(1625) -> 230;
combining_class(2091) -> 230;
combining_class(804) -> 220;
combining_class(122894) -> 230;
combining_class(1754) -> 230;
combining_class(4958) -> 230;
combining_class(827) -> 220;
combining_class(3787) -> 122;
combining_class(42618) -> 230;
combining_class(7664) -> 230;
combining_class(7624) -> 230;
combining_class(1562) -> 32;
combining_class(7396) -> 1;
combining_class(853) -> 220;
combining_class(7618) -> 220;
combining_class(2302) -> 230;
combining_class(2288) -> 27;
combining_class(5908) -> 9;
combining_class(840) -> 220;
combining_class(801) -> 202;
combining_class(792) -> 220;
combining_class(1431) -> 230;
combining_class(70504) -> 230;
combining_class(8400) -> 230;
combining_class(874) -> 230;
combining_class(43238) -> 230;
combining_class(119154) -> 216;
combining_class(1432) -> 230;
combining_class(6458) -> 230;
combining_class(43308) -> 220;
combining_class(71231) -> 9;
combining_class(3769) -> 118;
combining_class(3157) -> 84;
combining_class(11746) -> 230;
combining_class(1611) -> 27;
combining_class(7395) -> 1;
combining_class(119364) -> 230;
combining_class(1426) -> 230;
combining_class(119166) -> 220;
combining_class(2031) -> 230;
combining_class(772) -> 230;
combining_class(119167) -> 220;
combining_class(1751) -> 230;
combining_class(1556) -> 230;
combining_class(3897) -> 216;
combining_class(42617) -> 230;
combining_class(786) -> 230;
combining_class(800) -> 220;
combining_class(7387) -> 230;
combining_class(122884) -> 230;
combining_class(1476) -> 230;
combining_class(7648) -> 230;
combining_class(3158) -> 91;
combining_class(1437) -> 230;
combining_class(808) -> 202;
combining_class(845) -> 220;
combining_class(43234) -> 230;
combining_class(7653) -> 230;
combining_class(7643) -> 230;
combining_class(2075) -> 230;
combining_class(92912) -> 1;
combining_class(6779) -> 230;
combining_class(2381) -> 9;
combining_class(846) -> 220;
combining_class(6457) -> 222;
combining_class(68154) -> 220;
combining_class(3640) -> 103;
combining_class(_E) -> 0.

compose(<<Elead@1/utf8, Evowel@1/utf8, Erest@1/binary>>)
    when (erlang:is_integer(Elead@1) andalso
	    Elead@1 >= 4352 andalso Elead@1 =< 4370)
	   andalso
	   erlang:is_integer(Evowel@1) andalso
	     Evowel@1 >= 4449 andalso Evowel@1 =< 4469 ->
    Ecodepoint@1 = 44032 + (Elead@1 - 4352) * 588 +
		     (Evowel@1 - 4449) * 28,
    case Erest@1 of
      <<Etrail@1/utf8, Eaccents@1/binary>>
	  when erlang:is_integer(Etrail@1) andalso
		 Etrail@1 >= 4519 andalso Etrail@1 =< 4546 ->
	  <<(Ecodepoint@1 + Etrail@1 - 4519)/utf8,
	    Eaccents@1/binary>>;
      _E -> <<Ecodepoint@1/utf8, Erest@1/binary>>
    end;
compose(Ebinary@1) ->
    case compose_one(Ebinary@1) of
      _E@1 when (_E@1 =:= nil) or (_E@1 =:= false) ->
	  <<Ecp@1/utf8, Erest@1/binary>> = Ebinary@1,
	  compose_many(Erest@1, <<Ecp@1/utf8>>, <<>>,
		       combining_class(Ecp@1) - 1);
      _E@2 -> {Erest@1, Ecp@1} = {nil, nil}, _E@2
    end.

compose_many(<<>>, Ebase@1, Eaccents@1, _E) ->
    <<Ebase@1/binary, Eaccents@1/binary>>;
compose_many(<<Ecp@1/utf8, Erest@1/binary>>, Ebase@1,
	     Eaccents@1, Elast_class@1) ->
    Epart_class@1 = combining_class(Ecp@1),
    Ecombined@1 = <<Ebase@1/binary, Ecp@1/utf8>>,
    case Ecomposed@1 = case Elast_class@1 < Epart_class@1 of
			 _E@1 when (_E@1 =:= nil) or (_E@1 =:= false) -> _E@1;
			 _E -> compose_one(Ecombined@1)
		       end
	of
      _E@2 when (_E@2 =:= nil) or (_E@2 =:= false) ->
	  compose_many(Erest@1, Ebase@1,
		       <<Eaccents@1/binary, Ecp@1/utf8>>, Epart_class@1);
      _E ->
	  compose_many(Erest@1, Ecomposed@1, Eaccents@1,
		       Elast_class@1)
    end.

compose_one(<<"aÌ\214">>) -> <<"Ç\216">>;
compose_one(<<"á¼¸Ì\200">>) -> <<"á¼º">>;
compose_one(<<"LÌ±">>) -> <<"á¸º">>;
compose_one(<<"oÌ\233">>) -> <<"Æ¡">>;
compose_one(<<"aÌ\217">>) -> <<"È\201">>;
compose_one(<<"cÌ\201">>) -> <<"Ä\207">>;
compose_one(<<"oÌ\217">>) -> <<"È\215">>;
compose_one(<<"Ã\234Ì\200">>) -> <<"Ç\233">>;
compose_one(<<"GÌ\201">>) -> <<"Ç´">>;
compose_one(<<"â\211ºÌ¸">>) -> <<"â\212\200">>;
compose_one(<<"á¿¾Ì\201">>) -> <<"á¿\236">>;
compose_one(<<"Æ¯Ì\201">>) -> <<"á»¨">>;
compose_one(<<"Å\215Ì\201">>) -> <<"á¹\223">>;
compose_one(<<"LÌ\201">>) -> <<"Ä¹">>;
compose_one(<<"Ã\212Ì\200">>) -> <<"á»\200">>;
compose_one(<<"Æ°Ì\203">>) -> <<"á»¯">>;
compose_one(<<"ã\201¯ã\202\232">>) -> <<"ã\201±">>;
compose_one(<<"IÌ\203">>) -> <<"Ä¨">>;
compose_one(<<"ÐºÌ\201">>) -> <<"Ñ\234">>;
compose_one(<<"Ð¶Ì\206">>) -> <<"Ó\202">>;
compose_one(<<"HÌ\210">>) -> <<"á¸¦">>;
compose_one(<<"ÐµÌ\206">>) -> <<"Ó\227">>;
compose_one(<<"á¼¸Í\202">>) -> <<"á¼¾">>;
compose_one(<<"uÌ°">>) -> <<"á¹µ">>;
compose_one(<<"rÌ\217">>) -> <<"È\221">>;
compose_one(<<"á¬\215á¬µ">>) -> <<"á¬\216">>;
compose_one(<<"wÌ\207">>) -> <<"áº\207">>;
compose_one(<<"ÎµÌ\201">>) -> <<"Î­">>;
compose_one(<<"rÌ§">>) -> <<"Å\227">>;
compose_one(<<"wÌ\212">>) -> <<"áº\230">>;
compose_one(<<"Æ Ì\201">>) -> <<"á»\232">>;
compose_one(<<"á¹£Ì\207">>) -> <<"á¹©">>;
compose_one(<<"DÌ\214">>) -> <<"Ä\216">>;
compose_one(<<"RÌ\214">>) -> <<"Å\230">>;
compose_one(<<"Î¹Ì\206">>) -> <<"á¿\220">>;
compose_one(<<"ã\202\235ã\202\231">>) ->
    <<"ã\202\236">>;
compose_one(<<"IÌ\201">>) -> <<"Ã\215">>;
compose_one(<<"á½ªÍ\205">>) -> <<"á¾ª">>;
compose_one(<<"ð\221\202\231ð\221\202º">>) ->
    <<"ð\221\202\232">>;
compose_one(<<"oÌ\204">>) -> <<"Å\215">>;
compose_one(<<"eÌ\211">>) -> <<"áº»">>;
compose_one(<<"ÑµÌ\217">>) -> <<"Ñ·">>;
compose_one(<<"eÌ\200">>) -> <<"Ã¨">>;
compose_one(<<"dÌ±">>) -> <<"á¸\217">>;
compose_one(<<"iÌ\200">>) -> <<"Ã¬">>;
compose_one(<<"á¼¤Í\205">>) -> <<"á¾\224">>;
compose_one(<<"È®Ì\204">>) -> <<"È°">>;
compose_one(<<"Ï\205Ì\201">>) -> <<"Ï\215">>;
compose_one(<<"Æ¡Ì£">>) -> <<"á»£">>;
compose_one(<<"NÌ­">>) -> <<"á¹\212">>;
compose_one(<<"Ð¸Ì\204">>) -> <<"Ó£">>;
compose_one(<<"â\212\206Ì¸">>) -> <<"â\212\210">>;
compose_one(<<"Æ°Ì£">>) -> <<"á»±">>;
compose_one(<<"UÌ\200">>) -> <<"Ã\231">>;
compose_one(<<"Ð\226Ì\206">>) -> <<"Ó\201">>;
compose_one(<<"Ï\213Ì\200">>) -> <<"á¿¢">>;
compose_one(<<"cÌ\202">>) -> <<"Ä\211">>;
compose_one(<<"Î±Ì\200">>) -> <<"á½°">>;
compose_one(<<"Æ¯Ì\200">>) -> <<"á»ª">>;
compose_one(<<"Î\225Ì\200">>) -> <<"á¿\210">>;
compose_one(<<"ÅªÌ\210">>) -> <<"á¹º">>;
compose_one(<<"á¼\200Ì\201">>) -> <<"á¼\204">>;
compose_one(<<"wÌ\201">>) -> <<"áº\203">>;
compose_one(<<"UÌ\211">>) -> <<"á»¦">>;
compose_one(<<"Î\237Ì\224">>) -> <<"á½\211">>;
compose_one(<<"tÌ\207">>) -> <<"á¹«">>;
compose_one(<<"Ð\230Ì\210">>) -> <<"Ó¤">>;
compose_one(<<"EÌ°">>) -> <<"á¸\232">>;
compose_one(<<"Ï\201Ì\223">>) -> <<"á¿¤">>;
compose_one(<<"á½¥Í\205">>) -> <<"á¾¥">>;
compose_one(<<"ã\201\223ã\202\231">>) ->
    <<"ã\201\224">>;
compose_one(<<"gÌ\206">>) -> <<"Ä\237">>;
compose_one(<<"WÌ\202">>) -> <<"Å´">>;
compose_one(<<"á½´Í\205">>) -> <<"á¿\202">>;
compose_one(<<"á½\221Ì\201">>) -> <<"á½\225">>;
compose_one(<<"È¦Ì\204">>) -> <<"Ç ">>;
compose_one(<<"È¨Ì\206">>) -> <<"á¸\234">>;
compose_one(<<"sÌ\207">>) -> <<"á¹¡">>;
compose_one(<<"á¼©Í\202">>) -> <<"á¼¯">>;
compose_one(<<"MÌ£">>) -> <<"á¹\202">>;
compose_one(<<"vÌ\203">>) -> <<"á¹½">>;
compose_one(<<"á½©Ì\201">>) -> <<"á½­">>;
compose_one(<<"á½¨Í\202">>) -> <<"á½®">>;
compose_one(<<"Î\231Ì\210">>) -> <<"Îª">>;
compose_one(<<"Ã\202Ì\201">>) -> <<"áº¤">>;
compose_one(<<"Î\221Ì\201">>) -> <<"Î\206">>;
compose_one(<<"AÌ\203">>) -> <<"Ã\203">>;
compose_one(<<"dÌ§">>) -> <<"á¸\221">>;
compose_one(<<"â\211²Ì¸">>) -> <<"â\211´">>;
compose_one(<<"eÌ\217">>) -> <<"È\205">>;
compose_one(<<"gÌ\204">>) -> <<"á¸¡">>;
compose_one(<<"Ï\212Ì\200">>) -> <<"á¿\222">>;
compose_one(<<"â\212\207Ì¸">>) -> <<"â\212\211">>;
compose_one(<<"Î±Ì\206">>) -> <<"á¾°">>;
compose_one(<<"AÌ\201">>) -> <<"Ã\201">>;
compose_one(<<"á¬¾á¬µ">>) -> <<"á­\200">>;
compose_one(<<"â\212³Ì¸">>) -> <<"â\213«">>;
compose_one(<<"Å©Ì\201">>) -> <<"á¹¹">>;
compose_one(<<"RÌ\217">>) -> <<"È\220">>;
compose_one(<<"ã\201\225ã\202\231">>) ->
    <<"ã\201\226">>;
compose_one(<<"Î\227Ì\223">>) -> <<"á¼¨">>;
compose_one(<<"â\207\222Ì¸">>) -> <<"â\207\217">>;
compose_one(<<"ã\203¯ã\202\231">>) -> <<"ã\203·">>;
compose_one(<<"uÌ\206">>) -> <<"Å­">>;
compose_one(<<"Ð£Ì\213">>) -> <<"Ó²">>;
compose_one(<<"á¼ªÍ\205">>) -> <<"á¾\232">>;
compose_one(<<"gÌ\207">>) -> <<"Ä¡">>;
compose_one(<<"ÃªÌ\203">>) -> <<"á»\205">>;
compose_one(<<"uÌ¤">>) -> <<"á¹³">>;
compose_one(<<"ð\221\202\233ð\221\202º">>) ->
    <<"ð\221\202\234">>;
compose_one(<<"Î¿Ì\224">>) -> <<"á½\201">>;
compose_one(<<"Ð·Ì\210">>) -> <<"Ó\237">>;
compose_one(<<"Ã\224Ì\201">>) -> <<"á»\220">>;
compose_one(<<"Ñ\203Ì\204">>) -> <<"Ó¯">>;
compose_one(<<"á¼\211Í\205">>) -> <<"á¾\211">>;
compose_one(<<"á½\200Ì\200">>) -> <<"á½\202">>;
compose_one(<<"ã\201\233ã\202\231">>) ->
    <<"ã\201\234">>;
compose_one(<<"CÌ§">>) -> <<"Ã\207">>;
compose_one(<<"ã\201¨ã\202\231">>) -> <<"ã\201©">>;
compose_one(<<"á¼\210Í\202">>) -> <<"á¼\216">>;
compose_one(<<"á½ Í\202">>) -> <<"á½¦">>;
compose_one(<<"Ñ\203Ì\206">>) -> <<"Ñ\236">>;
compose_one(<<"sÌ§">>) -> <<"Å\237">>;
compose_one(<<"aÌ\200">>) -> <<"Ã ">>;
compose_one(<<"ð\221\222¹ð\221\222º">>) ->
    <<"ð\221\222»">>;
compose_one(<<"Ð£Ì\204">>) -> <<"Ó®">>;
compose_one(<<"UÌ\233">>) -> <<"Æ¯">>;
compose_one(<<"á½¤Í\205">>) -> <<"á¾¤">>;
compose_one(<<"OÌ\202">>) -> <<"Ã\224">>;
compose_one(<<"á¼¡Ì\200">>) -> <<"á¼£">>;
compose_one(<<"GÌ\207">>) -> <<"Ä ">>;
compose_one(<<"yÌ\204">>) -> <<"È³">>;
compose_one(<<"ã\202¯ã\202\231">>) -> <<"ã\202°">>;
compose_one(<<"PÌ\207">>) -> <<"á¹\226">>;
compose_one(<<"Ð\227Ì\210">>) -> <<"Ó\236">>;
compose_one(<<"á¼\220Ì\201">>) -> <<"á¼\224">>;
compose_one(<<"Ï\212Í\202">>) -> <<"á¿\227">>;
compose_one(<<"á¼ Ì\201">>) -> <<"á¼¤">>;
compose_one(<<"á¿¾Í\202">>) -> <<"á¿\237">>;
compose_one(<<"á¼©Ì\201">>) -> <<"á¼­">>;
compose_one(<<"WÌ£">>) -> <<"áº\210">>;
compose_one(<<"Ã\225Ì\210">>) -> <<"á¹\216">>;
compose_one(<<"ã\202·ã\202\231">>) -> <<"ã\202¸">>;
compose_one(<<"oÌ\200">>) -> <<"Ã²">>;
compose_one(<<"OÌ\210">>) -> <<"Ã\226">>;
compose_one(<<"ã\201¸ã\202\231">>) -> <<"ã\201¹">>;
compose_one(<<"Î·Ì\201">>) -> <<"Î®">>;
compose_one(<<"oÌ\207">>) -> <<"È¯">>;
compose_one(<<"iÌ\202">>) -> <<"Ã®">>;
compose_one(<<"â\212¨Ì¸">>) -> <<"â\212­">>;
compose_one(<<"Ä\203Ì\203">>) -> <<"áºµ">>;
compose_one(<<"Ó¨Ì\210">>) -> <<"Óª">>;
compose_one(<<"RÌ\207">>) -> <<"á¹\230">>;
compose_one(<<"wÌ£">>) -> <<"áº\211">>;
compose_one(<<"È¯Ì\204">>) -> <<"È±">>;
compose_one(<<"PÌ\201">>) -> <<"á¹\224">>;
compose_one(<<"iÌ¨">>) -> <<"Ä¯">>;
compose_one(<<"ð\221\222¹ð\221\222°">>) ->
    <<"ð\221\222¼">>;
compose_one(<<"oÌ¨">>) -> <<"Ç«">>;
compose_one(<<"ã\201\213ã\202\231">>) ->
    <<"ã\201\214">>;
compose_one(<<"aÌ\211">>) -> <<"áº£">>;
compose_one(<<"Ê\222Ì\214">>) -> <<"Ç¯">>;
compose_one(<<"á½©Í\202">>) -> <<"á½¯">>;
compose_one(<<"á½\210Ì\200">>) -> <<"á½\212">>;
compose_one(<<"SÌ\201">>) -> <<"Å\232">>;
compose_one(<<"OÌ\204">>) -> <<"Å\214">>;
compose_one(<<"Î©Ì\224">>) -> <<"á½©">>;
compose_one(<<"ð\221\222¹ð\221\222½">>) ->
    <<"ð\221\222¾">>;
compose_one(<<"Ä\223Ì\200">>) -> <<"á¸\225">>;
compose_one(<<"Ð\225Ì\210">>) -> <<"Ð\201">>;
compose_one(<<"kÌ±">>) -> <<"á¸µ">>;
compose_one(<<"áº¸Ì\202">>) -> <<"á»\206">>;
compose_one(<<"à·\231à·\217">>) -> <<"à·\234">>;
compose_one(<<"Î¥Ì\200">>) -> <<"á¿ª">>;
compose_one(<<"Ï\213Í\202">>) -> <<"á¿§">>;
compose_one(<<"zÌ\207">>) -> <<"Å¼">>;
compose_one(<<"ã\202µã\202\231">>) -> <<"ã\202¶">>;
compose_one(<<"Ä\202Ì\200">>) -> <<"áº°">>;
compose_one(<<"á½¨Í\205">>) -> <<"á¾¨">>;
compose_one(<<"GÌ\206">>) -> <<"Ä\236">>;
compose_one(<<"eÌ§">>) -> <<"È©">>;
compose_one(<<"EÌ\211">>) -> <<"áºº">>;
compose_one(<<"ã\201²ã\202\232">>) -> <<"ã\201´">>;
compose_one(<<"YÌ\203">>) -> <<"á»¸">>;
compose_one(<<"á½¢Í\205">>) -> <<"á¾¢">>;
compose_one(<<"pÌ\201">>) -> <<"á¹\225">>;
compose_one(<<"Ã§Ì\201">>) -> <<"á¸\211">>;
compose_one(<<"NÌ\214">>) -> <<"Å\207">>;
compose_one(<<"eÌ°">>) -> <<"á¸\233">>;
compose_one(<<"Ä\202Ì\201">>) -> <<"áº®">>;
compose_one(<<"ã\203\225ã\202\231">>) ->
    <<"ã\203\226">>;
compose_one(<<"rÌ\214">>) -> <<"Å\231">>;
compose_one(<<"ã\203±ã\202\231">>) -> <<"ã\203¹">>;
compose_one(<<"YÌ\210">>) -> <<"Å¸">>;
compose_one(<<"Ó\230Ì\210">>) -> <<"Ó\232">>;
compose_one(<<"IÌ\204">>) -> <<"Äª">>;
compose_one(<<"á¼\230Ì\200">>) -> <<"á¼\232">>;
compose_one(<<"á½¬Í\205">>) -> <<"á¾¬">>;
compose_one(<<"àµ\206à´¾">>) -> <<"àµ\212">>;
compose_one(<<"xÌ\210">>) -> <<"áº\215">>;
compose_one(<<"á¼¨Ì\201">>) -> <<"á¼¬">>;
compose_one(<<"EÌ\202">>) -> <<"Ã\212">>;
compose_one(<<"Ã\224Ì\211">>) -> <<"á»\224">>;
compose_one(<<"ã\201»ã\202\232">>) -> <<"ã\201½">>;
compose_one(<<"Î¡Ì\224">>) -> <<"á¿¬">>;
compose_one(<<"â\210\213Ì¸">>) -> <<"â\210\214">>;
compose_one(<<"HÌ®">>) -> <<"á¸ª">>;
compose_one(<<"Ã¸Ì\201">>) -> <<"Ç¿">>;
compose_one(<<"dÌ\207">>) -> <<"á¸\213">>;
compose_one(<<"á¹\233Ì\204">>) -> <<"á¹\235">>;
compose_one(<<"á¼°Í\202">>) -> <<"á¼¶">>;
compose_one(<<"sÌ\201">>) -> <<"Å\233">>;
compose_one(<<"Î\225Ì\224">>) -> <<"á¼\231">>;
compose_one(<<"á¼\200Ì\200">>) -> <<"á¼\202">>;
compose_one(<<"á¼\212Í\205">>) -> <<"á¾\212">>;
compose_one(<<"á¼¯Í\205">>) -> <<"á¾\237">>;
compose_one(<<"IÌ\211">>) -> <<"á»\210">>;
compose_one(<<"á½\211Ì\200">>) -> <<"á½\213">>;
compose_one(<<"á¼¬Í\205">>) -> <<"á¾\234">>;
compose_one(<<"á¾¶Í\205">>) -> <<"á¾·">>;
compose_one(<<"Ð«Ì\210">>) -> <<"Ó¸">>;
compose_one(<<"ã\203\233ã\202\232">>) ->
    <<"ã\203\235">>;
compose_one(<<"á½¡Í\205">>) -> <<"á¾¡">>;
compose_one(<<"á¼¹Ì\201">>) -> <<"á¼½">>;
compose_one(<<"dÌ­">>) -> <<"á¸\223">>;
compose_one(<<"Ï\211Ì\224">>) -> <<"á½¡">>;
compose_one(<<"tÌ¦">>) -> <<"È\233">>;
compose_one(<<"ã\201\217ã\202\231">>) ->
    <<"ã\201\220">>;
compose_one(<<"á½\220Í\202">>) -> <<"á½\226">>;
compose_one(<<"hÌ\202">>) -> <<"Ä¥">>;
compose_one(<<"â\211\210Ì¸">>) -> <<"â\211\211">>;
compose_one(<<"Ø§Ù\224">>) -> <<"Ø£">>;
compose_one(<<"ÃªÌ\211">>) -> <<"á»\203">>;
compose_one(<<"Æ¡Ì\211">>) -> <<"á»\237">>;
compose_one(<<"UÌ\213">>) -> <<"Å°">>;
compose_one(<<"àµ\207à´¾">>) -> <<"àµ\213">>;
compose_one(<<"Æ Ì\211">>) -> <<"á»\236">>;
compose_one(<<"gÌ\201">>) -> <<"Çµ">>;
compose_one(<<"ð\221\215\207ð\221\215\227">>) ->
    <<"ð\221\215\214">>;
compose_one(<<"á¼\201Í\205">>) -> <<"á¾\201">>;
compose_one(<<"tÌ\210">>) -> <<"áº\227">>;
compose_one(<<"Ï\205Ì\206">>) -> <<"á¿ ">>;
compose_one(<<"á½ Ì\200">>) -> <<"á½¢">>;
compose_one(<<"Ã¼Ì\200">>) -> <<"Ç\234">>;
compose_one(<<"Ã\202Ì\200">>) -> <<"áº¦">>;
compose_one(<<"á¼\210Ì\200">>) -> <<"á¼\212">>;
compose_one(<<"uÌ­">>) -> <<"á¹·">>;
compose_one(<<"hÌ£">>) -> <<"á¸¥">>;
compose_one(<<"á¼\211Ì\201">>) -> <<"á¼\215">>;
compose_one(<<"Ø§Ù\225">>) -> <<"Ø¥">>;
compose_one(<<"á¼\201Ì\201">>) -> <<"á¼\205">>;
compose_one(<<"â\212\222Ì¸">>) -> <<"â\213£">>;
compose_one(<<"Æ°Ì\211">>) -> <<"á»­">>;
compose_one(<<"á¬\221á¬µ">>) -> <<"á¬\222">>;
compose_one(<<"Î\221Ì\206">>) -> <<"á¾¸">>;
compose_one(<<"àµ\206àµ\227">>) -> <<"àµ\214">>;
compose_one(<<"nÌ£">>) -> <<"á¹\207">>;
compose_one(<<"LÌ\214">>) -> <<"Ä½">>;
compose_one(<<"á¼¡Í\202">>) -> <<"á¼§">>;
compose_one(<<"Ï\205Ì\223">>) -> <<"á½\220">>;
compose_one(<<"eÌ\210">>) -> <<"Ã«">>;
compose_one(<<"á½\221Ì\200">>) -> <<"á½\223">>;
compose_one(<<"Î¹Ì\200">>) -> <<"á½¶">>;
compose_one(<<"â\212©Ì¸">>) -> <<"â\212®">>;
compose_one(<<"â\210¼Ì¸">>) -> <<"â\211\201">>;
compose_one(<<"AÌ\210">>) -> <<"Ã\204">>;
compose_one(<<"IÌ¨">>) -> <<"Ä®">>;
compose_one(<<"á¼ Ì\200">>) -> <<"á¼¢">>;
compose_one(<<"IÌ£">>) -> <<"á»\212">>;
compose_one(<<"á¾¿Ì\201">>) -> <<"á¿\216">>;
compose_one(<<"â\212²Ì¸">>) -> <<"â\213ª">>;
compose_one(<<"IÌ\210">>) -> <<"Ã\217">>;
compose_one(<<"eÌ\214">>) -> <<"Ä\233">>;
compose_one(<<"OÌ\233">>) -> <<"Æ ">>;
compose_one(<<"à¯\207à®¾">>) -> <<"à¯\213">>;
compose_one(<<"LÌ§">>) -> <<"Ä»">>;
compose_one(<<"eÌ\203">>) -> <<"áº½">>;
compose_one(<<"eÌ\207">>) -> <<"Ä\227">>;
compose_one(<<"ã\203½ã\202\231">>) -> <<"ã\203¾">>;
compose_one(<<"á¼\230Ì\201">>) -> <<"á¼\234">>;
compose_one(<<"à·\231à·\212">>) -> <<"à·\232">>;
compose_one(<<"YÌ\204">>) -> <<"È²">>;
compose_one(<<"á¼¨Í\202">>) -> <<"á¼®">>;
compose_one(<<"aÌ\221">>) -> <<"È\203">>;
compose_one(<<"oÌ\211">>) -> <<"á»\217">>;
compose_one(<<"AÌ\200">>) -> <<"Ã\200">>;
compose_one(<<"lÌ\201">>) -> <<"Äº">>;
compose_one(<<"Ä\202Ì\203">>) -> <<"áº´">>;
compose_one(<<"Æ¯Ì\211">>) -> <<"á»¬">>;
compose_one(<<"á¬¿á¬µ">>) -> <<"á­\201">>;
compose_one(<<"yÌ\203">>) -> <<"á»¹">>;
compose_one(<<"Ð¾Ì\210">>) -> <<"Ó§">>;
compose_one(<<"Ï\216Í\205">>) -> <<"á¿´">>;
compose_one(<<"oÌ\202">>) -> <<"Ã´">>;
compose_one(<<"Ã\217Ì\201">>) -> <<"á¸®">>;
compose_one(<<"à­\207à­\226">>) -> <<"à­\210">>;
compose_one(<<"cÌ§">>) -> <<"Ã§">>;
compose_one(<<"Î¿Ì\223">>) -> <<"á½\200">>;
compose_one(<<"Û\225Ù\224">>) -> <<"Û\200">>;
compose_one(<<"RÌ\201">>) -> <<"Å\224">>;
compose_one(<<"á½¡Ì\201">>) -> <<"á½¥">>;
compose_one(<<"áº¡Ì\206">>) -> <<"áº·">>;
compose_one(<<"EÌ\221">>) -> <<"È\206">>;
compose_one(<<"Ã\202Ì\203">>) -> <<"áºª">>;
compose_one(<<"Ä\203Ì\200">>) -> <<"áº±">>;
compose_one(<<"YÌ\201">>) -> <<"Ã\235">>;
compose_one(<<"EÌ\214">>) -> <<"Ä\232">>;
compose_one(<<"ã\202­ã\202\231">>) -> <<"ã\202®">>;
compose_one(<<"á¼¹Í\202">>) -> <<"á¼¿">>;
compose_one(<<"OÌ\221">>) -> <<"È\216">>;
compose_one(<<"â\211¥Ì¸">>) -> <<"â\211±">>;
compose_one(<<"ÃªÌ\200">>) -> <<"á»\201">>;
compose_one(<<"Ð\230Ì\206">>) -> <<"Ð\231">>;
compose_one(<<"á½ Í\205">>) -> <<"á¾ ">>;
compose_one(<<"á¼°Ì\200">>) -> <<"á¼²">>;
compose_one(<<"Ð¸Ì\210">>) -> <<"Ó¥">>;
compose_one(<<"Ã\234Ì\201">>) -> <<"Ç\227">>;
compose_one(<<"UÌ°">>) -> <<"á¹´">>;
compose_one(<<"yÌ\201">>) -> <<"Ã½">>;
compose_one(<<"á¼\210Í\205">>) -> <<"á¾\210">>;
compose_one(<<"á½\200Ì\201">>) -> <<"á½\204">>;
compose_one(<<"UÌ\214">>) -> <<"Ç\223">>;
compose_one(<<"IÌ\214">>) -> <<"Ç\217">>;
compose_one(<<"Ã\205Ì\201">>) -> <<"Çº">>;
compose_one(<<"â\211\203Ì¸">>) -> <<"â\211\204">>;
compose_one(<<"â\210£Ì¸">>) -> <<"â\210¤">>;
compose_one(<<"ã\203\201ã\202\231">>) ->
    <<"ã\203\202">>;
compose_one(<<"Ã¢Ì\201">>) -> <<"áº¥">>;
compose_one(<<"Â¨Ì\200">>) -> <<"á¿­">>;
compose_one(<<"cÌ\207">>) -> <<"Ä\213">>;
compose_one(<<"á¼¦Í\205">>) -> <<"á¾\226">>;
compose_one(<<"nÌ\201">>) -> <<"Å\204">>;
compose_one(<<"ã\203\233ã\202\231">>) ->
    <<"ã\203\234">>;
compose_one(<<"Æ¡Ì\203">>) -> <<"á»¡">>;
compose_one(<<"ZÌ\207">>) -> <<"Å»">>;
compose_one(<<"Å\214Ì\201">>) -> <<"á¹\222">>;
compose_one(<<"uÌ\203">>) -> <<"Å©">>;
compose_one(<<"Ï\211Ì\200">>) -> <<"á½¼">>;
compose_one(<<"á¼\221Ì\201">>) -> <<"á¼\225">>;
compose_one(<<"Ã\212Ì\211">>) -> <<"á»\202">>;
compose_one(<<"à­\207à¬¾">>) -> <<"à­\213">>;
compose_one(<<"OÌ\211">>) -> <<"á»\216">>;
compose_one(<<"á½£Í\205">>) -> <<"á¾£">>;
compose_one(<<"Î¿Ì\200">>) -> <<"á½¸">>;
compose_one(<<"á¾¿Í\202">>) -> <<"á¿\217">>;
compose_one(<<"IÌ\217">>) -> <<"È\210">>;
compose_one(<<"CÌ\207">>) -> <<"Ä\212">>;
compose_one(<<"á¼¥Í\205">>) -> <<"á¾\225">>;
compose_one(<<"GÌ\204">>) -> <<"á¸ ">>;
compose_one(<<"Î¥Ì\210">>) -> <<"Î«">>;
compose_one(<<"iÌ\210">>) -> <<"Ã¯">>;
compose_one(<<"Ð\226Ì\210">>) -> <<"Ó\234">>;
compose_one(<<"WÌ\207">>) -> <<"áº\206">>;
compose_one(<<"Î\237Ì\201">>) -> <<"Î\214">>;
compose_one(<<"TÌ§">>) -> <<"Å¢">>;
compose_one(<<"Ù\210Ù\224">>) -> <<"Ø¤">>;
compose_one(<<"Î¹Ì\204">>) -> <<"á¿\221">>;
compose_one(<<"hÌ\210">>) -> <<"á¸§">>;
compose_one(<<"Ã\204Ì\204">>) -> <<"Ç\236">>;
compose_one(<<"Î\231Ì\206">>) -> <<"á¿\230">>;
compose_one(<<"ÐµÌ\200">>) -> <<"Ñ\220">>;
compose_one(<<"á¾¿Ì\200">>) -> <<"á¿\215">>;
compose_one(<<"ÎµÌ\224">>) -> <<"á¼\221">>;
compose_one(<<"Ã¤Ì\204">>) -> <<"Ç\237">>;
compose_one(<<"â\206\222Ì¸">>) -> <<"â\206\233">>;
compose_one(<<"á½\220Ì\201">>) -> <<"á½\224">>;
compose_one(<<"Î\231Ì\224">>) -> <<"á¼¹">>;
compose_one(<<"IÌ\206">>) -> <<"Ä¬">>;
compose_one(<<"SÌ\202">>) -> <<"Å\234">>;
compose_one(<<"Ñ\213Ì\210">>) -> <<"Ó¹">>;
compose_one(<<"Î±Í\205">>) -> <<"á¾³">>;
compose_one(<<"Ã\224Ì\203">>) -> <<"á»\226">>;
compose_one(<<"á¼°Ì\201">>) -> <<"á¼´">>;
compose_one(<<"Æ°Ì\200">>) -> <<"á»«">>;
compose_one(<<"á¼¨Í\205">>) -> <<"á¾\230">>;
compose_one(<<"HÌ£">>) -> <<"á¸¤">>;
compose_one(<<"cÌ\214">>) -> <<"Ä\215">>;
compose_one(<<"Å\215Ì\200">>) -> <<"á¹\221">>;
compose_one(<<"á¬ºá¬µ">>) -> <<"á¬»">>;
compose_one(<<"Î¥Ì\224">>) -> <<"á½\231">>;
compose_one(<<"AÌ\202">>) -> <<"Ã\202">>;
compose_one(<<"á¼©Ì\200">>) -> <<"á¼«">>;
compose_one(<<"rÌ£">>) -> <<"á¹\233">>;
compose_one(<<"á¼\221Ì\200">>) -> <<"á¼\223">>;
compose_one(<<"wÌ\200">>) -> <<"áº\201">>;
compose_one(<<"â\206\220Ì¸">>) -> <<"â\206\232">>;
compose_one(<<"Ð£Ì\210">>) -> <<"Ó°">>;
compose_one(<<"Ð£Ì\206">>) -> <<"Ð\216">>;
compose_one(<<"bÌ\207">>) -> <<"á¸\203">>;
compose_one(<<"IÌ\207">>) -> <<"Ä°">>;
compose_one(<<"á¼\213Í\205">>) -> <<"á¾\213">>;
compose_one(<<"yÌ\212">>) -> <<"áº\231">>;
compose_one(<<"oÌ\203">>) -> <<"Ãµ">>;
compose_one(<<"BÌ£">>) -> <<"á¸\204">>;
compose_one(<<"Ð\236Ì\210">>) -> <<"Ó¦">>;
compose_one(<<"Ã\225Ì\201">>) -> <<"á¹\214">>;
compose_one(<<"ZÌ\201">>) -> <<"Å¹">>;
compose_one(<<"ÃµÌ\210">>) -> <<"á¹\217">>;
compose_one(<<"lÌ­">>) -> <<"á¸½">>;
compose_one(<<"ð\221\202¥ð\221\202º">>) ->
    <<"ð\221\202«">>;
compose_one(<<"SÌ\207">>) -> <<"á¹ ">>;
compose_one(<<"wÌ\210">>) -> <<"áº\205">>;
compose_one(<<"ð\221\204±ð\221\204§">>) ->
    <<"ð\221\204®">>;
compose_one(<<"â\211½Ì¸">>) -> <<"â\213¡">>;
compose_one(<<"EÌ\201">>) -> <<"Ã\211">>;
compose_one(<<"á¼\201Í\202">>) -> <<"á¼\207">>;
compose_one(<<"yÌ\207">>) -> <<"áº\217">>;
compose_one(<<"UÌ\202">>) -> <<"Ã\233">>;
compose_one(<<"OÌ\206">>) -> <<"Å\216">>;
compose_one(<<"ã\201\221ã\202\231">>) ->
    <<"ã\201\222">>;
compose_one(<<"AÌ\211">>) -> <<"áº¢">>;
compose_one(<<"oÌ£">>) -> <<"á»\215">>;
compose_one(<<"Ä\223Ì\201">>) -> <<"á¸\227">>;
compose_one(<<"zÌ\202">>) -> <<"áº\221">>;
compose_one(<<"kÌ\214">>) -> <<"Ç©">>;
compose_one(<<"Î\227Ì\200">>) -> <<"á¿\212">>;
compose_one(<<"â\212\203Ì¸">>) -> <<"â\212\205">>;
compose_one(<<"Ã\230Ì\201">>) -> <<"Ç¾">>;
compose_one(<<"á¼\203Í\205">>) -> <<"á¾\203">>;
compose_one(<<"Ã\224Ì\200">>) -> <<"á»\222">>;
compose_one(<<"<Ì¸">>) -> <<"â\211®">>;
compose_one(<<"Å\214Ì\200">>) -> <<"á¹\220">>;
compose_one(<<"á½¯Í\205">>) -> <<"á¾¯">>;
compose_one(<<"OÌ\201">>) -> <<"Ã\223">>;
compose_one(<<"Ã¼Ì\214">>) -> <<"Ç\232">>;
compose_one(<<"á¼\210Ì\201">>) -> <<"á¼\214">>;
compose_one(<<"Î¹Ì\201">>) -> <<"Î¯">>;
compose_one(<<"ã\203\230ã\202\231">>) ->
    <<"ã\203\231">>;
compose_one(<<"Ã¼Ì\201">>) -> <<"Ç\230">>;
compose_one(<<"áº Ì\206">>) -> <<"áº¶">>;
compose_one(<<"tÌ£">>) -> <<"á¹­">>;
compose_one(<<"Û\201Ù\224">>) -> <<"Û\202">>;
compose_one(<<"Å«Ì\210">>) -> <<"á¹»">>;
compose_one(<<"ã\203\222ã\202\231">>) ->
    <<"ã\203\223">>;
compose_one(<<"AÌ£">>) -> <<"áº ">>;
compose_one(<<"nÌ§">>) -> <<"Å\206">>;
compose_one(<<"aÌ\212">>) -> <<"Ã¥">>;
compose_one(<<"á¼\211Ì\200">>) -> <<"á¼\213">>;
compose_one(<<"á¬\213á¬µ">>) -> <<"á¬\214">>;
compose_one(<<"hÌ\207">>) -> <<"á¸£">>;
compose_one(<<"áº Ì\202">>) -> <<"áº¬">>;
compose_one(<<"Æ Ì£">>) -> <<"á»¢">>;
compose_one(<<"Ð°Ì\206">>) -> <<"Ó\221">>;
compose_one(<<"lÌ£">>) -> <<"á¸·">>;
compose_one(<<"Î¹Ì\224">>) -> <<"á¼±">>;
compose_one(<<"ã\201\206ã\202\231">>) ->
    <<"ã\202\224">>;
compose_one(<<"Î©Í\205">>) -> <<"á¿¼">>;
compose_one(<<"mÌ\201">>) -> <<"á¸¿">>;
compose_one(<<"á¼ Í\202">>) -> <<"á¼¦">>;
compose_one(<<"Î·Í\202">>) -> <<"á¿\206">>;
compose_one(<<"Ñ\226Ì\210">>) -> <<"Ñ\227">>;
compose_one(<<"á¬\211á¬µ">>) -> <<"á¬\212">>;
compose_one(<<"á¼§Í\205">>) -> <<"á¾\227">>;
compose_one(<<"à³\212à³\225">>) -> <<"à³\213">>;
compose_one(<<"Ï\211Í\202">>) -> <<"á¿¶">>;
compose_one(<<"aÌ\201">>) -> <<"Ã¡">>;
compose_one(<<"Î·Ì\224">>) -> <<"á¼¡">>;
compose_one(<<"á¼£Í\205">>) -> <<"á¾\223">>;
compose_one(<<"Ð¸Ì\200">>) -> <<"Ñ\235">>;
compose_one(<<"UÌ\204">>) -> <<"Åª">>;
compose_one(<<"NÌ\203">>) -> <<"Ã\221">>;
compose_one(<<"ã\201\235ã\202\231">>) ->
    <<"ã\201\236">>;
compose_one(<<"Î\231Ì\201">>) -> <<"Î\212">>;
compose_one(<<"Ï\211Í\205">>) -> <<"á¿³">>;
compose_one(<<"à¯\206à®¾">>) -> <<"à¯\212">>;
compose_one(<<"á¼\214Í\205">>) -> <<"á¾\214">>;
compose_one(<<"UÌ¨">>) -> <<"Å²">>;
compose_one(<<"uÌ\233">>) -> <<"Æ°">>;
compose_one(<<"ã\202³ã\202\231">>) -> <<"ã\202´">>;
compose_one(<<"Î\227Í\205">>) -> <<"á¿\214">>;
compose_one(<<"Â¨Í\202">>) -> <<"á¿\201">>;
compose_one(<<"TÌ\207">>) -> <<"á¹ª">>;
compose_one(<<"à³\206à³\202">>) -> <<"à³\212">>;
compose_one(<<"OÌ\207">>) -> <<"È®">>;
compose_one(<<"hÌ§">>) -> <<"á¸©">>;
compose_one(<<"eÌ\201">>) -> <<"Ã©">>;
compose_one(<<"ã\203\217ã\202\231">>) ->
    <<"ã\203\220">>;
compose_one(<<"Ð\225Ì\206">>) -> <<"Ó\226">>;
compose_one(<<"á¼±Ì\200">>) -> <<"á¼³">>;
compose_one(<<"SÌ§">>) -> <<"Å\236">>;
compose_one(<<"dÌ£">>) -> <<"á¸\215">>;
compose_one(<<"NÌ±">>) -> <<"á¹\210">>;
compose_one(<<"RÌ£">>) -> <<"á¹\232">>;
compose_one(<<"â\211\215Ì¸">>) -> <<"â\211­">>;
compose_one(<<"AÌ\217">>) -> <<"È\200">>;
compose_one(<<"bÌ±">>) -> <<"á¸\207">>;
compose_one(<<"á½\211Ì\201">>) -> <<"á½\215">>;
compose_one(<<"rÌ±">>) -> <<"á¹\237">>;
compose_one(<<"â\211¼Ì¸">>) -> <<"â\213 ">>;
compose_one(<<"á»\214Ì\202">>) -> <<"á»\230">>;
compose_one(<<"Å\233Ì\207">>) -> <<"á¹¥">>;
compose_one(<<"lÌ§">>) -> <<"Ä¼">>;
compose_one(<<"RÌ\221">>) -> <<"È\222">>;
compose_one(<<"á¼¨Ì\200">>) -> <<"á¼ª">>;
compose_one(<<"CÌ\202">>) -> <<"Ä\210">>;
compose_one(<<"lÌ±">>) -> <<"á¸»">>;
compose_one(<<"â\206\224Ì¸">>) -> <<"â\206®">>;
compose_one(<<"á¼ Í\205">>) -> <<"á¾\220">>;
compose_one(<<"â\207\224Ì¸">>) -> <<"â\207\216">>;
compose_one(<<"á½\210Ì\201">>) -> <<"á½\214">>;
compose_one(<<"á½ Ì\201">>) -> <<"á½¤">>;
compose_one(<<"iÌ°">>) -> <<"á¸­">>;
compose_one(<<"â\207\220Ì¸">>) -> <<"â\207\215">>;
compose_one(<<"UÌ¤">>) -> <<"á¹²">>;
compose_one(<<"á¬¼á¬µ">>) -> <<"á¬½">>;
compose_one(<<"ã\202½ã\202\231">>) -> <<"ã\202¾">>;
compose_one(<<"á¼\202Í\205">>) -> <<"á¾\202">>;
compose_one(<<"Ã\202Ì\211">>) -> <<"áº¨">>;
compose_one(<<"Ñ\203Ì\213">>) -> <<"Ó³">>;
compose_one(<<"nÌ\203">>) -> <<"Ã±">>;
compose_one(<<"ã\203\204ã\202\231">>) ->
    <<"ã\203\205">>;
compose_one(<<"AÌ\206">>) -> <<"Ä\202">>;
compose_one(<<"Å\232Ì\207">>) -> <<"á¹¤">>;
compose_one(<<"â\211·Ì¸">>) -> <<"â\211¹">>;
compose_one(<<"IÌ\200">>) -> <<"Ã\214">>;
compose_one(<<"ã\203\225ã\202\232">>) ->
    <<"ã\203\227">>;
compose_one(<<"oÌ\213">>) -> <<"Å\221">>;
compose_one(<<"Î±Ì\204">>) -> <<"á¾±">>;
compose_one(<<"hÌ\214">>) -> <<"È\237">>;
compose_one(<<"Î\231Ì\200">>) -> <<"á¿\232">>;
compose_one(<<"oÌ\201">>) -> <<"Ã³">>;
compose_one(<<"à¯\206à¯\227">>) -> <<"à¯\214">>;
compose_one(<<"Ã\234Ì\214">>) -> <<"Ç\231">>;
compose_one(<<"uÌ¨">>) -> <<"Å³">>;
compose_one(<<"Î\237Ì\223">>) -> <<"á½\210">>;
compose_one(<<"UÌ\221">>) -> <<"È\226">>;
compose_one(<<"á½°Í\205">>) -> <<"á¾²">>;
compose_one(<<"TÌ¦">>) -> <<"È\232">>;
compose_one(<<"TÌ£">>) -> <<"á¹¬">>;
compose_one(<<"EÌ\203">>) -> <<"áº¼">>;
compose_one(<<"tÌ§">>) -> <<"Å£">>;
compose_one(<<"Î¿Ì\201">>) -> <<"Ï\214">>;
compose_one(<<"hÌ±">>) -> <<"áº\226">>;
compose_one(<<"ã\201¡ã\202\231">>) -> <<"ã\201¢">>;
compose_one(<<"à³\206à³\225">>) -> <<"à³\207">>;
compose_one(<<"á½§Í\205">>) -> <<"á¾§">>;
compose_one(<<"kÌ£">>) -> <<"á¸³">>;
compose_one(<<"â\212µÌ¸">>) -> <<"â\213­">>;
compose_one(<<"LÌ£">>) -> <<"á¸¶">>;
compose_one(<<"nÌ­">>) -> <<"á¹\213">>;
compose_one(<<"EÌ­">>) -> <<"á¸\230">>;
compose_one(<<"á¿¾Ì\200">>) -> <<"á¿\235">>;
compose_one(<<"ã\201\237ã\202\231">>) -> <<"ã\201 ">>;
compose_one(<<"Ð\230Ì\204">>) -> <<"Ó¢">>;
compose_one(<<"Ð\223Ì\201">>) -> <<"Ð\203">>;
compose_one(<<"uÌ\201">>) -> <<"Ãº">>;
compose_one(<<"ã\201¦ã\202\231">>) -> <<"ã\201§">>;
compose_one(<<"Î\227Ì\224">>) -> <<"á¼©">>;
compose_one(<<"Ï\205Ì\200">>) -> <<"á½º">>;
compose_one(<<"Ï\211Ì\223">>) -> <<"á½ ">>;
compose_one(<<"á½©Ì\200">>) -> <<"á½«">>;
compose_one(<<"ã\203\230ã\202\232">>) ->
    <<"ã\203\232">>;
compose_one(<<"á­\202á¬µ">>) -> <<"á­\203">>;
compose_one(<<"SÌ£">>) -> <<"á¹¢">>;
compose_one(<<"á¼±Ì\201">>) -> <<"á¼µ">>;
compose_one(<<"Ä\203Ì\211">>) -> <<"áº³">>;
compose_one(<<"â\211¡Ì¸">>) -> <<"â\211¢">>;
compose_one(<<"CÌ\201">>) -> <<"Ä\206">>;
compose_one(<<"DÌ£">>) -> <<"á¸\214">>;
compose_one(<<"Ã\212Ì\201">>) -> <<"áº¾">>;
compose_one(<<"Æ¯Ì\203">>) -> <<"á»®">>;
compose_one(<<"Ï\211Ì\201">>) -> <<"Ï\216">>;
compose_one(<<"á¸·Ì\204">>) -> <<"á¸¹">>;
compose_one(<<"VÌ\203">>) -> <<"á¹¼">>;
compose_one(<<"Î·Í\205">>) -> <<"á¿\203">>;
compose_one(<<"uÌ\210">>) -> <<"Ã¼">>;
compose_one(<<"UÌ\201">>) -> <<"Ã\232">>;
compose_one(<<"ð\221\215\207ð\221\214¾">>) ->
    <<"ð\221\215\213">>;
compose_one(<<"ã\203°ã\202\231">>) -> <<"ã\203¸">>;
compose_one(<<"Î±Ì\223">>) -> <<"á¼\200">>;
compose_one(<<"Î¬Í\205">>) -> <<"á¾´">>;
compose_one(<<"uÌ\200">>) -> <<"Ã¹">>;
compose_one(<<"KÌ\214">>) -> <<"Ç¨">>;
compose_one(<<"XÌ\210">>) -> <<"áº\214">>;
compose_one(<<"=Ì¸">>) -> <<"â\211 ">>;
compose_one(<<"uÌ\202">>) -> <<"Ã»">>;
compose_one(<<"à¤°à¤¼">>) -> <<"à¤±">>;
compose_one(<<"á½¦Í\205">>) -> <<"á¾¦">>;
compose_one(<<"WÌ\210">>) -> <<"áº\204">>;
compose_one(<<"uÌ\212">>) -> <<"Å¯">>;
compose_one(<<"ã\201\215ã\202\231">>) ->
    <<"ã\201\216">>;
compose_one(<<"á½\231Í\202">>) -> <<"á½\237">>;
compose_one(<<"eÌ¨">>) -> <<"Ä\231">>;
compose_one(<<"Ó©Ì\210">>) -> <<"Ó«">>;
compose_one(<<"â\212´Ì¸">>) -> <<"â\213¬">>;
compose_one(<<"OÌ¨">>) -> <<"Çª">>;
compose_one(<<"ã\201\231ã\202\231">>) ->
    <<"ã\201\232">>;
compose_one(<<"EÌ§">>) -> <<"È¨">>;
compose_one(<<"áº¡Ì\202">>) -> <<"áº­">>;
compose_one(<<"Ð°Ì\210">>) -> <<"Ó\223">>;
compose_one(<<"iÌ£">>) -> <<"á»\213">>;
compose_one(<<"ã\203\210ã\202\231">>) ->
    <<"ã\203\211">>;
compose_one(<<"MÌ\207">>) -> <<"á¹\200">>;
compose_one(<<"gÌ\202">>) -> <<"Ä\235">>;
compose_one(<<"á¼¡Í\205">>) -> <<"á¾\221">>;
compose_one(<<"hÌ®">>) -> <<"á¸«">>;
compose_one(<<"Ð§Ì\210">>) -> <<"Ó´">>;
compose_one(<<"Ã¢Ì\211">>) -> <<"áº©">>;
compose_one(<<"uÌ\204">>) -> <<"Å«">>;
compose_one(<<"á½®Í\205">>) -> <<"á¾®">>;
compose_one(<<"Æ°Ì\201">>) -> <<"á»©">>;
compose_one(<<"EÌ\206">>) -> <<"Ä\224">>;
compose_one(<<"á¼±Í\202">>) -> <<"á¼·">>;
compose_one(<<"XÌ\207">>) -> <<"áº\212">>;
compose_one(<<"Î·Ì\223">>) -> <<"á¼ ">>;
compose_one(<<"Ï\212Ì\201">>) -> <<"Î\220">>;
compose_one(<<"Ï\222Ì\210">>) -> <<"Ï\224">>;
compose_one(<<"CÌ\214">>) -> <<"Ä\214">>;
compose_one(<<"Ã¶Ì\204">>) -> <<"È«">>;
compose_one(<<"Ð\206Ì\210">>) -> <<"Ð\207">>;
compose_one(<<"â\211¤Ì¸">>) -> <<"â\211°">>;
compose_one(<<"Æ·Ì\214">>) -> <<"Ç®">>;
compose_one(<<"Ð\230Ì\200">>) -> <<"Ð\215">>;
compose_one(<<"á¼\231Ì\201">>) -> <<"á¼\235">>;
compose_one(<<"Ø§Ù\223">>) -> <<"Ø¢">>;
compose_one(<<"GÌ\214">>) -> <<"Ç¦">>;
compose_one(<<"ã\202±ã\202\231">>) -> <<"ã\202²">>;
compose_one(<<"EÌ\200">>) -> <<"Ã\210">>;
compose_one(<<"iÌ\221">>) -> <<"È\213">>;
compose_one(<<"HÌ\207">>) -> <<"á¸¢">>;
compose_one(<<"oÌ\214">>) -> <<"Ç\222">>;
compose_one(<<"á½¡Ì\200">>) -> <<"á½£">>;
compose_one(<<"á¼«Í\205">>) -> <<"á¾\233">>;
compose_one(<<"SÌ¦">>) -> <<"È\230">>;
compose_one(<<"OÌ£">>) -> <<"á»\214">>;
compose_one(<<"Ã\226Ì\204">>) -> <<"Èª">>;
compose_one(<<"Ã´Ì\203">>) -> <<"á»\227">>;
compose_one(<<"á½\231Ì\201">>) -> <<"á½\235">>;
compose_one(<<"ã\202¦ã\202\231">>) -> <<"ã\203´">>;
compose_one(<<"ã\201µã\202\232">>) -> <<"ã\201·">>;
compose_one(<<"á¼­Í\205">>) -> <<"á¾\235">>;
compose_one(<<"Ñ\203Ì\210">>) -> <<"Ó±">>;
compose_one(<<"á¼©Í\205">>) -> <<"á¾\231">>;
compose_one(<<"EÌ\210">>) -> <<"Ã\213">>;
compose_one(<<"ã\201\227ã\202\231">>) ->
    <<"ã\201\230">>;
compose_one(<<"zÌ\201">>) -> <<"Åº">>;
compose_one(<<"IÌ°">>) -> <<"á¸¬">>;
compose_one(<<"Ù\212Ù\224">>) -> <<"Ø¦">>;
compose_one(<<"Ï\222Ì\201">>) -> <<"Ï\223">>;
compose_one(<<"EÌ¨">>) -> <<"Ä\230">>;
compose_one(<<"â\212«Ì¸">>) -> <<"â\212¯">>;
compose_one(<<"aÌ\203">>) -> <<"Ã£">>;
compose_one(<<"UÌ\203">>) -> <<"Å¨">>;
compose_one(<<"Î\221Ì\204">>) -> <<"á¾¹">>;
compose_one(<<"Ã\206Ì\204">>) -> <<"Ç¢">>;
compose_one(<<"sÌ£">>) -> <<"á¹£">>;
compose_one(<<"AÌ\214">>) -> <<"Ç\215">>;
compose_one(<<"jÌ\214">>) -> <<"Ç°">>;
compose_one(<<"á¼¸Ì\201">>) -> <<"á¼¼">>;
compose_one(<<"ã\203\217ã\202\232">>) ->
    <<"ã\203\221">>;
compose_one(<<"Ä\202Ì\211">>) -> <<"áº²">>;
compose_one(<<"uÌ\217">>) -> <<"È\225">>;
compose_one(<<"UÌ­">>) -> <<"á¹¶">>;
compose_one(<<"Ã\207Ì\201">>) -> <<"á¸\210">>;
compose_one(<<"UÌ\217">>) -> <<"È\224">>;
compose_one(<<"Ã\206Ì\201">>) -> <<"Ç¼">>;
compose_one(<<"ã\203\206ã\202\231">>) ->
    <<"ã\203\207">>;
compose_one(<<"aÌ£">>) -> <<"áº¡">>;
compose_one(<<"Î¥Ì\201">>) -> <<"Î\216">>;
compose_one(<<"eÌ\204">>) -> <<"Ä\223">>;
compose_one(<<"Ã\212Ì\203">>) -> <<"á»\204">>;
compose_one(<<"TÌ\214">>) -> <<"Å¤">>;
compose_one(<<"Î\227Ì\201">>) -> <<"Î\211">>;
compose_one(<<"ð\221\226¹ð\221\226¯">>) ->
    <<"ð\221\226»">>;
compose_one(<<"â\210\203Ì¸">>) -> <<"â\210\204">>;
compose_one(<<"á¼®Í\205">>) -> <<"á¾\236">>;
compose_one(<<"bÌ£">>) -> <<"á¸\205">>;
compose_one(<<"ð\221\204²ð\221\204§">>) ->
    <<"ð\221\204¯">>;
compose_one(<<"uÌ\214">>) -> <<"Ç\224">>;
compose_one(<<"È©Ì\206">>) -> <<"á¸\235">>;
compose_one(<<"RÌ±">>) -> <<"á¹\236">>;
compose_one(<<"KÌ§">>) -> <<"Ä¶">>;
compose_one(<<"Î\221Ì\224">>) -> <<"á¼\211">>;
compose_one(<<"Ã¼Ì\204">>) -> <<"Ç\226">>;
compose_one(<<"á¹¢Ì\207">>) -> <<"á¹¨">>;
compose_one(<<"á½¨Ì\200">>) -> <<"á½ª">>;
compose_one(<<"Î\225Ì\201">>) -> <<"Î\210">>;
compose_one(<<"VÌ£">>) -> <<"á¹¾">>;
compose_one(<<"á¼\205Í\205">>) -> <<"á¾\205">>;
compose_one(<<"á½­Í\205">>) -> <<"á¾­">>;
compose_one(<<"ÐµÌ\210">>) -> <<"Ñ\221">>;
compose_one(<<"à·\231à·\237">>) -> <<"à·\236">>;
compose_one(<<"Î\231Ì\204">>) -> <<"á¿\231">>;
compose_one(<<"á¼\216Í\205">>) -> <<"á¾\216">>;
compose_one(<<"Ä\222Ì\201">>) -> <<"á¸\226">>;
compose_one(<<"dÌ\214">>) -> <<"Ä\217">>;
compose_one(<<"YÌ£">>) -> <<"á»´">>;
compose_one(<<"Ä\222Ì\200">>) -> <<"á¸\224">>;
compose_one(<<"DÌ§">>) -> <<"á¸\220">>;
compose_one(<<"Î¹Ì\210">>) -> <<"Ï\212">>;
compose_one(<<"Î±Ì\201">>) -> <<"Î¬">>;
compose_one(<<"Ñ´Ì\217">>) -> <<"Ñ¶">>;
compose_one(<<"pÌ\207">>) -> <<"á¹\227">>;
compose_one(<<"oÌ\221">>) -> <<"È\217">>;
compose_one(<<"á½\231Ì\200">>) -> <<"á½\233">>;
compose_one(<<"á¼\215Í\205">>) -> <<"á¾\215">>;
compose_one(<<"â\210¥Ì¸">>) -> <<"â\210¦">>;
compose_one(<<"wÌ\202">>) -> <<"Åµ">>;
compose_one(<<"ã\202»ã\202\231">>) -> <<"ã\202¼">>;
compose_one(<<"oÌ\206">>) -> <<"Å\217">>;
compose_one(<<"È§Ì\204">>) -> <<"Ç¡">>;
compose_one(<<"ÎµÌ\200">>) -> <<"á½²">>;
compose_one(<<"á¼¢Í\205">>) -> <<"á¾\222">>;
compose_one(<<"uÌ\211">>) -> <<"á»§">>;
compose_one(<<"uÌ\213">>) -> <<"Å±">>;
compose_one(<<"Ã¦Ì\201">>) -> <<"Ç½">>;
compose_one(<<"ã\201µã\202\231">>) -> <<"ã\201¶">>;
compose_one(<<"Î©Ì\223">>) -> <<"á½¨">>;
compose_one(<<"Î®Í\205">>) -> <<"á¿\204">>;
compose_one(<<"Å¿Ì\207">>) -> <<"áº\233">>;
compose_one(<<"WÌ\200">>) -> <<"áº\200">>;
compose_one(<<"á¿¶Í\205">>) -> <<"á¿·">>;
compose_one(<<"yÌ\210">>) -> <<"Ã¿">>;
compose_one(<<"Æ¡Ì\201">>) -> <<"á»\233">>;
compose_one(<<"iÌ\211">>) -> <<"á»\211">>;
compose_one(<<"sÌ¦">>) -> <<"È\231">>;
compose_one(<<"ã\201²ã\202\231">>) -> <<"ã\201³">>;
compose_one(<<"AÌ\204">>) -> <<"Ä\200">>;
compose_one(<<"gÌ§">>) -> <<"Ä£">>;
compose_one(<<"iÌ\206">>) -> <<"Ä­">>;
compose_one(<<"Î\221Ì\223">>) -> <<"á¼\210">>;
compose_one(<<"Ã¢Ì\200">>) -> <<"áº§">>;
compose_one(<<"Ã¯Ì\201">>) -> <<"á¸¯">>;
compose_one(<<"ÃµÌ\201">>) -> <<"á¹\215">>;
compose_one(<<"Î¹Ì\223">>) -> <<"á¼°">>;
compose_one(<<"IÌ\202">>) -> <<"Ã\216">>;
compose_one(<<"á½¡Í\202">>) -> <<"á½§">>;
compose_one(<<"tÌ­">>) -> <<"á¹±">>;
compose_one(<<"á½¨Ì\201">>) -> <<"á½¬">>;
compose_one(<<"gÌ\214">>) -> <<"Ç§">>;
compose_one(<<"tÌ±">>) -> <<"á¹¯">>;
compose_one(<<"á¿\206Í\205">>) -> <<"á¿\207">>;
compose_one(<<"Î±Í\202">>) -> <<"á¾¶">>;
compose_one(<<"á¬\205á¬µ">>) -> <<"á¬\206">>;
compose_one(<<"Ó\231Ì\210">>) -> <<"Ó\233">>;
compose_one(<<"Î©Ì\200">>) -> <<"á¿º">>;
compose_one(<<"ã\203²ã\202\231">>) -> <<"ã\203º">>;
compose_one(<<"Î\237Ì\200">>) -> <<"á¿¸">>;
compose_one(<<"sÌ\214">>) -> <<"Å¡">>;
compose_one(<<"uÌ\221">>) -> <<"È\227">>;
compose_one(<<"Æ Ì\200">>) -> <<"á»\234">>;
compose_one(<<"sÌ\202">>) -> <<"Å\235">>;
compose_one(<<"ã\201»ã\202\231">>) -> <<"ã\201¼">>;
compose_one(<<"yÌ\200">>) -> <<"á»³">>;
compose_one(<<"à¤³à¤¼">>) -> <<"à¤´">>;
compose_one(<<"BÌ\207">>) -> <<"á¸\202">>;
compose_one(<<"AÌ¨">>) -> <<"Ä\204">>;
compose_one(<<"ZÌ£">>) -> <<"áº\222">>;
compose_one(<<">Ì¸">>) -> <<"â\211¯">>;
compose_one(<<"Ã´Ì\200">>) -> <<"á»\223">>;
compose_one(<<"KÌ\201">>) -> <<"á¸°">>;
compose_one(<<"aÌ\202">>) -> <<"Ã¢">>;
compose_one(<<"ZÌ\202">>) -> <<"áº\220">>;
compose_one(<<"â\211³Ì¸">>) -> <<"â\211µ">>;
compose_one(<<"KÌ£">>) -> <<"á¸²">>;
compose_one(<<"Ã\234Ì\204">>) -> <<"Ç\225">>;
compose_one(<<"Ã¢Ì\203">>) -> <<"áº«">>;
compose_one(<<"à§\207à¦¾">>) -> <<"à§\213">>;
compose_one(<<"à®\222à¯\227">>) -> <<"à®\224">>;
compose_one(<<"Ñ\207Ì\210">>) -> <<"Óµ">>;
compose_one(<<"eÌ\206">>) -> <<"Ä\225">>;
compose_one(<<"á¼¡Ì\201">>) -> <<"á¼¥">>;
compose_one(<<"AÌ¥">>) -> <<"á¸\200">>;
compose_one(<<"NÌ§">>) -> <<"Å\205">>;
compose_one(<<"zÌ\214">>) -> <<"Å¾">>;
compose_one(<<"BÌ±">>) -> <<"á¸\206">>;
compose_one(<<"rÌ\201">>) -> <<"Å\225">>;
compose_one(<<"UÌ\206">>) -> <<"Å¬">>;
compose_one(<<"áº¹Ì\202">>) -> <<"á»\207">>;
compose_one(<<"rÌ\221">>) -> <<"È\223">>;
compose_one(<<"OÌ\200">>) -> <<"Ã\222">>;
compose_one(<<"GÌ§">>) -> <<"Ä¢">>;
compose_one(<<"á¬\207á¬µ">>) -> <<"á¬\210">>;
compose_one(<<"oÌ\210">>) -> <<"Ã¶">>;
compose_one(<<"Û\222Ù\224">>) -> <<"Û\223">>;
compose_one(<<"iÌ\201">>) -> <<"Ã­">>;
compose_one(<<"à¤¨à¤¼">>) -> <<"à¤©">>;
compose_one(<<"ZÌ\214">>) -> <<"Å½">>;
compose_one(<<"WÌ\201">>) -> <<"áº\202">>;
compose_one(<<"YÌ\211">>) -> <<"á»¶">>;
compose_one(<<"á¹\232Ì\204">>) -> <<"á¹\234">>;
compose_one(<<"OÌ\203">>) -> <<"Ã\225">>;
compose_one(<<"UÌ£">>) -> <<"á»¤">>;
compose_one(<<"HÌ\202">>) -> <<"Ä¤">>;
compose_one(<<"á¼\200Í\202">>) -> <<"á¼\206">>;
compose_one(<<"ã\201¤ã\202\231">>) -> <<"ã\201¥">>;
compose_one(<<"JÌ\202">>) -> <<"Ä´">>;
compose_one(<<"DÌ\207">>) -> <<"á¸\212">>;
compose_one(<<"fÌ\207">>) -> <<"á¸\237">>;
compose_one(<<"á\200¥á\200®">>) -> <<"á\200¦">>;
compose_one(<<"DÌ±">>) -> <<"á¸\216">>;
compose_one(<<"â\212\221Ì¸">>) -> <<"â\213¢">>;
compose_one(<<"ã\202¹ã\202\231">>) -> <<"ã\202º">>;
compose_one(<<"HÌ\214">>) -> <<"È\236">>;
compose_one(<<"Å Ì\207">>) -> <<"á¹¦">>;
compose_one(<<"YÌ\202">>) -> <<"Å¶">>;
compose_one(<<"à²¿à³\225">>) -> <<"à³\200">>;
compose_one(<<"iÌ\204">>) -> <<"Ä«">>;
compose_one(<<"aÌ¥">>) -> <<"á¸\201">>;
compose_one(<<"Î©Ì\201">>) -> <<"Î\217">>;
compose_one(<<"Î\221Í\205">>) -> <<"á¾¼">>;
compose_one(<<"NÌ\207">>) -> <<"á¹\204">>;
compose_one(<<"ÃªÌ\201">>) -> <<"áº¿">>;
compose_one(<<"iÌ\203">>) -> <<"Ä©">>;
compose_one(<<"ÃµÌ\204">>) -> <<"È­">>;
compose_one(<<"Ç«Ì\204">>) -> <<"Ç­">>;
compose_one(<<"nÌ\207">>) -> <<"á¹\205">>;
compose_one(<<"iÌ\214">>) -> <<"Ç\220">>;
compose_one(<<"á½«Í\205">>) -> <<"á¾«">>;
compose_one(<<"â\211»Ì¸">>) -> <<"â\212\201">>;
compose_one(<<"ZÌ±">>) -> <<"áº\224">>;
compose_one(<<"Ã´Ì\201">>) -> <<"á»\221">>;
compose_one(<<"Ñ\215Ì\210">>) -> <<"Ó­">>;
compose_one(<<"LÌ­">>) -> <<"á¸¼">>;
compose_one(<<"Ð­Ì\210">>) -> <<"Ó¬">>;
compose_one(<<"EÌ\204">>) -> <<"Ä\222">>;
compose_one(<<"yÌ£">>) -> <<"á»µ">>;
compose_one(<<"à±\206à±\226">>) -> <<"à±\210">>;
compose_one(<<"DÌ­">>) -> <<"á¸\222">>;
compose_one(<<"Î¹Í\202">>) -> <<"á¿\226">>;
compose_one(<<"Ä\203Ì\201">>) -> <<"áº¯">>;
compose_one(<<"á¼¹Ì\200">>) -> <<"á¼»">>;
compose_one(<<"MÌ\201">>) -> <<"á¸¾">>;
compose_one(<<"vÌ£">>) -> <<"á¹¿">>;
compose_one(<<"à³\206à³\226">>) -> <<"à³\210">>;
compose_one(<<"á¼\204Í\205">>) -> <<"á¾\204">>;
compose_one(<<"EÌ£">>) -> <<"áº¸">>;
compose_one(<<"zÌ£">>) -> <<"áº\223">>;
compose_one(<<"Ð¶Ì\210">>) -> <<"Ó\235">>;
compose_one(<<"UÌ\210">>) -> <<"Ã\234">>;
compose_one(<<"uÌ£">>) -> <<"á»¥">>;
compose_one(<<"ÎµÌ\223">>) -> <<"á¼\220">>;
compose_one(<<"ÇªÌ\204">>) -> <<"Ç¬">>;
compose_one(<<"Î\225Ì\223">>) -> <<"á¼\230">>;
compose_one(<<"aÌ\207">>) -> <<"È§">>;
compose_one(<<"Ã\225Ì\204">>) -> <<"È¬">>;
compose_one(<<"nÌ±">>) -> <<"á¹\211">>;
compose_one(<<"Ð\225Ì\200">>) -> <<"Ð\200">>;
compose_one(<<"Î¥Ì\204">>) -> <<"á¿©">>;
compose_one(<<"yÌ\202">>) -> <<"Å·">>;
compose_one(<<"OÌ\213">>) -> <<"Å\220">>;
compose_one(<<"á¼\207Í\205">>) -> <<"á¾\207">>;
compose_one(<<"â\210\210Ì¸">>) -> <<"â\210\211">>;
compose_one(<<"IÌ\221">>) -> <<"È\212">>;
compose_one(<<"Ï\205Ì\224">>) -> <<"á½\221">>;
compose_one(<<"Â¨Ì\201">>) -> <<"Î\205">>;
compose_one(<<"ð\221\226¸ð\221\226¯">>) ->
    <<"ð\221\226º">>;
compose_one(<<"KÌ±">>) -> <<"á¸´">>;
compose_one(<<"Ð\220Ì\206">>) -> <<"Ó\220">>;
compose_one(<<"eÌ­">>) -> <<"á¸\231">>;
compose_one(<<"TÌ­">>) -> <<"á¹°">>;
compose_one(<<"tÌ\214">>) -> <<"Å¥">>;
compose_one(<<"Ï\205Ì\210">>) -> <<"Ï\213">>;
compose_one(<<"Î\221Ì\200">>) -> <<"á¾º">>;
compose_one(<<"UÌ\212">>) -> <<"Å®">>;
compose_one(<<"Ð³Ì\201">>) -> <<"Ñ\223">>;
compose_one(<<"FÌ\207">>) -> <<"á¸\236">>;
compose_one(<<"Æ¡Ì\200">>) -> <<"á»\235">>;
compose_one(<<"NÌ\201">>) -> <<"Å\203">>;
compose_one(<<"YÌ\200">>) -> <<"á»²">>;
compose_one(<<"Î·Ì\200">>) -> <<"á½´">>;
compose_one(<<"SÌ\214">>) -> <<"Å ">>;
compose_one(<<"á¼\231Ì\200">>) -> <<"á¼\233">>;
compose_one(<<"Ã´Ì\211">>) -> <<"á»\225">>;
compose_one(<<"á»\215Ì\202">>) -> <<"á»\231">>;
compose_one(<<"Ï\213Ì\201">>) -> <<"Î°">>;
compose_one(<<"Ð¸Ì\206">>) -> <<"Ð¹">>;
compose_one(<<"GÌ\202">>) -> <<"Ä\234">>;
compose_one(<<"AÌ\212">>) -> <<"Ã\205">>;
compose_one(<<"Î±Ì\224">>) -> <<"á¼\201">>;
compose_one(<<"zÌ±">>) -> <<"áº\225">>;
compose_one(<<"â\211\205Ì¸">>) -> <<"â\211\207">>;
compose_one(<<"nÌ\214">>) -> <<"Å\210">>;
compose_one(<<"á½\201Ì\201">>) -> <<"á½\205">>;
compose_one(<<"aÌ\210">>) -> <<"Ã¤">>;
compose_one(<<"Î\231Ì\223">>) -> <<"á¼¸">>;
compose_one(<<"Ð\232Ì\201">>) -> <<"Ð\214">>;
compose_one(<<"rÌ\207">>) -> <<"á¹\231">>;
compose_one(<<"á¼\200Í\205">>) -> <<"á¾\200">>;
compose_one(<<"eÌ\221">>) -> <<"È\207">>;
compose_one(<<"OÌ\214">>) -> <<"Ç\221">>;
compose_one(<<"â\211¶Ì¸">>) -> <<"â\211¸">>;
compose_one(<<"TÌ±">>) -> <<"á¹®">>;
compose_one(<<"á¼\206Í\205">>) -> <<"á¾\206">>;
compose_one(<<"â\212\202Ì¸">>) -> <<"â\212\204">>;
compose_one(<<"xÌ\207">>) -> <<"áº\213">>;
compose_one(<<"á½\201Ì\200">>) -> <<"á½\203">>;
compose_one(<<"â\212¢Ì¸">>) -> <<"â\212¬">>;
compose_one(<<"HÌ§">>) -> <<"á¸¨">>;
compose_one(<<"á½\220Ì\200">>) -> <<"á½\222">>;
compose_one(<<"Æ¯Ì£">>) -> <<"á»°">>;
compose_one(<<"yÌ\211">>) -> <<"á»·">>;
compose_one(<<"kÌ\201">>) -> <<"á¸±">>;
compose_one(<<"ã\201¸ã\202\232">>) -> <<"ã\201º">>;
compose_one(<<"aÌ\206">>) -> <<"Ä\203">>;
compose_one(<<"ã\202¿ã\202\231">>) -> <<"ã\203\200">>;
compose_one(<<"OÌ\217">>) -> <<"È\214">>;
compose_one(<<"á½©Í\205">>) -> <<"á¾©">>;
compose_one(<<"nÌ\200">>) -> <<"Ç¹">>;
compose_one(<<"iÌ\217">>) -> <<"È\211">>;
compose_one(<<"aÌ\204">>) -> <<"Ä\201">>;
compose_one(<<"Î¥Ì\206">>) -> <<"á¿¨">>;
compose_one(<<"à·\234à·\212">>) -> <<"à·\235">>;
compose_one(<<"RÌ§">>) -> <<"Å\226">>;
compose_one(<<"à­\207à­\227">>) -> <<"à­\214">>;
compose_one(<<"Ï\205Í\202">>) -> <<"á¿¦">>;
compose_one(<<"YÌ\207">>) -> <<"áº\216">>;
compose_one(<<"á¼\211Í\202">>) -> <<"á¼\217">>;
compose_one(<<"Ï\205Ì\204">>) -> <<"á¿¡">>;
compose_one(<<"á½\221Í\202">>) -> <<"á½\227">>;
compose_one(<<"Æ Ì\203">>) -> <<"á» ">>;
compose_one(<<"NÌ£">>) -> <<"á¹\206">>;
compose_one(<<"à§\207à§\227">>) -> <<"à§\214">>;
compose_one(<<"á¸¶Ì\204">>) -> <<"á¸¸">>;
compose_one(<<"ã\201¯ã\202\231">>) -> <<"ã\201°">>;
compose_one(<<"á¼\201Ì\200">>) -> <<"á¼\203">>;
compose_one(<<"Ã¥Ì\201">>) -> <<"Ç»">>;
compose_one(<<"Å¡Ì\207">>) -> <<"á¹§">>;
compose_one(<<"lÌ\214">>) -> <<"Ä¾">>;
compose_one(<<"Ï\201Ì\224">>) -> <<"á¿¥">>;
compose_one(<<"Å¨Ì\201">>) -> <<"á¹¸">>;
compose_one(<<"Ã¦Ì\204">>) -> <<"Ç£">>;
compose_one(<<"EÌ\207">>) -> <<"Ä\226">>;
compose_one(<<"mÌ£">>) -> <<"á¹\203">>;
compose_one(<<"kÌ§">>) -> <<"Ä·">>;
compose_one(<<"á½¼Í\205">>) -> <<"á¿²">>;
compose_one(<<"mÌ\207">>) -> <<"á¹\201">>;
compose_one(<<"eÌ£">>) -> <<"áº¹">>;
compose_one(<<"á¼\217Í\205">>) -> <<"á¾\217">>;
compose_one(<<"aÌ¨">>) -> <<"Ä\205">>;
compose_one(<<"Ð\220Ì\210">>) -> <<"Ó\222">>;
compose_one(<<"ã\202«ã\202\231">>) -> <<"ã\202¬">>;
compose_one(<<"AÌ\207">>) -> <<"È¦">>;
compose_one(<<"á¼\220Ì\200">>) -> <<"á¼\222">>;
compose_one(<<"NÌ\200">>) -> <<"Ç¸">>;
compose_one(<<"AÌ\221">>) -> <<"È\202">>;
compose_one(<<"ã\203\222ã\202\232">>) ->
    <<"ã\203\224">>;
compose_one(<<"EÌ\217">>) -> <<"È\204">>;
compose_one(<<"jÌ\202">>) -> <<"Äµ">>;
compose_one(<<"eÌ\202">>) -> <<"Ãª">>;
compose_one(_E) -> nil.

normalize(Estring@1, nfd)
    when erlang:is_binary(Estring@1) ->
    normalize_nfd(Estring@1, <<>>);
normalize(Estring@1, nfc)
    when erlang:is_binary(Estring@1) ->
    normalize_nfc(Estring@1, <<>>).

normalize_nfc(<<>>, Eacc@1) -> Eacc@1;
normalize_nfc(<<Ecp@1/utf8, Erest@1/binary>>, Eacc@1)
    when erlang:is_integer(Ecp@1) andalso
	   Ecp@1 >= 44032 andalso Ecp@1 =< 55203 ->
    normalize_nfc(Erest@1,
		  <<Eacc@1/binary, <<Ecp@1/utf8>>/binary>>);
normalize_nfc(Ebinary@1, Eacc@1) ->
    {En@1, Erest@1} =
	'Elixir.String.Unicode':next_grapheme_size(Ebinary@1),
    Epart@1 = binary:part(Ebinary@1, 0, En@1),
    case En@1 of
      1 ->
	  normalize_nfc(Erest@1,
			<<Eacc@1/binary, Epart@1/binary>>);
      _E ->
	  normalize_nfc(Erest@1,
			<<Eacc@1/binary,
			  (compose(normalize_nfd(Epart@1, <<>>)))/binary>>)
    end.

normalize_nfd(<<>>, Eacc@1) -> Eacc@1;
normalize_nfd(<<Ecp@1/utf8, Erest@1/binary>>, Eacc@1)
    when erlang:is_integer(Ecp@1) andalso
	   Ecp@1 >= 44032 andalso Ecp@1 =< 55203 ->
    {Esyllable_index@1, Et_count@1, En_count@1} = {Ecp@1 -
						     44032,
						   28, 588},
    Elead@1 = 4352 + Esyllable_index@1 div En_count@1,
    Evowel@1 = 4449 +
		 Esyllable_index@1 rem En_count@1 div Et_count@1,
    Etrail@1 = 4519 + Esyllable_index@1 rem Et_count@1,
    Ebinary@1 = case Etrail@1 == 4519 of
		  false -> <<Elead@1/utf8, Evowel@1/utf8, Etrail@1/utf8>>;
		  true -> <<Elead@1/utf8, Evowel@1/utf8>>
		end,
    normalize_nfd(Erest@1,
		  <<Eacc@1/binary, Ebinary@1/binary>>);
normalize_nfd(Ebinary@1, Eacc@1) ->
    {En@1, Erest@1} =
	'Elixir.String.Unicode':next_grapheme_size(Ebinary@1),
    Epart@1 = binary:part(Ebinary@1, 0, En@1),
    case En@1 of
      1 ->
	  normalize_nfd(Erest@1,
			<<Eacc@1/binary, Epart@1/binary>>);
      _E ->
	  normalize_nfd(Erest@1,
			<<Eacc@1/binary,
			  (canonical_order(Epart@1, []))/binary>>)
    end.