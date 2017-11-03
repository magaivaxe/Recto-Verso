

//----------- Librarys -----------
import UIKit
import Foundation
//--------------------------------

class ViewController: UIViewController,
					  UIPickerViewDelegate, UIPickerViewDataSource
{
	
//--------- PickerView -----------

//- Number of display rows -
	func numberOfComponents(in pickerView: UIPickerView) -> Int
	{
		let numberOfRowsColumns = 1
		return numberOfRowsColumns
	}
//-----------------------

//- Number of Datas -
	func pickerView(_ pickerView: UIPickerView,
	                numberOfRowsInComponent component: Int) -> Int
	{
		let numberOfDatas = 26
		return numberOfDatas
	}
//-------------------

//--------------------------------

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



}



