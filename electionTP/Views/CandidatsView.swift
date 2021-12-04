//
//  CandidatsView.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct CandidatsView: View {
    @State  var pseudo : String=""
    var candidats : [String] = ["obama","jacque","rani","eminem"]
    
    func delete(at offsets: IndexSet) {
            print("remove")
          
    }
    
    var body: some View {
        VStack{
            HStack{
                
                List{
                                        HStack{
                                            CustomTextEditor.init(placeholder: "Candidat", text: $pseudo)
                                                                     .font(.body)
                                                                     .background(Color(UIColor.systemGray6))
                                                                     .accentColor(.green)
                                                                     .frame(width:350 ,height: 40)
                                                                     .cornerRadius(8)
                                        }
                                        ForEach(candidats, id: \.self) { candidat in
                                            HStack{
                                                Spacer()
                                                                           Text(candidat)
                                                                               .font(.title3)
                                                                          
                                                                               
                                                Spacer()
                                                                           
                                            }.contentShape(Rectangle()).frame(width: .infinity, height:50, alignment: .leading)
                                             
                                            
                                        } .onDelete(perform: delete)
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
        CandidatsView()
    }
}
