package asheb.func {
	import flash.display.Sprite;
	import flash.events.Event;


	public function later(f:Function):void {
		const s:Sprite = new Sprite
		s.addEventListener(Event.ENTER_FRAME, h)

		var i:int = 0
		function h(e:Event):void {
			if (i++ < 1) return

			s.removeEventListener(Event.ENTER_FRAME, h)
			f()
		}
	}
}
