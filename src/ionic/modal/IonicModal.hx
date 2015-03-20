package ionic.modal;

@:injectionName("$ionicModal")
extern class IonicModal {
	public function fromTemplate(templateString : String, options : Dynamic) : Dynamic;
	public function fromTemplateUrl(templateUrl : String, options : Dynamic) : Dynamic;
}