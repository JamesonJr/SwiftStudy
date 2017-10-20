//
//  ToDoItem.swift
//  ClearStyle
//
//  Created by Eugenie Tyan on 27.09.17.
//  Copyright © 2017 Eugenie Tyan. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var text: String
    var completed: Bool
    
    init (text: String) {
        self.text = text
        self.completed = false
    }

}
