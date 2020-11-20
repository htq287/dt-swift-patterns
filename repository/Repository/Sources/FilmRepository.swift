//
//  FilmRepository.swift
//  Repository
//
//  Created by Hung Q. Truong on 7/21/19.
//

import Foundation

open class FilmRepository {
    
    fileprivate let gr = GenericItemRepository.si
    
    public init() {}
    
    public func add(_ object: Film) {
        gr.add(object)
    }
    
    public func update(_ object: Film) {
        gr.update(object)
    }
    
    public func delete(_ object: Film) {
        gr.delete(object)
    }
}
