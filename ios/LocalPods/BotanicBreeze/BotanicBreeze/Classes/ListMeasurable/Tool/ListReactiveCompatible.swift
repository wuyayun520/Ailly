
//: Declare String Begin

/*: "CacheCompressVideo" :*/
fileprivate let str_activityTitle:String = "Cachself request error"
fileprivate let str_indexName:String = "pressVself target string"

/*: "/ :*/
fileprivate let str_valueName:String = "/"

/*: .mp4" :*/
fileprivate let str_styleContent:String = ".mp4make at"

/*: "outputCut.mp4" :*/
fileprivate let str_toTitle:[Character] = ["o","u","t","p","u","t"]
fileprivate let str_indexPlayerHeightValue:String = "if data push fromCut.mp4"

/*: .jpg" :*/
fileprivate let str_labName:String = ".jpgshared height"

/*: "outputCut.jpg" :*/
fileprivate let str_valueTitle:[Character] = ["o","u"]
fileprivate let str_optionLikeName:[Character] = ["t","p","u","t","C","u","t",".","j","p","g"]

/*: "bucket" :*/
fileprivate let str_toText:String = "buctext"
fileprivate let str_imageValue:[Character] = ["t"]

/*: "fileResource" :*/
fileprivate let str_premiumData:String = "fileReview send item if self"
fileprivate let str_fatalData:[Character] = ["s","o","u","r","c","e"]

/*: "cos upload failed" :*/
fileprivate let str_kindTitle:String = "remove make partycos u"
fileprivate let str_viewLeadingName:String = "aicolord"

/*: "fileUrl" :*/
fileprivate let str_selectData:[Character] = ["f","i","l","e","U","r","l"]

/*: "coverResource" :*/
fileprivate let str_noteName:String = "clabele"
fileprivate let str_drawData:String = "oinformationce"

/*: "videoResource" :*/
fileprivate let str_makeTitle:[Character] = ["v","i","d","e","o","R","e","s","o","u","r","c","e"]

/*: "coverUrl" :*/
fileprivate let str_dataContent:String = "coverUrlvalue path in self read"

/*: "videoUrl" :*/
fileprivate let str_imageText:[Character] = ["v","i","d","e","o","U"]
fileprivate let str_lastAddData:String = "black"

/*: "region" :*/
fileprivate let str_bottomData:String = "retoon"

/*: "cos.accelerate.myqcloud.com" :*/
fileprivate let str_indicatorName:[Character] = ["c","o","s",".","a","c","c","e","l","e","r","a","t","e",".","m","y","q","c","l","o","u","d",".","c","o"]
fileprivate let str_mediumValue:[Character] = ["m"]

/*: "tmpSecretId" :*/
fileprivate let str_awakeInsertText:[Character] = ["t","m","p","S","e","c","r","e","t","I","d"]

/*: "tmpSecretKey" :*/
fileprivate let str_backNameText:String = "frame model gifttmpSe"
fileprivate let str_topTitle:[Character] = ["c","r","e","t","K","e","y"]

/*: "sessionToken" :*/
fileprivate let str_toData:String = "userssi"
fileprivate let str_intervalName:String = "self add title modelonToken"

/*: "startTime" :*/
fileprivate let str_callValue:[Character] = ["s","t","a"]
fileprivate let str_statusName:String = "scope more block in countrtTime"

