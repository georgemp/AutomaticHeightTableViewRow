//
//  PreviewsView.swift
//  AutomaticHeightTableViewRow
//
//  Created by George Philip Malayil on 17/01/22.
//

import UIKit

class PreviewsView: UIView {
    var imageView: UIImageView!
    var heightConstraint: NSLayoutConstraint!

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        let imageView = UIImageView()
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        /*
        imageView.setContentHuggingPriority(UILayoutPriority(250), for: .horizontal)
        imageView.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        imageView.setContentCompressionResistancePriority(UILayoutPriority(350), for: .horizontal)
        imageView.setContentCompressionResistancePriority(UILayoutPriority(251), for: .vertical)
        */
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderColor = UIColor.systemRed.cgColor
        imageView.layer.borderWidth = 3.0
        self.imageView = imageView
        
        
    }
    
    func loadImage() {
        if heightConstraint == nil {
            let heightConstraint = NSLayoutConstraint(item: self.imageView!, attribute: .height, relatedBy: .equal, toItem: self.imageView!, attribute: .width, multiplier: CGFloat(4000/6000), constant: 0)
            self.heightConstraint = heightConstraint
            heightConstraint.isActive = true
        }
        
        self.imageView.image = UIImage(named: "pexels")
    }
}
