//
//  Vote.swift
//  electionTP
//
//  Created by Rani Kharsa on 10/12/2021.
//

import FirebaseFirestoreSwift
import UIKit

struct Vote:Identifiable,Codable,Equatable,Hashable{
    @DocumentID var id : String?
    var name : String
    var voteNumber : Int
}
