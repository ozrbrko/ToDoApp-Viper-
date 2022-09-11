//
//  yapilacakIsKayitProtocols.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

protocol ViewToPresenterYapilacakIsKayitProtocol{
    
    var yapilacakKayitInteractor:PresenterToInteractorYapilacakIsKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
    
}

protocol PresenterToInteractorYapilacakIsKayitProtocol{
    
    func yapilacakEkle(yapilacak_is:String)
    
}

protocol PresenterToRouterYapilacakIsKayitProtocol{
    
    static func createModule(ref:YapilacakIsKayitVC)
    
}
