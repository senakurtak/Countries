//
//  Favorites.swift
//  Countries
//
//  Created by Sena Kurtak on 7.08.2022.
//

import Foundation

class Favorites: ObservableObject{
    private var datas : Set<String>
    private let saveKey = "Favorites"
    init(){
        // load our saved data
        datas = []
    }
    func contains (_ data: Data) -> Bool {
        datas.contains(data.name)
    }
    func add (_ data : Data){
        objectWillChange.send()
        datas.insert(data.name)
        save()
    }
    func remove (_ data : Data){
        objectWillChange.send()
        datas.remove(data.name)
        save()
    }
    func save(){
        //write out our data
    }
}
