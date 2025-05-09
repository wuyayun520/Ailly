
//: Declare String Begin

/*: "bannerList" :*/
fileprivate let str_arrayData:String = "bawhitewhiteer"
fileprivate let str_leadingData:String = "adjust status dateList"

/*: "me_wallet" :*/
fileprivate let str_itemName:[Character] = ["m","e","_","w","a","l","l","e","t"]

/*: "me_edit_profile" :*/
fileprivate let str_senseData:[Character] = ["m","e","_","e","d","i","t","_","p","r"]
fileprivate let str_femaleName:[Character] = ["o","f","i","l","e"]

/*: "icon_me_settings" :*/
fileprivate let str_nameText:[Character] = ["i","c","o","n","_","m","e","_","s","e"]
fileprivate let str_errorValue:String = "TTINGS"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewCustomDataSource.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMaleMeController: TalkingBaseViewController {
class ViewCustomDataSource: SeamViewController {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: reloadLocalData()
        actionDeal()
        //: func__reqBanner()
        roundList()
        //: setupSubviews()
        countimateDirection()
        //: setupSubViewsConstraint()
        roomTitleConstraint()
        //: addNotifications()
        actionNotifications()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        dropWith()
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
        //: table.register(TalkingMeUpgradeCardCell.self, forCellReuseIdentifier: TalkingMeUpgradeCardCell.className())
        table.register(TitleModeThen.self, forCellReuseIdentifier: TitleModeThen.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(CentralCityThen.self, forCellReuseIdentifier: CentralCityThen.className())
        //: table.addHeaderRefresh { [weak self] in
        table.addHeader { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.arraySub()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = .init()
    lazy var bannerListData: [DealTransformable] = .init()
}

// MARK: - Load Data

//: extension TalkingMaleMeController {
extension ViewCustomDataSource {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func arraySub() {
        //: self.tableView.mj_header?.beginRefreshing()
        self.tableView.mj_header?.beginRefreshing()
        //: self.func__requestUserInfo()
        self.dropWith()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func dropWith() {
        //: AppManagerRequest.func__requestUserInfo { _, _, _ in
        GiftManagerRequest.makeEnable { _, _, _ in
            //: self.reloadLocalData()
            self.actionDeal()
            //: self.tableView.endRefresh()
            self.tableView.cancelButton()
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// banner
    //: func func__reqBanner() {
    func roundList() {
        //: SocialRequestManager().req_adBanner(position: 2) { [weak self] _, result, _ in
        CameraRequestManager().modelColor(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_arrayData.replacingOccurrences(of: "white", with: "n") + String(str_leadingData.suffix(4)))] ?? []).arrayValue
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
    private func actionDeal() {
        //: self.section1Data = [(CenterItemType.My_Wallet.rawValue, "me_wallet"),
        self.section1Data = [(BeautyToCompatibleValue.My_Wallet.rawValue, (String(str_itemName))),
                             //: (CenterItemType.My_EditProfile.rawValue, "me_edit_profile"),
                             (BeautyToCompatibleValue.My_EditProfile.rawValue, (String(str_senseData) + String(str_femaleName))),
                             //: (CenterItemType.My_Settings.rawValue, "icon_me_settings")]
                             (BeautyToCompatibleValue.My_Settings.rawValue, (String(str_nameText) + str_errorValue.lowercased()))]
    }
}

// MARK: - Event

//: extension TalkingMaleMeController {
extension ViewCustomDataSource {
    /// 跳转编辑资料页
    //: @objc func pushEdit() {
    @objc func inputClearData() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = CurrentReactiveCompatible()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMaleMeController: UITableViewDelegate, UITableViewDataSource {
extension ViewCustomDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 3
            return 3
            //: } else if section == 1 {
        } else if section == 1 {
            //: return self.section1Data.count
            return self.section1Data.count
            //: } else {
        } else {
            //: return 0
            return 0
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CentralCityThen.className(), for: indexPath) as! CentralCityThen
            //: let data = self.section1Data[indexPath.row]
            let data = self.section1Data[indexPath.row]
            //: let isLast = section1Data.count == (indexPath.row + 1)
            let isLast = section1Data.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.pageLast(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            //: return cell
            return cell
        }

        //: switch indexPath.row {
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
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeUpgradeCardCell.className(), for: indexPath) as! TalkingMeUpgradeCardCell
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleModeThen.className(), for: indexPath) as! TitleModeThen
            //: cell.refreshUpgradeCard()
            cell.restoreThe()
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

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: let vc = TalkingWalletViewController()
                let vc = UserViewController()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)

                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: EditTextThen.share.func__pushToUserDetailVC(uid: EqualThen.share.loginUid)
                EditTextThen.share.soulAge(uid: EqualThen.share.loginUid)

                //: } else if indexPath.row == 2 {
            } else if indexPath.row == 2 {
                //: let vc = TalkingSettingsVC()
                let vc = ConsuetudeViewController()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleMeController {
extension ViewCustomDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func countimateDirection() {
        //: self.view.addSubview(self.tableView)
        self.view.addSubview(self.tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func roomTitleConstraint() {
        //: self.tableView.snp.makeConstraints { make in
        self.tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func actionNotifications() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.pushEdit),
                                               selector: #selector(self.inputClearData),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_guideViewName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.dropWith),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               //: object: nil)
                                               object: nil)
    }
}
