package asheb.model.abstract {


	public class Bool extends ModelBase {

		private var val:Boolean = false
		public function Bool(b:Boolean = false) { val = b }

		public function get value():Boolean { return val }
		public function set value(v:Boolean):void {
			val = v
			changed()
		}

		//
		public function toggle():void { value = !value }

	}
}
