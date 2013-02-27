package asheb.func {


	public function traced(text:String, f:Function):Function {
		return function():void {
			trace(text)
			f()
		}
	}
}
