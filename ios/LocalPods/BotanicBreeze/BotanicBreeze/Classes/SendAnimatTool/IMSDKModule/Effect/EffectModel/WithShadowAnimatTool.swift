
//: Declare String Begin

/*: "TalkingGiftEffectCacheKey" :*/
fileprivate let str_maleTitle:String = "room next add up guardTalkin"
fileprivate let str_leadingValue:String = "Effecicon make add self"
fileprivate let str_toTitle:String = "eKeywith mode drag application"

/*: "下载动画文件" :*/
fileprivate let str_viewEqualAddTitle:String = "\u{4e0b}"
fileprivate let str_upData:[Character] = ["载","动","\u{753b}","文","件"]

/*: "加载本地动画文件" :*/
fileprivate let str_playTitle:[Character] = ["加","\u{8f7d}","本","地","动","画","\u{6587}","\u{4ef6}"]

/*: "%@/%@/" :*/
fileprivate let str_changeShapeTitle:String = "data@/data@/"

/*: "%@/%zd/" :*/
fileprivate let str_centerValue:[Character] = ["%"]
fileprivate let str_managerText:String = "@/%zd/value deadline bottom if"

/*: "Talking_GiftEffect/" :*/
fileprivate let str_giftTitle:[Character] = ["T","a","l","k","i","n","g","_","G"]
fileprivate let str_textValue:[Character] = ["i","f","t","E","f","f","e","c","t","/"]

/*: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x" :*/
fileprivate let str_frameTitle:[UInt8] = [0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55,0x2,0xd,0xf,0x55]

