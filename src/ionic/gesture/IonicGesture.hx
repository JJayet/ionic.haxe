package ionic.gesture;

@:injectionName("$ionicGesture")
extern class IonicGesture {
	public function on(eventType : String, callback : Dynamic -> Void, $element : Dynamic, options : Dynamic) : Dynamic;
	public function off(gesture : Dynamic, eventType : String, callback : Dynamic -> Void) : Void;
}