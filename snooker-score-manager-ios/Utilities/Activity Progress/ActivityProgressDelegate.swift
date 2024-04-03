//
//  ActivityProgressDelegate.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 03/04/2024.
//

import Foundation

protocol ActivityProgressDelegate {
    func activityProgressDelegate(_ progressIndicator: ActivityProgressIndicator, didUpdateProgress progress: Int)
    func activityProgressDelegate(_ progressIndicator: ActivityProgressIndicator, didFailWithError error: Error)
    func activityDidBegin(_ progressIndicator: ActivityProgressIndicator)
    func activityDidFinish(_ progressIndicator: ActivityProgressIndicator)
}
