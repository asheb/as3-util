package asheb.model.abstract {
	import asheb.model.faces.ObservableList;


	public class StaticList implements ObservableList {

		private var val:Array
		public function StaticList(values:Array) { val = values }

		public function listen(f:Function, now:Boolean=true):void { if (now) f() }
		public function get values():Array { return val }
	}
}
