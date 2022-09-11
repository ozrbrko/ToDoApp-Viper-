//
//  YapilacakIsDetayVC.swift
//  ToDo_App
//
//  Created by Burak Özer on 20.03.2022.
//

import UIKit

class YapilacakIsDetayVC: UIViewController {
    
    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacakIs:Yapilacaklar?
    var yapilacakDetayPresenterNesnesi: ViewToPresenterYapilacakIsDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()


        if let y = yapilacakIs {
            tfYapilacakIs.text = y.yapilacak_is
        }
        
        YapilacakIsDetayRouter.createModule(ref: self)
    }
    

  
    @IBAction func buttonGuncelle(_ sender: Any) {
        
        if let yi = tfYapilacakIs.text, let y = yapilacakIs {
            
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
            
        }
    }
    
    
    

    
}
