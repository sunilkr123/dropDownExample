 
import UIKit

extension CustomDropDown {

	public class func setupDefaultAppearance() {
		let appearance = CustomDropDown.appearance()

		appearance.cellHeight = DPDConstant.UI.RowHeight
		appearance.backgroundColor = DPDConstant.UI.BackgroundColor
		appearance.selectionBackgroundColor = DPDConstant.UI.SelectionBackgroundColor
		appearance.separatorColor = DPDConstant.UI.SeparatorColor
//		appearance.cornerRadius = DPDConstant.UI.CornerRadius
//		appearance.shadowColor = DPDConstant.UI.Shadow.Color
//		appearance.shadowOffset = DPDConstant.UI.Shadow.Offset
//		appearance.shadowOpacity = DPDConstant.UI.Shadow.Opacity
//		appearance.shadowRadius = DPDConstant.UI.Shadow.Radius
		appearance.animationduration = DPDConstant.Animation.Duration
		appearance.textColor = DPDConstant.UI.TextColor
		appearance.textFont = DPDConstant.UI.TextFont
	}

}
