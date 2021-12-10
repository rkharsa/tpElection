//
//  TabRootView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct TabRootView: View {
    var body: some View {
        TabView{
            NavigationView{
                VoteView(voteViewModel: VoteViewModel()).navigationBarTitle(Text("Voter"),displayMode: .inline)
            }.tabItem {
                Label("Voter", systemImage: "tray.and.arrow.down")
            }.tag(0)

            NavigationView{
                StatsView(statsViewModel: StatsViewModel()).navigationBarTitle(Text("Stats"),displayMode: .inline)
            }.tabItem {
                Label("Stats", systemImage: "chart.pie.fill")
            }
     
            
            NavigationView{
               CandidatsView(candidatsViewModel: CandidatsViewModel()).navigationBarTitle(Text("Parametrer"),displayMode: .inline)
            }.tabItem {
                Label("Parametrer", systemImage: "gearshape.2")
            }.tag(3)
            
        }
        
    }
}

struct TabRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabRootView()
    }
}
