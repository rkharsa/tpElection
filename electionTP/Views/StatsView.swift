//
//  StatsView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI
import StockCharts

struct StatsView: View {
    var candidats : [String] = ["obama","jacque","rani","eminem","obama","jacque","rani","eminem"]
    var body: some View {
        VStack{
            List(candidats, id: \.self){  _ in
                VStack{
                    VStack(alignment: .leading) {
                        Text("Dennis Concepcion")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Random guy")
                        
                        CapsuleChartView(percentageOfWidth: 0.6, style: CapsuleChartStyle(capsuleColor: Color.blue))
                            .padding(.bottom).padding(.top)
                }
                }
           
                
        }
        Spacer()
        }
            
}
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
