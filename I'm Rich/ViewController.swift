//
//  ViewController.swift
//  I'm Rich
//
//  Created by inGM on 16.05.2022.
//

import UIKit


class ViewController: UIViewController, loadingItemDelegate  {
    var color: Int = 0
   
    @IBOutlet weak var imRichLable: UILabel!
    @IBOutlet weak var loadingItem: UIActivityIndicatorView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        loadingItem.tintColor = .black
        imRichLable.font = .systemFont(ofSize: 60)
        imRichLable.textColor = .white
        imRichLable.shadowColor = .black
        print(color)
        
    }
    
   
    
}

