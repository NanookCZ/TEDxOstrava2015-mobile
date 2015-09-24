//
//  Product.swift
//
//
//  Created by Duc Tran on 3/22/15.
//
//

import Foundation
import UIKit



// Represents a generic product. Need an image named "default"

class Speaker
{
    var first_name: String
    var last_name: String
    var interests: String
    var speaker_city: String
    var speaker_country: String
    var description: String
    var image: UIImage
    var round_image: UIImage
    
    
    init(first_name: String, last_name: String, interests: String, speaker_city: String, speaker_country: String, description: String, imageName: String, imageName2: String)
    {
        self.first_name = first_name
        self.last_name = last_name
        self.interests = interests
        self.speaker_city = speaker_city
        self.speaker_country = speaker_country
        self.description = description
        if let img = UIImage(named: imageName) {
            image = img

            
        } else {
            image = UIImage(named: "default")!
            
        }
        
        if let img2 = UIImage(named: imageName2) {
            round_image = img2
            
            
        } else {
            round_image = UIImage(named: "default")!
            
        }

}
}











