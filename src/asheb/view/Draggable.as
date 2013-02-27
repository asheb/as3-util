package asheb.view {
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	import org.osflash.signals.Signal;


	public class Draggable extends GraphicView {

		protected const dragging:Signal = new Signal(Point)

		public function Draggable() {
			buttonMode = true
			mouseChildren = false
			//

			signals.mouseDown.add(function (e:Event):void {
				stage.addEventListener(MouseEvent.MOUSE_MOVE, move)
				stage.addEventListener(MouseEvent.MOUSE_UP, up)
			})

			function up(e:Event):void {
				stage.removeEventListener(MouseEvent.MOUSE_UP, up)
				stage.removeEventListener(MouseEvent.MOUSE_MOVE, move)
			}

			function move(e:MouseEvent):void {
				const p:Point = parent.globalToLocal(new Point(e.stageX, e.stageY))
				dragging.dispatch(p)
			}
		}



		//
		private const moved:Signal = new Signal
		public function listenMove(f:Function):Draggable { moved.add(f); return this }
		override public function set x(x:Number):void { super.x = x; moved.dispatch() }
		override public function set y(y:Number):void { super.y = y; moved.dispatch() }

	}
}
