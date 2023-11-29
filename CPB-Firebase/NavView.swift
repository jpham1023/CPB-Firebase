//
//  NavView.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/14/23.
//

import Foundation
import SwiftUI

struct NavView: View{
    
    @EnvironmentObject var viewobject: collegeViewModel
    @State var name:String = ""
    @State var location:String = ""
    @State var webpage:String = ""
    @State var students:String = ""
    var body: some View{
        VStack{
            
            TextField("Enter amount of students", text: $students)
            TextField("Enter name of college", text: $name)
            TextField("Enter location ", text: $location)
            TextField("Enter webpage ", text: $webpage)
            
            Button("+"){
                let newCollege = College(collegename: name, location: location, numberOfStudents: students, webpage: webpage)
                viewobject.addToArray(currentCollege: newCollege)
                print(viewobject.myarray)
                name = " "
                location = " "
                webpage = " "
                students = " "
        }
            
            }
        
        
    }
}
