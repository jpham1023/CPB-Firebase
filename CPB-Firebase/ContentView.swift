//
//  ContentView.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel = collegeViewModel()
    @State var name = ""
    @State var location = ""
    var body: some View {
        Text("College Lists")
        NavigationStack{
            List{
                ForEach(viewmodel.myarray, id:\.self){ currentCollege in
                    Text(currentCollege.collegename)
                    Text(currentCollege.location)
                    
                
                }
                NavigationLink("Add college") {
                   NavView()
                }
                
                
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
