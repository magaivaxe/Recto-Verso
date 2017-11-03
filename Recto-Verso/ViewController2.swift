

//----------- Librarys -----------
import UIKit
import Foundation
//--------------------------------

class ViewController2: UIViewController,
					   UITableViewDataSource, UITableViewDelegate
{

//----- TableView configuration ----
	
	//- Number of lines-
	func tableView(_ tableView: UITableView,
	               numberOfRowsInSection section: Int) -> Int
	{
		return 20
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

//------------ Outlets -------------
	@IBOutlet weak var seg_control_2: UISegmentedControl!
	@IBOutlet weak var definitions_2: UITextView!
	@IBOutlet weak var add_words: UITextField!
	@IBOutlet weak var add_definitions: UITextField!
	@IBOutlet weak var edit: UIButton!
	@IBOutlet weak var erase: UIButton!
	@IBOutlet weak var add: UIButton!
	@IBOutlet weak var go_dictionary: UIButton!
	@IBOutlet weak var table_view: UITableView!
//----------------------------------
	

    override func viewDidLoad()
	{
        super.viewDidLoad()
		
	//-- Styles --
		//let styles = Styles()
		
	//------------
		

    }


}





























