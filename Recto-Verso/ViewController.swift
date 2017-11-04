

//----------- Librarys -----------
import UIKit
import Foundation
//--------------------------------

class ViewController: UIViewController,
					  UIPickerViewDelegate, UIPickerViewDataSource
{
	


//------------ Outlets -------------
	@IBOutlet weak var logo: UIImageView!
	@IBOutlet weak var go_insert_words: UIButton!
	@IBOutlet weak var seg_control_1: UISegmentedControl!
	@IBOutlet weak var pick_letter: UIPickerView!
	@IBOutlet weak var pick_word: UIPickerView!
	@IBOutlet weak var definitions_1: UITextView!
//----------------------------------
	
//----------- Variables ------------
	var dictOfLetters = [Int:String]()			/* Letters to pick */
	
	var dictOfFrenchWords = [Int:String]()
	var dictOfEnglishWords = [Int:String]()
	
	var dictOfFrenchDefinitions = [Int:String]()
	var dictOfEnglishDefinitions = [Int:String]()
	
//----------------------------------
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
	//-- Styles --
		//let styles = Styles()
		
	//------------
		
	/*
		Charger ici le pick_letter inicialisé par la lettre a, le database des mots déjà existant, la definitions de la mot affichée


	*/
		
		
	}

	/* Au travail AddUp il y a un exemple de pick l'utiliser pou comprendre */
	
	//--------- PickerView -----------
	
	//- Number of display rows -
	func numberOfComponents(in pickerView: UIPickerView) -> Int
	{
		return 1	/* Nombre des colonnes affiché au picker*/
	}
	//-----------------------
	
	//- Number of Datas -
	func pickerView(_ pickerView: UIPickerView,
	                numberOfRowsInComponent component: Int) -> Int
	{
		return 3	// retourner le nombre des mots par lettre
					// à la base de donnée par exemple data.count
	}
	//-------------------
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		var data:[String] = []
		return data[row] // retourner les titles au picker view utiliser un array
						 // pour le remplir derivé du dictionaire
	}
	
	//--------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}



