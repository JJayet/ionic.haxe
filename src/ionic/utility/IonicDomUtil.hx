package ionic.utility;

@:native("ionic.DomUtil")
extern class IonicDomUtil {
	public static function requestAnimationFrame(callback : Dynamic) : Void;
	public static function animationFrameThrottle(callback : Dynamic) : Dynamic;
	public static function getPositionInParent(element : Dynamic) : Dynamic;
	public static function ready(callback : Dynamic) : Void;
	public static function getTextBounds(textNode : Dynamic) : Dynamic;
	public static function getChildIndex(element : Dynamic, type : String) : Int;
	public static function getParentWithClass(element : Dynamic, className : String) : Dynamic;
	public static function getParentOrSelfWithClass(element : Dynamic, className : String) : Dynamic;
	public static function rectContains(x : Int, y : Int, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Bool;
	public static function blurAll() : Dynamic;
}

