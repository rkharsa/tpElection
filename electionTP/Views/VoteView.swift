//
//  voteView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct VoteView: View {
    @StateObject var voteViewModel : VoteViewModel
    var body: some View {
        VStack{
            HStack{
                VStack{
                    List{
                        ForEach(voteViewModel.candidats, id: \.id) { candidat in
                            HStack{
                                Spacer()
                                Text(candidat.name)
                                    .font(.title3)
                                
                                    .foregroundColor(voteViewModel.selection==candidat.id ?  Color.green:Color.primary )
                                
                                Spacer()
                            
                            }.contentShape(Rectangle()).frame(width: .infinity, height:50, alignment: .leading).onTapGesture {
                                voteViewModel.selection=candidat.id
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
        }
    }
}

struct voteView_Previews: PreviewProvider {
    static var previews: some View {
        VoteView(voteViewModel: VoteViewModel())
    }
}
