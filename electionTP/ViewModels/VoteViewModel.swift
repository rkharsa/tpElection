//
//  VoteViewModel.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import Foundation
import Combine
import SwiftUI

final class VoteViewModel:ObservableObject{
    @Published var voteRepository = VoteRepository()
    @Published var candidats : [Candidat] = [Candidat(id: "1", name: "Obama"),Candidat(id: "2", name: "Eminem"),Candidat(id: "3", name: "Jacque")]
    @Published var selection: String?
    private var cancellables : Set<AnyCancellable> = []
    
    init(){
        
    }
}
