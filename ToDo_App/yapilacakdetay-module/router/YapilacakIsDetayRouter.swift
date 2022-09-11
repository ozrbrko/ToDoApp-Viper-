//
//  YapilacakIsDetayRouter.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class YapilacakIsDetayRouter : PresenterToRouterYapilacakIsDetayProtocol {
    
    static func createModule(ref: YapilacakIsDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = YapilacakIsDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacakIsDetayInteractor()
    }
    
}
