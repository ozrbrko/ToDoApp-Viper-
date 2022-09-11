//
//  YapilacakIsDetayProtocols.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

protocol ViewToPresenterYapilacakIsDetayProtocol{
    
    var yapilacakDetayInteractor:PresenterToInteractorYapilacakIsDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
    
}

protocol PresenterToInteractorYapilacakIsDetayProtocol{
    
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
    
}

protocol PresenterToRouterYapilacakIsDetayProtocol{
    
    static func createModule(ref:YapilacakIsDetayVC)
    
}
