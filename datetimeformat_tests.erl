-module (datetimeformat_tests).
-include_lib("$ERL_HOME/lib/eunit-2.1.2/include/eunit.hrl").

datetime_format_with_valid_tuple_structure_and_parameter_test() ->
	?assert("2009-6-30 15:25:23" =:= datetimeformat:format({{2009,6,30},{15,25,23}})),
	io:format("Test passed\n")
.

datetime_format_with_invalid_tuple_structure_as_parameter_test() ->
	?assert(invalid =:= datetimeformat:format({{2009},{10}})),
	io:format("Test passed\n")
.
