package asheb.view.util {
	import asheb.view.PlainRect;

	import flash.events.Event;


	// anti-glitches hack
	public class Redrawer extends PlainRect {

		public function Redrawer(w:int, h:int, margin:int = 0, visible:Boolean = false) {
			super(w, h, 0, visible ? .2 : 0, false, margin)
			signals.enterFrame.add(frameEntered)
		}

		private function frameEntered(e:Event):void {
			alpha = 1 - alpha
		}

	}
}
