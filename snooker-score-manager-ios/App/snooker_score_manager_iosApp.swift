//
//  snooker_score_manager_iosApp.swift
//  snooker-score-manager-ios
//
//  Created by Faizan Tanveer on 23/03/2024.
//

import SwiftUI

@main
struct snooker_score_manager_iosApp: App {
    
    @ObservedObject var appRouter = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appRouter.navPath) {
                let baseViewModel = BaseViewModel()
                BaseView(viewModel: baseViewModel)
                    .navigationDestination(for: Destination.self) { destination in
                        switch destination {
                            case .root:
                                Text(verbatim: .root)
                        }
                    }
            }
        }
        .environmentObject(appRouter)
    }
}
