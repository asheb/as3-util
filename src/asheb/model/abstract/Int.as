package asheb.model.abstract {
	import asheb.model.faces.Textual;


	public class Int extends ModelBase implements Textual {

		private var val:int = 0

		public function get value():int { return val }
		public function set value(v:int):void {
			val = v
			changed()
		}


		public function get textual():String { return val.toString() }
		public function set textual(v:String):void { val = parseInt(v) }

	}
}
