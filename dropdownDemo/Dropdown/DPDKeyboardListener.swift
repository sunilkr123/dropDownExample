 
import UIKit

internal final class KeyboardListener {
	
	static let sharedInstance = KeyboardListener()
	
	fileprivate(set) var isVisible = false
	fileprivate(set) var keyboardFrame = CGRect.zero
	fileprivate var isListening = false
	
	deinit {
		stopListeningToKeyboard()
	}
	
}

//MARK: - Notifications

extension KeyboardListener {
	
	func startListeningToKeyboard() {
		if isListening {
			return
		}
		
		isListening = true

	}
	
	func stopListeningToKeyboard() {
		NotificationCenter.default.removeObserver(self)
	}
	
	@objc
	fileprivate func keyboardWillShow(_ notification: Notification) {
		isVisible = true
		keyboardFrame = keyboardFrame(fromNotification: notification)
	}
	
	@objc
	fileprivate func keyboardWillHide(_ notification: Notification) {
		isVisible = false
		keyboardFrame = keyboardFrame(fromNotification: notification)
	}
	
    //FIXME:- fix it later
	fileprivate func keyboardFrame(fromNotification notification: Notification) -> CGRect {
        return  CGRect.zero
	}
}
//}/UIResponder.UIKeyboardFrameEndUserInfoKey ((notification as NSNotification).userInfo?[UIResponder()] as? NSValue)?.cgRectValue ??
