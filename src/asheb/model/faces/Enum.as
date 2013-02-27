package asheb.model.faces {


	public interface Enum extends Model {

		function get options():ObservableList

		function get value():*
		function set value(v:*):void

	}
}
