//
//  YapilacakIsKayitPresenter.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class YapilacakIsKayitPresenter : ViewToPresenterYapilacakIsKayitProtocol{
    
    var yapilacakKayitInteractor: PresenterToInteractorYapilacakIsKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        yapilacakKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
    
}
