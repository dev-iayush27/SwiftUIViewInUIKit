//
//  SwiftUIView.swift
//  SwiftUIViewInUIKit
//
//  Created by Ayush Gupta on 25/11/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var buyButtonAction: (() -> Void)?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.white).opacity(0.9)
                .shadow(radius: 2)
            
            VStack(alignment: .leading) {
                Image("blackTop")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 230)
                    .padding(.bottom, 8)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 10,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 10
                        )
                    )
                    .clipped()
                
                Text("Women's Black Cotton Top")
                    .font(.callout)
                    .foregroundColor(.black)
                    .padding(.horizontal, 16)
                
                Text("Free delivery by tomorrow")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)
                    .padding(.horizontal, 16)
                
                HStack {
                    Text("$20.00")
                        .font(.title3)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Text("$16.00")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .strikethrough()
                    
                    Spacer()
                    
                    if let buyButtonAction {
                        Button("Buy", action: buyButtonAction)
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
                
                Spacer()
            }
            
            Spacer()
        }.padding(.all, 20)
    }
}

#Preview {
    SwiftUIView()
}
