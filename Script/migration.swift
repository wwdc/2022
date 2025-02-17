import Foundation

struct Submission {
    let name: String
    let status: Status
    let technologies: [String]
    
    let aboutMeUrl: URL?
    let sourceUrl: URL?
    let videoUrl: URL?
    
    enum Status: String {
        case submitted = "Submitted"
        case accepted = "Accepted"
        case winner = "Winner"
        case distinguished = "Distinguished"
        case rejected = "Rejected"
        case unknown = "Unknown"
        
        var iconURLString: String {
            switch self {
            case .submitted:
                "https://img.shields.io/badge/submitted-slategrey?style=for-the-badge"
            case .accepted:
                "https://img.shields.io/badge/accepted-green?style=for-the-badge"
            case .winner:
                "https://img.shields.io/badge/winner-green?style=for-the-badge"
            case .distinguished:
                "https://img.shields.io/badge/distinguished-goldenrod?style=for-the-badge"
            case .rejected:
                "https://img.shields.io/badge/rejected-firebrick?style=for-the-badge"
            case .unknown:
                "https://img.shields.io/badge/unknown-grey?style=for-the-badge"
            }
        }
    }
    
    var row: String {
        let nameRow = if let aboutMeUrl {
            "[\(name)](\(aboutMeUrl.absoluteString))"
        } else {
            "\(name)"
        }
        
        let sourceRow: String = if let sourceUrl {
            "[GitHub](\(sourceUrl.absoluteString))"
        } else {
            "-"
        }
        
        let videoUrl = if let videoUrl {
            "[YouTube](\(videoUrl.absoluteString))"
        } else {
            "-"
        }
        
        let technologiesRow = technologies.joined(separator: ", ")
        
        let statusRow: String = "![\(status.rawValue)](\(status.iconURLString))"
        
        return "|" + [
            nameRow,
            sourceRow,
            videoUrl,
            technologiesRow,
            statusRow
        ].joined(separator: "|") + "|"
    }
}

