package ionic.platform;

import angular.*;

@:enum
abstract Priority(Int) {
	var ReturnToPreviousView = 100;
	var CloseSideMenu = 150;
	var DismissModal = 200;
	var CloseActionSheet = 300;
    var DismissPopup = 400;
	var DismissLoadingOverlay = 500;
}

@:enum
abstract OnType(String) {
	var Pause = "pause";
	var Resume = "resume";
	var VolumeDownButton = "volumedownbutton";
	var BatteryLow = "batterylow";
	var Offline = "offline";
}

@:enum
abstract Grade(String) {
	var GradeA = "a";
	var GradeB = "b";
	var GradeC = "c";
}

@:injectionName("$ionicPlatform")
extern class IonicPlatform {
	public function onHardwareBackButton(callback: Void -> Void) : Void;
	public function offHardwareBackButton(callback: Void -> Void) : Void;
	public function registerBackButtonAction(callback : Void -> Void, priority : Priority, ?actionId : Dynamic): Void -> Void;
	public function on(type : OnType, callback : Void -> Void) : Void -> Void;
	public function ready(?callback : Void -> Void) : Promise<Dynamic>;
}

@:native("ionic.Platform")
extern class IonicPlatformController {
	public static function ready(callback : Void -> Void) : Void;
	public static function setGrade(grade : Grade) : Void;
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
	public static var grade : Grade;
}
