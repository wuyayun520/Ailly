
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_publishIndexContent:String = "bg_smessage color"
fileprivate let str_mapValue:String = "MISANG"
fileprivate let str_pingNameContent:String = "deequala"
fileprivate let str_makeTitle:String = "ullog"

/*: "Likes" :*/
fileprivate let str_fromData:String = "Likesuser else"

/*: "Visitors" :*/
fileprivate let str_hiddenHeadName:String = "Visielse show video if top"

/*: "FC8BFC" :*/
fileprivate let str_clickName:String = "room8Broom"

/*: "FE4D8E" :*/
fileprivate let str_objectData:String = "label"
fileprivate let str_voiceDataText:String = "direction4D8direction"

/*: "ECECEC" :*/
fileprivate let str_defineText:String = "EthatEthatE"
fileprivate let str_withText:[Character] = ["C"]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_toValue:[UInt8] = [0xe7,0x12,0x12,0x15,0x1d,0xc6,0xcb,0xe6,0xc6,0x1a,0x15,0xc6,0x19,0xb,0x14,0xa,0xc6,0x1f,0x15,0x1b,0xc6,0x14,0x15,0x1a,0xf,0xc,0xf,0x9,0x7,0x1a,0xf,0x15,0x14,0x19,0xe5]

fileprivate func areaSelf(source num: UInt8) -> UInt8 {
    let value = Int(num) + 90
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_inputTitle:String = "Cancelmodel action content"

/*: "Settings" :*/
fileprivate let str_centerData:String = "Sein status photo manager rank"
fileprivate let str_viewMakeTitle:String = "momentmomentings"

/*: "JXBannerCellID" :*/
fileprivate let str_cellData:[Character] = ["J","X","B","a","n","n","e","r","C","e","l","l","I","D"]

/*: "#FFFFFF" :*/
fileprivate let str_errorValue:String = "live any let#FFFFFF"

/*: "#BDB8B5" :*/
fileprivate let str_sizeContent:[Character] = ["#","B","D","B","8","B","5"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddDataSource.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2025/2/18.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: import JXBanner
import JXBanner

//: import JXPageControl
import JXPageControl

//: class TalkingLikeVC: TalkingBaseViewController {
class AddDataSource: SeamViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()

    //: var adBannderListData: [SocialAdBannerModel]?
    var adBannderListData: [DealTransformable]? // 广告banner数据

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.poetise()
        //: self.setupSubViewsConstraint()
        self.evidenceConstraint()
        //: self.func__turnOnSystemNotification()
        self.keynoteConstraint()
        //: self.load_adBanner()
        self.marginOfError()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.eponymUp(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.eponymUp(name: (String(str_publishIndexContent.prefix(4)) + "houye_" + str_mapValue.lowercased() + "uang_" + str_pingNameContent.replacingOccurrences(of: "equal", with: "f") + str_makeTitle.replacingOccurrences(of: "log", with: "t"))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: 10, width: 10, height: 10))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: 10, width: 10, height: 10))
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 0
        segmentedView.defaultSelectedIndex = 0
        //: segmentedView.isHidden = true
        segmentedView.isHidden = true
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight-50)
        view.frame = CGRect(x: 0, y: 50, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText - kLet_timeSenseValue - 50)
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: view.isListHorizontalScrollEnabled = false
        view.isListHorizontalScrollEnabled = false
