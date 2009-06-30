-module (ipformat).
-include_lib("/Program Files/erl5.7.1/lib/eunit-2.1/include/eunit.hrl").
-export ([format/1]).

format(IpInTuple) -> 
	case IpInTuple of
		[{{A,B,C,D},_}] -> lists:flatten(io_lib:format("~p.~p.~p.~p",[A,B,C,D]));
		_ -> invalid
	end
.

format_invalid_ip_param1_test() -> 
	? assert(invalid =:= format([{127}]))
.

format_invalid_ip_param2_test() -> 
	? assert(invalid =:= format("127"))
.

format_valid_ip_test() -> 
	?assert("127.0.0.1" =:= format([{{127,0,0,1},8080}]))
.
