package asheb.view {


	public class Triangle extends View {


		public function Triangle(wh:int, filled:Boolean = false, a:Number = 1, c:int = white) {
			if (filled) graphics.beginFill(c, a)
			else graphics.lineStyle(1, c, a)

			graphics.moveTo(wh, 0)
			graphics.lineTo(wh, wh)
			graphics.lineTo(0, wh/2)
			graphics.lineTo(wh, 0)

			if (filled) graphics.endFill()
		}
	}
}
