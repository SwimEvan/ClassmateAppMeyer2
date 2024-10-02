//
//  EditorViewController.swift
//  ClassmateAppMeyer
//
//  Created by EVAN MEYER on 10/3/24.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var studentLabel: UILabel!
    
    @IBOutlet weak var switchOutlet: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func prevAction(_ sender: UIButton) {
        if(AppData.num == 0){
            AppData.num = AppData.names.count-1
        }
        else{
            AppData.num -= 1
            if(switchOutlet.selectedSegmentIndex == 0){
                AppData.names.sort()
                studentLabel.text = "Student:\n"
                
            }
            if(switchOutlet.selectedSegmentIndex == 1){
                AppData.attendence.sort()
                if(AppData.attendence[AppData.num] == "A"){
                    
                }
            }
            if(switchOutlet.selectedSegmentIndex == 2){
                
            }
        }
    }
    
    @IBAction func nextAction(_ sender: UIButton) {
        if(switchOutlet.selectedSegmentIndex == 0){
            AppData.names.sort()
        }
        if(switchOutlet.selectedSegmentIndex == 1){
            
        }
        if(switchOutlet.selectedSegmentIndex == 2){
            
        }
    }
    
    @IBAction func editAction(_ sender: UIButton) {
    }
    
}
