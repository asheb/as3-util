package asheb.func.string {

	public function endsWith(s:String, postfix:String):Boolean {
		return s && s.substr(s.length - postfix.length, postfix.length) == postfix
	}
}
