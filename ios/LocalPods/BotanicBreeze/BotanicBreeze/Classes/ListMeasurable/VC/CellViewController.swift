
//: Declare String Begin

/*: "Cancel" :*/
fileprivate let str_renderItemText:[Character] = ["C","a","n","c","e","l"]

/*: "Post" :*/
fileprivate let str_requestTitle:[Character] = ["P","o","s","t"]

/*: "Upload failed" :*/
fileprivate let str_actualValue:String = "Uploavar location temp"
fileprivate let str_equalData:[Character] = ["d"," ","f","a","i","l","e","d"]

/*: "imgUrl" :*/
fileprivate let str_reasonData:String = "tool make listimgUrl"

/*: "videoUrl" :*/
fileprivate let str_arrayName:String = "vmy"
fileprivate let str_lineText:String = "deoUrlview play"

/*: "content" :*/
fileprivate let str_viewTitleValue:String = "CONTENT"

/*: "location" :*/
fileprivate let str_actualData:String = "lequalcati"
fileprivate let str_imageData:String = "ointimate"

/*: "Video review in progress" :*/
fileprivate let str_errorValue:String = "play view viewVideo "
fileprivate let str_sectionContent:String = " in size model in string frame"
fileprivate let str_succeedData:String = "rcellss"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_minName:String = "Shoot half size else return"
fileprivate let str_modeValue:String = "size background succeed at l"
fileprivate let str_rawName:String = " "
fileprivate let str_specialName:String = "5 sestyle self user"

/*: "Camera" :*/
fileprivate let str_roomTitle:String = "else icon cell asCamer"
fileprivate let str_labelDataName:String = "name"

/*: "Photo" :*/
fileprivate let str_makeData:String = "self view historical countPhoto"

/*: "Video" :*/
fileprivate let str_managerValue:String = "model manager view giftVideo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellViewController.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: import ModelIO
import ModelIO

//: import CoreServices
import CoreServices

//: import AVFoundation
import AVFoundation

//: import Photos
import Photos

//: protocol TalkingFreeViewControllerDelegate: NSObjectProtocol {
protocol ShortObjectProtocol: NSObjectProtocol {
    // 发布成功
    //: func ShareSucceed()
    func quantityimate()
}

// MARK: - 属性声明 & 生命周期方法

//: class TalkingFreeViewController: TalkingBaseViewController {
class CellViewController: SeamViewController {
    //: weak var delegate: TalkingFreeViewControllerDelegate?
    weak var delegate: ShortObjectProtocol?

