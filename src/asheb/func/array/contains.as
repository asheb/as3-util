package asheb.func.array {


	public function contains(a:*, o:*):Boolean {
		for each (var it:* in a)
			if (it == o) return true
		return false
	}
}
