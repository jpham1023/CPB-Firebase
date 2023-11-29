//
//  cpbViewModel.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/8/23.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class collegeViewModel: ObservableObject{
    @Published var myarray:[College] = []
    init(){
        pullFromFirebase()
    }
    
    
    func addToArray(currentCollege:College){
        myarray.append(currentCollege)
        addToFirebase(college: currentCollege)
    }
    func addToFirebase(college:College){
        let databaseref = Database.database().reference()
        databaseref.child("Colleges").child(college.collegename).child("location").setValue(college.location)
        databaseref.child("Colleges").child(college.collegename).child("students").setValue(college.numberOfStudents)
        databaseref.child("Colleges").child(college.collegename).child("webpage").setValue(college.webpage)
        
    }
    func pullFromFirebase(){
        let databaseref = Database.database().reference().child("Colleges")
        databaseref.getData {myError,myDataSnapshot in
        var newarray: [College] = []
            //print(myDataSnapshot)
            
            for college in myDataSnapshot?.children.allObjects as! [DataSnapshot]{
                print(college)
             // print(myError)
            let name = college.key
               guard let dict = college.value as? [String: Any] else{return}
                guard let location = dict["location"] else{return}
                guard let students = dict["students"] else{return}
                guard let webpage = dict["webpage"] else{return}
               newarray.append(College(collegename: name, location: location as! String, numberOfStudents: students as! String, webpage: webpage as! String))
               //print(newarray)
            }
            self.myarray = newarray
          
    
           }
    }
}
