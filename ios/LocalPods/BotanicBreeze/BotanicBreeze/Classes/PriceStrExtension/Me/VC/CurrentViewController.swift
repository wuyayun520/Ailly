
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let str_toName:[UInt8] = [0x6e,0x61,0x65,0x42,0x66,0x6d]

/*: "bannerList" :*/
fileprivate let str_requestTitle:String = "babottome"
fileprivate let str_pathName:String = "product view varrList"

/*: "icon_me_chatsettings" :*/
fileprivate let str_directContent:String = "white item sharedicon_m"
fileprivate let str_addName:[Character] = ["e","_","c","h","a","t","s","e","t","t","i","n","g","s"]

/*: "icon_me_automatic" :*/
fileprivate let str_managerSubData:[Character] = ["i","c","o","n","_","m","e","_","a"]
fileprivate let str_withoutData:String = "UTOMATIC"

/*: "icon_me_settings" :*/
fileprivate let str_leadingAppName:String = "IC"
fileprivate let str_liveData:String = "on_me_model return path player"
fileprivate let str_makeName:String = "infinish"

/*: "icon_me_tc" :*/
fileprivate let str_valueName:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let str_toText:[Character] = ["_","t","c"]

/*: "icon_me_videoSet" :*/
fileprivate let str_requestText:String = "image timeicon_me_"
fileprivate let str_qualityValue:[Character] = ["v","i","d","e","o","S","e","t"]

/*: "icon_me_bs" :*/
fileprivate let str_colorData:String = "voice indexicon_me_"
fileprivate let str_blackManagerValue:String = "BS"

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_sendName:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x22,0x61,0x72,0x65,0x6d,0x61,0x43,0x22,0x20,0x6e,0x65,0x70,0x6f,0x20,0x64,0x6e,0x61,0x20,0x22,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x22,0x20,0x72,0x65,0x74,0x6e,0x45]

/*: "Cancel" :*/
fileprivate let str_lineEditName:String = "Cancelvar false normal number menu"

/*: "Settings" :*/
fileprivate let str_layerTitle:[Character] = ["S","e"]
fileprivate let str_recordName:[Character] = ["t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CurrentViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class CurrentViewController: SeamViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(BeautyToCompatibleValue, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: reloadLocalData()
        nearQuery()
        //: func__reqBanner()
        giftBlockBanner()
        //: setupSubviews()
        modelInSubviews()
        //: setupSubViewsConstraint()
        capacityEnable()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(accumulationEdit),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_guideViewName,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(tapDismiss),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        tapDismiss()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(TalkingUserReactiveCompatible.self, forCellReuseIdentifier: TalkingUserReactiveCompatible.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(HeavyReactiveCompatible.self, forCellReuseIdentifier: HeavyReactiveCompatible.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(CounteractionColumnsCell.self, forCellReuseIdentifier: CounteractionColumnsCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(ThreeOfView.self, forCellReuseIdentifier: ThreeOfView.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(CentralCityThen.self, forCellReuseIdentifier: CentralCityThen.className())
        //: table.addHeaderRefresh { [weak self] in
        table.addHeader { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.putToDeathEmpty()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [DealTransformable] = //: return Array<DealTransformable>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension CurrentViewController {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func putToDeathEmpty() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        tapDismiss()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func tapDismiss() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        GiftManagerRequest.makeEnable { _, _, _ in
            //: self.reloadLocalData()
            self.nearQuery()
            //: self.tableView.endRefresh()
            self.tableView.cancelButton()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if UserPushListener.sexApp().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_statusText, object: nil, userInfo: [String(bytes: str_toName.reversed(), encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func giftBlockBanner() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        CameraRequestManager().modelColor(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_requestTitle.replacingOccurrences(of: "bottom", with: "nn") + String(str_pathName.suffix(5)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = DealTransformable.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func nearQuery() {
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(str_directContent.suffix(6)) + String(str_addName))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(str_managerSubData) + str_withoutData.lowercased())),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (str_leadingAppName.lowercased() + String(str_liveData.prefix(6)) + "sett" + str_makeName.replacingOccurrences(of: "finish", with: "gs")))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (str_leadingAppName.lowercased() + String(str_liveData.prefix(6)) + "sett" + str_makeName.replacingOccurrences(of: "finish", with: "gs")))]
        }
        //: if EqualThen.share.appUserConfigMode.showTaskCenter {
        if EqualThen.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(str_valueName) + String(str_toText))), at: 0)
        }
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(str_requestText.suffix(8)) + String(str_qualityValue))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if kLet_infoData, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(str_colorData.suffix(8)) + str_blackManagerValue.lowercased())), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension CurrentViewController {
    //: @objc func pushEdit() {
    @objc func accumulationEdit() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = CurrentReactiveCompatible()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func sendTotalerval() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        RubricThen.toBackMap(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DeviceSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.oversight(showMsg: kLet_replaceTitle)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = SendViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                MotilityThen.viewConfig(title: nil, message: String(bytes: str_sendName.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(str_lineEditName.prefix(6))).localized, rightBtnTitle: (String(str_layerTitle) + String(str_recordName)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension CurrentViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CentralCityThen.className(), for: indexPath) as! CentralCityThen
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.pageLast(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.exceptView()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserReactiveCompatible.className(), for: indexPath) as! TalkingUserReactiveCompatible
            //: cell.setViewData()
            cell.step()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: HeavyReactiveCompatible.className(), for: indexPath) as! HeavyReactiveCompatible
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.selectUpOff(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CounteractionColumnsCell.className(), for: indexPath) as! CounteractionColumnsCell
            //: cell.setViewData()
            cell.metadataObject()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ThreeOfView.className(), for: indexPath) as! ThreeOfView
            //: cell.setViewData()
            cell.collectionCuttingEdgeSituate()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = NameShowSetVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = CustomViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = ConsuetudeViewController()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: EditTextThen.share.func__pushToWebVC(webViewType: .TaskCenter)
            EditTextThen.share.hailType(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            sendTotalerval()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = IndexToRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension CurrentViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func modelInSubviews() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func capacityEnable() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
