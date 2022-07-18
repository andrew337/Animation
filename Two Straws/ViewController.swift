//
//  ViewController.swift
//  Two Straws
//
//  Created by Admin on 7/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView : UIImageView!
    var currentAnmiation = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [], animations: {
            switch self.currentAnmiation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1:
                self.imageView.transform = .identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)

            case 3:
                self.imageView.transform = .identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            case 5:
                self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = UIColor.green

            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = UIColor.clear
            default:
                break
            }
        }) { finished in
            sender.isHidden = false
        }

        
        currentAnmiation += 1
        
        if currentAnmiation > 7 {
            currentAnmiation = 0
        }
    }
    
}

