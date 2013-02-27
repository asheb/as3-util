package asheb.view {
	import flash.display.DisplayObject;
	import flash.geom.Point;

	import org.osflash.signals.natives.base.SignalMovieClip;


	public class View extends SignalMovieClip {


		public function put(x:*, y:int = 0, c:DisplayObject = null, v:Object = null):DisplayObject {
			if (x is DisplayObject)
				c = x
			else {
				c.x = x
				c.y = y
				if (v is Boolean)
					c.visible = v
			}
			addChild(c)
			return c
		}

		protected function clear():void {
			while (numChildren) removeChildAt(0)
			graphics.clear()
		}

		//

		public function putAtop(x:*, y:int = 0, c:DisplayObject = null):DisplayObject {
			c = put(x, y, c)

			const p:Point = localToGlobal(new Point(c.x, c.y))
			c.x = p.x
			c.y = p.y

			stage.addChild(c)
			return c
		}

		protected function get here():View { //> return position|point (where)
			return this
		}

		// for debugging
		protected function drawPivot():void {
			put(new PlainRect(10, 1))
			put(new PlainRect(1, 10))
		}





		//
		protected static const white:int = 0xffffff
		protected static const black:int = 0x000000
		protected static const red:int   = 0xff0000




	}
}