let migration = """
|[Anatole Debierre](https://github.com/a2br)|[GitHub](https://github.com/a2br/vote)|[YouTube](https://www.youtube.com/watch?v=414azCHcAgk)|SwiftUI|Accepted|
|[Aryan Chaubal](https://github.com/chaubss)|[GitHub](https://github.com/chaubss/Turing-Machine-WWDC22)||SwiftUI, AVFoundation|Accepted|
|[Ataberk Turan](https://github.com/ataberkturan)|[GitHub](https://github.com/ataberkturan/ParkinsonAI)||SwiftUI, Combine, CoreML, PencilKit|Accepted|
|[Audrey Wang](https://github.com/audreyolaf)|[GitHub](https://github.com/audreyolaf/Theia)|[YouTube](https://youtu.be/bLVWnQGnx9s)|SwiftUI, AVFoundation|Accepted|
|[Ayush Singh](https://github.com/Ayush21082)|[GitHub](https://github.com/Ayush21082/Flip-The-Cup)|[YouTube](https://youtu.be/1zy_tqStrtA)|SwiftUI, SceneKit, ARKit|Accepted|
|[Bartłomiej Pluta](https://github.com/bpluta)|[GitHub](https://github.com/bpluta/Pwnground)||SwiftUI, Combine|Accepted|
|Bedir Ekim|[GitHub](https://github.com/BedirEkim/Securencrypt-WWDC22)||SwiftUI, Vision|Accepted|
|Berkin Ceylan|[GitHub](https://github.com/berkinceylan/WWDC22)||SwiftUI, CoreML|Submitted|
|[Bryanza Novirahman](https://github.com/bryanzanr)|[GitHub](https://github.com/bryanzanr/drawer)|[YouTube](https://youtu.be/ZIRQrQKmxsQ)|SwiftUI|Rejected|
|[Byeon Jinha](https://github.com/Byeonjinha)|[GitHub](https://github.com/Byeonjinha/CooC_Archive)||SwiftUI|Accepted|
|[Carl Voller](https://www.linkedin.com/in/carl-ian-voller)|[GitHub](https://github.com/Portatolova/WWDC2022-Wholesome)||SwiftUI, PencilKit, CoreML, NaturalLanguage|Accepted|
|[Chubo Han](https://github.com/soulwinter)|[GitHub](https://github.com/soulwinter/Genetics-Lab)|[YouTube](https://www.youtube.com/watch?v=-1Vt5Ta_dYw)|SwiftUI|Accepted|
|[Conrad Crawford](https://cnrad.dev)|[GitHub](https://github.com/cnrad/polyvisual)||SwiftUI, AVFoundation|Accepted|
|[Cynara Costa](https://www.linkedin.com/in/cynaracosta/)|[GitHub](https://github.com/CynaraCosta/graviNewton-WWDC22)|[YouTube](https://www.youtube.com/watch?v=kbO4dDJVx-A)|SwiftUI, AVKit|Accepted|
|[Daegun Choi](https://github.com/ChoiysApple)|[GitHub](https://github.com/ChoiysApple/Asteroids-Plus)|[YouTube](https://youtu.be/OffJ0KTX0mI)|SwiftUI, SpriteKit |Accepted|
|[Davin Djayadi](https://github.com/davindj)|[GitHub](https://github.com/davindj/cofi)||SwiftUI, SceneKit, Combine |Accepted|
|[Diego Henrique Silva Oliveira](https://github.com/DiegoHSO)|[GitHub](https://github.com/DiegoHSO/DinnerRun.git)|[YouTube](https://youtu.be/OOMrZj_hsI8)|SwiftUI|Accepted|
|[Don Chia](https://donchia.tech)|[GitHub](https://github.com/DonChiaQE/ReGen)||SwiftUI|Accepted|
|[Eunbi Cho](https://github.com/Eunbi-Cho)|[GitHub](https://github.com/Eunbi-Cho/Feel-the)||SwiftUI, SpriteKit|Accepted|
|[Frank Chu](https://twitter.com/cyongfrank)|[GitHub](https://github.com/yongfrank/OhMyFlag-WWDC22)|[Twitter](https://twitter.com/cyongfrank/status/1518663840463872000)|SwiftUI, Core Data, PencilKit, DocC|Submitted|
|[Furkan Hancı](https://github.com/furkanhancisecond)|[GitHub](https://github.com/FurkanHanciSecond/LearnSwiftUI)|[YouTube]( https://www.youtube.com/watch?v=N4pqwTHG2EA)|SwiftUI|Accepted|
|[Gaeun Lee](https://github.com/rriver2)|[GitHub](https://github.com/rriver2/WWDC--Ep-)|[Youtube](https://www.youtube.com/watch?v=X5ij9X1Gq-A)|SwiftUI, AVFoundation|Accepted|
|[Garv Shah](https://github.com/garv-shah)|[GitHub](https://github.com/garv-shah/Swift-Student-Challenge-2022)||SwiftUI, SceneKit, ARKit, Combine|Rejected|
|[Geetansh Atrey](https://github.com/geetanshatrey)|[GitHub](https://github.com/geetanshatrey/Vault)||SwiftUI, CryptoKit|Accepted|
|[Haotian Zheng](https://haotianzheng.com/)|[GitHub](https://github.com/JustinFincher/WWDC2022-SwiftUINodeEditor)|[YouTube](https://youtu.be/B6D3y49WOEQ)|SwiftUI, Combine, SpriteKit|Accepted|
|[Henri Bredt](https://henribredt.de)|[GitHub](https://github.com/henribredt/Typography-WWDC22)|[YouTube](https://www.youtube.com/watch?v=AiK6CGgM71w)|SwiftUI|Accepted|
|[Hugo Queinnec](https://github.com/hugoqnc)|[GitHub](https://github.com/hugoqnc/Split)||SwiftUI, Vision|Accepted|
|[Hyunjun Shin](https://github.com/greenthings)|[GitHub](https://github.com/greenthings/GreenWorld)||SwiftUI, SpriteKit|Accepted|
|[Ishaan Bedi](https://github.com/ishaanbedi)|[GitHub](https://github.com/ishaanbedi/Chipify-WWDC22)|[YouTube](https://youtu.be/bWf6gNBQSB8)|SwiftUI|Accepted|
|[Jakub Florek](https://github.com/MAJKFL)|[GitHub](https://github.com/MAJKFL/Audioqe-WWDC22)|[YouTube](https://youtu.be/TnayjRjrYp8)|SwiftUI, AVFoundation|Accepted|
|[Jia Chen](https://github.com/jiachenyee)|[GitHub](https://github.com/jiachenyee/WWDC22-SSC)||SwiftUI, UIKit, SceneKit, ARKit|Submitted|
|[João Medeiros](https://github.com/jpcm2)|[GitHub](https://github.com/jpcm2/JungleRescue)||SwiftUI, SpriteKit, AVFoundation|Accepted|
|[Jonathan](https://github.com/fuzzynat26)|[GitHub](https://github.com/FuzzyNat26/build-with-math)||SwiftUI, AVFoundation|Accepted|
|[Ju DongSeok](https://github.com/MojitoBar)|[GitHub](https://github.com/MojitoBar/SpaceHash)||SwiftUI, SpriteKit|Accepted|
|[Juhwa Lee](https://github.com/Juhwa-Lee1023)|[GitHub](https://github.com/Juhwa-Lee1023/Hangeul)||SwiftUI, UIKit, AVFoundation|Accepted|
|[Karandeep Singh](https://sg.linkedin.com/in/karandeep-singh-635888213)|[GitHub](https://github.com/ConfuseIous/ASLearn)||UIKit, SwiftUI, CoreML, AVKit |Accepted|
|[Kasper Munch Jensen](https://github.com/KaffeDiem)|[GitHub](https://github.com/KaffeDiem/DrawBeatMaker)||SwiftUI, AVFoundation, PencilKit|Accepted|
|[Kenneth Chew](https://github.com/kthchew/)|[GitHub](https://github.com/kthchew/wwdc22-mystack)||SwiftUI|Accepted|
|[Lexline Johnson](https://github.com/codeswift27)|[GitHub](https://github.com/codeswift27/quantum-entanglement.git)||SwiftUI|Accepted|
|[Lin Bo Rong](https://github.com/rong1002)|[GitHub](https://github.com/rong1002/2022WWDC_Swift-Student-Challenge_Burn-Calories)|[YouTube](https://www.youtube.com/watch?v=UTRDFw31SUA&t)|SwiftUI|Accepted|
|[Luiz Araujo](https://github.com/LuizAraujo2020)||[YouTube](https://youtu.be/VHeL9B65_gM)|SwiftUI, SceneKit, SpriteKit, GameplayKit|Accepted|
|[M. Bertan Tarakçıoğlu](https://medium.com/@bertan.tarakcioglu)|[GitHub](https://github.com/BertanT/BlinkBoard-WWDC22)||SwiftUI, Core Animation, Vision|Accepted|
|[Madhav Gulati](https://github.com/MadhavGulati/)|[GitHub](https://github.com/MadhavGulati/GeneCloning)|[YouTube](https://youtu.be/j0WaM1uHiiQ)|SwiftUI, AVFoundation, ARKit, SpriteKit|Accepted|
|[Matthew Christopher Albert](https://github.com/MatthewCAlbert)|[GitHub](https://github.com/MatthewCAlbert/wwdc2022-submission)||SwiftUI, AVKit|Accepted|
|Max Tsai|[GitHub](https://github.com/ming-zhe-02/The-Fake-News)|[YouTube](https://www.youtube.com/watch?v=scV6d8G3EZw)|SwiftUI|Submitted|
|[Minkyeong Ko](https://github.com/Minkyeong-Ko)|[GitHub](https://github.com/Minkyeong-Ko/Freeboard)|[YouTube](https://youtu.be/XXkhVd-ziIw)|SwiftUI|Accepted|
|Nathaniel Fargo|[Github](https://github.com/theParadox42/Waves)| |SwiftUI, Canvas, Math/Physics|Submitted|
|[Omar Abusharar](https://github.com/omartheturtle/)|[GitHub](https://github.com/omartheturtle/SwiftStudentChallenge2022)|Later?|SwiftUI, UIKit, SpriteKit, ARQuickLook|Rejected|
|[Oscar Fridh](https://www.linkedin.com/in/oscar-fridh-03279b125/)|[GitHub](https://github.com/OscarFridh/WWDC22)|[YouTube](https://www.youtube.com/watch?v=Yvlz3F5ZXkg)|ARKit, RealityKit, SwiftUI, UIKit|Accepted|
|[Patricia Sampaio](https://github.com/patysiq)|[GitHub](https://github.com/patysiq/SagittariusA_WWDC2022)||AVFoundation, SceneKit , SwiftUI, UIKit|Accepted|
|[Paulo César](https://github.com/Nyffi)|[GitHub](https://github.com/Nyffi/WWDC22-SwiftStudentChallenge)||SpriteKit, SwiftUI|Accepted|
|[Peter Yaacoub](https://github.com/Yaacoub)|[GitHub](https://github.com/Yaacoub/Swift-Student-Challenge/tree/main/WWDC%202022)|[YouTube](https://youtu.be/t4NQSHLIbaw)|AVFoundation, CoreGraphics, SwiftUI, UIKit|Accepted|
|[Riccardo Persello](https://github.com/persello)|[GitHub](https://github.com/persello/ssc22)||Accelerate, AVFoundation, SwiftUI|Accepted|
|[Rido Hendrawan](https://github.com/ridohendrawan)|[GitHub](https://github.com/ridohendrawan/WWDC22-Chinese-Porcelain)||SwiftUI|Accepted|
|[Ryan Du](https://github.com/ryendu)|[GitHub](https://github.com/ryendu/GradientDescend)|[YouTube](https://www.youtube.com/watch?v=TINWpa961VE)|SwiftUI, AVFoundation, SceneKit, CoreMotion|Accepted|
|[Sam Poder](https://github.com/sampoder)|[GitHub](https://github.com/sampoder/whack-a-mole)||SwiftUI|Accepted|
|[Sascha Salles](https://github.com/saschasalles)|[GitHub](https://github.com/saschasalles/Athletic-Robot.swiftpm)||ARKit, Vision, CreateML, AVFoundation|Accepted|
|[Sérgio Ruediger](https://github.com/sruediger)|[GitHub](https://github.com/sruediger/WWDC2022CTF)||SwiftUI, Combine, CoreGraphics, CryptoKit|Accepted|
|[Tamerlan Satualdypov](https://github.com/onl1ner)|[GitHub](https://github.com/onl1ner/Morse)||SwiftUI, AVFoundation|Accepted|
|[Vedant Malhotra](https://github.com/vedantapps)|[GitHub](https://github.com/vedantapps/SaveWWDC)|[YouTube](https://youtu.be/um2HbaI8xqA)|SwiftUI, UIKit, ARKit, PencilKit|Accepted|
|[Vincent Spitale](https://github.com/vincentspitale)|[GitHub](https://github.com/vincentspitale/SSC2022)|[YouTube](https://youtu.be/vQM8yTbGguQ)|SwiftUI, PencilKit, VisionKit, MetalKit|Accepted|
|[Vitor Grechi Kuninari](https://www.wwdcscholars.com/s/32CD09B0-46A3-4D89-A10F-AF9984766715)|[GitHub](https://github.com/VitorGK/WWDC22-Swift-Student-Challenge)||SwiftUI, SpriteKit|Accepted|
|[Xikai Liu](https://github.com/iamGeoWat)|[GitHub](https://github.com/iamGeoWat/WWDC22)|[Bilibili](https://www.bilibili.com/video/BV1W34y1p7M3/)|SwiftUI|Accepted|
|Yauheni Stsefankou|[GitHub](https://github.com/stefjen07/WWDC22-NeuralNetworks)||SwiftUI, SpriteKit, CoreGraphics|Accepted|
|[Yiwei Wang](https://github.com/wangyiwei2015)|[GitHub](https://github.com/wangyiwei2015/ColorCodeChallenge)| |SwiftUI|Accepted|
|[Yunho Oh](https://github.com/Helloyunho)|[GitHub](https://github.com/Helloyunho/about_computer_bits)|[YouTube](https://youtu.be/V8Zhc-dDbVI)|SwiftUI|Rejected|
"""

