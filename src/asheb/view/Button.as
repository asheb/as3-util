package asheb.view {
	import asheb.func.eatArgs;


	public class Button extends View {

		public function Button(f:Function) {
			buttonMode = true
			mouseChildren = false

			signals.click.add(eatArgs(f))
		}

	}
}
