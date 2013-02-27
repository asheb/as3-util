package asheb.view {


	public class PlainRect extends View {

		public function PlainRect(w:int, h:int, color:uint = 0, alpha:Number = 1, hot:Boolean = true, margin:int = 0) {
			graphics.beginFill(color, alpha)
			graphics.drawRect(-margin, -margin, w +margin*2, h +margin*2)
			graphics.endFill()

			mouseEnabled = hot
		}

	}
}
