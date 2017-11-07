

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
	var file : String!
//----------------------------------

    override func viewDidLoad()
	{
		super.viewDidLoad()
		
	//-- Styles --
		//let styles = Styles()
		
	//------------
	
	//-- TextViews --
		add_french.placeholder = "Inserez un mot..."
		add_english.placeholder = "Insert a word..."
	//---------------
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
		let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default,
		                                            reuseIdentifier: nil)
		cell.textLabel?.text = ""
		
		return cell
	}
//--------------------------------


}





























