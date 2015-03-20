package ionic.loading;

typedef LoadingOptions = {
	?template : String,
	?templateUrl : String,
	?scope : Dynamic,
	?noBackdrop : Bool,
	?hideOnStateChange : Bool,
	?delay : Int,
	?duration : Int
}

@:injectionName("$ionicLoading")
extern class IonicLoading {
	public function show(opts : LoadingOptions) : Void;
	public function hide() : Void;
}