-module (ipformat).
-export ([format/1]).

format(IpInTuple) -> 
	case IpInTuple of
		[{{A,B,C,D},_}] -> lists:flatten(io_lib:format("~p.~p.~p.~p",[A,B,C,D]));
		_ -> invalid
	end
.
