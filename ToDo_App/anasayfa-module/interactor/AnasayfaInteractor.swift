//
//  AnasayfaInteractor.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let veritabaniUrl = URL(fileURLWithPath: hedefYol).appendingPathComponent("yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniUrl.path)
    }
    
    func tumYapilacaklariAl() {
        
        var liste = [Yapilacaklar]()
        
        db?.open()
        
        do{
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
            
            while q.next() {
                let yapilacak_id = Int(q.string(forColumn: "yapilacak_id"))!
                let yapilacak_is = q.string(forColumn: "yapilacak_is")!
                
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
                
                liste.append(yapilacak)

            }
            
                    anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

            
        }catch{}
        
        db?.close()
    }
    
    func yapilacakAra(aramaKelimesi: String) {
        var liste = [Yapilacaklar]()

        db?.open()
        do{
            let q = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while q.next() {
                let yapilacak_id = Int(q.string(forColumn: "yapilacak_id"))!
                let yapilacak_is = q.string(forColumn: "yapilacak_is")!
                
                let yapilacak = Yapilacaklar(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
                
                liste.append(yapilacak)

            }
            
                    anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

            
        }catch{}
        db?.close()
    }
    
    func yapilacakSil(yapilacak_id: Int) {
        db?.open()
        
        do{
            try db?.executeUpdate("DELETE FROM yapilacaklar WHERE yapilacak_id = ?", values: [yapilacak_id])
            tumYapilacaklariAl()
        }catch{}
        
        db?.close()
        
        
    }
}
