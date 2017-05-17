//
//  StoryViewController.swift
//  Tour @SST
//
//  Created by Orbit on 23/4/17.
//  Copyright © 2017 J.Lim. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var StoryText: UIButton!
    
    var name = String()
    var loc = String()
    var des = String()
    
    func unlock(places: [loc], statement: String) {
        let defaults = UserDefaults.standard
        for place in places {
            if defaults.object(forKey: place.id) != nil && defaults.bool(forKey: place.id) == false {
                defaults.set(true, forKey: place.id)
            }
        }
        StoryText.setTitle(statement, for: UIControlState.normal)
        StoryText.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        StoryText.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    func branch() {
        switch name {
            
        case "Weed Garden":
            unlock(places: [Canteen,Atrium], statement: "The school gates look inviting as you step through them into the school compound. The words, 'School of Science and Technology, Singapore' are proudly displayed on the top of the glass roof in front of you. You walk through, passing by the General Office. A garden catches your eye...")
            
        case "Canteen":
            unlock(places: [Lvl_1_Labs,Field], statement: "As you walk though the school, you feel a sudden pang of hunger. Following the signs bring you to a well stocked canteen...")
            
        case "Lvl 1 Labs":
            unlock(places: [Lvl_2_Labs], statement: "Along the way, you see some students in lab coats having a conversation about biotechnology. You follow them to a collection of labs...")
            
        case "Field":
            unlock(places: [ISH], statement: "The loud sounds of students playing soccer direct your attention to a large field. You decide to take a look...")
            
        case "Lvl 2 Labs":
            unlock(places: [Tinkerers_Steps,INC_HQ], statement: "You decide to use a staircase and find yourself in another collection of labs...")
            
        case "Tinkerer's Steps":
            unlock(places: [Info_Hub], statement: "Looking around for the Robotics Room brings you to a large staircase...")
            
        case "Atrium":
            unlock(places: [], statement: "Walking to the side opposite the canteen, you find yourself in a large space with benches scattered around for students to work and have conversations...")
            
        case "ISH":
            unlock(places: [], statement: "Walking across the field, you see a large building with a indoor sports hall...")
            
        case "INC HQ":
            unlock(places: [], statement: "Walking to the third story, you find a room filled with computers...")
            
        case "Info Hub":
            unlock(places: [], statement: "Walking up to the fourth level, you find a air-conditioned library. It is quiet with many chairs and tables arranged for students to study. You decide to walk around...")
            
        default:
            print("Not recognised")
        }
    }
    
    override func viewDidLoad() {
        branch()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "transitionEnd" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.name = name
            destinationVC.loc = loc
            destinationVC.des = des
        }
    }
    
}
