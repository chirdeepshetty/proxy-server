-module (systeminfo).
-export [(getenv/1)].

getenv(Variable) ->
	case os:getenv(Variable) of
		false -> "Undefined";
		Val -> Val
	end
.