-module (datetimeformat).
-export ([format/1]).

format(DatetimeInTuple) ->
	case DatetimeInTuple of
		{{Year,Month,Date},{Hour,Minute,Second}} -> 
			lists:flatten(io_lib:format("~p-~p-~p ~p:~p:~p",[Year,Month,Date,Hour,Minute,Second]));
		_ -> invalid
	end
.