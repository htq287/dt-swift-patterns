//
//  GenericItemRepository.swift
//  Repository
//
//  Created by Hung Truong on 7/21/19.
//

import Foundation

class GenericItemRepository: IBaseRepository {
    
    static var si = GenericItemRepository()
    
    typealias T = BaseObject
    
    let db: Database
    
    init() {
        self.db = Database(databasePath: "")
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