    //: private var videoPath = ""
    private var videoPath = ""
    //: private var coverPath = ""
    private var coverPath = ""

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        noPushUi()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: TalkingMomentRequestTool = {
    private lazy var reqManager: StreetSmartReactiveCompatible = //: return StreetSmartReactiveCompatible()
        .init()
    //: }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_renderItemText)).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.addColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(cancelBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fromSubItem), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var postBtn: UIButton = {
    private lazy var postBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Post".localized, for: .normal)
        btn.setTitle((String(str_requestTitle)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 70, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 70, height: 30)), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(postBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eventRoom), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var collectionView: FreeCollectionView = {
    private lazy var collectionView: ModeView = {
        //: let collectionView = FreeCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        let collectionView = ModeView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegte = self
        collectionView.delegte = self
        //: collectionView.deleteActionBlock = { [weak self] in
        collectionView.deleteActionBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.collectionView.imageArray.count == 0 {
            if self.collectionView.imageArray.count == 0 {
                //: self.collectionView.contentType = MomentType.nones
                self.collectionView.contentType = NameOfUTF8Initializable.nones
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.coverPath = ""
                self.coverPath = ""
            }
            //: self.updataImageNumber()
            self.representation()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingFreeViewController {
extension CellViewController {
    /// 发布动态
    //: func requestReleaseMoment() {
    func addMoment() {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: reqManager.releasePhotosMoment(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, result, errorModel in
        reqManager.openCompletion(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.postBtn.isEnabled = true
            self.postBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: return
                return
            }
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
            NotificationCenter.default.post(name: kLet_roomValue, object: self, userInfo: nil)
        }
    }

    /// 上传视频到腾讯云COS
    //: func uploadVideo() {
    func colouration() {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        ListReactiveCompatible.shared.nextIndex(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: self.func__showStatusBarErrorMsg(showMsg: "Upload failed".localized)
                self.oversight(showMsg: (String(str_actualValue.prefix(5)) + String(str_equalData)).localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(str_reasonData.suffix(6)))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(str_arrayName.replacingOccurrences(of: "my", with: "i") + String(str_lineText.prefix(6)))] = videoUrl
            //: dict["content"] = content
            dict[(str_viewTitleValue.lowercased())] = content
            //: dict["location"] = ""
            dict[(str_actualData.replacingOccurrences(of: "equal", with: "o") + str_imageData.replacingOccurrences(of: "intimate", with: "n"))] = ""

            //: TalkingMomentRequestTool.releaseVideoMoment(params: dict) {[weak self] succeed, result, errorModel in
            StreetSmartReactiveCompatible.bring(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.postBtn.isEnabled = true
                self.postBtn.isEnabled = true
                //: guard succeed else {
                guard succeed else {
                    //: return
                    return
                }
                //: self.deleteFile()
                self.fill()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video review in progress".localized)
                self.fileFirst(showMsg: (String(str_errorValue.suffix(6)) + "review" + String(str_sectionContent.prefix(4)) + "prog" + str_succeedData.replacingOccurrences(of: "cell", with: "e")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: self.delegate?.ShareSucceed()
                self.delegate?.quantityimate()
                //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
                NotificationCenter.default.post(name: kLet_roomValue, object: self, userInfo: nil)
            }
        }
    }
}

// MARK: Event事件

//: extension TalkingFreeViewController {
extension CellViewController {
    //: @objc func cancelBtnClickEvent() {
    @objc func fromSubItem() { // 返回
        //: TalkingMomentVideoManager.shared.stopCompressVideo()
        ListReactiveCompatible.shared.giftHorse()
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: @objc func postBtnClickEvent() {
    @objc func eventRoom() { // 发布
        //: postBtn.isEnabled = false
        postBtn.isEnabled = false
        //: collectionView.headerView?.textView.resignFirstResponder()
        collectionView.headerView?.textView.resignFirstResponder()
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: requestReleaseMoment()
            addMoment()
            //: } else if self.collectionView.contentType == .Video {
        } else if self.collectionView.contentType == .Video {
            //: uploadVideo()
            colouration()
        }
    }

    /// 更新发布按钮状态
    //: func updataImageNumber() {
    func representation() {
        //: postBtn.isEnabled = collectionView.imageArray.count > 0 ? true:false
        postBtn.isEnabled = collectionView.imageArray.count > 0 ? true : false
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    // MARK: - 相机、相册

    //: func openCamera() {
    func countersectionPointDrunkGunPolaroidLandCamera() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.toBackMap(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }

            //: let cameraPicker = UIImagePickerController()
            let cameraPicker = UIImagePickerController()
            //: cameraPicker.delegate = self
            cameraPicker.delegate = self
            //: cameraPicker.sourceType = .camera
            cameraPicker.sourceType = .camera
            //: switch self.collectionView.contentType {
            switch self.collectionView.contentType {
            //: case .Photo:
            case .Photo:
                //: cameraPicker.cameraCaptureMode = .photo
                cameraPicker.cameraCaptureMode = .photo
            //: break
            //: default:
            default:
                //: cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                //: cameraPicker.cameraCaptureMode = .video
                cameraPicker.cameraCaptureMode = .video
                //: cameraPicker.videoQuality = .typeMedium
                cameraPicker.videoQuality = .typeMedium
                //: cameraPicker.videoMaximumDuration = 30
                cameraPicker.videoMaximumDuration = 30
                //: break
            }
            //: cameraPicker.modalPresentationStyle = .fullScreen
            cameraPicker.modalPresentationStyle = .fullScreen
            //: self.present(cameraPicker, animated: true)
            self.present(cameraPicker, animated: true)
        }
    }

    //: func openAlbum() {
    func barOffPremium() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let count = 9 - self.collectionView.imageArray.count
            let count = 9 - self.collectionView.imageArray.count
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: count, allowPhoto: true, allowVideo: false)
            let vc = GestureDataReactiveCompatible.extra(maxCount: count, allowPhoto: true, allowVideo: false)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
            vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                             //: assets: Array<Any>?,
                                                             _: [Any]?,
                                                             //: isSelectOriginalPhoto: Bool?)  in
                                                             _: Bool?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: guard let photos = photos else { return }
                    guard let photos = photos else { return }

                    //: for img in photos {
                    for img in photos {
                        //: self.collectionView.imageArray.append(img)
                        self.collectionView.imageArray.append(img)
                    }
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.updataImageNumber()
                    self.representation()
            }
        }
    }

    //: func openVideo() {
    func chock() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        RubricThen.onError(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
            let vc = GestureDataReactiveCompatible.extra(maxCount: 1, allowPhoto: false, allowVideo: true)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
            vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                            //: assets: PHAsset?)  in
                                                            assets: PHAsset?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                    GestureDataReactiveCompatible.completionEqual(asset: assets) { filePath in
                        //: guard filePath != nil else { return }
                        guard filePath != nil else { return }
                        //: let asset = AVURLAsset.init(url: filePath!)
                        let asset = AVURLAsset(url: filePath!)
                        //: let time = asset.duration
                        let time = asset.duration
                        //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        //: if seconds >= 5 {
                        if seconds >= 5 {
                            //: self.CompressedVideo(url: filePath!)
                            self.visualCommunication(url: filePath!)
                            //: } else {
                        } else {
                            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                self.oversight(showMsg: (String(str_minName.prefix(6)) + "video" + String(str_modeValue.suffix(5)) + "east" + str_rawName.capitalized + String(str_specialName.prefix(4)) + "conds").localized)
                            }
                        }
                    }
            }
        }
    }

