//
//  StatsView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI
import StockCharts

struct StatsView: View {
    @StateObject var  statsViewModel :StatsViewModel
    var body: some View {
        VStack{
            List(statsViewModel.candidats, id: \.self){  result in
                VStack{
                    VStack(alignment: .leading) {
                        Text(result.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text(String(result.voteNumber))+Text("/")+Text(String(statsViewModel.totalVotes))
                        
                        CapsuleChartView(percentageOfWidth: CGFloat(statsViewModel.calcPercentage(subTotal: Float(result.voteNumber), total: Float(statsViewModel.totalVotes))), style: CapsuleChartStyle(capsuleColor: Color.blue))
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
        StatsView(statsViewModel: StatsViewModel())
    }
}
