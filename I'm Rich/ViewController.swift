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
    @IBOutlet weak var buttonOutLet: UIButton!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        buttonOutLet.setTitle("Change lable", for: .normal)
        buttonOutLet.tintColor = .systemYellow
        imRichLable.font = .systemFont(ofSize: 60)
        imRichLable.textColor = .white
        imRichLable.shadowColor = .black
        buttonOutLet.titleLabel?.textColor = .white
        
    }
    @IBAction func changeTextLable(_ sender: UIButton) {
        imRichLable.text = "I'm very Rich!"
    }
    
   
    
}

