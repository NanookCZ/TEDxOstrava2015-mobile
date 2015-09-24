import Foundation

class SpeakerLine
{

    var speakers: [Speaker]
    
    init(includeSpeakers: [Speaker])
    {
        speakers = includeSpeakers 
    }

    class func speakerLines() -> [SpeakerLine] {
        return [self.isSpeakers()]
    }
    
    private class func isSpeakers() -> SpeakerLine {
        var speakers = [Speaker]()
        
        speakers.append(Speaker(first_name: "Daniel", last_name: "Radcliffe", imageName: "apple-watch.png", interests: "travelling, swimming, witching", country: "CZ"))
        speakers.append(Speaker(first_name: "Ron", last_name: "Weasley", imageName: "ron.png", interests: "travelling, swimming, witching", country: "UK"))
        
        
        return SpeakerLine(includeSpeakers: speakers)
    }
    
}













