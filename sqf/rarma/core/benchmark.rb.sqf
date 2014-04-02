rarma_benchmark = {
private ["_iterations"]
_iterations = DEFAULT_PARAM(0, 10000)
_counter = 0
_arrays = ["new", []] call Array
_start = (time )
waitUntil {

_array = ["new", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]] call Array
(["<<", _array] call _arrays)
_counter = (_counter + 1)
((_counter < _iterations))

}

_end = (time )
(hint (format["%1 array with 10 elements took %2 seconds", _iterations, (_end - _start)]))
}
t = (["new", [{

_thread = DEFAULT_PARAM(0, nil)

([5000] call rarma_benchmark)

waitUntil {

(hint (format["%1 running...", (["to_s"] call _thread)]))
(sleep 0.5)
(true or (["terminate"] call _thread))

}


}]] call Thread)
(sleep 10)
(["terminate!"] call t)
(["destroy"] call t)
if (true) then {



} else {

(hint "foo")

}

testh = ["new", []] call Hash
(["[]=", ["foo"]] call testh)
(["[]=", ["bar"]] call (["get", "foo"] call testh))
(hint (["get", "bar"] call (["get", "foo"] call testh)))