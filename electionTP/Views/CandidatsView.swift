//
//  CandidatsView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct CandidatsView: View {
    @StateObject var candidatsViewModel : CandidatsViewModel
    
    var body: some View {
        VStack{
            HStack{
                List{
                    HStack{
                        CustomTextEditor.init(placeholder: "Candidat", text: $candidatsViewModel.pseudo)
                            .font(.body)
                            .background(Color(UIColor.systemGray6))
                            .accentColor(.green)
                            .frame(width:350 ,height: 40)
                            .cornerRadius(8)
                    }
                    ForEach(candidatsViewModel.candidats, id: \.id) { candidat in
                        HStack{
                            Spacer()
                            Text(candidat.name)
                                .font(.title3)
                            
                            
                            Spacer()
                            
                        }.contentShape(Rectangle()).frame(width: .infinity, height:50, alignment: .leading)
                        
                        
                    } .onDelete(perform: candidatsViewModel.delete)
                }.listStyle(PlainListStyle())
            }
            
            Spacer()
            
            HStack{
                ZStack {
                    Button("Ajouter "){
                        print("soumettre");
                    }.frame(maxWidth: .infinity).padding().background(Color.blue).foregroundColor(Color.white)
                    
                    
                }
            }
            
            
        }
    }
}

struct CandidatsView_Previews: PreviewProvider {
    static var previews: some View {
        CandidatsView(candidatsViewModel: CandidatsViewModel())
    }
}