fileprivate func leftLayer(at num: UInt8) -> UInt8 {
    let value = Int(num) - 221
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "GJSGVA" :*/
fileprivate let str_labelValue:String = "viewSGVA"

/*: "GJVap" :*/
fileprivate let str_infoCoverData:[Character] = ["G","J","V","a","p"]

/*: "config.json" :*/
fileprivate let str_tabDataName:String = "CONFIG"
fileprivate let str_toValue:String = "left string let view view.json"

/*: "%d" :*/
fileprivate let str_labListData:[Character] = ["%","d"]

/*: "app. :*/
fileprivate let str_userName:String = "app.let mode lab birth"

/*: .com" :*/
fileprivate let str_backgroundData:[Character] = [".","c","o","m"]

/*: "key" :*/
fileprivate let str_styleTitle:String = "horney"

/*: "zip" :*/
fileprivate let str_actualData:[Character] = ["z","i","p"]

/*: " fail to unzip file" :*/
fileprivate let str_modelMethodValue:[Character] = [" ","f","a","i","l"," ","t","o"," ","u","n","z","i","p"," ","f","i","l"]
fileprivate let str_bottomData:String = "again"

/*: "RSA 解密失败" :*/
fileprivate let str_selectedValue:String = "RSA 解\u{5bc6}失败"

/*: "fail to unzip script file" :*/
fileprivate let str_cellHiddenValue:String = "value menu self screenfail "
fileprivate let str_iconValue:String = "nzip scview class let var leading"
fileprivate let str_pathTitle:[Character] = ["r","i","p","t"," ","f","i","l","e"]

/*: "%ld" :*/
fileprivate let str_sumName:[Character] = ["%","l","d"]

/*: "gift" :*/
fileprivate let str_ofValue:[Character] = ["g","i","f","t"]

/*: "%@%@effect_%ld" :*/
fileprivate let str_touchTitle:String = "lab make image%@%@e"
fileprivate let str_burnData:String = "leading fill intimate table_%ld"

/*: "%@%@effect_%ld_unzipTest/" :*/
fileprivate let str_modelPhotoValue:String = "info@info@"
fileprivate let str_socialValue:[Character] = ["%","l","d","_","u","n","z","i","p","T","e","s","t","/"]

/*: "%@%@effect_%ld_unzip/" :*/
fileprivate let str_addIndexText:[Character] = ["%","@","%","@","e","f","f"]
fileprivate let str_scaleData:String = "ect_%llet cell"
fileprivate let str_areaEnableName:[Character] = ["d","_","u","n","z","i","p","/"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithShadowAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: import CommonCrypto
import CommonCrypto

/// 动效资源的下载，解压，校验，存储更新的辅助类

//: typealias CompletionBlock = (_ success: Bool, _ effectModel: TalkingGiftAnimatModel?) -> Void
typealias CompletionBlock = (_ success: Bool, _ effectModel: UpToTransformable?) -> Void

//: typealias ErrorBlock = (_ error: NSError?) -> Void
typealias ErrorBlock = (_ error: NSError?) -> Void

//: class TalkingGiftAnimatTool: NSObject {
class WithShadowAnimatTool: NSObject {
    //: let TalkingGiftAnimatCacheKey  = "TalkingGiftEffectCacheKey"
    let TalkingGiftAnimatCacheKey = (String(str_maleTitle.suffix(6)) + "gGift" + String(str_leadingValue.prefix(5)) + "tCach" + String(str_toTitle.prefix(4)))

    //: @objc static let shared = TalkingGiftAnimatTool()
    @objc static let shared = WithShadowAnimatTool()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // 下载动效的资源（网络下载 或 加载本地存储）
    //: func loadEffectData(effectMsgModel: TalkingAnimatMsgModel, completion: @escaping CompletionBlock ) {
    func dataLocalMatch(effectMsgModel: CellModelHandyJSON, completion: @escaping CompletionBlock) {
        //: if checkNewVersionWithAnimatMsgModel(model: effectMsgModel) {
        if loadCall(model: effectMsgModel) {
            //: printLog(message: "下载动画文件")
            printLog(message: (str_viewEqualAddTitle + String(str_upData)))
            //: downloadAnimat(effectMsgModel: effectMsgModel) { [weak self] error in
            beyondBlock(effectMsgModel: effectMsgModel) { [weak self] error in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if error != nil {
                if error != nil {
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: completion(false, nil)
                        completion(false, nil)
                    }
                    //: return
                    return
                }
                //: self.loadLocalAnimatConfig(effectMsgModel: effectMsgModel, complete: completion)
                self.publicTransport(effectMsgModel: effectMsgModel, complete: completion)
            }
            //: } else {
        } else {
            //: printLog(message: "加载本地动画文件")
            printLog(message: (String(str_playTitle)))
            //: self.loadLocalAnimatConfig(effectMsgModel: effectMsgModel, complete: completion)
            self.publicTransport(effectMsgModel: effectMsgModel, complete: completion)
        }
    }

    //: func filePathOfNameWithAnimatMsgModel(fileName: String, model: TalkingAnimatMsgModel) -> String {
    func fileVideo(fileName: String, model: CellModelHandyJSON) -> String {
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: model)
        let scriptDirectory = executeModel(animatMsgModel: model)
        //: let filePath = (scriptDirectory as NSString).appendingPathComponent(fileName)
        let filePath = (scriptDirectory as NSString).appendingPathComponent(fileName)
        //: return filePath
        return filePath
    }

    // 删除本地缓存
    //: func deleteCacheData() {
    func adjoin() {
        //: deleteFolder(path: giftEffectDirectory())
        afterCamera(path: pastShow())
    }

    // 动效资源本地的缓存目录路径
    //: func fetchScriptDirectory(animatMsgModel: TalkingAnimatMsgModel) -> String {
    func executeModel(animatMsgModel: CellModelHandyJSON) -> String {
        //: if animatMsgModel.eid == 0 {
        if animatMsgModel.eid == 0 {
            //: return String.init(format: "%@/%@/", giftEffectDirectory(), animatMsgModel.effectUrl.md5()!)
            return String(format: "%@/%@/", pastShow(), animatMsgModel.effectUrl.md5()!)
            //: } else {
        } else {
            //: return String.init(format: "%@/%zd/", giftEffectDirectory(), animatMsgModel.eid)
            return String(format: "%@/%zd/", pastShow(), animatMsgModel.eid)
        }
    }

    //: func giftEffectDirectory() -> String {
    func pastShow() -> String {
        //: let subPath = "Talking_GiftEffect/"
        let subPath = (String(str_giftTitle) + String(str_textValue))

        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let scriptDirectory = (documentDictPath as NSString).appendingPathComponent(subPath)
        let scriptDirectory = (documentDictPath as NSString).appendingPathComponent(subPath)
        //: return scriptDirectory
        return scriptDirectory
    }

    //: func fileMD5(filePath: String) -> String {
    func valuePath(filePath: String) -> String {
        //: let handle = FileHandle.init(forReadingAtPath: filePath)
        let handle = FileHandle(forReadingAtPath: filePath)
        //: if handle == nil {
        if handle == nil {
            //: return ""
            return ""
        }
        //: var md5 = CC_MD5_CTX()
        var md5 = CC_MD5_CTX()
        //: CC_MD5_Init(&md5)
        CC_MD5_Init(&md5)
        //: var done = false
        var done = false
        //: while (!done) {
        while !done {
            //: let fileData: NSData = handle?.readData(ofLength: 256) as? NSData ?? NSData.init()
            let fileData: NSData = handle?.readData(ofLength: 256) as? NSData ?? NSData()
            //: CC_MD5_Update(&md5, fileData.bytes, CC_LONG(fileData.length))
            CC_MD5_Update(&md5, fileData.bytes, CC_LONG(fileData.length))
            //: if fileData.length == 0 {
            if fileData.length == 0 {
                //: done = true
                done = true
            }
        }

        //: var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        //: digest.withUnsafeMutableBytes({ pointer in
        digest.withUnsafeMutableBytes { pointer in
            //: _ = CC_MD5_Final(pointer, &md5)
            _ = CC_MD5_Final(pointer, &md5)
            //: })
        }

        //: let result = String.init(format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
        let result = String(format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                            //: digest[0], digest[1],
                            digest[0], digest[1],
                            //: digest[2], digest[3],
                            digest[2], digest[3],
                            //: digest[4], digest[5],
                            digest[4], digest[5],
                            //: digest[6], digest[7],
                            digest[6], digest[7],
                            //: digest[8], digest[9],
                            digest[8], digest[9],
                            //: digest[10], digest[11],
                            digest[10], digest[11],
                            //: digest[12], digest[13],
                            digest[12], digest[13],
                            //: digest[14], digest[15])
                            digest[14], digest[15])
        //: return result
        return result
    }

    //: func isLocalFileExistViaAnimat(model: TalkingAnimatMsgModel) -> Bool {
    func showPlaceSend(model: CellModelHandyJSON) -> Bool {
        //: return !checkNewVersionWithAnimatMsgModel(model: model)
        return !loadCall(model: model)
    }

    //: func getNewAnimatClassName(oldName: String) -> String {
    func taskIntervaleraction(oldName: String) -> String {
        //: var newName = oldName
        var newName = oldName
        //: if newName.hasPrefix("GJSGVA") {
        if newName.hasPrefix((str_labelValue.replacingOccurrences(of: "view", with: "GJ"))) {
            //: newName = String(describing: TalkingSGVAAnimationView.self)
            newName = String(describing: ArrayAnimationView.self)
            //: } else if newName.hasPrefix("GJVap") {
        } else if newName.hasPrefix((String(str_infoCoverData))) {
            //: newName = String(describing: TalkingVapAnimationView.self)
            newName = String(describing: ModeAnimationView.self)
        }
        //: return newName
        return newName
    }
}

//: extension TalkingGiftAnimatTool {
extension WithShadowAnimatTool {
    //: func loadLocalAnimatConfig(effectMsgModel: TalkingAnimatMsgModel, complete: @escaping CompletionBlock) {
    func publicTransport(effectMsgModel: CellModelHandyJSON, complete: @escaping CompletionBlock) {
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: effectMsgModel)
        let scriptDirectory = executeModel(animatMsgModel: effectMsgModel)
        //: let scriptPath = (scriptDirectory as NSString).appendingPathComponent("config.json")
        let scriptPath = (scriptDirectory as NSString).appendingPathComponent((str_tabDataName.lowercased() + String(str_toValue.suffix(5))))
        //: let configString = try? String.init(contentsOfFile: scriptPath, encoding: String.Encoding.utf8)
        let configString = try? String(contentsOfFile: scriptPath, encoding: String.Encoding.utf8)

        //: if configString?.count ?? 0 <= 0 {
        if configString?.count ?? 0 <= 0 {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: complete(false, nil)
                complete(false, nil)
            }
            //: return
            return
        }

        //: let dic = NSDictionary.init(jsonString: configString!)
        let dic = NSDictionary(jsonString: configString!)
        //: let giftAmodel = TalkingGiftAnimatModel.init()
        let giftAmodel = UpToTransformable()
        //: let effectModel = giftAmodel.setAnimatModek(dic: dic)
        let effectModel = giftAmodel.imageDic(dic: dic)
        //: var className = effectModel.className
        var className = effectModel.className

        //: if  className.count <= 0 && effectModel.nativeClassName.count > 0 {
        if className.count <= 0, effectModel.nativeClassName.count > 0 {
            //: className = effectModel.nativeClassName
            className = effectModel.nativeClassName
        }
        //: if className.count <= 0 {
        if className.count <= 0 {
            //: className = effectModel.className
            className = effectModel.className
        }
        //: className = getNewAnimatClassName(oldName: className)
        className = taskIntervaleraction(oldName: className)
        //: let clsName = PodspecName + "." + className
        let clsName = kLet_errData + "." + className
        //: let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)
        let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: complete(AnimatedViewClass != nil, effectModel)
            complete(AnimatedViewClass != nil, effectModel)
        }
    }

    // 如果有新版本，就删除旧版本，然后返回true
    //: func checkNewVersionWithAnimatMsgModel(model: TalkingAnimatMsgModel) ->Bool {
    func loadCall(model: CellModelHandyJSON) -> Bool {
        //: let giftPlist = UserDefaults.standard.object(forKey: TalkingGiftAnimatCacheKey) as? Dictionary<String, Any> ?? Dictionary<String, Any>.init()
        let giftPlist = UserDefaults.standard.object(forKey: TalkingGiftAnimatCacheKey) as? [String: Any] ?? [String: Any]()

        //: if giftPlist.count <= 0 {
        if giftPlist.count <= 0 {
            //: return true
            return true
        }
        // 新的动效资源的url

        //: var key = ""
        var key = ""
        //: var oldEffectUrlString = ""
        var oldEffectUrlString = ""
        //: if  model.eid == 0 {
        if model.eid == 0 {
            //: key = model.effectUrl.md5() ?? ""
            key = model.effectUrl.md5() ?? ""
            // 根据ID，获得存储的（旧的）对应资源的url
            //: oldEffectUrlString = giftPlist[key] as? String ?? ""
            oldEffectUrlString = giftPlist[key] as? String ?? ""
            //: } else {
        } else {
            //: key = String.init(format: "%d", model.eid)
            key = String(format: "%d", model.eid)
            // 根据ID，获得存储的（旧的）对应资源的url
            //: oldEffectUrlString = giftPlist[key] as? String ?? ""
            oldEffectUrlString = giftPlist[key] as? String ?? ""
        }

        // 动效资源本地的保存目录路径
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: model)
        let scriptDirectory = executeModel(animatMsgModel: model)

        //: if oldEffectUrlString == model.effectUrl {
        if oldEffectUrlString == model.effectUrl {
            // 检查config.json是否存在，不存在就返回YES；
            //: let scriptPath = (scriptDirectory as NSString).appendingPathComponent("config.json")
            let scriptPath = (scriptDirectory as NSString).appendingPathComponent((str_tabDataName.lowercased() + String(str_toValue.suffix(5))))
            //: if FileManager.default.fileExists(atPath: scriptPath) {
            if FileManager.default.fileExists(atPath: scriptPath) {
                //: return false
                return false
            }
        }

        //: try? FileManager.default.removeItem(atPath: scriptDirectory)
        try? FileManager.default.removeItem(atPath: scriptDirectory)
        //: return true
        return true
    }

    // 实际的网络下载动效资源
    //: func downloadAnimat(effectMsgModel: TalkingAnimatMsgModel, errorBlock: @escaping ErrorBlock) {
    func beyondBlock(effectMsgModel: CellModelHandyJSON, errorBlock: @escaping ErrorBlock) {
        //: PostulationReactiveCompatible.req_giftEffectDataUrl(giftUrl: effectMsgModel.effectUrl, path: downloadTmpPath(model: effectMsgModel)) { [weak self] t in
        PostulationReactiveCompatible.whenCompletion(giftUrl: effectMsgModel.effectUrl, path: collectionShow(model: effectMsgModel)) { [weak self] t in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: DispatchQueue.global().async {
            DispatchQueue.global().async {
                //: self.afterDownloadGiftAnimat(effectMsgModel: effectMsgModel, isSucess: t, errorBlock: errorBlock)
                self.errorPath(effectMsgModel: effectMsgModel, isSucess: t, errorBlock: errorBlock)
            }
        }
    }

    //: func afterDownloadGiftAnimat(effectMsgModel: TalkingAnimatMsgModel, isSucess: Bool, errorBlock: @escaping ErrorBlock) {
    func errorPath(effectMsgModel: CellModelHandyJSON, isSucess: Bool, errorBlock: @escaping ErrorBlock) {
        //: if !isSucess {
        if !isSucess {
            //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.DownLoadFailed.rawValue))
            errorBlock(NSError(domain: (String(str_userName.prefix(4))) + "\(kLet_deviceName)" + (String(str_backgroundData)), code: ModifyPriorityTarget.DownLoadFailed.rawValue))
            //: return
            return

                    //: } else {
        } else {
            // temporary files and directories
            //: let eid = effectMsgModel.eid
            let eid = effectMsgModel.eid
            //: let downloadPath       = downloadTmpPath(model: effectMsgModel)
            let downloadPath = collectionShow(model: effectMsgModel)
            //: let unzipVerifyDir = unzipVerifyDirectory(model: effectMsgModel)
            let unzipVerifyDir = directory(model: effectMsgModel)

            // is the processing flow failed
            //: var isFailed = false
            var isFailed = false

            // 1. unzip encrypted md5 file and script file
            //: var keyFilePath  = ""
            var keyFilePath = ""
            //: var scriptZipFilePath = ""
            var scriptZipFilePath = ""

            //: let verifyUnzipSucc = SSZipArchive.unzipFile(atPath: downloadPath, toDestination: unzipVerifyDir, overwrite: true, password: nil, progressHandler: nil)
            let verifyUnzipSucc = SSZipArchive.unzipFile(atPath: downloadPath, toDestination: unzipVerifyDir, overwrite: true, password: nil, progressHandler: nil)
            //: let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipVerifyDir) ?? []
            let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipVerifyDir) ?? []

            //: if (verifyUnzipSucc) {
            if verifyUnzipSucc {
                //: for filename in unzippedFiles {
                for filename in unzippedFiles {
                    //: if filename == "key" {
                    if filename == (str_styleTitle.replacingOccurrences(of: "horn", with: "k")) {
                        // encrypted md5 file
                        //: keyFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        keyFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        //: } else if (filename as NSString).pathExtension == "zip" {
                    } else if (filename as NSString).pathExtension == (String(str_actualData)) {
                        // script file
                        //: scriptZipFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        scriptZipFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                    }
                }
                //: } else {
            } else {
                //: printLog(message: " fail to unzip file")
                printLog(message: (String(str_modelMethodValue) + str_bottomData.replacingOccurrences(of: "again", with: "e")))
                //: isFailed = true
                isFailed = true
                //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.UnzipFailed.rawValue))
                errorBlock(NSError(domain: (String(str_userName.prefix(4))) + "\(kLet_deviceName)" + (String(str_backgroundData)), code: ModifyPriorityTarget.UnzipFailed.rawValue))
            }
            // 2. decrypt and verify md5 file
            //: if !isFailed {
            if !isFailed {
                //: do {
                do {
                    //: let md5Data: Data = FZRSA.decryptData(NSData.init(contentsOfFile: keyFilePath) as Data?, publicKey: GiftRsaPublicKey)
                    let md5Data: Data = TargetTime.ignitionKey(NSData(contentsOfFile: keyFilePath) as Data?, statisticalMethodTo: kLet_recordValue)
                    //: let decryptMD5 = String.init(data: md5Data, encoding: String.Encoding.utf8)
                    let decryptMD5 = String(data: md5Data, encoding: String.Encoding.utf8)
                    //: let md5 = fileMD5(filePath: scriptZipFilePath)
                    let md5 = valuePath(filePath: scriptZipFilePath)

                    //: if decryptMD5 != md5 && FileManager.default.fileExists(atPath: keyFilePath) {
                    if decryptMD5 != md5, FileManager.default.fileExists(atPath: keyFilePath) {
                        //: isFailed = true
                        isFailed = true
                        //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.VerifyFailed.rawValue))
                        errorBlock(NSError(domain: (String(str_userName.prefix(4))) + "\(kLet_deviceName)" + (String(str_backgroundData)), code: ModifyPriorityTarget.VerifyFailed.rawValue))
                    }
                    //: printLog(message: decryptMD5)
                    printLog(message: decryptMD5)
                    //: } catch {
                } catch {
                    //: printLog(message: "RSA 解密失败")
                    printLog(message: (str_selectedValue))
                    //: isFailed = true
                    isFailed = true
                    //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.VerifyFailed.rawValue))
                    errorBlock(NSError(domain: (String(str_userName.prefix(4))) + "\(kLet_deviceName)" + (String(str_backgroundData)), code: ModifyPriorityTarget.VerifyFailed.rawValue))
                }
            }

            // 3. unzip script file and save
            //: if !isFailed {
            if !isFailed {
                // tmp script directory
                //: let unzipTmpDir = unzipTmpDirectory(model: effectMsgModel)
                let unzipTmpDir = fortify(model: effectMsgModel)
                //: let unzipSucc = SSZipArchive.unzipFile(atPath: scriptZipFilePath, toDestination: unzipTmpDir, overwrite: true, password: nil, progressHandler: nil)
                let unzipSucc = SSZipArchive.unzipFile(atPath: scriptZipFilePath, toDestination: unzipTmpDir, overwrite: true, password: nil, progressHandler: nil)

                //: if (unzipSucc) {
                if unzipSucc {
                    // script directory
                    //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: effectMsgModel)
                    let scriptDirectory = executeModel(animatMsgModel: effectMsgModel)
                    //: if FileManager.default.fileExists(atPath: scriptDirectory) {
                    if FileManager.default.fileExists(atPath: scriptDirectory) {
                        //: try? FileManager.default.removeItem(atPath: scriptDirectory)
                        try? FileManager.default.removeItem(atPath: scriptDirectory)
                    }
                    //: try? FileManager.default.createDirectory(atPath: scriptDirectory, withIntermediateDirectories: true)
                    try? FileManager.default.createDirectory(atPath: scriptDirectory, withIntermediateDirectories: true)

                    //: let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipTmpDir) ?? []
                    let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipTmpDir) ?? []

                    //: for filename in unzippedFiles {
                    for filename in unzippedFiles {
                        //: let filePath    = (unzipTmpDir as NSString).appendingPathComponent(filename)
                        let filePath = (unzipTmpDir as NSString).appendingPathComponent(filename)
                        //: let newFilePath = (scriptDirectory as NSString).appendingPathComponent(filename)
                        let newFilePath = (scriptDirectory as NSString).appendingPathComponent(filename)

                        //: var isDirectory: ObjCBool = false
                        var isDirectory: ObjCBool = false
                        //: FileManager.default.fileExists(atPath: filePath, isDirectory: &isDirectory)
                        FileManager.default.fileExists(atPath: filePath, isDirectory: &isDirectory)
                        //: if isDirectory.boolValue {
                        if isDirectory.boolValue {
                            //: try? FileManager.default.createDirectory(atPath: newFilePath, withIntermediateDirectories: true)
                            try? FileManager.default.createDirectory(atPath: newFilePath, withIntermediateDirectories: true)
                            //: continue
                            continue
                        }

                        //: let srcFileUrl = NSURL.fileURL(withPath: filePath)
                        let srcFileUrl = NSURL.fileURL(withPath: filePath)
                        //: let destFileUrl = NSURL.fileURL(withPath: newFilePath)
                        let destFileUrl = NSURL.fileURL(withPath: newFilePath)
                        //: do {
                        do {
                            //: try  FileManager.default.moveItem(at: srcFileUrl, to: destFileUrl)
                            try FileManager.default.moveItem(at: srcFileUrl, to: destFileUrl)
                            //: } catch {
                        } catch {
                            //: isFailed = true
                            isFailed = true
                            //: errorBlock(error as NSError)
                            errorBlock(error as NSError)
                            //: break
                            break
                        }
                    }
                }
                //: else {
                else {
                    //: printLog(message: "fail to unzip script file")
                    printLog(message: (String(str_cellHiddenValue.suffix(5)) + "to u" + String(str_iconValue.prefix(7)) + String(str_pathTitle)))
                    //: isFailed = true
                    isFailed = true
                    //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.UnzipFailed.rawValue))
                    errorBlock(NSError(domain: (String(str_userName.prefix(4))) + "\(kLet_deviceName)" + (String(str_backgroundData)), code: ModifyPriorityTarget.UnzipFailed.rawValue))
                }

                //: try? FileManager.default.removeItem(atPath: unzipTmpDir)
                try? FileManager.default.removeItem(atPath: unzipTmpDir)
            }

            // success
            //: if !isFailed {
            if !isFailed {
                // 下载资源成功后，将资源的ID和URL写进缓存(即：保存一份资源的最新版本记录)
                //: let cacheKey = TalkingGiftAnimatCacheKey
                let cacheKey = TalkingGiftAnimatCacheKey

                //: var giftPlist = UserDefaults.standard.object(forKey: cacheKey) as? Dictionary<String, Any> ?? Dictionary<String, Any>.init()
                var giftPlist = UserDefaults.standard.object(forKey: cacheKey) as? [String: Any] ?? [String: Any]()

                //: var key = String.init(format: "%ld", eid)
                var key = String(format: "%ld", eid)

                /* 5.2.6 表情动效 没有设置eid 此处eid == 0 */
                //: if eid == 0 {
                if eid == 0 {
                    //: key = effectMsgModel.effectUrl.md5() ?? ""
                    key = effectMsgModel.effectUrl.md5() ?? ""
                }

                //: giftPlist[key] = effectMsgModel.effectUrl
                giftPlist[key] = effectMsgModel.effectUrl
                //: UserDefaults.standard.set(giftPlist, forKey: cacheKey)
                UserDefaults.standard.set(giftPlist, forKey: cacheKey)
                //: errorBlock(nil)
                errorBlock(nil)
            }

            // clear temporary files
            //: try? FileManager.default.removeItem(atPath: downloadPath)
            try? FileManager.default.removeItem(atPath: downloadPath)
            //: try? FileManager.default.removeItem(atPath: unzipVerifyDir)
            try? FileManager.default.removeItem(atPath: unzipVerifyDir)
        }
    }

    //: func deleteFolder(path: String) ->Bool {
    func afterCamera(path: String) -> Bool {
        //: if cleanFolder(path: path) {
        if ting(path: path) {
            //: try? FileManager.default.removeItem(atPath: path)
            try? FileManager.default.removeItem(atPath: path)
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: func cleanFolder(path: String) ->Bool {
    func ting(path: String) -> Bool {
        //: let directory = FileManager.default.enumerator(atPath: path)
        let directory = FileManager.default.enumerator(atPath: path)
        //: if  directory == nil {
        if directory == nil {
            //: return false
            return false
        }
        //: var  filePath = ""
        var filePath = ""
        //: while  directory?.nextObject() != nil {
        while directory?.nextObject() != nil {
            //: filePath = directory?.nextObject() as! String
            filePath = directory?.nextObject() as! String
            //: try? FileManager.default.removeItem(atPath: (path as NSString).appendingPathComponent(filePath))
            try? FileManager.default.removeItem(atPath: (path as NSString).appendingPathComponent(filePath))
        }

        //: return true
        return true
    }

    //: func giftTypeIdentifier(type: TalkingAnimatType) ->String {
    func viewIndex(type: ArrayTypeKeyColumnConvertible) -> String {
        //: var tmpIdentify = ""
        var tmpIdentify = ""
        //: switch type {
        switch type {
        //: case .Gift:     tmpIdentify =  "gift"
        case .Gift: tmpIdentify = (String(str_ofValue))
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: return tmpIdentify
        return tmpIdentify
    }

    //: func downloadTmpPath(model: TalkingAnimatMsgModel) ->String {
    func collectionShow(model: CellModelHandyJSON) -> String {
        //: let downloadTmpPath       = String.init(format: "%@%@effect_%ld", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let downloadTmpPath = String(format: (String(str_touchTitle.suffix(5)) + "ffect" + String(str_burnData.suffix(4))), NSTemporaryDirectory(), viewIndex(type: model.effectType), model.eid)
        //: return downloadTmpPath
        return downloadTmpPath
    }

    //: func unzipVerifyDirectory(model: TalkingAnimatMsgModel)->String {
    func directory(model: CellModelHandyJSON) -> String {
        //: let unzipVerifyDirectory = String.init(format: "%@%@effect_%ld_unzipTest/", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let unzipVerifyDirectory = String(format: (str_modelPhotoValue.replacingOccurrences(of: "info", with: "%") + "effect_" + String(str_socialValue)), NSTemporaryDirectory(), viewIndex(type: model.effectType), model.eid)
        //: return unzipVerifyDirectory
        return unzipVerifyDirectory
    }

    //: func unzipTmpDirectory(model: TalkingAnimatMsgModel)->String {
    func fortify(model: CellModelHandyJSON) -> String {
        //: let unzipTmpDirectory    = String.init(format: "%@%@effect_%ld_unzip/", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let unzipTmpDirectory = String(format: (String(str_addIndexText) + String(str_scaleData.prefix(6)) + String(str_areaEnableName)), NSTemporaryDirectory(), viewIndex(type: model.effectType), model.eid)
        //: return unzipTmpDirectory
        return unzipTmpDirectory
    }
}
