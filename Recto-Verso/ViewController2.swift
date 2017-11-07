

//----------- Librarys -----------
import UIKit
import Foundation
//--------------------------------

class ViewController2: UIViewController,
					   UITableViewDataSource, UITableViewDelegate
{

//------------ Outlets -------------
	@IBOutlet weak var add_french: UITextField!
	@IBOutlet weak var add_english: UITextField!
	@IBOutlet weak var add: UIButton!
	@IBOutlet weak var go_dictionary: UIButton!
	@IBOutlet weak var table_view: UITableView!
//----------------------------------

//----------- Variables ------------
	var dictRectoVerso : [String:String]!
	var arrayFrenchWords : [String]!
	var arrayEnglishWords : [String]!
	var file = "file"
//----------------------------------

    override func viewDidLoad()
	{
		
		
		super.viewDidLoad()
		
	//-- Styles --
		let styles = Styles()
		
		styles.styleUIButtons(button: add,
							  radius: 10,
							  borderWidth: 1.2,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: UIColor.init(red: 0.149, green: 0.67, blue: 0.90, alpha: 0.8) as! CGColor)
		styles.styleUIButtons(button: go_dictionary,
							  radius: 10,
							  borderWidth: 1.2,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: UIColor.init(red: 0.149, green: 0.67, blue: 0.90, alpha: 0.8) as! CGColor)
		
		styles.styleUITextField(textField: add_french,
								font: UIFont(name: "times", size: 20)!,
								radius: 10,
								borderWidth: 1.2,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: UIColor.init(red: 0.149, green: 0.67, blue: 0.90, alpha: 0.8) as! CGColor)
		styles.styleUITextField(textField: add_english,
								font: UIFont(name: "times", size: 20)!,
								radius: 10,
								borderWidth: 1.2,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: UIColor.init(red: 0.149, green: 0.67, blue: 0.90, alpha: 0.8) as! CGColor)
		styles.styleUITableView(tableView: table_view,
								radius: 10,
								borderWidth: 1.2,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: UIColor.init(red: 0.66, green: 0.71, blue: 0.72, alpha: 0.8) as! CGColor))
		
	//------------
	
	//-- TextViews --
		add_french.placeholder = "Inserez un mot..."
		add_english.placeholder = "Insert a word..."
	//---------------
		
	//-- Buttons --
//		if viewcontroller.seg_control_1.selectedSegmentIndex == 0			/* french */
//		{
//			//add.setTitle("Ajouter", for: .normal)
//			go_dictionary.setTitle("Retour", for: .normal)
//		}
//		else																/* anglais */
//		{
//			//add.setTitle("Add", for: .normal)
//			go_dictionary.setTitle("Back", for: .normal)
		//}
	//-------------
		
	//-- Table View --
		
		
	//----------------
		
	//-- Saves Menager --
		loadSaves()
	//-------------------
    }
	//-- Buttons --
	@IBAction func add_words(_ sender: UIButton)
	{
		let save = SaveLoadMenager()			/* Load the class locally */
		
		arrayFrenchWords.append(add_french.text!)		/* append the words */
		arrayEnglishWords.append(add_english.text!)
		
		save.save(theData: arrayFrenchWords as AnyObject, fileName: "french")
		save.save(theData: arrayEnglishWords as AnyObject, fileName: "english")
		
	}
	//-------------
	
	
	//-- Saves Menager --
	func loadSaves()
	{
		let load = SaveLoadMenager()			/* Load the class locally */
		
		if load.checkExistingSaves(fileName: "file")
		{
			/* Load the existing arrays */
			arrayFrenchWords = load.loadData(fileName: "french") as! [String]
			arrayEnglishWords = load.loadData(fileName: "english") as! [String]
		}
		else
		{
			/* Create the file and the arrays */
			load.save(theData: file as AnyObject, fileName: "File")
			arrayFrenchWords = [String]()
			arrayEnglishWords = [String]()
		}
	}
	//-------------------

	
//------------ TableView -----------
	
	//- Number of lines-
	func tableView(_ tableView: UITableView,
	               numberOfRowsInSection section: Int) -> Int
	{
		return arrayFrenchWords.count /* Its load the number of elements */
	}
	//------------------
	
	//- Cell configuration -
	func tableView(_ tableView: UITableView,
	               cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		let viewcontroler = ViewController()
		
		let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
		
		if viewcontroler.seg_control_1.selectedSegmentIndex == 0	/* french*/
		{
			dictRectoVerso = Dictionary(uniqueKeysWithValues: zip(arrayFrenchWords, arrayEnglishWords))
			
			cell.textLabel?.text = dictRectoVerso.description
		}
		else
		{
			dictRectoVerso = Dictionary(uniqueKeysWithValues: zip(arrayEnglishWords, arrayFrenchWords))
			
			cell.textLabel?.text = dictRectoVerso.description
		}
		return cell
	}
//--------------------------------


}





























