package asheb.parts.view {
	import asheb.func.eatArgs;
	import asheb.parts.ctl.StatePicCtl;
	import asheb.parts.view.asset.Asset;
	import asheb.view.PlainRect;
	import asheb.view.View;


	public class Button extends View {

		protected var pic:StatePic
		protected var hot:PlainRect

		public function Button(a:Asset, ctl:Function = null, w:int = 0) {
			put(pic = a.create() as StatePic)
			put(hot = new PlainRect(w ? w : a.w, a.h, 0, 0))

			createCtl()
			if (ctl != null) hot.signals.click.add(eatArgs(ctl))
		}

		//
		protected function createCtl():void {
			new StatePicCtl(hot, Vector.<StatePic>([pic]))
		}

	}
}
