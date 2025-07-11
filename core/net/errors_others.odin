#+build !darwin
#+build !linux
#+build !freebsd
#+build !windows
package net

@(private="file", thread_local)
_last_error: i32

_last_platform_error :: proc() -> i32 {
	return _last_error
}

_last_platform_error_string :: proc() -> string {
	return ""
}

_set_last_platform_error :: proc(err: i32) {
	_last_error = err
}

Parse_Endpoint_Error :: enum u32 {
	None          = 0,
	Bad_Port      = 1,
	Bad_Address,
	Bad_Hostname,
}