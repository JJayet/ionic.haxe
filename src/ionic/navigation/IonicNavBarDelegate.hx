package ionic.navigation;

@:enum
abstract Direction(String) {
	var Left = "left";
	var Center = "center";
	var Right = "right";
}

@:injectionName("$ionicNavBarDelegate")
extern class IonicNavBarDelegate {
	public function align(?direction : Direction) : Void;
	public function showBackButton(?show : Bool) : Bool;
	public function showBar(?show : Bool) : Bool;
	public function title(title : String) : Void;
}