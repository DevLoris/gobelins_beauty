//
//  HistoryTextTableViewCell.swift
//  DiktatBeauty
//
//  Created by Loris Pinna on 05/06/2019.
//  Copyright © 2019 Loris Pinna. All rights reserved.
//

import UIKit

class HistoryTextTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var leftMargin: NSLayoutConstraint!
    @IBOutlet weak var rightMargin: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            textView.font = textView.font?.withSize(24)
            leftMargin.constant = 50
            rightMargin.constant = 50
            break
        default:
            textView.font = textView.font?.withSize(18)
            leftMargin.constant = 10
            rightMargin.constant = 10
        }
        
        self.bounds.size.height = textView.bounds.size.height 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populateWith(value: ImageNode) {
        textView.text = value.text
    }
}
