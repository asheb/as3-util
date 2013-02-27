package asheb.func.string {


	public function crop(len:int, text:String, el:Boolean=true):String {
		return !text ? null :
			(text.length <= len) ? text :
			(el ? text.substr(0, len - 2) + "..." : text.substr(0, len))
	}
}
