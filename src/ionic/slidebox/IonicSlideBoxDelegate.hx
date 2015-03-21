package ionic.slidebox;

typedef ScrollPosition = {
	left : Int,
	top : Int
}

@:injectionName("$ionicSlideBoxDelegate")
extern class IonicSlideBoxDelegate {
	public function update() : Void;
	public function slide(to : Int, ?speed : Int) : Void;
	public function enableSlide(?shouldEnable : Bool) : Bool;
	public function previous() : Void;
	public function next() : Void;
	public function stop() : Void;
	public function start() : Void;
	public function currentIndex() : Int;
	public function slidesCount() : Int;
	@:native("$getByHandle") public function getByHandle(handle : String) : IonicSideMenuDelegate;
}