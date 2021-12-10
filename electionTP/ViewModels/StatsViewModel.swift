//
//  StatsViewModel.swift
//  electionTP
//
//  Created by Rani Kharsa on 04/12/2021.
//

import Foundation
import Combine

final class StatsViewModel:ObservableObject{
    @Published var voteRepository = VoteRepository()
    @Published var candidats : [Vote] = [Vote(name:"obama",voteNumber:10)]
    @Published var totalVotes : Int = 100
    private var cancellables : Set<AnyCancellable> = []
    
    init(){
        
    }
    
    func calcPercentage(subTotal:Float,total:Float) -> Float{
        return subTotal/total
    }
}
