

//----------- Librarys -----------
import UIKit
import Foundation
//--------------------------------

class ViewController: UIViewController
{
//------------ Outlets -------------
	@IBOutlet weak var logo: UIImageView!
	@IBOutlet weak var go_insert_words: UIButton!
	@IBOutlet weak var seg_control_1: UISegmentedControl!
    @IBOutlet weak var scroll_view: UIScrollView!
	@IBOutlet weak var traduction: UITextView!
	@IBOutlet weak var scroll_of_buttons: UIScrollView!
	@IBOutlet weak var view_of_buttons: UIView!
	
	@IBOutlet weak var a: UIButton!
	@IBOutlet weak var b: UIButton!
	@IBOutlet weak var c: UIButton!
	@IBOutlet weak var d: UIButton!
	@IBOutlet weak var e: UIButton!
	@IBOutlet weak var f: UIButton!
	@IBOutlet weak var g: UIButton!
	@IBOutlet weak var h: UIButton!
	@IBOutlet weak var i: UIButton!
	@IBOutlet weak var j: UIButton!
	@IBOutlet weak var k: UIButton!
	@IBOutlet weak var l: UIButton!
	@IBOutlet weak var m: UIButton!
	@IBOutlet weak var n: UIButton!
	@IBOutlet weak var o: UIButton!
	@IBOutlet weak var p: UIButton!
	@IBOutlet weak var q: UIButton!
	@IBOutlet weak var r: UIButton!
	@IBOutlet weak var s: UIButton!
	@IBOutlet weak var t: UIButton!
	@IBOutlet weak var u: UIButton!
	@IBOutlet weak var v: UIButton!
	@IBOutlet weak var w: UIButton!
	@IBOutlet weak var x: UIButton!
	@IBOutlet weak var y: UIButton!
	@IBOutlet weak var z: UIButton!
	
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
		
		styles.styleUIImageView(imageView: logo,
		                        radius: 10,
		                        borderWidth: 0.5,
		                        borderColor: UIColor.lightGray.cgColor)
		
		styles.styleUIButtons(button: go_insert_words,
							  font: UIFont(name: "Times", size: 15)!,
							  title: "+ Mots",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: UIColor.init(red: 7/255, green: 27/255, blue: 204/255, alpha: 1).cgColor)
		
		styles.styleUISegmentedControl(segmentedControl: seg_control_1,
									   radius: 10,
									   borderWidth: 1.4,
									   tintColor: UIColor.init(red: 7/255, green: 27/255, blue: 204/255, alpha: 1),
									   borderColor: UIColor.lightGray.cgColor,
									   bgColor: UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor)
		
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
			go_insert_words.layer.backgroundColor = UIColor.init(red: 7/255, green: 27/255, blue: 204/255, alpha: 1).cgColor
			seg_control_1.tintColor = UIColor.init(red: 7/255, green: 27/255, blue: 204/255, alpha: 1)
		}
		else										/* english */
		{
			go_insert_words.setTitle("+ Words", for: .normal)
			go_insert_words.layer.backgroundColor = UIColor.init(red: 204/255, green: 8/255, blue: 20/255, alpha: 1).cgColor
			seg_control_1.tintColor = UIColor.init(red: 204/255, green: 8/255, blue: 20/255, alpha: 1)
		}
	}
	
	//===================================================================================


		
}
	
	
	//===================================================================================
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}



