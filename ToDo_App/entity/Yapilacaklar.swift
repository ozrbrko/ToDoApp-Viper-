//
//  Yapilacaklar.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class Yapilacaklar {
    
    var yapilacak_id:Int?
    var yapilacak_is:String?
    
    
    init(){
        
    }
    
    init(yapilacak_id:Int,yapilacak_is:String){
        
        self.yapilacak_id = yapilacak_id
        self.yapilacak_is = yapilacak_is
    }
    
}
