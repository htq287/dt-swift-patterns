//
//  BaseObject.swift
//  Repository
//
//  Created by Hung Q. Truong on 7/21/19.
//

import Foundation
import RealmSwift
import Foundation

open class BaseObject: Object {
    
    @objc dynamic var id: String = ""

    override public static func primaryKey() -> String? {
        return "id"
    }
}