let lines = migration.split(separator: "\n")

func getNameAndAboutMeUrl(for line: String?) -> (name: String, aboutMeUrl: URL?)? {
    guard let line else { return nil }
    let pattern = "\\[(.*?)\\]\\((.*?)\\)"
    
    guard let regex = try? NSRegularExpression(pattern: pattern, options: []) else { return nil }
    
    if let match = regex.firstMatch(in: line, options: [], range: NSRange(line.startIndex..., in: line)) {
        if let nameRange = Range(match.range(at: 1), in: line) {
            let name = String(line[nameRange])
            
            
            let url: URL? = if let urlRange = Range(match.range(at: 2), in: line) {
                URL(string:String(line[urlRange]))
            } else { nil }
            
            return (name: name, aboutMeUrl: url)
        }
    }
    
    return (name: line, aboutMeUrl: nil)
}

func getUrl(from line: String?) -> URL? {
    guard let line else { return nil }
    let pattern = "\\[.*?\\]\\((.*?)\\)"
    
    guard let regex = try? NSRegularExpression(pattern: pattern, options: []) else { return nil }
    
    if let match = regex.firstMatch(in: line, options: [], range: NSRange(line.startIndex..., in: line)) {
        if let urlRange = Range(match.range(at: 1), in: line) {
            return URL(string: String(line[urlRange]))
        }
    }
    
    return nil
}

