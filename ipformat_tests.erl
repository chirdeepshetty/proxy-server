-module (ipformat_tests).
-include_lib("$ERL_HOME/lib/eunit-2.1.2/include/eunit.hrl").

ip_format_with_a_tuple_but_with_invalid_tuple_structure_test() -> 
	? assert(invalid =:= ipformat:format([{127}])),
	io:format("Test passed\n")
.

ip_format_without_a_tuple_but_some_value_test() -> 
	? assert(invalid =:= ipformat:format("127")),
	io:format("Test passed\n")
.

ip_format_with_valid_tuple_structure_as_parameter_test() -> 
	?assert("127.0.0.1" =:= ipformat:format([{{127,0,0,1},8080}])),
	io:format("Test passed\n")
.
