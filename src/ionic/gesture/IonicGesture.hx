package ionic.gesture;

@:injectionName("$ionicGesture")
extern class IonicGesture {
	public function on(eventType : String, callback : Dynamic -> Void, $element : js.html.Element, options : Dynamic) : Dynamic;
	public function off(gesture : Dynamic, eventType : String, callback : Dynamic -> Void) : Void;
}