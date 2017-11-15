

//----------- Libraries ------------
import UIKit
//----------------------------------

class ViewController2: UIViewController,
					   UITextFieldDelegate,
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

	//================================== View Did Load ====================================
    override func viewDidLoad()
	{
		super.viewDidLoad()
        
    //- Saves and load -
        loadSaves()
    //------------------
		
	//---------------------------------- Styles ---------------------------------------
		let styles = Styles()
		
		styles.styleUIButtons(button: go_dictionary,
							  font: UIFont(name: "Menlo", size: 15)!,
							  title: "Retour/Back",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
							  bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
        
        styles.styleUIButtons(button: french_button,
                              font: UIFont(name: "Menlo", size: 15)!,
                              title: "Français",
                              radius: 10,
                              borderWidth: 1.4,
                              borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
                              bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
        
        styles.styleUIButtons(button: english_button,
                              font: UIFont(name: "Menlo", size: 15)!,
                              title: "English",
                              radius: 10,
                              borderWidth: 1.4,
                              borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
                              bgColor: UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor)
		
		styles.styleUIButtons(button: add,
							  font: UIFont(name: "Menlo", size: 15)!,
							  title: "Ajouter/Add",
							  radius: 10,
							  borderWidth: 1.4,
							  borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
							  bgColor: UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor)
		
		styles.styleUITextField(textField: add_french,
								font: UIFont(name: "Menlo", size: 15)!,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
								bgColor: UIColor.white.cgColor)
		
		styles.styleUITextField(textField: add_english,
								font: UIFont(name: "Menlo", size: 15)!,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
								bgColor: UIColor.white.cgColor)
		
		styles.styleUITableView(tableView: table_view,
								radius: 10,
								borderWidth: 1.4,
								borderColor: UIColor.init(red: 206/255, green: 205/255, blue: 210/255, alpha: 1).cgColor,
								bgColor: UIColor.init(red: 238/255, green: 237/255, blue: 243/255, alpha: 1).cgColor)
		
	//-----------------------------------------------------------------------------------
	
	//---------------- TextViews -------------------
		add_french.placeholder = "Inserez un mot..."
		add_english.placeholder = "Insert a word..."
	//----------------------------------------------
		
	//------------------- Buttons ------------------
        french_button.isHidden = true
        add.setTitle("Ajouter", for: .normal)
        go_dictionary.setTitle("Retour", for: .normal)
	//----------------------------------------------
		
    }
	//===================================================================================
    
	//=================================== All buttons ===================================
	
    //----------- Add and save traductions -------------
	@IBAction func add_words(_ sender: UIButton)
	{
		let save = SaveLoadMenager()		/* Load the class locally */
		
		if (add_french.text == nil || add_french.text == "" ||			/* To avoid eraser the dictionary and table view */
			add_english.text == nil || add_english.text == "")
		{
			if french_button.isHidden == true
			{
				alertSimple(title: "Attention!", message: "Il faut ajouter un mot français et d'autre anglais.")
			}
			else
			{
				alertSimple(title: "Warning!", message: "You have to add one french and other english word.")
			}
			return
		}
		else
		{
			arrayFrenchWords.append(add_french.text!)		/* Append the words to arrays */
			arrayEnglishWords.append(add_english.text!)
			
			save.save(theData: arrayFrenchWords as AnyObject, fileName: "french")		/* Save the words in the arrays*/
			save.save(theData: arrayEnglishWords as AnyObject, fileName: "english")
			
			add_french.text?.removeAll()		/* After to add clear text fields */
			add_english.text?.removeAll()
			
			table_view.reloadData()				/* Table view new data reload  */
		}
	}
    //--------------------------------------------------
	
	//------------- Change view2 language --------------
    @IBAction func change_language(_ sender: UIButton)
    {
        switch sender.tag
        {
        case 0:                                             /* French - blue */
            french_button.isHidden = true
            english_button.isHidden = false
			
            add.setTitle("Ajouter", for: .normal)
			add.layer.backgroundColor = UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor
			
            go_dictionary.setTitle("Retour", for: .normal)
			go_dictionary.layer.backgroundColor = UIColor.init(red: 21/255, green: 126/255, blue: 250/255, alpha: 1).cgColor
			
		case 1:                                             /* English - red */
            french_button.isHidden = false
            english_button.isHidden = true
			
            add.setTitle("Add", for: .normal)
			add.layer.backgroundColor = UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor
			
            go_dictionary.setTitle("Back", for: .normal)
			go_dictionary.layer.backgroundColor = UIColor.init(red: 252/255, green: 61/255, blue: 56/255, alpha: 1).cgColor
        default:
            break
        }
		table_view.reloadData() 			/* Call the table view function according to case 0 and case 1 */
    }
	//--------------------------------------------------
	
	//===================================================================================
	
	//============================== Initial save and load ==============================
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
	//===================================================================================
	
	//=================================== Table View ====================================
	
	//-------------- Number of cells ---------------
	func tableView(_ tableView: UITableView,
	               numberOfRowsInSection section: Int) -> Int
	{
		return arrayFrenchWords.count /* Its load the number of elements */
	}
	//----------------------------------------------
	
	//---------- Show cells information ------------
	func tableView(_ tableView: UITableView,
	               cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default,
		                                            reuseIdentifier: nil)
		dictRectoVerso = Dictionary(uniqueKeysWithValues: zip(arrayFrenchWords, arrayEnglishWords))
		
		//To do the sorted dictionary**********************************************************************************************
		
		let french = [String](dictRectoVerso.keys)[indexPath.row]
		let english = [String](dictRectoVerso.values)[indexPath.row]
		
		if french_button.isHidden == true	/* french*/
		{
			cell.textLabel?.text = "\(french) => \(english)"
		}
		else
		{
			cell.textLabel?.text = "\(english) => \(french)"
		}
		return cell
	}
	//----------------------------------------------
	
	//-------------- Is it editable? ---------------
	func tableView(_ tableView: UITableView,
	               canEditRowAt indexPath: IndexPath) -> Bool
	{
		return true
	}
	//----------------------------------------------
	
	//---------------- Cell edition ----------------
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
	//----------------------------------------------
	
	//===================================================================================
	
	//================ Keyboard =================
	
	//----- Touches begin anything -----
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
	{
		self.view.endEditing(true)		/* touches on view end the edition */
	}
	//----------------------------------
	
	//------ Field should return -------
	func textFieldShouldReturn(_ textField: UITextField) -> Bool
	{
		textField.resignFirstResponder()		/* Key return hide the keyboard on text fields */
		return true
	}
	//----------------------------------
	
	//===========================================
	
	//================= Alerts ==================
	func alertSimple(title t: String, message m: String)
	{
		let alert = UIAlertController(title: t, message: m, preferredStyle: UIAlertControllerStyle.alert)
		
		//- Buttons -
		alert.addAction(UIAlertAction(title: "OK",
									  style: UIAlertActionStyle.default,
									  handler: { (action) in alert.dismiss(animated: true,
																		   completion: nil)}))
		//-----------
		self.present(alert, animated: true, completion: nil)
	}
	//===========================================
}





























