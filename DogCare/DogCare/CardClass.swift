//
//  CardClass.swift
//  DogCare
//
//  Created by Justin Torres on 2/14/18.
//  Copyright © 2018 Justin Torres. All rights reserved.
//

import Foundation
import UIKit

class CardClass {

    
    var title: String?
    var cover: String?
    var number: String?
    var body: String?
    var audioName: String?
    
    init(title: String?, cover: String?, number: String?, body: String?, audioName: String?) {
        self.title = title
        self.cover = cover
        self.number = number
        self.body = body
        self.audioName = audioName
    }
    
}
