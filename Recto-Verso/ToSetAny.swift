/*

Class to set names, images, etc to any

*/
import Foundation
import UIKit

class ToSetAny
{
	func setTextToButtons(arrayOfButtons ab: [UIButton],
	                      arrayOfText at: [String],
	                      numberOfButtons nb: Int)
	{
		for i in 0...(nb - 1)
		{
			ab[i].setTitle(at[i], for: .normal)
		}
	}
}


//func setImagesToCards()						/* Interpoled channel to set images to cards after randomly choices */
//{
//	var number = 0
//	for imgView in arrayOfAllImgViews
//	{
//		imgView.image = UIImage(named: arrayOfRandomCharacters[number])
//		number = number + 1
//	}
//}

