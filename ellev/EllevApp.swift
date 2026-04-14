//
//  ellevApp.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 30/03/26.
//

import SwiftUI

@main

struct EllevApp: App {
    
    @State private var schedulingViewModel = SchedulingViewModel()
    
    var body: some Scene {
        WindowGroup {
            WelcomePage()
        }
        .environment(schedulingViewModel)
    }
}
