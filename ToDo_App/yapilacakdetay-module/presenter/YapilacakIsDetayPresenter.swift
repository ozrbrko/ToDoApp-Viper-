//
//  YapilacakIsDetayPresenter.swift
//  ToDo_App
//
//  Created by Burak Özer on 21.03.2022.
//

import Foundation

class YapilacakIsDetayPresenter : ViewToPresenterYapilacakIsDetayProtocol {
    
    var yapilacakDetayInteractor: PresenterToInteractorYapilacakIsDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
    
}
