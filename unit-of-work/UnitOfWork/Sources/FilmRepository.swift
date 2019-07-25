//
//  FilmRepository.swift
//  UnitOfWork
//
//  Created by Hung Truong on 7/11/19.
//

import Foundation

open class FilmRepository: IUnitOfWork {
    
    typealias T = Film
    
    public let INSERT = "INSERT"
    public let MODIFY = "MODIFY"
    public let DELETE = "DELETE"
    
    internal let filmDatabase: FilmDatabase
    internal var context: Dictionary<String, Array<Film>>?
    
    public init(context: Dictionary<String, Array<Film>>, filmDatabase: FilmDatabase) {
        
        self.context = context
        self.filmDatabase = filmDatabase
    }
    
    // MARK: - Publics
    
    public func registerNew(object: Film) {
        print("Registering \(object.title) for insert in context")
        self.register(object: object, operation: self.INSERT)
    }
    
    public func registerModified(object: Film) {
        print("Registering \(object.title) for modify in context")
        self.register(object: object, operation: self.MODIFY)
    }
    
    public func registerDeleted(object: Film) {
        print("Registering \(object.title) for delete in context")
        self.register(object: object, operation: self.DELETE)
    }
    
    public func commit() {
        if context == nil || context!.count == 0 {
            return
        }

        if (context?.keys.contains(self.INSERT))! {
            self.commitInsert()
        }
        
        if (context?.keys.contains(self.MODIFY))! {
            self.commitModify()
        }
        
        if (context?.keys.contains(self.DELETE))! {
            self.commitDelete()
        }
    }
    
    
    // MARK: - Internals
    
    internal func register(object: Film, operation: String) {
        var filmsToOperate = self.context![operation]
        if filmsToOperate == nil {
            filmsToOperate = Array<Film>()
        }
        filmsToOperate?.append(object)
        self.context![operation] = filmsToOperate
        
    }
    
    internal func commitInsert() {
        let filmsToBeInserted: Array<Film>? = self.context![self.INSERT]
        for film: Film in filmsToBeInserted! {
            print("Saving \(film.title) to database")
            self.filmDatabase.insert(film: film)
        }
    }
    
    internal func commitModify() {
        let filmsToBeModified: Array<Film>? = self.context![self.MODIFY]
        for film: Film in filmsToBeModified! {
            print("Modifying \(film.title) to database")
            self.filmDatabase.modify(film: film)
        }
    }
    
    internal func commitDelete() {
        let filmsToBeDeleted: Array<Film>? = self.context![self.DELETE]
        for film: Film in filmsToBeDeleted! {
            print("Deleting \(film.title) to database")
            self.filmDatabase.delete(film: film)
        }
    }
}
