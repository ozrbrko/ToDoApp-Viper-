//
//  YapilacakIsDetayInteractor.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class YapilacakIsDetayInteractor : PresenterToInteractorYapilacakIsDetayProtocol {
    
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        
        do{
            try db?.executeUpdate("UPDATE yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ? ", values: [yapilacak_is,yapilacak_id])
        }catch{}
        db?.close()
    }
}
