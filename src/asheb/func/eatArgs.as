package asheb.func {

	public function eatArgs(f:Function):Function {
		return f != null ? function(...rest):void { f() } : null
	}
}
