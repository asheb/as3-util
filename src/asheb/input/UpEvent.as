package asheb.input {
	import asheb.func.array.contains;

	import flash.events.Event;


	public class UpEvent extends Event {

		private var e:Event
		public function UpEvent(e:Event) {
			this.e = e
			super(e.type, e.bubbles, e.cancelable)
		}

		public function doneOn(...rest):Boolean {
			var c:* = e.target
			do {
				if (contains(rest, c)) return true
				c = c.parent
			}
			while (c)

			return false
		}

	}
}
