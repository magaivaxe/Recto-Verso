

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
	var dictRectoVerso = [String:String]()
	var arrayFrenchWords = [String]()
	var arrayEnglishWords = [String]()
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
	

    }

	
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





























