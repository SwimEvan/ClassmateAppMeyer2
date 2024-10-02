//
//  ViewController.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/2/24.
//

import UIKit
class AppData{
    static var num = 0
    static var names = [String]()
    static var attendence = [String]()
    static var nickname = [String]()
}

class ViewController: UIViewController {
    var classroom = [Classmate]()
    var hi = 0
    @IBOutlet weak var studentOutlet: UILabel!
    @IBOutlet weak var passwordOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        classroom.append(Classmate(name: "Evan", attendence: "A", nickname: "Flutin Evan"))
        classroom.append(Classmate(name: "Eva", attendence: "B", nickname: "No Pickle Noftz"))
        classroom.append(Classmate(name: "Ava", attendence: "A", nickname: "Abba Ava"))
        classroom.append(Classmate(name: "Justin", attendence: "C", nickname: "Wicked Weber"))
        classroom.append(Classmate(name: "Brennan", attendence: "A", nickname: "Breaking Brennan"))
        classroom.append(Classmate(name: "Cam", attendence: "A", nickname: "Chef Cam"))
        classroom.append(Classmate(name: "John", attendence: "A", nickname: "Jimmy John"))
        classroom.append(Classmate(name: "Jayden", attendence: "C", nickname: "Sleepy Sawyer"))
        classroom.append(Classmate(name: "Sean", attendence: "C", nickname: "Boat Gone Sean"))
        classroom.append(Classmate(name: "Ryan", attendence: "B", nickname: "Rainbow Ryan"))
        classroom.append(Classmate(name: "Logan", attendence: "A", nickname: "Goog Ball Googan"))
        classroom.append(Classmate(name: "Michael", attendence: "B", nickname: "Michael Michael Motorcycle"))
        classroom.append(Classmate(name: "Daniel", attendence: "A", nickname: "Bananiel"))
        classroom.append(Classmate(name: "Matthew", attendence: "C", nickname: "Glitch Fitch"))
        classroom.append(Classmate(name: "Ryan", attendence: "A", nickname: "Rat Ryan"))
        classroom.append(Classmate(name: "Peter", attendence: "A", nickname: "Peter Kickle"))
        while(AppData.names.count-1 < classroom.count-1){
            AppData.names.append("\(classroom[hi].name)")
            AppData.attendence.append("\(classroom[hi].attendence)")
            AppData.attendence.append("\(classroom[hi].nickname)")
            hi += 1
        }
    }
    
    @IBAction func editorModeAction(_ sender: UIButton) {
        if (passwordOutlet.text == "skibidi toilet"){
            performSegue(withIdentifier: "EditorModeSegue", sender: nil)
        }
    }
    
    @IBAction func prevAction(_ sender: UIButton) {
        if(AppData.num == 0){
            AppData.num = classroom.count-1
        }
        else{
            AppData.num -= 1
        }
        studentOutlet.text = "Student:\nName: \(classroom[AppData.num].name)\nNickname: \(classroom[AppData.num].nickname)\n Attendence: \(classroom[AppData.num].attendence)"
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
                if(AppData.num == classroom.count-1){
            AppData.num = 0
        }
        else{
            AppData.num += 1
        }
        studentOutlet.text = "Student:\nName: \(classroom[AppData.num].name)\nNickname: \(classroom[AppData.num].nickname)\n Attendence: \(classroom[AppData.num].attendence)"
        
    }
    
}

