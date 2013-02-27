package asheb.func.array {


	public function mapProp(a:*, prop:String):Array {
		const re:Array = []
		for each (var o:* in a)
			re.push(o[prop])
		return re
	}
}
