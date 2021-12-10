//
//  Candidat.swift
//  electionTP
//
//  Created by Rani Kharsa on 10/12/2021.
//

import FirebaseFirestoreSwift
import UIKit

struct Candidat:Identifiable,Codable,Equatable{
    @DocumentID var id : String?
    var name : String
}