    /// 视频编辑+压缩
    //: func CompressedVideo(url: URL) {
    func visualCommunication(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 60.0, videoURL: url) { videoInfo in
        let videoVC = EditVisualCommunicationViewController(maxDuration: 60.0, videoURL: url) { videoInfo in
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            //: self.collectionView.contentType = .Video
            self.collectionView.contentType = .Video
            //: let img = UIImage.init(contentsOfFile: self.coverPath) ?? UIImage.init()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.collectionView.imageArray.append(img)
            self.collectionView.imageArray.append(img)
            //: self.collectionView.MaxImagesCount = 1
            self.collectionView.MaxImagesCount = 1
            //: self.updataImageNumber()
            self.representation()
        }
        //: ProgressHUD.dismiss()
        ModelReactiveCompatible.dataConverterCan()
        //: videoVC.modalPresentationStyle = .fullScreen
        videoVC.modalPresentationStyle = .fullScreen
        //: self.present(videoVC, animated: true)
        self.present(videoVC, animated: true)
    }

    //: func deleteFile() {
    func fill() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - UIImagePickerControllerDelegate

//: extension TalkingFreeViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
extension CellViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: let mediaType = info[.mediaType] as! String
            let mediaType = info[.mediaType] as! String

            //: if mediaType == kUTTypeMovie as String {
            if mediaType == kUTTypeMovie as String {
                //: let asset = AVURLAsset.init(url: info[.mediaURL] as! URL)
                let asset = AVURLAsset(url: info[.mediaURL] as! URL)
                //: let time = asset.duration
                let time = asset.duration
                //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                //: if seconds>=5 {
                if seconds >= 5 {
                    //: ProgressHUD.show()
                    ModelReactiveCompatible.fromTarget()
                    //: self.CompressedVideo(url: info[.mediaURL]! as! URL)
                    self.visualCommunication(url: info[.mediaURL]! as! URL)

                    //: } else {
                } else {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                        //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                        self.oversight(showMsg: (String(str_minName.prefix(6)) + "video" + String(str_modeValue.suffix(5)) + "east" + str_rawName.capitalized + String(str_specialName.prefix(4)) + "conds").localized)
                    }
                }
                //: }else if mediaType == kUTTypeImage as String {
            } else if mediaType == kUTTypeImage as String {
                //: guard let image = info[.originalImage] as? UIImage else {
                guard let image = info[.originalImage] as? UIImage else {
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.collectionView.imageArray.append(image)
                    self.collectionView.imageArray.append(image)
                    //: self.updataImageNumber()
                    self.representation()
                }
            }
        }
    }
}

