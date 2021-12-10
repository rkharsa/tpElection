//
//  VoteRepository.swift
//  electionTP
//
//  Created by Rani Kharsa on 04/12/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

final class VoteRepository:ObservableObject{
    private let path = "Vote"
    @Published var votes:[Vote]=[]
    init() {
        getVotes()
    }
    
    func addVote(idCandidat:  String){
        do{
            //TODO
        } catch{
            fatalError("Adding vote failed")
        }
        
        
    }
    
    func getVotes(){
        //TODO
    }
    
    
}
