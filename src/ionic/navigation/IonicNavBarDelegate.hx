package ionic.navigation;

@:injectionName("$ionicNavBarDelegate")
extern class IonicNavBarDelegate {
	public function align(?direction : String) : Void;
	public function showBackButton(?show : Bool) : Bool;
	public function showBar(?show : Bool) : Bool;
	public function title(title : String) : Void;
}