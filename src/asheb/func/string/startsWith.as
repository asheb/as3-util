package asheb.func.string {

	public function startsWith(s:String, prefix:String):Boolean {
		return s && s.substr(0, prefix.length) == prefix
	}
}
