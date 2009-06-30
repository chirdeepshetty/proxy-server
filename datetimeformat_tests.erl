-module (datetimeformat_tests).
-include_lib("/Program Files/erl5.7.1/lib/eunit-2.1/include/eunit.hrl").

formatdatetimevalid_test() ->
	?assert("2009-6-30 15:25:23" =:= datetimeformat:format({{2009,6,30},{15,25,23}}))
.

formatdatetimeinvalid1_test() ->
	?assert(invalid =:= datetimeformat:format({{2009},{10}}))
.
