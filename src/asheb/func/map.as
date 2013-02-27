package asheb.func {


	public function map(a:*, f:Function):Array {
		const ret:Array = new Array
		for each (var it:* in a)
			ret.push(f(it))
		return ret
	}
}
