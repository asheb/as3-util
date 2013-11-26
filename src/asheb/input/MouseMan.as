package asheb.input {
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;

	import org.osflash.signals.Signal;


	// handles mouse up events
	public class MouseMan {

		public static function init(stage:Stage):void {
			stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp)
		}

		private static function onMouseUp(e:Event):void {
			mouseUp.dispatch(new UpEvent(e))
		}

		//
		public static const mouseUp:Signal = new Signal(UpEvent)

	}
}
