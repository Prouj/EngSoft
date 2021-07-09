//
//  HideKeyBoard.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import Foundation
import SwiftUI

//#if canImport(UIKit)
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
//#endif


