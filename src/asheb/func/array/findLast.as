package asheb.func.array {


	public function findLast(a:Array, p:Function):* {
		for (var i:int = a.length - 1; i >= 0; i--)
			if (p(a[i])) return a[i]
		return null
	}
}
