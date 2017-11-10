

//----------- Librarys ------------
import UIKit
//---------------------------------

class ViewController2: UIViewController,
					   UITableViewDataSource, UITableViewDelegate
{

//------------ Outlets -------------
	@IBOutlet weak var add_french: UITextField!
	@IBOutlet weak var add_english: UITextField!
	@IBOutlet weak var add: UIButton!
	@IBOutlet weak var go_dictionary: UIButton!
	@IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var english_button: UIButton!
    @IBOutlet weak var french_button: UIButton!
    @IBOutlet weak var buttons_view: UIView!
//----------------------------------

//----------- Variables ------------
	var dictRectoVerso : [String:String]!
	var arrayFrenchWords : [String]!
	var arrayEnglishWords : [String]!
//----------------------------------

//== ViewDidLoad =====================================================================
    override func viewDidLoad()
	{
		super.viewDidLoad()
        
    //--------- Saves Menager ---------
        loadSaves()
    //---------------------------------
		
	//------------ Styles -------------
		let styles = Styles()
		
		styles.styleUIButtons(button: go_dictionary,
							  font: UIFont(name: "times", size: 15)!,
							  title: "Retour/Back",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: (UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1).cgColor))
        
        styles.styleUIButtons(button: french_button,
                              font: UIFont(name: "times", size: 15)!,
                              title: "Français",
                              radius: 10,
                              borderWidth: 1.4,
                              borderColor: UIColor.lightGray.cgColor,
                              bgColor: (UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1).cgColor))
        
        styles.styleUIButtons(button: english_button,
                              font: UIFont(name: "times", size: 15)!,
                              title: "English",
                              radius: 10,
                              borderWidth: 1.4,
                              borderColor: UIColor.lightGray.cgColor,
                              bgColor: (UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1).cgColor))
		
		styles.styleUIButtons(button: add,
							  font: UIFont(name: "times", size: 20)!,
							  title: "Ajouter/Add",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.lightGray.cgColor,
							  bgColor: (UIColor.init(red: 52/255, green: 153/255, blue: 245/255, alpha: 1).cgColor))
		
		styles.styleUITextField(textField: add_french,
								font: UIFont(name: "times", size: 20)!,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: (UIColor.init(red: 208/255, green: 250/255, blue: 164/255, alpha: 1).cgColor))
		
		styles.styleUITextField(textField: add_english,
								font: UIFont(name: "times", size: 20)!,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: (UIColor.init(red: 208/255, green: 250/255, blue: 164/255, alpha: 1).cgColor))
		
		styles.styleUITableView(tableView: table_view,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.lightGray.cgColor,
								bgColor: (UIColor.init(red: 208/255, green: 250/255, blue: 164/255, alpha: 1).cgColor))
		
	//------------------------------
	
	//---------- TextViews ---------
		add_french.placeholder = "Inserez un mot..."
		add_english.placeholder = "Insert a word..."
	//------------------------------
		
	//----------- Buttons ----------
        french_button.isHidden = true
        add.setTitle("Ajouter", for: .normal)
        go_dictionary.setTitle("Retour", for: .normal)
	//------------------------------
		
	//--------- Table View ---------
		
		
	//------------------------------
    }
//====================================================================================
    
	//----------- Buttons ----------
    
    //-- Save words --
	@IBAction func add_words(_ sender: UIButton)
	{
		let save = SaveLoadMenager()			/* Load the class locally */
		
		arrayFrenchWords.append(add_french.text!)		/* append the words */
		arrayEnglishWords.append(add_english.text!)
		
		save.save(theData: arrayFrenchWords as AnyObject, fileName: "french")
		save.save(theData: arrayEnglishWords as AnyObject, fileName: "english")
		
		table_view.reloadData()
	}
    //----------------
    
    @IBAction func change_language(_ sender: UIButton)
    {
        switch sender.tag
        {
        case 0:                                             /* French */
            french_button.isHidden = true
            english_button.isHidden = false
            add.setTitle("Ajouter", for: .normal)
            go_dictionary.setTitle("Retour", for: .normal)
        case 1:                                             /* English */
            french_button.isHidden = false
            english_button.isHidden = true
            add.setTitle("Add", for: .normal)
            go_dictionary.setTitle("Back", for: .normal)
        default:
            break
        }
    }
	
	//------------------------------
	
	//-- Saves Menager --
	func loadSaves()
	{
		let load = SaveLoadMenager()			/* Load the class locally */
		
		if load.checkExistingSaves(fileName: "french")
		{
			/* Load the existing arrays */
			arrayFrenchWords = load.loadData(fileName: "french") as! [String]
			arrayEnglishWords = load.loadData(fileName: "english") as! [String]
		}
		else
		{
			/* Create the arrays */
			arrayFrenchWords = [String]()
			arrayEnglishWords = [String]()
			
			/* Create the files*/
			load.save(theData: arrayFrenchWords as AnyObject, fileName: "french")
			load.save(theData: arrayEnglishWords as AnyObject, fileName: "english")
			
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
		dictRectoVerso = Dictionary(uniqueKeysWithValues: zip(arrayFrenchWords, arrayEnglishWords))
		
		let french = [String](dictRectoVerso.keys)[indexPath.row]
		let english = [String](dictRectoVerso.values)[indexPath.row]
		
		if french_button.isHidden == false	/* french*/
		{
			cell.textLabel?.text = "\(french) => \(english)"
		}
		else
		{
			cell.textLabel?.text = "\(english) => \(french)"
		}
		return cell
	}
	
	func tableView(_ tableView: UITableView,
	               canEditRowAt indexPath: IndexPath) -> Bool
	{
		return true
	}
	
	func tableView(_ tableView: UITableView,
	               commit editingStyle: UITableViewCellEditingStyle,
	               forRowAt indexPath: IndexPath)
	{
		let save = SaveLoadMenager()
		
		if editingStyle == UITableViewCellEditingStyle.delete
		{
			arrayFrenchWords.remove(at: indexPath.row)
			arrayEnglishWords.remove(at: indexPath.row)
			
			save.save(theData: arrayFrenchWords as AnyObject, fileName: "french")
			save.save(theData: arrayEnglishWords as AnyObject, fileName: "english")
			
			table_view.reloadData()
		}
	}
	//-----------------------
	
	//- Cell edition -
	
	//----------------
	
//--------------------------------


}





























