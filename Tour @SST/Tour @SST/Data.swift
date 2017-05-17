//
//  Data.swift
//  Tour @SST
//
//  Created by Orbit on 23/4/17.
//  Copyright © 2017 J.Lim. All rights reserved.
//

import Foundation

var infohub_key = "infohub"
var lvl1labs_key = "lvl1lab"
var lvl2labs_key = "lvl2lab"
var field_key = "field"
var ish_key = "ish"
var atrium_key = "atrium"
var weed_gd_key = "weed_gd"
var canteen_key = "canteen"
var t_steps_key = "t_steps"
var inc_hq_key = "inchq"

var Info_Hub = loc(nameII: "Info Hub", locII: "Block A, Level 4", desII: "The Infohub is SST’s library and conference centre combined into a single facility. Students can book meeting rooms through the librarian for free, which helps students looking for conducive environments to meet and discuss in peace.", tagII: "edu", id_init: infohub_key)

var Lvl_1_Labs = loc(nameII: "Lvl 1 Labs", locII: "Block C, Level 1", desII: "Opportunities for independent and joint research experiment about in our Science Lab, which comprises twelve laboratories (four dedicated to the Applied Sciences), as well as tissue culture room, a research lab and an engineering lab.", tagII: "edu", id_init: lvl1labs_key)

var Lvl_2_Labs = loc(nameII: "Lvl 2 Labs", locII: "Block C, Level 2", desII: "The unique multifunctional NAWIS® system in the Physics laboratories allows for more flexibility and mobility in these spaces. Special research equipment is also available in the laboraties to support student’s explorations in the fields of analytical chemistry, biomedical sciences and sensor technology.", tagII: "edu", id_init: lvl2labs_key)

var Field = loc(nameII: "Field", locII: "Center Of School, Level 1", desII: "The SST Field is where students play territorial invasion games such as Handball, Captain’s Ball as well as Soccer. This is also the place where students practice for their 2.4 km runs.", tagII: "phy", id_init: field_key)

var ISH = loc(nameII: "ISH", locII: "Block D, Level 1", desII: "The Indoor Sports Hall (ISH) was funded by the non-profit organisation Ngee Ann Kongsi and is now the area where most indoor are played, such as netball as well as basketball and floorball. The ISH’s rooftop is also usable as a game court for Basketball and Netball.", tagII: "phy", id_init: ish_key)

var Atrium = loc(nameII: "Atrium", locII: "Block A, Level 1", desII: "The Atrium is a large open area for our students to study and do their projects, allowing students free access to a large and spacious hall.", tagII: "oth", id_init: atrium_key)

var Weed_Garden = loc(nameII: "Weed Garden", locII: "Block B & C, Level 1", desII: "The Weed Garden is a garden located near the front gate, and is Zen styled, taking inspiration from rock gardens.", tagII: "oth", id_init: weed_gd_key)

var Canteen = loc(nameII: "Canteen", locII: "Block C, Level 1", desII: "The canteen is our next destination. With various stalls serving noodles, western food and even a cafe opposite it, students will be spoilt for choice when it comes to finding food after a tiring day of study. Furthermore, it’s also the place where students mingle and discuss their favourite topics.", tagII: "oth", id_init: canteen_key)

var Tinkerers_Steps = loc(nameII: "Tinkerer's Steps", locII: "Block C, Level 3", desII: "The Tinkerer's Steps is a place where Secondary 1 students often gather due to the proximity to their classrooms and is a connector between Level 3 and Level. It is also located just outside the Robotics Club, a highly coveted CCA for many of the students who join.", tagII: "oth", id_init: t_steps_key)

var INC_HQ = loc(nameII: "INC HQ", locII: "Block C, Level 3", desII: "SST INC Headquarters is a unique space for aspiring entrepreneurs, SST INC is a state-of-the-art business incubator which hosts start-up companies run by our Information and Communication Technology Talent Development Programme (ICT TDP) students. Computers workshops, exhibitions and project discussions are held here on a regular basis, and the venue has been the nerve of centre for project discussions and held here on a regular basis, and the venue has been the nerve centre for project discussions which have yielded notable results.", tagII: "oth", id_init: inc_hq_key)

var allPlaces = [Info_Hub,Tinkerers_Steps,INC_HQ,Lvl_2_Labs,Lvl_1_Labs,Field,ISH,Canteen,Weed_Garden,Atrium]
