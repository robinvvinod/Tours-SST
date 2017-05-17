//
//  location.swift
//  Tour @SST
//
//  Created by Storm Lim on 26/10/16.
//  Copyright © 2016 J.Lim. All rights reserved.
//

import UIKit

struct loc {
    var name = String()
    var loc = String()
    var des = String()
    var tag = String()
    var id = String()
    
    init(nameII: String, locII: String, desII: String, tagII: String, id_init: String) {
        self.name = nameII
        self.loc = locII
        self.des = desII
        self.tag = tagII
        self.id = id_init
        
        let defaults = UserDefaults.standard
        if defaults.object(forKey: self.id) == nil {
            if self.name == "Weed Garden" {
                defaults.set(true, forKey: self.id)
            } else {
                defaults.set(false, forKey: self.id)
            }
        }
    }
}
