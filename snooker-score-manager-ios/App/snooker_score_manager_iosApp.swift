//
//  snooker_score_manager_iosApp.swift
//  snooker-score-manager-ios
//
//  Created by Faizan Tanveer on 23/03/2024.
//

import SwiftUI

@main
struct snooker_score_manager_iosApp: App {
    
    var body: some Scene {
        WindowGroup {
            let baseViewModel = BaseViewModel()
            BaseView(viewModel: baseViewModel, text: "base")
        }
    }
    
}
