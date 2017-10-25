//
//  FirebaseStorage.swift
//  From Classic Movies
//
//  Created by 何幸宇 on 10/24/17.
//  Copyright © 2017 X. All rights reserved.
//

import UIKit
import Firebase

let storage = Storage.storage()
let reference = storage.reference()
let images = storage.reference(forURL: "gs://from-classic-movies.appspot.com/Images")
let birdRef = storage.reference(forURL: "gs://from-classic-movies.appspot.com/Images/birds.jpg")


func updateImage(completion:@escaping (UIImage)->Void){
    birdRef.getData(maxSize: 6000000) { (data, error) in
        if let data = data{
           let image = UIImage(data: data)
            completion(image!)
        }
    }
}

func getData(){
    birdRef.getMetadata { (StorageMetaData, error) in
        print("function works")
        if let metaData = StorageMetaData{
            print("got data")
            print(metaData)
        }
    } 
}
let shawshank = storage.reference(forURL: "gs://from-classic-movies.appspot.com/Images/affiche.jpg")
func DELETE(){
    shawshank.delete { (error) in
        if let error = error{
        }else{
            print("deleted")
        }
    }
}


let textRef = storage.reference(forURL: "gs://from-classic-movies.appspot.com/text/text")
func uploard(data: Data){
let uploadTask = textRef.putData(data, metadata: nil)
}
