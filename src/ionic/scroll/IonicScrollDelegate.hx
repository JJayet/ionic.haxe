package ionic.scroll;

typedef ScrollPosition = {
	left : Int,
	top : Int
}

@:injectionName("$ionicScrollDelegate")
extern class IonicScrollDelegate {
	public function resize() : Void;
	public function scrollTop(?shouldAnimate : Bool) : Void;
	public function scrollBottom(?shouldAnimate : Bool) : Void;
	public function scrollTo(left : Int, top : Int, ?shouldAnimate : Bool) : Void;
	public function scrollBy(left : Int, top : Int, ?shouldAnimate : Bool) : Void;
	public function zoomTo(level : Int, ?animate : Bool, ?originLeft : Int, ?originTop : Int) : Void;
	public function zoomBy(factor : Int, ?animate : Bool, ?originLeft : Int, ?originTop : Int) : Void;
	public function getScrollPosition() : ScrollPosition;
	public function anchorScroll(?shouldAnimate : Bool) : Void;
	public function freezeScroll(?shouldFreeze : Bool) : Dynamic;
	public function freezeAllScrolls(?shouldFreeze : Bool) : Void;
	public function getScrollView() : Dynamic;
	@:native("$getByHandle") public function getByHandle(handle : String) : IonicScrollDelegate;
}