
import Foundation

class SpeakerLine
{
    
    
    var speakers: [Speaker]     // all products in the line
    
    init(includeSpeakers: [Speaker])
    {
        
        speakers = includeSpeakers
    }
    
    class func speakerLines() -> [SpeakerLine]
    {
        return [self.speakerList()]
    }
    
    // Private methods
    
    private class func speakerList() -> SpeakerLine {
        var speakers = [Speaker]()
        
        speakers.append(Speaker(first_name: "Daniel", last_name: "Radcliffe", interests: "metlobal, carovanie", speaker_city: "Bratislava", speaker_country: "Slovensko", description: "Viera Lutherová pracuje ako školská a poradenská psychologička v Kremnici. Je aktívnou členkou Inštitútu psychoterapie a socioterapie. Veľa číta, píše, prednáša po celom Slovensku pre učiteľov, psychológov a vychovávateľov v detských domovoch. Najviac ju baví facilitovať skupiny, rozprávať sa s ľuďmi, pomáhať iným a sebe v osobnostnom raste. Jej životným cieľom je zistiť, čo je vlastne za človeka a čo chce. Okrem psychológie ju zaujíma prírodné staviteľstvo, hlinené stavby, omietky a celkovo trvalo udržateľný spôsob života.", imageName: "speaker1.jpg", imageName2: "speaker2.png" ))
        
        
        
        return SpeakerLine(includeSpeakers: speakers)
    }
    
    
}













