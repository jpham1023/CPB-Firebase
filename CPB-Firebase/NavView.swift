//
//  NavView.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/14/23.
//

import Foundation
import SwiftUI

struct NavView: View{
    
    @ObservedObject var viewobject = collegeViewModel()
    @State var name:String = ""
    @State var location:String = ""
    @State var webpage:String = ""
    @State var numberStudents:String = " "
    var body: some View{
        TextField("Enter name of college", text: $name)
        TextField("Enter location ", text: $location)
        TextField("Enter webpage ", text: $webpage)
        TextField("Enter amount of students ", text: $numberStudents)
        
        Button("+"){
            let newCollege = College(collegename: name, location: location, numberOfStudents: numberStudents, webpage: webpage)
            viewobject.addToArray(currentCollege: newCollege)
            name = " "
            location = " "
            webpage = " "
            numberStudents = " "
        }
        
    }
}
