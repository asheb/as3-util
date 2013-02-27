package asheb.model.abstract {
	import asheb.model.faces.Model;
	import asheb.model.faces.ObservableList;


	public class ListBinding implements ObservableList {

		private var from:Model
		private var f:Function
		public function ListBinding(from:Model, f:Function) {
			this.from = from
			this.f = f
		}
		//

		public function get values():Array { return f() }
		public function listen(f:Function, now:Boolean=true):void { from.listen(f, now) }
	}
}
