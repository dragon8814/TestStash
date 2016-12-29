//
//  DataNotificationApp.swift
//  pointgo
//
//  Created by UUUM, Inc on 11/28/16.
//  Copyright © 2016 UUUM, Inc. All rights reserved.
//

import RealmSwift
import ObjectMapper

class DataNotificationApp: Object {
    dynamic var appId : Int = 0
    dynamic var title : String = ""
    dynamic var content : String = ""
    dynamic var send_time : Double = 0.0
    dynamic var url : String = ""
    dynamic var share : String = ""
    dynamic var badge : Int = 0
    dynamic var screen_id: Int = 0
    dynamic var isUpload = false
    
    func save() -> Void {
        let realm = try! Realm()
        try! realm.write {
            realm.add(self)
        }
    }
    
    func updateData(){
        let realm = try! Realm()
        try! realm.write {
            realm.add(self, update: true)
        }
    }
    
    
    override static func primaryKey() -> String? {
        return "appId"
    }
    
    func upload() {
        let realm = try! Realm()
        try! realm.write {
            self.isUpload = true
        }
    }
    
    func remove() {
        let realm = try! Realm()
        try! realm.write {
            realm.delete(self)
        }
    }
    
    class func all() -> [DataNotificationApp] {
        let realm = try! Realm()
        return [DataNotificationApp](realm.objects(DataNotificationApp.self))
    }
    
    class func allNew() -> [DataNotificationApp] {
        let realm = try! Realm()
        return [DataNotificationApp](realm.objects(DataNotificationApp.self).filter("isUpload = false"))
    }
    
    class func all(withSorted property: String, ascending: Bool) -> [DataNotificationApp] {
        let realm = try! Realm()
        return [DataNotificationApp](realm.objects(DataNotificationApp.self).sorted(byProperty: property, ascending: ascending))
    }
    
    class func removeAll(completionHandler:() -> Void){
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
            completionHandler()
        }
    }
    
    class func test() {
        //abcdddddd
        //1213412423453
    }
    
    func updateData(){
        let realm = try! Realm()
        try! realm.write {
            realm.add(self, update: true)
        }
    }
    
    class func tessssst() {
        
    }
}
