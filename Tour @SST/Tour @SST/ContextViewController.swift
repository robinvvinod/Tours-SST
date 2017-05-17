//
//  ContextViewController.swift
//  Tour @SST
//
//  Created by Orbit on 24/4/17.
//  Copyright © 2017 J.Lim. All rights reserved.
//

import UIKit

class ContextViewController: ViewController {
    
    var segment = 2
    
    @IBOutlet weak var initButton: UIButton!
    
    func displayInit(Text: String) {
        initButton.setTitle(Text, for: UIControlState.normal)
        initButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        initButton.titleLabel?.textAlignment = NSTextAlignment.center
    }

    @IBOutlet weak var subtitleText: UILabel!
    
    @IBAction func buttonTapped(_ sender: Any) {
        switch segment {
            
        case 2:
            displayInit(Text: "This game will take you on a tour through the School of Science and Technology, Singapore campus!")
            
        case 3:
            displayInit(Text: "Click on places to unlock others. See if you can unlock all 11!")
            
        default:
            self.performSegue(withIdentifier: "finishedInit", sender: sender)
        }
        segment += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setForFirstLaunch()
        let defaults = UserDefaults.standard
        if defaults.object(forKey: "initialised") != nil {
            if defaults.bool(forKey: "initialised") == false {
                defaults.set(true, forKey: "initialised")
                initButton.alpha = 1
                subtitleText.alpha = 1
            } else {
                //Skip VC
                UIView.animate(withDuration: 0, animations: {
                self.performSegue(withIdentifier: "finishedInit", sender: self)
                })
            }
        }
    }

    override func viewDidLoad() {
        displayInit(Text: "Hi! Welcome to the Tours @SST app!")
    }
    
    func setForFirstLaunch() {
        let defaults = UserDefaults.standard
        if defaults.object(forKey: "initialised") == nil {
            defaults.set(false, forKey: "initialised")
        }
    }
}