/*: "expiredTime" :*/
fileprivate let str_modelValue:[Character] = ["e","x","p","i","r","e","d","T","i","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: import QCloudCOSXML.QCloudCOSXMLTransfer
import QCloudCOSXML.QCloudCOSXMLTransfer

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void
typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void

//: let CacheCompressVideoFile = "CacheCompressVideo"
let kLet_netRequestName = (String(str_activityTitle.prefix(4)) + "eCom" + String(str_indexName.prefix(6)) + "ideo")

//: class TalkingMomentVideoManager: NSObject {
class ListReactiveCompatible: NSObject {
    //: private var edit: TXVideoEditer?
    private var edit: TXVideoEditer?
    //: private var outputPath: String?
    private var outputPath: String?
    //: private var coverPath: String?
    private var coverPath: String?
    //: private var block: MomentVideoBlock?
    private var block: MomentVideoBlock?
    //: private var progressView: TalkingMomentCircleProgressView?
    private var progressView: ControlView?
    //: private var cosCredentialJson = JSON(["": ""])  // cos校验数据
    private var cosCredentialJson = JSON(["": ""]) // cos校验数据
    //: private var coverIsUpload = false
    private var coverIsUpload = false // 封面是否上传成功
    //: private var videoIsUpload = false
    private var videoIsUpload = false // 视频是否上传成功
    //: private var disposeBag = DisposeBag()
    private var disposeBag = DisposeBag()

    //: static let shared = TalkingMomentVideoManager()
    static let shared = ListReactiveCompatible()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingMomentVideoManager {
extension ListReactiveCompatible {
    /// 压缩视频
    /// - Parameters:
    ///   - videoInfo: 视频模型
    ///   - containerView: 进度条所在的容器【nil代表添加在window】
    ///   - saveDocuments: 是否保存到Documents【默认保存到tmp】
    ///   - completionHandler: 回调
    //: func compressVideo(videoInfo: TalkingVideoInfoModel,
    func allHandler(videoInfo: TotaleractionHandyJSON,
                    //: containerView: UIView? = nil,
                    containerView: UIView? = nil,
                    //: saveDocuments: Bool = false,
                    saveDocuments: Bool = false,
                    //: completionHandler: @escaping MomentVideoBlock) {
                    completionHandler: @escaping MomentVideoBlock)
    {
        // 视频正在处理中，过滤重复压缩
        //: if self.progressView?.superview != nil { return }
        if self.progressView?.superview != nil { return }

        //: self.block = completionHandler
        self.block = completionHandler

        //: let param = TXPreviewParam()
        let param = TXPreviewParam()
        //: edit = TXVideoEditer(preview: param)
        edit = TXVideoEditer(preview: param)
        //: if videoInfo.needCut {
        if videoInfo.needCut {
            //: edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
            edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
        }
        //: let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        //: edit?.setVideoAsset(asset)
        edit?.setVideoAsset(asset)
        //: edit?.setVideoBitrate(1500)
        edit?.setVideoBitrate(1500)
        //: edit?.generateDelegate = self
        edit?.generateDelegate = self
        //: if saveDocuments {
        if saveDocuments {
            //: outputPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).mp4")
            outputPath = customToPlayer().appending("/\(Date().timeIntervalSince1970)" + (String(str_styleContent.prefix(4))))
            //: } else {
        } else {
            //: outputPath = NSTemporaryDirectory().appending("outputCut.mp4")
            outputPath = NSTemporaryDirectory().appending((String(str_toTitle) + String(str_indexPlayerHeightValue.suffix(7))))
        }
        //: edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)
        edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)

        //: progressView = TalkingMomentCircleProgressView.init(frame: CGRect.init(x: 0, y: 0, width: 140, height: 140))
        progressView = ControlView(frame: CGRect(x: 0, y: 0, width: 140, height: 140))
        //: progressView?.show(superView: containerView)
        progressView?.selectModel(superView: containerView)
    }

    /// 停止压缩视频
    //: func stopCompressVideo() {
    func giftHorse() {
        //: if self.progressView?.superview != nil {
        if self.progressView?.superview != nil {
            //: self.edit?.cancelGenerate()
            self.edit?.cancelGenerate()
            //: self.progressView?.removeFromSuperview()
            self.progressView?.removeFromSuperview()
        }
    }

    /// 获取压缩视频documents缓存路径
    /// - Returns: 缓存路径
    //: private func getOutputDocumentsPath() -> String {
    private func customToPlayer() -> String {
        //: let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let videoPath = (documentsPath as NSString).appendingPathComponent(CacheCompressVideoFile)
        let videoPath = (documentsPath as NSString).appendingPathComponent(kLet_netRequestName)
        //: if FileManager.default.fileExists(atPath: videoPath) == false {
        if FileManager.default.fileExists(atPath: videoPath) == false {
            //: try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
        }

        //: return videoPath
        return videoPath
    }
}

// MARK: - TXVideoGenerateListener

//: extension TalkingMomentVideoManager: TXVideoGenerateListener {
extension ListReactiveCompatible: TXVideoGenerateListener {
    /// 压缩视频生成进度
    /// - Parameter progress: 生成视频进度百分比
    //: func onGenerateProgress(_ progress: Float) {
    func onGenerateProgress(_ progress: Float) {
        //: self.progressView?.progress = CGFloat(progress)
        self.progressView?.progress = CGFloat(progress)
    }

    /// 压缩视频生成完成
    /// - Parameter result: 生成结果
    //: func onGenerateComplete(_ result: TXGenerateResult) {
    func onGenerateComplete(_ result: TXGenerateResult) {
        //: if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
        if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
            //: let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            //: if outputPath!.contains(CacheCompressVideoFile) {
            if outputPath!.contains(kLet_netRequestName) { // 需要持久缓存
                //: coverPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).jpg")
                coverPath = customToPlayer().appending("/\(Date().timeIntervalSince1970)" + (String(str_labName.prefix(4))))
                //: } else {
            } else {
                //: coverPath = NSTemporaryDirectory().appending("outputCut.jpg")
                coverPath = NSTemporaryDirectory().appending((String(str_valueTitle) + String(str_optionLikeName)))
            }
            //: let imageData = infoReader?.coverImage.compressedImageData() as? NSData
            let imageData = infoReader?.coverImage.key() as? NSData
            //: imageData?.write(toFile: coverPath!, atomically: true)
            imageData?.write(toFile: coverPath!, atomically: true)

            //: if self.block != nil {
            if self.block != nil {
                //: self.block!(outputPath!, coverPath!)
                self.block!(outputPath!, coverPath!)
            }
        }

        //: self.progressView?.removeFromSuperview()
        self.progressView?.removeFromSuperview()
    }
}

// MARK: - 腾讯COS上传、下载

//: extension TalkingMomentVideoManager {
extension ListReactiveCompatible {
    /// COS日志上传
    /// - Parameters:
    ///   - filePath: 日志路径
    ///   - completion: 回调
    //: func cos_uploadLog(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
    func sizeCompletion(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
        //: cos_inItConfig(type: 5) { succeed, msg in
        toKey(type: 5) { succeed, msg in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, msg)
                completion(false, msg)
                //: return
                return
            }

            // cos上传
            //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            //: put.bucket = self.cosCredentialJson["bucket"].stringValue
            put.bucket = self.cosCredentialJson[(str_toText.replacingOccurrences(of: "text", with: "ke") + String(str_imageValue))].stringValue
            //: put.object = self.cosCredentialJson["fileResource"].stringValue
            put.object = self.cosCredentialJson[(String(str_premiumData.prefix(6)) + String(str_fatalData))].stringValue
            //: put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            //: put.setFinish { [weak self] (result, error) in
            put.setFinish { [weak self] _, error in
                //: guard error == nil else {
                guard error == nil else {
                    //: completion(false, "cos upload failed".localized)
                    completion(false, (String(str_kindTitle.suffix(5)) + "pload f" + str_viewLeadingName.replacingOccurrences(of: "color", with: "le")).localized)
                    //: return
                    return
                }
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 上报后台
                //: TalkingMomentRequestTool.req_uploadLogPath(fileUrl: self.cosCredentialJson["fileUrl"].stringValue) { succeed, _, errorModel in
                StreetSmartReactiveCompatible.roomTo(fileUrl: self.cosCredentialJson[(String(str_selectData))].stringValue) { succeed, _, errorModel in
                    //: completion(succeed, errorModel?.errorMsg)
                    completion(succeed, errorModel?.errorMsg)
                }
            }
            //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
            QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
        }
    }

    /// COS 视频上传
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频
    ///   - coverPath: 封面本地路径
    ///   - videoPath: 视频本地路径
    ///   - completion: 回调
    //: func cos_uploadVideo(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
    func nextIndex(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
        //: cos_inItConfig(type: type) { succeed, _ in
        toKey(type: type) { succeed, _ in
            //: guard succeed else {
            guard succeed else {
                //: completion("", "", false)
                completion("", "", false)
                //: return
                return
            }

            // 上传
            //: let group = DispatchGroup()
            let group = DispatchGroup()
            //: for (index, path) in [coverPath, videoPath].enumerated() {
            for (index, path) in [coverPath, videoPath].enumerated() {
                //: group.enter()
                group.enter()
                //: DispatchQueue.global().async {
                DispatchQueue.global().async {
                    //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    //: put.bucket = self.cosCredentialJson["bucket"].stringValue
                    put.bucket = self.cosCredentialJson[(str_toText.replacingOccurrences(of: "text", with: "ke") + String(str_imageValue))].stringValue
                    //: if index == 0 {
                    if index == 0 { // 封面
                        //: put.object = self.cosCredentialJson["coverResource"].stringValue
                        put.object = self.cosCredentialJson[(str_noteName.replacingOccurrences(of: "label", with: "ov") + "rRes" + str_drawData.replacingOccurrences(of: "information", with: "ur"))].stringValue
                        //: } else {
                    } else { // 视频
                        //: put.object = self.cosCredentialJson["videoResource"].stringValue
                        put.object = self.cosCredentialJson[(String(str_makeTitle))].stringValue
                    }
                    //: put.body = NSURL.fileURL(withPath: path) as AnyObject
                    put.body = NSURL.fileURL(withPath: path) as AnyObject
                    //: put.setFinish { (result, error) in
                    put.setFinish { _, error in
                        //: if index == 0 {
                        if index == 0 { // 封面
                            //: self.coverIsUpload = (error == nil)
                            self.coverIsUpload = (error == nil)
                            //: } else {
                        } else { // 视频
                            //: self.videoIsUpload = (error == nil)
                            self.videoIsUpload = (error == nil)
                        }
                        //: group.leave()
                        group.leave()
                    }
                    //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                    QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                }
            }

            //: group.notify(queue: DispatchQueue.main) {
            group.notify(queue: DispatchQueue.main) {
                //: guard self.coverIsUpload == true, self.videoIsUpload == true else {
                guard self.coverIsUpload == true, self.videoIsUpload == true else {
                    //: completion("", "", false)
                    completion("", "", false)
                    //: return
                    return
                }
                // 上传成功
                //: completion(self.cosCredentialJson["coverUrl"].stringValue, self.cosCredentialJson["videoUrl"].stringValue, true)
                completion(self.cosCredentialJson[(String(str_dataContent.prefix(8)))].stringValue, self.cosCredentialJson[(String(str_imageText) + str_lastAddData.replacingOccurrences(of: "black", with: "rl"))].stringValue, true)
            }
        }
    }

    /// 初始化cos配置
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频，5=日志上传
    ///   - completion: 回调
    //: func cos_inItConfig(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
    func toKey(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
        //: TalkingMomentRequestTool.req_getCredential(type: type) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.atQueryed(type: type) { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: self.cosCredentialJson = JSON(result)
            self.cosCredentialJson = JSON(result)

            // 初始化 COS 服务示例
            //: let config = QCloudServiceConfiguration()
            let config = QCloudServiceConfiguration()
            //: config.signatureProvider = self
            config.signatureProvider = self
            //: let endpoint = QCloudCOSXMLEndPoint()
            let endpoint = QCloudCOSXMLEndPoint()
            //: endpoint.regionName = self.cosCredentialJson["region"].stringValue
            endpoint.regionName = self.cosCredentialJson[(str_bottomData.replacingOccurrences(of: "to", with: "gi"))].stringValue
            //: if EqualThen.share.appConfigMode.cosAccelerate {
            if EqualThen.share.appConfigMode.cosAccelerate {
                //: endpoint.suffix = "cos.accelerate.myqcloud.com"
                endpoint.suffix = (String(str_indicatorName) + String(str_mediumValue))
            }
            //: config.endpoint = endpoint
            config.endpoint = endpoint
            //: QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            //: QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)
            QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)

            //: completion(true, errorModel?.errorMsg)
            completion(true, errorModel?.errorMsg)
        }
    }
}