// MARK: - WithObjectProtocol

//: extension TalkingFreeViewController: FreeCollectionViewDelegate {
extension CellViewController: WithObjectProtocol {
    /// 选择图片
    //: func needSelectReleaseImages() {
    func giftEqual() {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = OnViewDelegate(frame: self.view.frame)
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized])
            vc.videoList(cellTitleList: [(String(str_roomTitle.suffix(5)) + str_labelDataName.replacingOccurrences(of: "name", with: "a")).localized, (String(str_makeData.suffix(5))).localized])
            //: }else {
        } else {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized, "Video".localized])
            vc.videoList(cellTitleList: [(String(str_roomTitle.suffix(5)) + str_labelDataName.replacingOccurrences(of: "name", with: "a")).localized, (String(str_makeData.suffix(5))).localized, (String(str_managerValue.suffix(5))).localized])
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if index == 0 {
            if index == 0 {
                //: self.openCamera()
                self.countersectionPointDrunkGunPolaroidLandCamera()
                //: } else if index == 1 {
            } else if index == 1 {
                //: self.openAlbum()
                self.barOffPremium()
                //: } else if index == 2 {
            } else if index == 2 {
                //: self.openVideo()
                self.chock()
            }
        }
    }

    /// 展示当前选中图片
    //: func needShowCurrentImage(index: IndexPath) {
    func play(index: IndexPath) {
        //: let vc = TalkingMomentPhotosVC.init(images: self.collectionView.imageArray, index: index.row, type: .publish)
        let vc = TargetPhotosVc(images: self.collectionView.imageArray, index: index.row, type: .publish)
        // 删除按钮block
        //: vc.deleteBlock = { index in
        vc.deleteBlock = { index in
            //: guard self.collectionView.imageArray.count > index else {
            guard self.collectionView.imageArray.count > index else {
                //: return
                return
            }
            //: self.collectionView.imageArray.remove(at: index)
            self.collectionView.imageArray.remove(at: index)
            //: self.updataImageNumber()
            self.representation()
            //: self.collectionView.contentType = MomentType.nones
            self.collectionView.contentType = NameOfUTF8Initializable.nones
        }
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }

    /// 展示当前选中视频
    //: func needShowCurrentVideo() {
    func changeVideo() {
        //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPath)
        let vc = AtViewController(videoPath: self.videoPath)
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingFreeViewController {
extension CellViewController {
    //: func createUI() {
    func noPushUi() {
        //: self.view.addSubview(cancelBtn)
        self.view.addSubview(cancelBtn)
        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(kLet_timeSenseValue + 7)
            //: make.size.equalTo(CGSize(width: 80, height: 30))
            make.size.equalTo(CGSize(width: 80, height: 30))
        }

        //: self.view.addSubview(postBtn)
        self.view.addSubview(postBtn)
        //: postBtn.snp.makeConstraints { make in
        postBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(kLet_timeSenseValue + 7)
            //: make.size.equalTo(CGSize(width: 70, height: 30))
            make.size.equalTo(CGSize(width: 70, height: 30))
        }

        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarNavigationBarHeight)
            make.top.equalToSuperview().offset(kLet_detailNameText)
            //: make.leading.trailing.bottom.equalTo(0)
            make.leading.trailing.bottom.equalTo(0)
        }
    }
}
