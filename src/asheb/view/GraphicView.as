package asheb.view {


	public class GraphicView extends View {

		protected function erase():void {
			graphics.clear()
		}

		protected function rect(x:int, y:int, w:int, h:int, c:int, a:Number=1):void {
			graphics.beginFill(c, a)
			graphics.drawRect(x, y, w, h)
		}

		protected function line(x1:int, y1:int, x2:int, y2:int, c:int, w:int=1):void {
			graphics.moveTo(x1, y1)
			graphics.lineStyle(w, c)
			graphics.lineTo(x2, y2)
		}

		protected function hot(x:int, y:int, w:int, h:int):void {
			rect(x, y, w, h, white, 0)
		}

		//



	}
}

