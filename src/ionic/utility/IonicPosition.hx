package ionic.utility;

typedef Position {
	left : Int,
	top : Int,
	height : Int,
	width : Int
}

@:injectionName("$ionicPosition")
extern class IonicPosition {
	public function position(element : js.html.Element) : Position;
	public function offset(element : js.html.Element) : Position;
}