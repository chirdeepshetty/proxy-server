-module (ipformat_tests).
-include_lib("/Program Files/erl5.7.1/lib/eunit-2.1/include/eunit.hrl").

format_invalid_ip_param1_test() -> 
	? assert(invalid =:= ipformat:format([{127}]))
.

format_invalid_ip_param2_test() -> 
	? assert(invalid =:= ipformat:format("127"))
.

format_valid_ip_test() -> 
	?assert("127.0.0.1" =:= ipformat:format([{{127,0,0,1},8080}]))
.
