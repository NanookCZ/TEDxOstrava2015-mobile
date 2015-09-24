//
//  SpeakerTableViewCell.swift
//  TEDxOstrava
//
//  Created by Svetlana Margetová on 20.09.15.
//  Copyright (c) 2015 Svetlana Margetová. All rights reserved.
//

import UIKit

class SpeakerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var SpeakerImage: UIImageView!

    @IBOutlet weak var SpeakerInterests: UILabel!
    @IBOutlet weak var SpeakerFirstName: UILabel!
    @IBOutlet weak var SpeakerLastName: UILabel!
    
    func configureCellWith(speaker: Speaker) {
        SpeakerImage.image = speaker.image
        SpeakerFirstName.text = speaker.first_name
        SpeakerLastName.text = speaker.last_name
        SpeakerInterests.text = speaker.interests
    }
    
}
