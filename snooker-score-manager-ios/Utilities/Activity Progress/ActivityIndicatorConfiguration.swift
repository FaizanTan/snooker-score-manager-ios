//
//  ActivityIndicatorConfiguration.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 03/04/2024.
//

import Foundation
import SwiftUI

struct ActivityIndicatorConfiguration {
    
    var style: any ProgressViewStyle
    var text: String?
    var textColor: Color?
    var indicatorColor: Color?
    var image: Image?
    
    var unwrappedTextColor: Color {
        guard let color = textColor else {
            return .black
        }
        
        return color
    }
    
}
