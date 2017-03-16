//
//  RecipientExtension.swift
//  SlapChat
//
//  Created by William Brancato on 3/16/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
import CoreData

extension Recipient {
    
    override public var description: String { return self.twitterHandle!}
    
    convenience init(context: NSManagedObjectContext, name: String, phone: Int) {
        self.init(context: context)
        self.name = name
        self.twitterHandle = "@\(name)"
        self.phoneNumber = "(215) 555 \(phone)"
    }
}

