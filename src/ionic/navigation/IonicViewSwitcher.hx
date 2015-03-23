package ionic.navigation;

@:enum
abstract Direction(String) {
	var Forward = "forward";
	var Back = "back";
	var Swap = "swap";
	var Enter = "enter";
	var Exit = "exit";
}

@:injectionName("$ionicViewSwitcher")
extern class IonicViewSwitcher {
	public function nextDirection(direction : Direction) : Void;
}