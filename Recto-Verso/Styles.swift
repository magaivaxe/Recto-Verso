
import Foundation
import UIKit


class Styles
{
	func styleUIButtons(button b: UIButton,
						font f: UIFont,
						title t: String,
	                    radius r: CGFloat,
	                    borderWidth bw: CGFloat,
	                    borderColor bc: CGColor,
	                    bgColor bg: CGColor?)
	{
		b.clipsToBounds = true
		b.layer.cornerRadius = r
		b.layer.borderWidth = bw
		b.layer.borderColor = bc
		b.layer.backgroundColor = bg
		b.titleLabel?.font = f
		b.setTitle(t, for: .normal)
		b.titleLabel?.adjustsFontSizeToFitWidth = true
	}
	
	func styleUISegmentedControl(segmentedControl sc: UISegmentedControl,
	                             radius r: CGFloat,
	                             borderWidth bw: CGFloat,
	                             tintColor tc: UIColor,
	                             borderColor bc: CGColor,
	                             bgColor bg: CGColor?)
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
	                      textColor tc: UIColor,
						  textAlignment ta: NSTextAlignment,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor?)
	{
		tv.clipsToBounds = true
		tv.font = f
		tv.textColor = tc
		tv.textAlignment = ta
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
	func styleUITableView(tableView tv: UITableView,
	                      radius r: CGFloat,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor?)
	{
		tv.clipsToBounds = true
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
	
	func styleUITextField(textField tv: UITextField,
	                      font f: UIFont,
	                      radius r: CGFloat,
	                      borderWidth bw: CGFloat,
	                      borderColor bc: CGColor,
	                      bgColor bg: CGColor?)
	{
		tv.clipsToBounds = true
		tv.font = f
		tv.layer.cornerRadius = r
		tv.layer.borderWidth = bw
		tv.layer.borderColor = bc
		tv.layer.backgroundColor = bg
	}
    
    func styleUIScrollView(scrollView sv: UIScrollView,
                           radius r: CGFloat,
                           borderWidth bw: CGFloat,
                           borderColor bc: CGColor)
    {
        sv.clipsToBounds = true
        sv.layer.cornerRadius = r
        sv.layer.borderWidth = bw
        sv.layer.borderColor = bc
    }
	
}




















