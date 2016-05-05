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
	public function initialize(options : IonicModalControllerOptions) : Void;
	public function show() : Promise<Dynamic>;
	public function hide() : Promise<Dynamic>;
	public function remove() : Promise<Dynamic>;
	public function isShown() : Bool;
}
