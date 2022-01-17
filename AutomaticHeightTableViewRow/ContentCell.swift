//
//  ContentCell.swift
//  AutomaticHeightTableViewRow
//
//  Created by George Philip Malayil on 17/01/22.
//

import UIKit

class ContentCell: UITableViewCell {
    @IBOutlet var primaryStack: UIStackView!
    @IBOutlet var previewsView: PreviewsView!

    func loadImage() {
        previewsView.loadImage()
    }

}
