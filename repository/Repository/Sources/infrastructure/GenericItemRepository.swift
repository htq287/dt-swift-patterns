//
//  GenericItemRepository.swift
//  Repository
//
//  Created by Hung Q. Truong on 7/21/19.
//

import Foundation

open class GenericItemRepository: IBaseRepository {
    
    //static var si = GenericItemRepository()
    
    typealias T = BaseObject
    
    let db: Database
    
    init(_ database: Database) {
        self.db = database
    }
    
    // MARK: - IBaseRepository Implementations
    
    func add(_ object: BaseObject) {
        db.add(object)
    }
    
    func update(_ object: BaseObject) {
        db.update(object)
    }
    
    func delete(_ object: BaseObject) {
        db.delete(object)
    }
    
}
