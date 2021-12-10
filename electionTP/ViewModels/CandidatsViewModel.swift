//
//  CandidatsViewModel.swift
//  electionTP
//
//  Created by Rani Kharsa on 04/12/2021.
//

import Foundation
import Combine
final class CandidatsViewModel:ObservableObject{
    @Published var candidatRepository = CandidatsRepository()
    @Published var candidats : [Candidat] = [Candidat(id: "id", name: "Obama")]
    @Published var pseudo : String=""
    private var cancellables : Set<AnyCancellable> = []
    
    init(){
        
    }
    
    func delete(at offsets: IndexSet) {
        print("remove")
        
    }
}
