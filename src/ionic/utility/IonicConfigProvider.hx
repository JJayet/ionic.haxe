package ionic.utility;

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
	public function transition(transition : String) : String;
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
	public function style(value : String) : String;
	public function position(value : String) : String;
}

@:native("templates")
extern class Templates {
	public function maxPrefetch(value : Int) : Int;
}

@:native("navBar")
extern class NavBar {
	public function alignTitle(value : String) : String;
	public function positionPrimaryButtons(value : String) : String;
	public function positionSecondaryButtons(value : String) : String;
}

@:native("scrolling")
extern class Scrolling {
	public function jsScrolling(value : Bool) : Bool;
}