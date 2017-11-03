
import Foundation
import UIKit


class Styles
{
	func styleUIButtons(button b: UIButton,
	                    radius r: CGFloat,
	                    borderWidth bw: CGFloat,
	                    borderColor bc: CGColor,
	                    bgColor bg: CGColor!)
	{
		b.clipsToBounds = true
		b.titleLabel?.adjustsFontForContentSizeCategory = true
		b.layer.cornerRadius = r
		b.layer.borderWidth = bw
		b.layer.borderColor = bc
		b.layer.backgroundColor = bg
	}
	
	func styleUISegmentedControl(segmentedControl sc: UISegmentedControl,
	                             radius r: CGFloat,
	                             borderWidth bw: CGFloat,
	                             tintColor tc: UIColor,
	                             borderColor bc: CGColor,
	                             bgColor bg: CGColor!)
	{
		sc.clipsToBounds = true
		sc.layer.cornerRadius = r
		sc.layer.borderWidth = bw
		sc.layer.borderColor = bc
		sc.tintColor = tc
		sc.layer.backgroundColor = bg
	}
	
	func styleUITextViews(textView tv: UITextView,
	                      radius r: CGFloat,
	                      font f: UIFont,
	                      fontSize fs: CGFloat,
	                      textColor tc: UIColor,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor!)
	{
		tv.clipsToBounds = true
		tv.font?.withSize(fs)
		tv.font = f
		tv.textColor = tc
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
	func styleUITableView(tableView tv: UITableView,
	                      radius r: CGFloat,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor!)
	{
		tv.clipsToBounds = true
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
	func styleUITextField(textView tv: UITextView,
	                      font f: UIFont,
	                      fontSize fs: CGFloat,
	                      radius r: CGFloat,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor!)
	{
		tv.clipsToBounds = true
		tv.font = f
		tv.font?.withSize(fs)
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
}

