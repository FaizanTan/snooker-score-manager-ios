//
//  ActivityProgressIndicator.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 03/04/2024.
//

import Foundation
import SwiftUI

struct ActivityProgressIndicator: ViewModifier {
    
    var config: ActivityIndicatorConfiguration
    
    func body(content: Content) -> some View {
        ProgressView {
            if let text = config.text {
                Text(text)
                    .foregroundStyle(config.unwrappedTextColor)
            } else if let image = config.image {
                image
            }
        }
        .tint(config.indicatorColor)
        .progressViewStyle(.circular)
    }
    
}
