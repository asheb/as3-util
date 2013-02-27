package asheb.view {
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	import org.osflash.signals.natives.base.SignalTextField;


	public class Label extends SignalTextField {


		public function Label(format:TextFormat, text:* = null, w:int = 0) {
			defaultTextFormat = format
			autoSize =
					( format.align == TextFormatAlign.CENTER ) ? TextFieldAutoSize.CENTER :
					( format.align == TextFormatAlign.RIGHT ) ? TextFieldAutoSize.RIGHT :
					TextFieldAutoSize.LEFT
			selectable = false

			if (text != null)
				this.text = text.toString()

			if (w > 0) {
				multiline = true
				wordWrap = true
				width = w
			}
		}

		override public function set x(value:Number):void {
			var offset:int = ( autoSize == TextFieldAutoSize.RIGHT ) ? width :
					( autoSize == TextFieldAutoSize.CENTER ) ? width/2 : 0

			super.x = value - offset
		}

		override public function get x():Number {
			var offset:int = ( autoSize == TextFieldAutoSize.RIGHT ) ? width :
					( autoSize == TextFieldAutoSize.CENTER ) ? width/2 : 0

			return super.x + offset
		}

	}
}
