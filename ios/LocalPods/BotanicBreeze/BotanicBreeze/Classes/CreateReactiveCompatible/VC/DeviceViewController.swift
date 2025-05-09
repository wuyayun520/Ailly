
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerValue:[UInt8] = [0x74,0x79,0x74,0x7f,0x33,0x6e,0x7a,0x6f,0x70,0x7d,0x45,0x34,0x2b,0x73,0x6c,0x7e,0x2b,0x79,0x7a,0x7f,0x2b,0x6d,0x70,0x70,0x79,0x2b,0x74,0x78,0x7b,0x77,0x70,0x78,0x70,0x79,0x7f,0x70,0x6f]

fileprivate func userInvite(count num: UInt8) -> UInt8 {
    let value = Int(num) + 245
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Face verification" :*/
fileprivate let str_adjustmentData:String = "invite fail else shootFace "
fileprivate let str_selectedName:String = "vebackgroundfi"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoVC: TalkingBaseViewController {
class DeviceViewController: SeamViewController {
    //: var takedPhotoImg: UIImage?
    var takedPhotoImg: UIImage?

    //: init(photoImage: UIImage) {
    init(photoImage: UIImage) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.takedPhotoImg = photoImage
        self.takedPhotoImg = photoImage
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerValue.map{userInvite(count: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        snapFrom(isOpen: false)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        snapFrom(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Face verification".localized
        title = (String(str_adjustmentData.suffix(5)) + str_selectedName.replacingOccurrences(of: "background", with: "ri") + "cation").localized
        //: self.createUI()
        self.table()
        //: self.createUIConstraint()
        self.insertPopName()
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingVerificationTakePhotoView = {
    lazy var mainView: NaturalThen = {
        //: let view = TalkingVerificationTakePhotoView()
        let view = NaturalThen()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingVerificationTakePhotoVC {
extension DeviceViewController {
    //: func requestSubmitPhoto(photo: UIImage) {
    func state(photo: UIImage) {
        // 图片压缩成data  auth_pic : data
        //: ProgressHUD.show(superView: view)
        ModelReactiveCompatible.sendImage(superView: view)
        //: TalkingUserRequestManager.func__realVerifyUploadPic(pic: photo) { succeed, result, errorModel in
        TitleEqualRequestManager.harvestMoonCompletion(pic: photo) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()

            //: if succeed == true {
            if succeed == true {
                //: EqualThen.share.loginUserMode.isTPAuth = "1"
                EqualThen.share.loginUserMode.isTPAuth = "1"
                //: let vc = TalkingFinalVerificationVC()
                let vc = StatusThen()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: ProgressHUD.toast(errorModel?.errorMsg)
                ModelReactiveCompatible.doMake(errorModel?.errorMsg)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoVC {
extension DeviceViewController {
    //: override func naviPopback() {
    override func white() {
        //: for index in 0..<(self.navigationController?.viewControllers.count)! {
        for index in 0 ..< (self.navigationController?.viewControllers.count)! {
            //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingFaceVerificationVC.self) == true {
            if self.navigationController?.viewControllers[index].isKind(of: CameraVerificationVc.self) == true {
                //: let vc = (self.navigationController?.viewControllers[index] as? TalkingFaceVerificationVC)!
                let vc = (self.navigationController?.viewControllers[index] as? CameraVerificationVc)!
                //: self.navigationController?.popToViewController(vc, animated: true)
                self.navigationController?.popToViewController(vc, animated: true)
                //: break
                break
            }
        }
    }
}

// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

//: extension TalkingVerificationTakePhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension DeviceViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: func retakePhoto() {
    func colorName() {
        //: let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        //: let imagePicker = UIImagePickerController()
        let imagePicker = UIImagePickerController()
        //: imagePicker.sourceType = .photoLibrary
        imagePicker.sourceType = .photoLibrary
        //: if isAvailable {
        if isAvailable {
            //: imagePicker.sourceType = .camera
            imagePicker.sourceType = .camera
        }
        //: imagePicker.delegate = self
        imagePicker.delegate = self
        //: present(imagePicker, animated: true, completion: {})
        present(imagePicker, animated: true, completion: {})
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)

        //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
        if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //: mainView.rightPhotoImageView.image = photo
            mainView.rightPhotoImageView.image = photo
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoVC {
extension DeviceViewController {
    //: func createUI() {
    func table() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: mainView.rightPhotoImageView.image = self.takedPhotoImg
        mainView.rightPhotoImageView.image = self.takedPhotoImg
        //: mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) -> Void in
        mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.requestSubmitPhoto(photo: photoImage)
            self.state(photo: photoImage)
            //: return
        }
        //: mainView.retakeClickBlock = { [weak self] () -> Void in
        mainView.retakeClickBlock = { [weak self] () in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.retakePhoto()
            self.colorName()
            //: return
        }
    }

    //: func createUIConstraint() {
    func insertPopName() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
