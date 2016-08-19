package ionic.popup;

import angular.*;

typedef IonicPopupButton = {
	text: String,
    type: String,
    onTap: Dynamic -> Void
}

typedef IonicPopupBasicOptions = {
	title: String,
	cssClass: String,
	?subTitle: String,
	?template: String,
	?templateUrl: String,
}

typedef IonicPopupShowOptions = { > IonicPopupBasicOptions,
  ?scope: angular.service.Scope,
  ?buttons: Array<IonicPopupButton>
}

typedef IonicPopupAlertOptions = { > IonicPopupBasicOptions,
	?okText: String,
	?okType: String,
}

typedef IonicPopupConfirmOptions = { > IonicPopupAlertOptions,
	?cancelText: String,
	?cancelType: String
}

typedef IonicPopupPromptOptions = { > IonicPopupConfirmOptions,
	?inputType: String,
	?inputPlaceholder: String
}

@:injectionName("$ionicPopup")
extern class IonicPopup {
	public function show() : Promise<Dynamic>;
	public function alert(options : IonicPopupAlertOptions) : Promise<Dynamic>;
	public function confirm(options : IonicPopupConfirmOptions) : Promise<Dynamic>;
	public function prompt(options : IonicPopupPromptOptions) : Promise<Dynamic>;
}
