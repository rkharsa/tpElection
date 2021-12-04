//
//  CustomTextEditor.swift
//  electionTP
//
//  Created by Rani Kharsa on 28/11/2021.
//

import SwiftUI

struct CustomTextEditor: View {
    let placeholder: String
    @Binding var text: String
    let internalPadding: CGFloat = 5

    var body: some View {
        ZStack(alignment: .topLeading) {
            TextField(placeholder,text: $text)
                .padding(EdgeInsets(top: 7, leading: 2, bottom: 0, trailing: 0))
                .padding(internalPadding)
        }.onAppear() {
            UITextView.appearance().backgroundColor = .clear
        }.onDisappear() {
            UITextView.appearance().backgroundColor = nil
        }
    }
}

struct CustomTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextEditor(placeholder: "Placeholder", text: .constant("text"))
    }
}
