//
//  BaseView.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 23/03/2024.
//

import SwiftUI

struct BaseView<T: BaseViewModel>: View, Identifiable, Hashable {
    
    internal var id: UUID = UUID()
    var viewModel: T
    
    @EnvironmentObject var router: AppRouter
    
    static func == (lhs: BaseView<T>, rhs: BaseView<T>) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    var body: some View {
        Text(verbatim: .root)
    }
}

#Preview {
    BaseView(viewModel: BaseViewModel())
        .environmentObject(AppRouter())
}



