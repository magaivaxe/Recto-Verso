/*

Class to sort Dictionaries

*/

import Foundation
import UIKit

class ToSort
{
	func arraySortedFromDictionary(arrayKey ak: [String],
								   arrayValue av: [String],
								   sortedBy sb: String?,			/* + or - or nil */
								   keyOrValue kov: String) -> [String]
	{
		var arrayToReturn = [String]()
		
		let dict = Dictionary(uniqueKeysWithValues: zip(ak, av))
		
		if sb == "+"	/* Sorted crecent */
		{
			if kov == "key"
			{
				let tupleSorted = dict.sorted(by: { $0.0 < $1.0 })
				
				for (key, _) in tupleSorted
				{
					arrayToReturn.append(key)
				}
			}
			if kov == "value"
			{
				let tupleSorted = dict.sorted(by: { $0.1 < $1.1 })
				
				for (_, value) in tupleSorted
				{
					arrayToReturn.append(value)
				}
			}
		}
		if sb == "-"	/* Sorted decrecent */
		{
			if kov == "key"
			{
				let tupleSorted = dict.sorted(by: { $0.0 > $1.0 })
				
				for (key, _) in tupleSorted
				{
					arrayToReturn.append(key)
				}
			}
			if kov == "value"
			{
				let tupleSorted = dict.sorted(by: { $0.1 > $1.1 })
				
				for (_, value) in tupleSorted
				{
					arrayToReturn.append(value)
				}
			}
		}
		
		return arrayToReturn
	}
}
