package asheb.view.util {
	import asheb.view.Button;
	import asheb.view.Label;
	import asheb.view.LabeledButton;

	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;


	public class Style {

		private var f:String
		private var s:int
		private var c:int
		private var b:Boolean
		private var a:String
		public function Style(font:String, size:int, color:int = 0, bold:Boolean = false, align:String = "center") {
			f = font
			s = size
			c = color
			b = bold
			a = align
		}

		public function get format():TextFormat {
			return new TextFormat(f, s, c, b, null, null, null, null, a)
		}

		public function label(text:* = null, w:int = 0):Label {
			return new Label(format, text, w)
		}

		public function button(text:*, f:Function):Button {
			return new LabeledButton(format, text, f)
		}

		//

		public function get bold():Style   { return new Style(f, s, c, true, a) }
		public function get left():Style   { return new Style(f, s, c, b, TextFormatAlign.LEFT) }
		public function get right():Style  { return new Style(f, s, c, b, TextFormatAlign.RIGHT) }
		public function color(c:int):Style { return new Style(f, s, c, b, a) }

		public function get white():Style { return color(0xffffff) }
		public function get black():Style { return color(0) }

	}
}
