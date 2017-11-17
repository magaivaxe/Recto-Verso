//----------- Libraries -----------
import UIKit
//---------------------------------
class ViewController: UIViewController,
					  UITableViewDelegate,
					  UITableViewDataSource
{
	//------------ Outlets -------------
	@IBOutlet weak var logo: UIImageView!
	@IBOutlet weak var go_insert_words: UIButton!
	@IBOutlet weak var seg_control_1: UISegmentedControl!
    @IBOutlet weak var scroll_view: UIScrollView!
	@IBOutlet weak var label_traduction: UILabel!
	@IBOutlet weak var scroll_of_buttons: UIScrollView!
	@IBOutlet weak var view_of_buttons: UIView!
	@IBOutlet weak var show_words: UITableView!
	
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
	var arrayOfLetters: [String]!
	var arrayOfButtons: [UIButton]!
	var arrayOfFrenchWords: [String]!
	var arrayOfEnglishWords: [String]!
	
	var frKeys = [String]()
	var enKeys = [String]()
	var enValues = [String]()
	var frValues = [String]()
	
	var tupleFrenchEnglishFiltered: [(String,String)]!
	var tupleEnglishFrenchFiltered: [(String,String)]!
	//----------------------------------
	
	//===================================== ViewDidLoad =====================================
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
	//--- functions ---
		fillArrays()
	//-----------------
	//- Loader Saves --
		loader()
	//-----------------
	
	//-------------------- Styles ----------------------
		let styles = Styles()
		
		styles.styleUIImageView(imageView: logo,
		                        radius: 10,
		                        borderWidth: 0,
		                        borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor)
		
		styles.styleUIButtons(button: go_insert_words,
							  font: UIFont(name: "Menlo", size: 15)!,
							  title: "+ Mots",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
							  bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
		
		styles.styleArrayOfUIButtons(arrayOfButtons: arrayOfButtons,
		                             font: UIFont(name: "Menlo", size: 15)!,
		                             fontColor: UIColor.white,
		                             radius: 10,
		                             borderWidth: 1.4,
		                             borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
		                             bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
		
		styles.styleUISegmentedControl(segmentedControl: seg_control_1,
									   radius: 10,
									   borderWidth: 1.4,
									   tintColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1),
									   borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
									   bgColor: UIColor.init(red: 238/255, green: 237/255, blue: 243/255, alpha: 1).cgColor)
		
		styles.styleUILabel(label: label_traduction,
							font: UIFont.systemFont(ofSize: 15),
							textAlignment: NSTextAlignment.center,
							radius: 10,
							borderWidth: 1.4,
							borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
							bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
		
        styles.styleUIScrollView(scrollView: scroll_view,
                                 radius: 10,
                                 borderWidth: 1.4,
                                 borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
                                 bgColor: UIColor.init(red: 238/255, green: 237/255, blue: 243/255, alpha: 1).cgColor)
		
		styles.styleUITableView(tableView: show_words,
		                        radius: 10,
		                        borderWidth: 1.4,
		                        borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
							 	bgColor: UIColor.init(red: 238/255, green: 237/255, blue: 243/255, alpha: 1).cgColor)
		
	//--------------------------------------------------
	
	//---------- Set text to buttons ---------
		let setText = ToSetAny()
		
		setText.setTextToButtons(arrayOfButtons: arrayOfButtons,
		                         arrayOfText: arrayOfLetters,
		                         numberOfButtons: 26)
		
		styles.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons,
		                           alpha: 0.5)
		
		arrayOfButtons[0].alpha = 1
		label_traduction.text = ""
		
		arrayToDisplay()
	//-----------------------------------------
	}
	//=======================================================================================
	
	//=================== Alphabetical Buttons ========================
	
	@IBAction func alphabetical_buttons(_ sender: UIButton)
	{
		let alpha = Styles()
		
		switch sender.tag
		{
			case 0:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 1:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 2:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 3:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 4:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 5:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 6:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 7:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 8:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 9:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 10:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 11:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 12:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 13:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 14:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 15:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 16:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 17:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 18:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 19:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 20:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 21:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 22:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 23:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 24:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			case 25:
				alpha.styleAlphaOfButtons(arrayOfButtons: arrayOfButtons, alpha: 0.5)
			default:
				break
		}
		arrayOfButtons[sender.tag].alpha = 1
		
		loader()
		
		arrayToDisplay()
		
	}
	//=================================================================
	
	//=================== Function to fill arrays =====================
	func fillArrays()
	{
		/* Letters to pick */
		arrayOfLetters = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
		                  "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
		
		arrayOfButtons = [a,b,c,d,e,f,g,h,i,j,k,l,m,
		                  n,o,p,q,r,s,t,u,v,w,y,x,z]
		
	}
	//=================================================================
	
	//=================== Loader Data ============================
	func loader()
	{
		let load = SaveLoadMenager()
		
		if load.checkExistingSaves(fileName: "french") == true
		{
			arrayOfFrenchWords = load.loadData(fileName: "french") as! [String]
			arrayOfEnglishWords = load.loadData(fileName: "english") as! [String]
		}
		else
		{
			arrayOfFrenchWords = [String]()
			arrayOfEnglishWords = [String]()
			
			load.save(theData: arrayOfFrenchWords as AnyObject, fileName: "french")
			load.save(theData: arrayOfEnglishWords as AnyObject, fileName: "english")
		}
	}
	//============================================================
	
	//======= Segmentation Control ======================================================
	
	@IBAction func seg_french_english(_ sender: UISegmentedControl)
	{
		let buttonColor = Styles()
		
		if seg_control_1.selectedSegmentIndex == 0  /* french - blue */
		{
			go_insert_words.setTitle("+ Mots", for: .normal)
			go_insert_words.layer.backgroundColor = UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor
			label_traduction.layer.backgroundColor = UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor
			buttonColor.styleColorsOfButtons(arrayOfButtons: arrayOfButtons,
			                                 colors: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
			seg_control_1.tintColor = UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1)
		}
		else										/* english - red */
		{
			go_insert_words.setTitle("+ Words", for: .normal)
			go_insert_words.layer.backgroundColor = UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor
			label_traduction.layer.backgroundColor = UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor
			buttonColor.styleColorsOfButtons(arrayOfButtons: arrayOfButtons,
			                                 colors: UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor)
			seg_control_1.tintColor = UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1)
		}
		arrayToDisplay()
	}
	
	//===================================================================================
	
	//==================================== Display ======================================
	func arrayToDisplay()
	{
		let dictFrenchEnglish = Dictionary(uniqueKeysWithValues: zip(arrayOfFrenchWords, arrayOfEnglishWords))
		let dictEnglishFrench = Dictionary(uniqueKeysWithValues: zip(arrayOfEnglishWords, arrayOfFrenchWords))
		
		let tupleFrenchEnglish = dictFrenchEnglish.sorted(by: { $0.0 < $1.0 })
		let tupleEnglishFrench = dictEnglishFrench.sorted(by: { $0.0 < $1.0 })
		
		frKeys.removeAll()			/* to avoid arrays concatenations */
		enValues.removeAll()
		enKeys.removeAll()
		frValues.removeAll()
		
		var i = 0; while i < 26
		{
			if arrayOfButtons[i].alpha == 1
			{
				//Tuple filter by first string word character in [i].0
				tupleFrenchEnglishFiltered = tupleFrenchEnglish.filter({$0.0.hasPrefix(arrayOfLetters[i].lowercased())})
				tupleEnglishFrenchFiltered = tupleEnglishFrench.filter({$0.0.hasPrefix(arrayOfLetters[i].lowercased())})
				
				for (fr1, en1) in tupleFrenchEnglishFiltered		/* french loop */
				{
					frKeys.append(fr1)
					enValues.append(en1)
				}
				if frKeys == []
				{
					frKeys.append("il en manque avec «\(arrayOfLetters[i])»")
					enValues.append("Mes excuses...")
				}
				
				for (en2, fr2) in tupleEnglishFrenchFiltered		/* english loop */
				{
					enKeys.append(en2)
					frValues.append(fr2)
				}
				if enKeys == []
				{
					enKeys.append("No words with «\(arrayOfLetters[i])» yet")
					frValues.append("My apologies...")
				}
			}
			i = i + 1
		}
		print(frKeys)
		print(enValues)
		show_words.reloadData()
	}
	//===================================================================================

	//=================================== Table View ====================================
	func tableView(_ tableView: UITableView,
	               numberOfRowsInSection section: Int) -> Int
	{
		if seg_control_1.selectedSegmentIndex == 0		/* français */
		{
			return frKeys.count
		}
		else											/* englais */
		{
			return enKeys.count
		}
	}
	
	func tableView(_ tableView: UITableView,
	               cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default,
		                                           reuseIdentifier: nil)
		
		
		if seg_control_1.selectedSegmentIndex == 0		/* français */
		{
			cell.textLabel?.text = "\(frKeys[indexPath.row])"
		}
		else											/* englais */
		{
			cell.textLabel?.text = "\(enKeys[indexPath.row])"
		}
		return cell
	}
	
	func tableView(_ tableView: UITableView,
	               didDeselectRowAt indexPath: IndexPath)
	{
		
		if seg_control_1.selectedSegmentIndex == 0		/* français */
		{
			label_traduction.text? = "\(enValues[indexPath.row])"
		}
		else											/* englais */
		{
			label_traduction.text? = "\(frValues[indexPath.row])"
		}
	}
	//===================================================================================
}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





