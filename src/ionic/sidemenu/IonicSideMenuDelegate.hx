package ionic.sidemenu;

typedef ScrollPosition = {
	left : Int,
	top : Int
}

@:injectionName("$ionicSideMenuDelegate")
extern class IonicSideMenuDelegate {
	public function toggleLeft(?isOpen : Bool) : Void;
	public function toggleRight(?isOpen : Bool) : Void;
	public function getOpenRatio() : Float;
	public function isOpen() : Bool;
	public function isOpenLeft() : Bool;
	public function isOpenRight() : Bool;
	public function canDragContent(?canDrag : Bool) : Bool;
	public function edgeDragThreshold(value : Dynamic) : Bool;
	@:native("$getByHandle") public function getByHandle(handle : String) : IonicSideMenuDelegate;
}