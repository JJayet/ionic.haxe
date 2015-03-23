package ionic.utility;

@:enum
abstract EventType {
var Hold = "hold";
var Tap = "tap";
var DoubleTap = "doubletap";
var Drag = "drag";
var DragStart = "dragstart";
var DragEnd = "dragend";
var DragUp = "dragup";
var DragDown = "dragdown ";
var DragLeft = "dragleft";
var DrgRight = "dragright";
var Swipe = "swipe";
var SwipeUp = "swipeup";
var SwipeDown = "swipedown";
var SwipeLeft = "swipeleft";
var SwipeRight = "swiperight ";
var Transform = "transform";
var TransformStart = "transformstart";
var TransformEnd = "transformend";
var Rotate = "rotate";
var Pinch = "pinch";
var PinchIn = "pinchin";
var PinchOut = "pinchout ";
var Touch = "touch";
var Release = "release";
}

@:native("ionic.EventController")
extern class IonicEventController {
	public static function trigger(eventType : EventType, data : Dynamic, ?bubbles : Bool, ?cancelable : Bool) : Void;
	public static function on(type : String, callback : Dynamic, element : js.html.Element) : Void;
	public static function off(type : String, callback : Void -> Void, element : js.html.Element) : Void;
	public static function onGesture(eventType : String, callback : Dynamic, element : js.html.Element, options : Dynamic) : Dynamic;
	public static function offGesture(gesture : Dynamic, eventType : String, callback : Dynamic) : Void;
}