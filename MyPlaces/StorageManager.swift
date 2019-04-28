//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Michael Sidoruk on 28/04/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
