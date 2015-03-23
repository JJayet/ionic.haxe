package ionic.loading;

import angular.service.*;

typedef LoadingOptions = {
	?template : String,
	?templateUrl : String,
	?scope : Scope,
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