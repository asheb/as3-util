package asheb.func.array {


	public function findBy(prop:String, what:*, a:*):* {
		for each (var o:* in a)
			if (o[prop] == what) return o
		return null
	}
}
