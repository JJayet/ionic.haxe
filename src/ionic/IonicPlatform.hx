package ionic;


@:injectionName("$ionicPlatform")
extern class IonicPlatform {
	public function onHardwareBackButton(callback: Dynamic) : Void;
	public function offHardwareBackButton(callback: Dynamic) : Void;
	public function registerBackButtonAction(callback : Dynamic, priority : Int, ?actionId : String): Void -> Void;
	public function on(type : String, callback : Dynamic) : Void -> Void;
	public function ready(?callback : Void -> Void) : Dynamic;
}

@:native("ionic.Platform")
extern class IonicPlatformController {
	public static function ready(callback : Dynamic) : Void;
	public static function setGrade(grade : String) : Void;
	public static function device() : Dynamic;
	public static function isWebView() : Bool;
	public static function isIPad() : Bool;
	public static function isIOS() : Bool;
	public static function isAndroid() : Bool;
	public static function isWindowsPhone() : Bool;
	public static function platform() : String;
	public static function version() : String;
	public static function exitApp() : Void;
	public static function showStatusBar(shouldShow : Bool) : Void;
	public static function fullScreen(?showFullScreen : Bool, ?showStatusBar : Bool) : Void;

	public static var isReady : Bool;
	public static var isFullScreen : Bool;
	public static var platforms : Array<String>;
	public static var grade : String;
}
