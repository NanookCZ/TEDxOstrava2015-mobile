import Foundation
import UIKit

class Speaker {
    var first_name: String
    var last_name: String
    var image: UIImage
    var interests: String
    var country: String
    
    init(first_name: String, last_name:String, imageName: String, interests: String, country: String)
    {
        self.first_name = first_name
        self.last_name = last_name
        self.interests = interests
        self.country = country
        if let img = UIImage(named: imageName) {
            image = img
        } else {
            image = UIImage(named: "default")!
        }
        
        
        
        
    }
    
}