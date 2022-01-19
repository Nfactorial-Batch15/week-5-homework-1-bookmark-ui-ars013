//
//  SecondView.swift
//  HW1.2
//
//  Created by Арслан on 19.01.2022.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift



class SecondView: UIViewController {
    
    var label: UILabel = {
        let label = UILabel()
        label.text = "Bookmark App"
        label.textColor = .black
        label.frame = CGRect(x: 130, y: 56, width: 130, height: 22)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    var label2: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Save your first \n     bookmark"
        label.textColor = .black
        label.frame = CGRect(x: 75, y: 366, width: 358, height: 92)
        label.font = UIFont.boldSystemFont(ofSize: 36)
        return label
    }()

    var but: UIButton = {
        let but = UIButton(frame: CGRect(x: 16, y: 710, width: 350, height: 58))
        but.backgroundColor = .black
        but.setTitle("Add bookmark", for: .normal)
        but.setTitleColor(.white, for: .normal)
        but.layer.cornerRadius = 16
        but.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)


        return but
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.95, green: 0.95, blue: 0.93, alpha: 1)

        view.addSubview(label)
        
        view.addSubview(label2)

        view.addSubview(but)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
    
    

}
