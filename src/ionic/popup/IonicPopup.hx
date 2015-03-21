package ionic.popup;

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

typedef IonicPopupShowOptions = { > IonicPopupBasicOptions
  ?scope: Dynamic,
  ?buttons: Array<IonicPopupButton>
}

typedef IonicPopupAlertOptions = { > IonicPopupBasicOptions
	?okText: String,
	?okType: String,
}

typedef IonicPopupConfirmOptions = { > IonicPopupAlertOptions
	?cancelText: String,
	?cancelType: String
}

typedef IonicPopupPromptOptions = { > IonicPopupConfirmOptions
	?inputType: String,
	?inputPlaceholder: String
}

@:injectionName("$ionicPopup")
extern class IonicPopup {
	public function show() : Dynamic;
	public function alert(options : IonicPopupAlertOptions) : Dynamic;
	public function confirm(options : IonicPopupConfirmOptions) : Dynamic;
	public function prompt(options : IonicPopupPromptOptions) : Dynamic;
}