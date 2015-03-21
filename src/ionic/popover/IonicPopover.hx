package ionic.popover;

@:injectionName("$ionicPopover")
extern class IonicPopover {
	public function fromTemplate(templateString : String, options : Dynamic) : IonicPopoverController;
	public function fromTemplateUrl(templateUrl : String, options : Dynamic) : Dynamic;
}

typedef IonicPopoverControllerOptions = {
	?scope : Dynamic,
	?focusFirstInput : Bool,
	?backdropClickToClose : Bool,
	?hardwareBackButtonClose : Bool
}

@:native("ionicPopover")
extern class IonicPopoverController {
	public static function initialize(options : IonicPopoverControllerOptions) : Void;
	public static function show($event : Dynamic) : Dynamic;
	public static function hide() : Dynamic;
	public static function remove() : Dynamic;
	public static function isShown() : Bool;
}