//        if FileReactiveCompatible.shared.direction == .rightToLeft {
//            view.transform = CGAffineTransform(scaleX: -1, y: 1)
//        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()
        //: array.append("Likes".localized)
        array.append((String(str_fromData.prefix(5))).localized)
        //: array.append("Visitors".localized)
        array.append((String(str_hiddenHeadName.prefix(4)) + "tors").localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: let popularVC = TalkingLikeListVC.init()
            let popularVC = TargetArrayListFlowLayout()
            //: if i == "Likes".localized {
            if i == (String(str_fromData.prefix(5))).localized {
                //: popularVC.tabType = .Likes
                popularVC.tabType = .Likes
                //: } else if i == "Visitors".localized {
            } else if i == (String(str_hiddenHeadName.prefix(4)) + "tors").localized {
                //: popularVC.tabType = .Visitors
                popularVC.tabType = .Visitors
            }
            //: array.append(popularVC)
            array.append(popularVC)
        }
        //: return array
        return array
        //: }()
    }()

    // MARK: - Lazy load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .white
        banner.backgroundColor = .white
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.titleTheoryBanner()
        //: banner.layer.cornerRadius = 5
        banner.layer.cornerRadius = 5
        //: banner.layer.masksToBounds = true
        banner.layer.masksToBounds = true
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: CameraRequestManager = //: return CameraRequestManager()
        .init()
    //: }()

    //: private lazy var likesBtn: UIButton = {
    private lazy var likesBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Likes".localized, for: .normal)
        btn.setTitle((String(str_fromData.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FC8BFC")!.cgColor, UIColor.init(hex: "FE4D8E")!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        btn.setBackgroundImage(UIImage.makeBackground(colors: [UIColor(hex: (str_clickName.replacingOccurrences(of: "room", with: "FC")))!.cgColor, UIColor(hex: (str_objectData.replacingOccurrences(of: "label", with: "F") + str_voiceDataText.replacingOccurrences(of: "direction", with: "E")))!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "ECECEC")!.cgColor, UIColor.init(hex: "ECECEC")!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: [UIColor(hex: (str_defineText.replacingOccurrences(of: "that", with: "C") + String(str_withText)))!.cgColor, UIColor(hex: (str_defineText.replacingOccurrences(of: "that", with: "C") + String(str_withText)))!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        //: btn.isSelected = true
        btn.isSelected = true
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn.addTarget(self, action: #selector(likesBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(miniClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var visitorsBtn: UIButton = {
    private lazy var visitorsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Visitors".localized, for: .normal)
        btn.setTitle((String(str_hiddenHeadName.prefix(4)) + "tors").localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FC8BFC")!.cgColor, UIColor.init(hex: "FE4D8E")!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        btn.setBackgroundImage(UIImage.makeBackground(colors: [UIColor(hex: (str_clickName.replacingOccurrences(of: "room", with: "FC")))!.cgColor, UIColor(hex: (str_objectData.replacingOccurrences(of: "label", with: "F") + str_voiceDataText.replacingOccurrences(of: "direction", with: "E")))!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "ECECEC")!.cgColor, UIColor.init(hex: "ECECEC")!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: [UIColor(hex: (str_defineText.replacingOccurrences(of: "that", with: "C") + String(str_withText)))!.cgColor, UIColor(hex: (str_defineText.replacingOccurrences(of: "that", with: "C") + String(str_withText)))!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
        //: btn.addTarget(self, action: #selector(visitorsBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(galumph), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLikeVC {
extension AddDataSource {
    //: func reloadAllVCData() {
    func infoData() {
        //: for vc in dataVC {
        for vc in dataVC {
            //: let tempVc = vc as? TalkingLikeListVC
            let tempVc = vc as? TargetArrayListFlowLayout
            //: tempVc?.load_listData()
            tempVc?.sizeClick()
        }
    }
}

//: extension TalkingLikeVC {
extension AddDataSource {
    //: @objc private func likesBtnClick() {
    @objc private func miniClick() {
        //: likesBtnStatus()
        positionStatus()
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }

    //: private func likesBtnStatus() {
    private func positionStatus() {
        //: likesBtn.isSelected = true
        likesBtn.isSelected = true
        //: visitorsBtn.isSelected = false
        visitorsBtn.isSelected = false
        //: likesBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        likesBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: visitorsBtn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
        visitorsBtn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
    }

    //: @objc private func visitorsBtnClick() {
    @objc private func galumph() {
        //: visitorsStatus()
        lowClass()
        //: categoryView.defaultSelectedIndex = 1
        categoryView.defaultSelectedIndex = 1
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 1
        pagerView.defaultSelectedIndex = 1
        //: pagerView.reloadData()
        pagerView.reloadData()
    }

    //: @objc private func visitorsStatus() {
    @objc private func lowClass() {
        //: likesBtn.isSelected = false
        likesBtn.isSelected = false
        //: visitorsBtn.isSelected = true
        visitorsBtn.isSelected = true
        //: visitorsBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        visitorsBtn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: likesBtn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
        likesBtn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 14)
    }
}

// MARK: - Public Event

//: extension TalkingLikeVC {
extension AddDataSource {
    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func keynoteConstraint() {
        // 有随机视频，不弹出开启推送弹窗
        //: if EqualThen.share.loginUserMode.jumpType == 1 &&
        if EqualThen.share.loginUserMode.jumpType == 1,
           //: EqualThen.share.loginUserMode.sex == Gender.male.rawValue &&
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = kLet_turnPartyValue.bool(forKey: kLet_positionPopData)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        RubricThen.sectionOn { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                kLet_turnPartyValue.set(true, forKey: kLet_positionPopData)
                //: TalkingAlertShow.alert(title: nil,
                MotilityThen.viewConfig(title: nil,
                                            //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                            message: String(bytes: str_toValue.map{areaSelf(source: $0)}, encoding: .utf8)!.localizedArguments(kLet_managerData),
                                            //: leftBtnTitle: "Cancel".localized,
                                            leftBtnTitle: (String(str_inputTitle.prefix(6))).localized,
                                            //: rightBtnTitle: "Settings".localized) {
                                            rightBtnTitle: (String(str_centerData.prefix(2)) + str_viewMakeTitle.replacingOccurrences(of: "moment", with: "t")).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }
}

//: extension TalkingLikeVC {
extension AddDataSource {
    /// 广告banner数据
    //: private func load_adBanner() {
    private func marginOfError() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.modelColor(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.adBannderListData = self.reqManager.adBannerListData
            self.adBannderListData = self.reqManager.adBannerListData

            //: if self.adBannderListData?.count ?? 0 <= 0 {
            if self.adBannderListData?.count ?? 0 <= 0 {
                //: bannerView.isHidden = true
                bannerView.isHidden = true
                //: bannerView.snp.updateConstraints { make in
                bannerView.snp.updateConstraints { make in
                    //: make.height.equalTo(0)
                    make.height.equalTo(0)
                }
                //: }else {
            } else {
                //: bannerView.reloadView()
                bannerView.reloadView()
                //: pagerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight-89-50)
                pagerView.frame = CGRect(x: 0, y: 50, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText - kLet_timeSenseValue - 89 - 50)
                //: pagerView.reloadData()
                pagerView.reloadData()
            }
        }
    }
}

// MARK: - Delegate

//: extension TalkingLikeVC: JXBannerDataSource, JXBannerDelegate {
extension AddDataSource: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_cellData)))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData?.count ?? 0
        return self.adBannderListData?.count ?? 0
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.adBannderListData?[index]
        let model = self.adBannderListData?[index]
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: tempCell.imageView.setUrlImage(urlStr: model?.pic ?? "", placeImg: UIImage.placeImgBanner())
        tempCell.imageView.lineBorder(urlStr: model?.pic ?? "", placeImg: UIImage.titleTheoryBanner())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: let pageControl = JXPageControlScale()
        let pageControl = JXPageControlScale()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeSize = CGSize(width: 6, height: 6)
        pageControl.activeSize = CGSize(width: 6, height: 6)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(str_errorValue.suffix(7))))!
        //: pageControl.inactiveSize = CGSize(width: 6, height: 6)
        pageControl.inactiveSize = CGSize(width: 6, height: 6)
        //: pageControl.inactiveColor = UIColor(hex: "#BDB8B5")!
        pageControl.inactiveColor = UIColor(hex: (String(str_sizeContent)))!
        //: pageControl.columnSpacing = 8
        pageControl.columnSpacing = 8
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-4)
                make.bottom.equalToSuperview().offset(-4)
            }
        }
