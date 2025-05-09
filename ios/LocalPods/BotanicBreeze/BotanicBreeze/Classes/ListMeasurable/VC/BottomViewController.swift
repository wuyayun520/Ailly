
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_hidePriceHeightName:String = "stack path text let newbg_sh"
fileprivate let str_beautyName:String = "isatitle"
fileprivate let str_genderName:String = "defileau"
fileprivate let str_customData:String = "medium"

/*: "Popular" :*/
fileprivate let str_sizeTitle:String = "to viewPopula"
fileprivate let str_statusText:String = "add"

/*: "777777" :*/
fileprivate let str_blockValue:String = "arrayarrayarray"

/*: "icon_moment_news_nor" :*/
fileprivate let str_containerValue:[Character] = ["i","c","o","n","_","m","o","m"]
fileprivate let str_actionData:String = "range cookieent_ne"

/*: "icon_free_pre" :*/
fileprivate let str_cellData:[Character] = ["i","c","o","n","_","f","r"]
fileprivate let str_tempData:[Character] = ["e","e","_","p","r","e"]

/*: "num" :*/
fileprivate let str_colorValue:String = "leadingum"

/*: "99+" :*/
fileprivate let str_insertExamineedName:[UInt8] = [0x54,0x54,0x46]

private func userSucceed(bag num: UInt8) -> UInt8 {
    return num ^ 109
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class BottomViewController: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        magnitude()
        //: setupSubViewsConstraint()
        sprechgesang()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(region), name: kLet_formalTitle, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        noTableWith()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.eponymUp(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.eponymUp(name: (String(str_hidePriceHeightName.suffix(5)) + "ouye_m" + str_beautyName.replacingOccurrences(of: "title", with: "n") + "guang_" + str_genderName.replacingOccurrences(of: "file", with: "f") + str_customData.replacingOccurrences(of: "medium", with: "lt"))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: DoingViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = DoingViewDelegate()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = kLet_deviceRecordValue
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [InsertMomentVc()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(str_sizeTitle.suffix(6)) + str_statusText.replacingOccurrences(of: "add", with: "r")).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .pingfang(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .pingfang(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (str_blockValue.replacingOccurrences(of: "array", with: "77")))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.executeTo()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_containerValue) + String(str_actionData.suffix(6)) + "ws_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(textPsychologicalFeatureEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: StreetwiseReactiveCompatible = {
        //: let label = BadgeLab()
        let label = StreetwiseReactiveCompatible()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_cellData) + String(str_tempData))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modelClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension BottomViewController {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func noTableWith() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        StreetSmartReactiveCompatible.toInfo { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.namePic(num: json[(str_colorValue.replacingOccurrences(of: "leading", with: "n"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension BottomViewController {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func textPsychologicalFeatureEvent() {
        //: refreshNewsbadge(num: 0)
        namePic(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = ArrayViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func region() {
        //: freeBtnClickEvent()
        modelClick()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func modelClick() {
        //: if EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, EqualThen.share.loginUserMode.sex == Gender.female.rawValue, EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            GiftManagerRequest.makeEnable { _, _, _ in
                //: if !EqualThen.share.loginUserMode.isNaUser,
                if !EqualThen.share.loginUserMode.isNaUser,
                   //: EqualThen.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   EqualThen.share.loginUserMode.isTPAuth != SkinComparable.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.messageGift()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            messageGift()
        }
    }

    //: private func pushFreeVC() {
    private func messageGift() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = kLet_turnPartyValue.bool(forKey: kLet_adjustNoName)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = CellViewController()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any ShortObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        ShadowTipsView().buttonHandler {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - AccumulationNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension BottomViewController: AccumulationNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func paintTheLilyWill(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension BottomViewController {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func namePic(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func magnitude() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sprechgesang() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_timeSenseValue)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