func getStatus(from line: String?) -> Submission.Status {
    guard let line else { return .unknown }
    return .init(rawValue: line) ?? .unknown
}

var submissions = [Submission]()
for line in lines {
    let columns = line
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .split(separator: "|", omittingEmptySubsequences: false)
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        .dropFirst().dropLast()
    let values = getNameAndAboutMeUrl(for: columns.first)
    let sourceUrl = getUrl(from: columns[2])
    let videoUrl = getUrl(from: columns[3])
    let technologies = columns[4].split(separator: ", ")
    let status = getStatus(from: columns.last)
    
    guard let name = values?.name else { continue }
    let submission = Submission(
        name: name,
        status: status,
        technologies: technologies.map { String($0) },
        aboutMeUrl: values?.aboutMeUrl,
        sourceUrl: sourceUrl,
        videoUrl: videoUrl
    )
    
    submissions.append(submission)
}

extension Submission {
    var entityFile: String {
"""
Name: \(name)
Status: \(status.rawValue)
Technologies: \(technologies.joined(separator: ", "))

AboutMeUrl: \(aboutMeUrl == nil ? "" : aboutMeUrl!.absoluteString)
SourceUrl: \(sourceUrl == nil ? "" : sourceUrl!.absoluteString)
VideoUrl: \(videoUrl == nil ? "" : videoUrl!.absoluteString)

<!---
EXAMPLE
Name: John Appleseed
Status: Submitted <or> Winner <or> Distinguished <or> Rejected
Technologies: SwiftUI, RealityKit, CoreGraphic

AboutMeUrl: https://linkedin.com/in/johnappleseed
SourceUrl: https://github.com/johnappleseed/wwdc2025
VideoUrl: https://youtu.be/ABCDE123456
-->

"""
    }
}

for submission in submissions {
    let filename = submission.name
        .replacingOccurrences(of: "Name:", with: "")
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .lowercased()
        .replacingOccurrences(of: " ", with: "") + ".md"
    
    try? submission.entityFile.write(toFile: "Submission/\(filename)", atomically: true, encoding: .utf8)
}
