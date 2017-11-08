

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
	@IBOutlet weak var definitions_1: UITextView!
    @IBOutlet weak var scroll_view: UIScrollView!
    //----------------------------------
	
//----------- Variables ------------
	var arrayOfLetters = ["a", "b", "c", "d", "e", "f", "g",		/* Letters to pick */
						  "h", "i", "j", "k", "l", "m", "n",
						  "o", "q","r", "s", "t", "u", "v",
						  "w", "x", "y", "z"]
//----------------------------------
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
	//-- Styles --
		let styles = Styles()
		
		styles.styleUIButtons(button: go_insert_words,
							  font: UIFont(name: "Times", size: 15)!,
							  title: "+ Mots",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1).cgColor)
		
		styles.styleUISegmentedControl(segmentedControl: seg_control_1,
									   radius: 10,
									   borderWidth: 1.4,
									   tintColor: UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1),
									   borderColor: UIColor.lightGray.cgColor,
									   bgColor: UIColor.init(red: 208/255, green: 250/255, blue: 164/255, alpha: 0.3).cgColor)
		
		styles.styleUITextViews(textView: definitions_1,
								radius: 10,
								font: UIFont(name: "Times", size: 20)!,
								textColor: UIColor.black,
								textAlignment: NSTextAlignment.left,
								borderWidth: 1.4,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: UIColor.init(red: 208/255, green: 250/255, blue: 164/255, alpha: 0.3).cgColor)
        
        styles.styleUIScrollView(scrollView: scroll_view,
                                 radius: 10,
                                 borderWidth: 1.4,
                                 borderColor: UIColor.lightGray.cgColor)
		
	//------------
		
	//-- Segmented Control --
		
	//-----------------------
	}
	
	
	//======= Segmentation Control ======================================================
	
	@IBAction func seg_french_english(_ sender: UISegmentedControl)
	{
		if seg_control_1.selectedSegmentIndex == 0  /* french */
		{
			go_insert_words.setTitle("+ Mots", for: .normal)
		}
		else										/* english */
		{
			go_insert_words.setTitle("+ Words", for: .normal)
		}
	}
	
	//===================================================================================
	

	/* Au travail AddUp il y a un exemple de pick l'utiliser pou comprendre */
	
	//======= PickerView ================================================================
	
	//- Number of display rows -
	func numberOfComponents(in pickerView: UIPickerView) -> Int
	{
		//if pickerView.tag == 1
		return 1	/* Nombre des colonnes affiché au picker*/
	}
	//--------------------------
	
	//- Number of Datas -
	func pickerView(_ pickerView: UIPickerView,
	                numberOfRowsInComponent component: Int) -> Int
	{
		return arrayOfLetters.count 		/* array de a - z */
	}
	//-------------------
	
	
	func pickerView(_ pickerView: UIPickerView,
					viewForRow row: Int,
					forComponent component: Int,
					reusing view: UIView?) -> UIView
	{
		let pickerlabel = UILabel()
		
		pickerlabel.textColor = UIColor.darkGray
		pickerlabel.text = arrayOfLetters[row]
		pickerlabel.font = UIFont(name: "Times", size: 20)
		pickerlabel.textAlignment = NSTextAlignment.center
		
		return pickerlabel		/* Why return pickerlabel */
	}
	
	func pickerView(_ pickerView: UIPickerView,
					titleForRow row: Int,
					forComponent component: Int) -> String?
	{
		return arrayOfLetters[row]			/* return to row any arrayOfLetters string  */
	}
	
	
	//===================================================================================
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}