// MARK: - QCloudSignatureProvider

//: extension TalkingMomentVideoManager: QCloudSignatureProvider {
extension ListReactiveCompatible: QCloudSignatureProvider {
    //: func signature(with fileds: QCloudSignatureFields!, request: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
    func signature(with _: QCloudSignatureFields!, request _: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
        //: let credential = QCloudCredential.init()
        let credential = QCloudCredential()
        //: credential.secretID = cosCredentialJson["tmpSecretId"].stringValue
        credential.secretID = cosCredentialJson[(String(str_awakeInsertText))].stringValue
        //: credential.secretKey = cosCredentialJson["tmpSecretKey"].stringValue
        credential.secretKey = cosCredentialJson[(String(str_backNameText.suffix(5)) + String(str_topTitle))].stringValue
        //: credential.token = cosCredentialJson["sessionToken"].stringValue
        credential.token = cosCredentialJson[(str_toData.replacingOccurrences(of: "user", with: "se") + String(str_intervalName.suffix(7)))].stringValue
        //: credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["startTime"].intValue))
        credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(String(str_callValue) + String(str_statusName.suffix(6)))].intValue))
        //: credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["expiredTime"].intValue))
        credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(String(str_modelValue))].intValue))
        //: let creator = QCloudAuthentationV5Creator.init(credential: credential)
        let creator = QCloudAuthentationV5Creator(credential: credential)
        //: let signature = creator?.signature(forData: urlRequst)
        let signature = creator?.signature(forData: urlRequst)
        //: continueBlock(signature, nil)
        continueBlock(signature, nil)
    }
}
