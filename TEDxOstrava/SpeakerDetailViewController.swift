//
//  SpeakerDetailViewController.swift
//  TEDxOstrava
//
//  Created by Svetlana Margetová on 20.09.15.
//  Copyright (c) 2015 Svetlana Margetová. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {
    
    
    //Model
    
    
    var speaker: Speaker?
    @IBOutlet weak var SpeakerHeader: UINavigationItem!
    
    @IBOutlet weak var speakerImageView: UIImageView!
    
    @IBOutlet weak var speakerCity: UILabel!
    @IBOutlet weak var speakerLastName: UILabel!
    @IBOutlet weak var speakerFirstName: UILabel!
    
    @IBOutlet weak var speakerCountry: UILabel!
    @IBOutlet weak var speakerDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        speakerImageView.image = speaker?.image
        speakerImageView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        SpeakerHeader.title = speaker!.first_name + " " + speaker!.last_name
        speakerDescription.text = speaker?.description
        speakerCountry.text = speaker?.speaker_country
        speakerCity.text = speaker?.speaker_city
        
        
        
    }
    
}
