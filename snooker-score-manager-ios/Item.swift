//
//  Item.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 23/03/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
