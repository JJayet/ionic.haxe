package ionic.utility;

@:native("ionic.EventController")
extern class IonicEventController {
	public static function trigger(eventType : String, data : Dynamic, ?bubbles : Bool, ?cancelable : Bool) : Void;
	public static function on(type : String, callback : Dynamic, element : Dynamic) : Void;
	public static function off(type : String, callback : Dynamic, element : Dynamic) : Void;
	public static function onGesture(eventType : String, callback : Dynamic, element : Dynamic, options : Dynamic) : Dynamic;
	public static function offGesture(gesture : Dynamic, eventType : String, callback : Dynamic) : Void;
}