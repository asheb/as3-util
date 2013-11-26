package asheb.parts.view.asset {
	import flash.display.DisplayObject;


	public interface Asset {

		function create():DisplayObject

		function get w():int
		function get h():int
	}
}
