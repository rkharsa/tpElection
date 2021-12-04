//
//  voteView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct VoteView: View {
    @State private var pseudo : String="Rien"
    var candidats : [String] = ["obama","jacque","rani","eminem"]
    @StateObject var voteViewModel : VoteViewModel
    @State private var selection: String?
    var body: some View {
        VStack{

            HStack{
                VStack{
                    List{
                        ForEach(candidats, id: \.self) { candidat in
                            HStack{
                                Spacer()
                                Text(candidat)
                                    .font(.title3)
                                  
                                    .foregroundColor(selection==candidat ?  Color.green:Color.primary )
                                                               
                                Spacer()
                                                           
                            }.contentShape(Rectangle()).frame(width: .infinity, height:50, alignment: .leading).onTapGesture {
                                selection=candidat
                            }
                             

                        }
                    }.listStyle(PlainListStyle())
                 
                    
 
                }
            }
            Spacer()
            HStack{
                ZStack {
                    Button("Soumettre"){
                        print("soumettre");
                    }.frame(maxWidth: .infinity).padding().background(Color.blue).foregroundColor(Color.white)
                  
                        
                }
            }
        }.padding(.top,-50)
    }
}

struct voteView_Previews: PreviewProvider {
    static var previews: some View {
        VoteView(voteViewModel: VoteViewModel())
    }
}
