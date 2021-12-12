//
//  electionTPApp.swift
//  electionTP
//
//  Created by Rani Kharsa on 13/11/2021.
//

import SwiftUI
import Firebase
@main
struct electionTPApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
