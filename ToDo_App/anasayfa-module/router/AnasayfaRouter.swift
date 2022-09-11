//
//  AnasayfaRouter.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class AnasayfaRouter : PresenterToRouterAnasayfaProtocol {
    
    static func createModule(ref: AnasayfaVC) {
        let presenter = AnasayfaPresenter()
        
        
        ref.anasayfaPresenterNesnesi = presenter
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
        
    }
}
