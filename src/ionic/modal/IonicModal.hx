package ionic.modal;

import angular.*;

@:injectionName("$ionicModal")
extern class IonicModal {
	public function fromTemplate(templateString : String, options : IonicModalControllerOptions) : IonicModalController;
	public function fromTemplateUrl(templateUrl : String, options : IonicModalControllerOptions) : Promise<IonicModalController>;
}

typedef IonicModalControllerOptions = {
	?scope : angular.service.Scope,
	?animation : String,
	?focusFirstInput : Bool,
	?backdropClickToClose : Bool,
	?hardwareBackButtonClose : Bool
}

@:native("ionicModal")
extern class IonicModalController {
	public static function initialize(options : IonicModalControllerOptions) : Void;
	public static function show(event : Dynamic) : Promise<Dynamic>;
	public static function hide() : Promise<Dynamic>;
	public static function remove() : Promise<Dynamic>;
	public static function isShown() : Bool;
}