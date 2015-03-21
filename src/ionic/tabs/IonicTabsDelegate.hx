package ionic.tabs;

typedef ScrollPosition = {
	left : Int,
	top : Int
}

@:injectionName("$ionicTabsDelegate")
extern class IonicTabsDelegate {
	public function select(index : Int) : Void;
	public function selectedIndex() : Int;
	@:native("$getByHandle") public function getByHandle(handle : String) : IonicSideMenuDelegate;
}