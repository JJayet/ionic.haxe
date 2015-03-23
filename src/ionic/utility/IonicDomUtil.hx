package ionic.utility;

typedef ObjectPosition = {
	left : Int,
	top : Int
}

typedef Bounds = {
	left : Int,
	right : Int,
	top : Int,
	bottom : Int,
	width : Int,
	height : Int
}

@:native("ionic.DomUtil")
extern class IonicDomUtil {
	public static function requestAnimationFrame(callback : Void -> Void) : Void;
	public static function animationFrameThrottle(callback : Void -> Void) : Dynamic;
	public static function getPositionInParent(element : js.html.Element) : ObjectPosition;
	public static function ready(callback : Void -> Void) : Void;
	public static function getTextBounds(textNode : Dynamic) : Bounds;
	public static function getChildIndex(element : js.html.Element, type : String) : Int;
	public static function getParentWithClass(element : js.html.Element, className : String) : js.html.Element;
	public static function getParentOrSelfWithClass(element : js.html.Element, className : String) : js.html.Element;
	public static function rectContains(x : Int, y : Int, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Bool;
	public static function blurAll() : js.html.Element;
}

