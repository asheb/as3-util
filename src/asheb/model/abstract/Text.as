package asheb.model.abstract {
	import asheb.model.faces.Textual;


	public class Text extends ModelBase implements Textual {

		private var val:String

		public function get textual():String { return val }
		public function set textual(v:String):void {
			val = v
			changed()
		}
	}
}
