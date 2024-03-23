//
//  AppRouter.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 23/03/2024.
//

import Foundation
import SwiftUI

class AppRouter: Router, ObservableObject {
    
    @Published var navPath = NavigationPath()

    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack(_ option: BackNavigationOption = .steps(1)) {
        var steps: Int
        
        switch option {
            case .toRoot:
                steps = navPath.count
            case .steps(let k):
                steps = k < navPath.count ? k : 0
        }
        
        navPath.removeLast(steps)
    }
    
    func setRoot(_ root: Destination) {
        navPath.append(root)
    }

}
