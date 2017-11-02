//
//  ViewController.swift
//  Mega Recto-Verso
//
//  Created by eleves on 17-11-01.
//  Copyright © 2017 eleves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
//============ VIEW 1 ==============

//------------ Outlets -------------
	@IBOutlet weak var logo: UIImageView!
	@IBOutlet weak var go_insert_words: UIButton!
	@IBOutlet weak var seg_control_1: UISegmentedControl!
	@IBOutlet weak var pick_letter: UIPickerView!
	@IBOutlet weak var pick_word: UIPickerView!
	@IBOutlet weak var definitions_1: UITextView!
//----------------------------------

	
	
	
	
	
	
//==================================
	
//============ VIEW 2 ==============

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
	//----------------------
	
//----------------------------------

//==================================
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
	}



}



