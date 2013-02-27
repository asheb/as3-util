package asheb.view {
	import flash.text.TextFormat;


	public class LabeledButton extends Button {

		public function LabeledButton(format:TextFormat, text:*, f:Function) {
			super(f)
			put(new Label(format, text))
		}
	}
}
