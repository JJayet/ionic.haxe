package ionic.list;

@:injectionName("$ionicListDelegate")
extern class IonicListDelegate {
	public function showReorder(showReorder : Bool) : Bool;
	public function showDelete(showDelete : Bool) : Bool;
	public function canSwipeItems(canSwipeItems : Bool) : Bool;
	public function closeOptionButtons() : Void;
	public function $getByHandle(handle : String) : Dynamic;
}