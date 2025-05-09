
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_beginValue:[UInt8] = [0xa7,0xa0,0xa7,0xba,0xe6,0xad,0xa1,0xaa,0xab,0xbc,0xf4,0xe7,0xee,0xa6,0xaf,0xbd,0xee,0xa0,0xa1,0xba,0xee,0xac,0xab,0xab,0xa0,0xee,0xa7,0xa3,0xbe,0xa2,0xab,0xa3,0xab,0xa0,0xba,0xab,0xaa]

private func biologyLaboratory(mode num: UInt8) -> UInt8 {
    return num ^ 206
}

/*: "PhotosReactiveCompatible" :*/
fileprivate let str_timeLabelTitle:String = "Talkinto make in return"
fileprivate let str_blankData:String = "true make show in numberhotosP"
fileprivate let str_kindName:String = "ewCellm share false"

/*: "Save successfully" :*/
fileprivate let str_videoValue:[Character] = ["S","a"]
fileprivate let str_appValue:String = "ve sheight height"
fileprivate let str_viewStartName:String = "ssfchannelly"

/*: / :*/
fileprivate let str_cornerData:String = "price"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetPhotosVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: class TalkingMomentPhotosVC: TalkingMomentFullScreenVC {
class TargetPhotosVc: ProgressViewController {
    //: var deleteBlock: ((Int) -> Void)?
    var deleteBlock: ((Int) -> Void)?
    //: var currenModel = TalkingMomentModel()
    var currenModel = WithMomentModel()
    //: var pageIndex = 0
    var pageIndex = 0
    //: var isHideTopView = false
    var isHideTopView = false
    //: var isHidebottomView = false
    var isHidebottomView = false
    //: var photos = [UIImage]()
    var photos = [UIImage]()

    //: init(momentModel: TalkingMomentModel, index: Int, type: MomentPhotoType) {
    init(momentModel: WithMomentModel, index: Int, type: RowPhotoType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: myType = type
        myType = type
        //: currenModel = momentModel
        currenModel = momentModel
        //: pageIndex = index
        pageIndex = index
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: let curren = abs(index-(momentModel.pic.count-1))
            let curren = abs(index - (momentModel.pic.count - 1))
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                //: self.collecView.contentOffset = CGPoint(x: curren*(Int(ScreenWidth)), y: 0)
                self.collecView.contentOffset = CGPoint(x: curren * Int(kLet_cameraValue), y: 0)
                //: self.pageIndex = index
                self.pageIndex = index
                //: self.updataPageLabel()
                self.updataPageStigmatise()
            }
        }
    }

    /// 发布页面使用
    //: init(images: [UIImage], index: Int, type: MomentPhotoType) {
    init(images: [UIImage], index: Int, type: RowPhotoType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: myType = type
        myType = type
        //: photos = images
        photos = images
        //: pageIndex = index
        pageIndex = index
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_beginValue.map{biologyLaboratory(mode: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: collecView.reloadData()
        collecView.reloadData()
        //: updataPageLabel()
        updataPageStigmatise()
        //: crushBtnTool(modle: currenModel)
        progressModle(modle: currenModel)
//        if myType == .normal {
//            setDownloadView()
//        }
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if EqualThen.share.appConfigMode.disableShootScreen {
            if EqualThen.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = CellDataReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    /// 重写父类删除方法
    //: override func publishDeleteButtonClick() {
    override func actionClick() {
        //: super.publishDeleteButtonClick()
        super.actionClick()

        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!(pageIndex)
            self.deleteBlock!(pageIndex)
        }
        //: photos.remove(at: pageIndex)
        photos.remove(at: pageIndex)
        //: guard photos.count > 0 else {
        guard photos.count > 0 else {
            //: if self.presentingViewController != nil {
            if self.presentingViewController != nil {
                //: self.dismiss(animated: true)
                self.dismiss(animated: true)
                //: } else {
            } else {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
            //: return
            return
        }

        //: if pageIndex >= photos.count {
        if pageIndex >= photos.count {
            //: pageIndex -= 1
            pageIndex -= 1
        }
        //: collecView.reloadData()
        collecView.reloadData()
        //: updataPageLabel()
        updataPageStigmatise()
    }

    //: lazy var collecView: UICollectionView = {
    lazy var collecView: UICollectionView = {
        //: let flayout = UICollectionViewFlowLayout.init()
        let flayout = UICollectionViewFlowLayout()
        //: flayout.scrollDirection = .horizontal
        flayout.scrollDirection = .horizontal
        //: flayout.itemSize = CGSize(width: ScreenWidth, height: ScreenHeight)
        flayout.itemSize = CGSize(width: kLet_cameraValue, height: kLet_clickData)
        //: flayout.minimumLineSpacing = 0
        flayout.minimumLineSpacing = 0
        //: flayout.minimumInteritemSpacing = 0
        flayout.minimumInteritemSpacing = 0

        //: let view = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: flayout)
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: flayout)
        //: view.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        view.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.dataSource = self
        view.dataSource = self
        //: view.delegate = self
        view.delegate = self
        //: view.isPagingEnabled = true
        view.isPagingEnabled = true
        //: view.scrollsToTop = false
        view.scrollsToTop = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.contentOffset = CGPoint(x: pageIndex*(Int(ScreenWidth)), y: 0)
        view.contentOffset = CGPoint(x: pageIndex * Int(kLet_cameraValue), y: 0)
        //: if myType == .normal {
        if myType == .normal {
            //: view.contentSize = CGSize(width: (currenModel.pic.count )*(Int(ScreenWidth)), height: 0)
            view.contentSize = CGSize(width: (currenModel.pic.count) * Int(kLet_cameraValue), height: 0)
            //: } else {
        } else {
            //: view.contentSize = CGSize(width: (photos.count)*(Int(ScreenWidth)), height: 0)
            view.contentSize = CGSize(width: (photos.count) * Int(kLet_cameraValue), height: 0)
        }
        //: view.register(TalkingMomentPhotosPreviewCell.self, forCellWithReuseIdentifier: "TalkingMomentPhotosPreviewCell")
        view.register(PhotosReactiveCompatible.self, forCellWithReuseIdentifier: (String(str_timeLabelTitle.prefix(6)) + "gMomentP" + String(str_blankData.suffix(6)) + "revi" + String(str_kindName.prefix(6))))
        //: self.view.addSubview(view)
        self.view.addSubview(view)
        //: self.view.insertSubview(view, belowSubview: topView)
        self.view.insertSubview(view, belowSubview: topView)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var pageLabel: UILabel = {
    private lazy var pageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = .white
        label.textColor = .white
        //: self.view.addSubview(label)
        self.view.addSubview(label)
        //: if myType == .normal {
        if myType == .normal {
            //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
            label.font = .pingfang(type: .Regular, fontSize: 16)
            //: label.snp.makeConstraints { make in
            label.snp.makeConstraints { make in
                //: make.centerY.equalTo(self.topView.backBtn)
                make.centerY.equalTo(self.topView.backBtn)
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: } else if myType == .publish {
        } else if myType == .publish {
            //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
            label.font = .pingfang(type: .Medium, fontSize: 16)
            //: label.snp.makeConstraints { make in
            label.snp.makeConstraints { make in
                //: make.top.equalToSuperview().offset(StatusBarHeight)
                make.top.equalToSuperview().offset(kLet_timeSenseValue)
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
        }

        //: return label
        return label
        //: }()
    }()

//    lazy var downloadBtn: ProgressTalkingButton = {
//        let btn = ProgressTalkingButton.init()
//        btn.setTitle("Save".localized, for: .normal)
//        btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 16)
//        btn.addTarget(self, action: #selector(downloadBtnClick), for: .touchUpInside)
//        self.view.addSubview(btn)
//        return btn
//    }()
}

//: extension TalkingMomentPhotosVC {
extension TargetPhotosVc {
//    func setDownloadView() {
//        downloadBtn.snp.makeConstraints { make in
//            make.centerY.equalTo(self.topView.backBtn)
//            make.trailing.equalTo(-20)
//        }
//    }
//    @objc func downloadBtnClick() {
//        RubricThen.func__openAlbumServiceWithBlock(true) { [weak self] (isOpen: Bool) in
//            if isOpen {
//                guard let self = self else {return}
//                guard  self.pageIndex >= 0 && self.pageIndex < self.currenModel.pic.count  else { return }
//                let model: ZapModelType = self.currenModel.pic[self.pageIndex]
//                if model.imgUrl?.count ?? 0 > 1 {
//                    DispatchQueue.global(qos: .userInitiated).async {
//                        let imageData = try? Data(contentsOf: URL(string: model.imgUrl ?? "")!)
//                        if imageData != nil {
//                            DispatchQueue.main.async {
//                                let image: UIImage? = UIImage.init(data: imageData!)
//                                guard image != nil else { return }
//                                self.savePHPhotoLibrary(image: image!)
//                            }
//                        }
//                    }
//                }else {
//                    let image = model.imagePic ?? UIImage.init()
//                    self.savePHPhotoLibrary(image: image)
//                }
//
//
//
//            }
//        }
//    }

    //: func savePHPhotoLibrary(image: UIImage) {
    func create(image: UIImage) {
        //: PHPhotoLibrary.shared().performChanges({
        PHPhotoLibrary.shared().performChanges({
            //: PHAssetChangeRequest.creationRequestForAsset(from: image)
            PHAssetChangeRequest.creationRequestForAsset(from: image)
            //: }) { (isSuccess: Bool, error: Error?) in
        }) { (isSuccess: Bool, _: Error?) in
            //: if isSuccess {
            if isSuccess {
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Save successfully".localized)
                    self.fileFirst(showMsg: (String(str_videoValue) + String(str_appValue.prefix(4)) + "ucce" + str_viewStartName.replacingOccurrences(of: "channel", with: "ul")).localized)
                }
                //: } else {
            } else {
                // error!.localizedDescription
            }
        }
    }
}

//: extension TalkingMomentPhotosVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension TargetPhotosVc: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func hideTopView() {
    func resume() {
        //: isHideTopView = !isHideTopView
        isHideTopView = !isHideTopView
        //: topView.isHidden = isHideTopView
        topView.isHidden = isHideTopView
        //: pageLabel.isHidden = isHideTopView
        pageLabel.isHidden = isHideTopView
//        downloadBtn.isHidden = isHideTopView
    }

    //: func hideHidebottomView() {
    func photoView() {
        //: if  currenModel.sex==EqualThen.share.loginUserMode.sex {
        if currenModel.sex == EqualThen.share.loginUserMode.sex {
            //: return
            return
        }
        //: isHidebottomView = !isHidebottomView
        isHidebottomView = !isHidebottomView
        //: self.bottomView.isHidden = isHidebottomView
        self.bottomView.isHidden = isHidebottomView
    }

    //: func updataPageLabel() {
    func updataPageStigmatise() {
        //: if myType == .normal {
        if myType == .normal {
            //: if currenModel.pic.count > 1 {
            if currenModel.pic.count > 1 {
                //: pageLabel.text = "\(pageIndex+1)/\(currenModel.pic.count)"
                pageLabel.text = "\(pageIndex + 1)/\(currenModel.pic.count)"
            }

            //: } else if myType == .publish {
        } else if myType == .publish {
            //: pageLabel.text = "\(pageIndex+1)/\(photos.count)"
            pageLabel.text = "\(pageIndex + 1)/\(photos.count)"
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: if myType == .normal {
        if myType == .normal {
            //: return currenModel.pic.count
            return currenModel.pic.count
            //: } else {
        } else {
            //: return photos.count
            return photos.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingMomentPhotosPreviewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingMomentPhotosPreviewCell", for: indexPath) as! TalkingMomentPhotosPreviewCell
        let cell: PhotosReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_timeLabelTitle.prefix(6)) + "gMomentP" + String(str_blankData.suffix(6)) + "revi" + String(str_kindName.prefix(6))), for: indexPath) as! PhotosReactiveCompatible
        //: if myType == .normal {
        if myType == .normal {
            //: let model: TalkingMomentPhotoModel = currenModel.pic[indexPath.row]
            let model: ZapModelType = currenModel.pic[indexPath.row]
            //: if model.imgUrl?.count ?? 0 > 1 {
            if model.imgUrl?.count ?? 0 > 1 {
                //: cell.configUrl(url: model.imgUrl! )
                cell.titleTo(url: model.imgUrl!)
                //: }else {
            } else {
                //: cell.configImage(image: model.imagePic ?? UIImage.init())
                cell.overSubImage(image: model.imagePic ?? UIImage())
            }

            //: } else {
        } else {
            //: cell.configImage(image: photos[indexPath.row])
            cell.overSubImage(image: photos[indexPath.row])
        }

        //: cell.sblock = { [weak self] ()  -> Void in
        cell.sblock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.hideTopView()
            self.resume()
            //: self.hideHidebottomView()
            self.photoView()
            //: self.usePhotoView.isHidden = !self.usePhotoView.isHidden
            self.usePhotoView.isHidden = !self.usePhotoView.isHidden
            //: return
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt _: IndexPath) {
        //: let tcell: TalkingMomentPhotosPreviewCell = cell as! TalkingMomentPhotosPreviewCell
        let tcell: PhotosReactiveCompatible = cell as! PhotosReactiveCompatible
        //: tcell.recoverSubviews()
        tcell.digitiser()
    }

    //: func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt _: IndexPath) {
        //: let tcell: TalkingMomentPhotosPreviewCell = cell as! TalkingMomentPhotosPreviewCell
        let tcell: PhotosReactiveCompatible = cell as! PhotosReactiveCompatible
        //: tcell.recoverSubviews()
        tcell.digitiser()
    }

    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: var offSetWidth = scrollView.contentOffset.x
        var offSetWidth = scrollView.contentOffset.x
        //: let currentIndex: Int = Int(offSetWidth / ScreenWidth)
        let currentIndex = Int(offSetWidth / kLet_cameraValue)
        //: if myType == .normal {
        if myType == .normal {
            //: if currentIndex < currenModel.pic.count {
            if currentIndex < currenModel.pic.count {
                //: pageIndex = Int(currentIndex)
                pageIndex = Int(currentIndex)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if FileReactiveCompatible.shared.direction == .rightToLeft {
                    //: var curren = abs(currentIndex-(currenModel.pic.count-1))
                    var curren = abs(currentIndex - (currenModel.pic.count - 1))
                    //: pageIndex = Int(curren)
                    pageIndex = Int(curren)
                }
                //: updataPageLabel()
                updataPageStigmatise()
            }
            //: } else if myType == .publish {
        } else if myType == .publish {
            //: if currentIndex < photos.count  && pageIndex != currentIndex {
            if currentIndex < photos.count && pageIndex != currentIndex {
                //: pageIndex = Int(currentIndex)
                pageIndex = Int(currentIndex)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if FileReactiveCompatible.shared.direction == .rightToLeft {
                    //: let curren = abs(currentIndex-(photos.count-1))
                    let curren = abs(currentIndex - (photos.count - 1))
                    //: pageIndex = Int(curren)
                    pageIndex = Int(curren)
                }
                //: updataPageLabel()
                updataPageStigmatise()
            }
        }
    }
}