//        if FileReactiveCompatible.shared.direction == .rightToLeft {
//            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
//        }
        //: return builder
        return builder
    }

    // MARK: - JXBannerDelegate

    //: public func jxBanner(_ banner: JXBannerType,
    public func jxBanner(_: JXBannerType,
                         //: didSelectItemAt index: Int) {
                         didSelectItemAt index: Int)
    {
        //: guard let model = self.adBannderListData?[index] else { return }
        guard let model = self.adBannderListData?[index] else { return }
        //: SocialAdBannerModel.jumpEvent(model: model)
        DealTransformable.modelUser(model: model)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingLikeVC: JXSegmentedViewDelegate {
extension AddDataSource: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if index == 0 {
        if index == 0 {
            //: likesBtnStatus()
            positionStatus()
            //: } else {
        } else {
            //: visitorsStatus()
            lowClass()
        }
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingLikeVC: JXPagingViewDelegate {
extension AddDataSource: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(0)
        return Int(0)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingLikeVC {
extension AddDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func poetise() {
        // 导航底部渐变背景
        //: self.view.addSubview(bannerView)
        self.view.addSubview(bannerView)
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.addSubview(pagerView)
        bottomView.addSubview(pagerView)
        //: bottomView.addSubview(likesBtn)
        bottomView.addSubview(likesBtn)
        //: bottomView.addSubview(visitorsBtn)
        bottomView.addSubview(visitorsBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func evidenceConstraint() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.top.equalTo(8+StatusBarHeight)
            make.top.equalTo(8 + kLet_timeSenseValue)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.trailing.equalTo(-13)
            make.trailing.equalTo(-13)
            //: make.size.equalTo(CGSize(width: ScreenWidth-26, height: 89))
            make.size.equalTo(CGSize(width: kLet_cameraValue - 26, height: 89))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalTo(bannerView.snp.bottom)
            make.top.equalTo(bannerView.snp.bottom)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        //: likesBtn.snp.makeConstraints { make in
        likesBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(80)
            make.leading.equalTo(80)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: 83, height: 30))
            make.size.equalTo(CGSize(width: 83, height: 30))
        }
        //: visitorsBtn.snp.makeConstraints { make in
        visitorsBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-80)
            make.trailing.equalTo(-80)
            //: make.top.size.equalTo(likesBtn)
            make.top.size.equalTo(likesBtn)
        }
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_timeSenseValue)
        }
    }
}
