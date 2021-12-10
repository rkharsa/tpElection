//
//  ContentView.swift
//  electionTP
//
//  Created by Rani Kharsa on 13/11/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
    let coloredAppearance = UINavigationBarAppearance()
    coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(Color.blue)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white,.font:UIFont(name: "Avenir", size: 20)!]
    coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
  
    UINavigationBar.appearance().standardAppearance = coloredAppearance
    UINavigationBar.appearance().compactAppearance = coloredAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
    UINavigationBar.appearance().tintColor = .white
  }

    var body: some View {
     TabRootView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






