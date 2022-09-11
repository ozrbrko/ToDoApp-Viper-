//
//  YapilacakIsKayitRouter.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation


class YapilacakIsKayitRouter : PresenterToRouterYapilacakIsKayitProtocol {
    
    static func createModule(ref: YapilacakIsKayitVC) {
        ref.yapilacakKayitPresenterNesnesi = YapilacakIsKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = YapilacakIsKayitInteractor()
    }
    
}
