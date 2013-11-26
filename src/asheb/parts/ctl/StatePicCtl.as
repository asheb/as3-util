package asheb.parts.ctl {
	import asheb.input.MouseMan;
	import asheb.parts.view.StatePic;
	import asheb.view.View;

	import flash.events.Event;


	public class StatePicCtl {

		protected var downed:Boolean = false
		private var views:Vector.<StatePic>

		public function StatePicCtl(hot:View, views:Vector.<StatePic>) {
			this.views = views

			hot.signals.mouseOver.add(over)
			hot.signals.mouseOut.add(out)
			hot.signals.mouseDown.add(down)
			hot.signals.mouseUp.add(up)
		}


		protected function over(e:Event):void {
			if (downed) pressed()
			else hovered()
		}

		protected function out(e:Event):void {
			initial()
		}

		protected function down(e:Event):void {
			downed = true
			pressed()

			MouseMan.mouseUp.addOnce(function(e:Event):void { downed = false })
		}

		protected function up(e:Event):void {
			hovered()
		}


		//
		protected function initial():void { for each (var vu:StatePic in views) vu.initial() }
		protected function hovered():void { for each (var vu:StatePic in views) vu.hovered() }
		protected function pressed():void { for each (var vu:StatePic in views) vu.pressed() }

	}
}
