package ionic.loading;

typedef LoadingOptions = {
	?template : String,
	?templateUrl : String,
	?scope : Dynamic,
	?noBackdrop : Bool,
	?hideOnStateChange : Bool,
	?delay : js.Number,
	?duration : js.Number
}

@:injectionName("$ionicLoading")
extern class IonicLoading {
	public function show(opts : LoadingOptions) : Void;
	public function hide() : Void;
}