package ionic.navigation;

typedef ViewOptions = {
	?disableAnimate : Bool,
	?disableBack : Bool,
	?historyRoot : Bool
}

@:injectionName("$ionicHistory")
extern class IonicHistory {
	public function viewHistory() : Dynamic;
	public function currentView() : Dynamic;
	public function currentHistoryId() : String;
	public function currentTitle(?val : String) : String;
	public function backView() : Dynamic;
	public function backTitle() : String;
	public function forwardView() : Dynamic;
	public function currentStateName() : String;
	public function goBack() : Void;
	public function clearHistory() : Void;
	public function clearCache() : Void;
	public function nextViewOptions(options : ViewOptions) : Void;
}