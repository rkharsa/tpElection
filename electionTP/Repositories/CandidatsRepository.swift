//
//  CandidatsRepository.swift
//  electionTP
//
//  Created by Rani Kharsa on 04/12/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
final class CandidatsRepository:ObservableObject{
    private let path = "Candidat"
    @Published var candidats:[Candidat]=[]
    
    func getCandidats(){
        //TODO
     }
    
    func addCandidat(_ id:  Int){
         do{
            //TODO
         } catch{
             fatalError("adding candidat failed")
         }
     }
    
    func removeCandidat(_ id:  Int){
         do{
            //TODO
         } catch{
             fatalError("removing candidat failed")
         }
     }
}
