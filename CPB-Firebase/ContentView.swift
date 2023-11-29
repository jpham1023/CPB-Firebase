//
//  ContentView.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/8/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewmodel: collegeViewModel
    var body: some View {
        Text("College Lists")
        NavigationStack{
            List{
                
                ForEach(viewmodel.myarray, id:\.collegename){ currentCollege in
                    VStack{
                        Text(currentCollege.collegename)
                        Text(currentCollege.numberOfStudents)
                        
                    }
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
