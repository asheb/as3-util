package asheb.func.array {


	public function mapStrProp(a:*, prop:String):Vector.<String> {
		const re:Vector.<String> = new Vector.<String>
		for each (var o:* in a)
			re.push(o[prop])
		return re
	}
}
