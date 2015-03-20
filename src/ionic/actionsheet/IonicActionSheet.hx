package ionic.actionsheet;

typedef ViewOptions = {
	titleText : String,
	cancelText : String,
	destructiveText : String,
	cancel : Void -> Void,
	buttonClicked : Void -> Bool
	destructiveButtonClicked : Void -> Bool,
	?cancelOnStateChange : Bool,
	cssClass : String
}

@:injectionName("$ionicActionSheet")
extern class IonicActionSheet {
	public function show(options : Dynamic) : Void -> Void;
}