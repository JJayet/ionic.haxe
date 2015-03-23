package ionic.popover;

import angular.*;

@:injectionName("$ionicPopover")
extern class IonicPopover {
	public function fromTemplate(templateString : String, options : IonicPopoverControllerOptions) : IonicPopoverController;
	public function fromTemplateUrl(templateUrl : String, options : IonicPopoverControllerOptions) : Promise<IonicPopoverController>;
}

typedef IonicPopoverControllerOptions = {
	?scope : angular.service.Scope,
	?focusFirstInput : Bool,
	?backdropClickToClose : Bool,
	?hardwareBackButtonClose : Bool
}

@:native("ionicPopover")
extern class IonicPopoverController {
	public static function initialize(options : IonicPopoverControllerOptions) : Void;
	public static function show($event : Dynamic) : Promise<Dynamic>;;
	public static function hide() : Promise<Dynamic>;
	public static function remove() : Promise<Dynamic>;;
	public static function isShown() : Bool;
}