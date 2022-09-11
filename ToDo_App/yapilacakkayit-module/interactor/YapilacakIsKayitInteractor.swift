//
//  YapilacakIsKayitInteractor.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class YapilacakIsKayitInteractor :PresenterToInteractorYapilacakIsKayitProtocol {
    
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    
    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db?.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [yapilacak_is])
        }catch{}
        
        db?.close()
    }
    
}
