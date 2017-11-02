
import Foundation
import UIKit


class Styles
{
	func styleUITextViews(textView tv: UITextView,
	                    radius r: CGFloat,
	                    font f: UIFont,
	                    fontSize fs: CGFloat,
	                    borderWidth bw: CGFloat,
	                    borderColor bc: CGColor,
	                    bgColor bg: CGColor!)
	{
		tv.clipsToBounds = true
		tv.font?.withSize(fs)
		tv.font = f
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
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
	
	func styleSegmentedControl(segmentedControl sc: UISegmentedControl,
	                           radius r: CGFloat,
	                           borderWidth bw: CGFloat,
	                           borderColor bc: CGColor,
	                           bgColor bg: CGColor!)
	{
		sc.clipsToBounds = true
		sc.layer.cornerRadius = r
		sc.layer.borderWidth = bw
		sc.layer.borderColor = bc
		sc.layer.backgroundColor = bg
	}
	
	func styleTableView(tableView tv: UITableView,
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
	
	func styleTextField(textView tv: UITextView,
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

