package asheb.model.abstract {
	import asheb.model.Storage;
	import asheb.model.faces.Model;

	import org.osflash.signals.Signal;


	public class ModelBase implements Model {

		private const signal:Signal = new Signal
		protected function changed():void { signal.dispatch() }

		public function listen(f:Function, now:Boolean=true):void {
			signal.add(f)
			if (now) f()
		}
		public function unlisten(f:Function):void { signal.remove(f) }


		//
		private var storingKey:String
		private var initializer:Function
		protected function initStoring(key:String, read:Function):void {
			storingKey = key
			initializer = read

			const o:Object = Storage.load(key)
			if (o) read(o)

			listen(store)
		}
		public function get forStoring():Object { return this }
		protected function store():void { Storage.store(storingKey, forStoring) }

		public function initFrom(o:Object):void {
			initializer(o)
		}

	}
}
