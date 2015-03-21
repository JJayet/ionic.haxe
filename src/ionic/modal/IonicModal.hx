package ionic.modal;

@:injectionName("$ionicModal")
extern class IonicModal {
	public function fromTemplate(templateString : String, options : Dynamic) : Dynamic;
	public function fromTemplateUrl(templateUrl : String, options : Dynamic) : Dynamic;
}

typedef IonicModalControllerOptions = {
	?scope : Dynamic,
	?animation : String,
	?focusFirstInput : Bool,
	?backdropClickToClose : Bool,
	?hardwareBackButtonClose : Bool
}

@:native("ionicModal")
extern class IonicModalController {
	public static function initialize(options : IonicModalControllerOptions) : Void;
	public static function show(event : Dynamic) : Dynamic;
	public static function hide() : Dynamic;
	public static function remove() : Dynamic;
	public static function isShown() : Bool;
}