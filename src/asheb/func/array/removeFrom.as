package asheb.func.array {


	public function removeFrom(a:Array, o:*):void {
		const i:int = a.indexOf(o)
		if (i >= 0) a.splice(i, 1)
	}
}
