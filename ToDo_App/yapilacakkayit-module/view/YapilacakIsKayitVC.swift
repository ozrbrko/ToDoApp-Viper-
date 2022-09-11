//
//  YapilacakIsKayitVC.swift
//  ToDo_App
//
//  Created by Burak Özer on 20.03.2022.
//

import UIKit

class YapilacakIsKayitVC: UIViewController {
    
    
    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacakKayitPresenterNesnesi:ViewToPresenterYapilacakIsKayitProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacakIsKayitRouter.createModule(ref: self)

    }
    

    @IBAction func buttonEkle(_ sender: Any) {
        
        if let yia = tfYapilacakIs.text {
        
            yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yia)
        
        }
        
    }
    
    
}
