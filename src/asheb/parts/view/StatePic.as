package asheb.parts.view {
	import asheb.view.View;

	import flash.display.DisplayObject;


	public class StatePic extends View {

		private var ini:DisplayObject
		private var hov:DisplayObject
		private var pre:DisplayObject
		private var dis:DisplayObject

		public function StatePic(
				initial:DisplayObject,
				hovered:DisplayObject,
				pressed:DisplayObject,
				disabled:DisplayObject) {

			put(ini = initial)
			put(hov = hovered).visible = false
			put(pre = pressed).visible = false
			put(dis = disabled).visible = false
		}

		//


		public function initial():void {
			ini.visible = true
			hov.visible = false
			pre.visible = false
		}

		public function hovered():void {
			ini.visible = false
			hov.visible = true
			pre.visible = false
		}

		public function pressed():void {
			ini.visible = false
			hov.visible = false
			pre.visible = true
		}

	}
}
