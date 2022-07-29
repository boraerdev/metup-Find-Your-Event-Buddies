//
//  PersonView.swift
//  metap
//
//  Created by Bora Erdem on 28.07.2022.
//

import SwiftUI
import Firebase
struct PersonView: View {
    @EnvironmentObject var vm: AuthService
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward").font(.title).foregroundColor(.accentColor)
                Spacer()
                logoutButton

            }
            .padding()
            header
            VStack {
                Text("Tüm Etkinlikleri")
                    .font(.title3)
                .bold()
                Divider()
            }.padding()
            
            Spacer()
        }
       
        
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}

extension PersonView {
    
    
    
    private var logoutButton: some View {
        Button {
            vm.logOut()
        } label: {
            Image(systemName: "power")
                .font(.title2)
        }

    }
    
    private var header: some View {

        VStack {
            HStack {
                
                
                Circle()
                    .frame(width: 70, height: 70)
                
                
                
                VStack(alignment: .leading){
                    Text("Bora Erdem")
                        .fontWeight(.bold)
                    Text("/boraerdev@gmail.com")
                        .foregroundColor(.secondary)
                        .font(.subheadline)

                }
                Spacer()
                Image(systemName: "bubble.left.and.bubble.right.fill")
                    .font(.title)
                    .foregroundColor(.accentColor)
            }.padding()

        }
    }
}
