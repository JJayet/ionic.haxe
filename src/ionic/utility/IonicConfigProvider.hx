package ionic.utility;

@:enum
abstract ViewTransition(String) {
	var Platform = "platform";
	var Ios = "ios";
	var Android = "android";
	var None = "none";
}

@:enum
abstract TabStyle(String) {
	var Striped = "striped";
	var Standard = "standard";
}

@:enum
abstract TabPosition(String) {
	var Top = "top";
	var Bottom = "bottom";
}

@:enum
abstract NavBarTitleAlignment(String) {
	var Platform = "platform";
	var Center = "center";
	var Left = "left";
	var Right = "right";
}

@:enum
abstract NavBarButtonsPositions(String) {
	var Platform = "platform";
	var Left = "left";
	var Right = "right";
}

@:injectionName("$ionicConfigProvider")
extern class IonicConfigProvider {
	public var views : Views;
	public var backButton : BackButton;
	public var form : Form;
	public var tabs : Tabs;
	public var templates : Templates;
	public var navBar : NavBar;
	public var scrolling : Scrolling;
}

@:native("views")
extern class Views {
	public function transition(transition : ViewTransition) : String;
	public function maxCache(maxNumber : Int) : Int;
	public function forwardCache(value : Bool) : Bool;
}

@:native("backbutton")
extern class BackButton {
	public function icon(value : String) : String;
	public function text(value : String) : String;
	public function previousTitleText(value : Bool) : Bool;
}

@:native("form")
extern class Form {
	public function checkbox(value : String) : String;
	public function toggle(value : String) : String;
}

@:native("tabs")
extern class Tabs {
	public function style(value : TabStyle) : String;
	public function position(value : TabPosition) : String;
}

@:native("templates")
extern class Templates {
	public function maxPrefetch(value : Int) : Int;
}

@:native("navBar")
extern class NavBar {
	public function alignTitle(value : NavBarTitleAlignment) : String;
	public function positionPrimaryButtons(value : NavBarButtonsPositions) : String;
	public function positionSecondaryButtons(value : NavBarButtonsPositions) : String;
}

@:native("scrolling")
extern class Scrolling {
	public function jsScrolling(value : Bool) : Bool;
}