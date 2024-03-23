//
//  Router.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 23/03/2024.
//

import Foundation
import SwiftUI

protocol Router {
    
    var navPath: NavigationPath { get }
    
    func navigate(to destination: Destination)
    func navigateBack(_ option: BackNavigationOption)
    func setRoot(_ root: Destination)
}
