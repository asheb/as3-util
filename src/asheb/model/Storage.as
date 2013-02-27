package asheb.model {
	import flash.net.SharedObject;


	public class Storage {

		private static var so:SharedObject
		public static function init(id:String):void {
			if (so) throw new Error("the storage had already been initialized")
			so = SharedObject.getLocal(id)
		}

		//

		public static function store(key:String, val:*):void {
			so.data[key] = val
			so.flush()
		}

		public static function load(key:String):* {
			return so.data[key]
		}

	}
}
