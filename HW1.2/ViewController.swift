//
//  ViewController.swift
//  HW1.2
//
//  Created by Арслан on 19.01.2022.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

//extension UIButton {
//
//    func startAnimatingPressActions() {
//        addTarget(self, action: #selector(animateDown), for: [.touchDown, .touchDragEnter])
//        addTarget(self, action: #selector(animateUp), for: [.touchDragExit, .touchCancel, .touchUpInside, .touchUpOutside])
//    }
//
//    @objc private func animateDown(sender: UIButton) {
//        animate(sender, transform: CGAffineTransform.identity.scaledBy(x: 0.95, y: 0.95))
//    }
//
//    @objc private func animateUp(sender: UIButton) {
//        animate(sender, transform: .identity)
//    }
//
//    private func animate(_ button: UIButton, transform: CGAffineTransform) {
//        UIView.animate(withDuration: 0.4,
//                       delay: 0,
//                       usingSpringWithDamping: 0.5,
//                       initialSpringVelocity: 3,
//                       options: [.curveEaseInOut],
//                       animations: {
//                        button.transform = transform
//            }, completion: nil)
//    }
//
//}

class ViewController: UIViewController {
    
    var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Save all interesting links in one app"
        label.textColor = .white
        label.frame = CGRect(x: 16, y: 600, width: 358, height: 92)
        label.font = UIFont.boldSystemFont(ofSize: 36)
        return label
    }()
    
    
    var but: UIButton = {
        let but = UIButton(frame: CGRect(x: 16, y: 710, width: 350, height: 58))
        but.backgroundColor = .white
        but.setTitle("Let's start collecting", for: .normal)
        but.setTitleColor(.black, for: .normal)
        but.layer.cornerRadius = 16
        but.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return but
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let myLayer = CALayer()
        let myImage = UIImage(named: "image 8")?.cgImage
        myLayer.frame = CGRect(x: 0, y: 0, width: 390, height: 614)
        myLayer.contents = myImage
        view.layer.addSublayer(myLayer)
        
        view.addSubview(label)
        
        view.addSubview(but)
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }

}

