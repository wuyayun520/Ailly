
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataName:[UInt8] = [0xcf,0xc8,0xcf,0xd2,0x8e,0xc5,0xc9,0xc2,0xc3,0xd4,0x9c,0x8f,0x86,0xce,0xc7,0xd5,0x86,0xc8,0xc9,0xd2,0x86,0xc4,0xc3,0xc3,0xc8,0x86,0xcf,0xcb,0xd6,0xca,0xc3,0xcb,0xc3,0xc8,0xd2,0xc3,0xc2]

private func classGroup(make num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "Settings" :*/
fileprivate let str_showPopBackTitle:String = "Settcenter broadcast user app group"

/*: "Security" :*/
fileprivate let str_ofName:String = "table source hidden imageSecurit"
fileprivate let str_photoValue:String = "head"

/*: "More" :*/
fileprivate let str_transactionText:[Character] = ["M","o","r","e"]

/*: "Logout succeeded!" :*/
fileprivate let str_directionContent:String = "equal string guardLogou"
fileprivate let str_viewValue:[Character] = ["e","d","e","d","!"]

/*: "CustomView" :*/
fileprivate let str_requestValue:String = "Talkiat info self i"
fileprivate let str_appearValue:String = "hour gesturettingC"
fileprivate let str_labText:[Character] = ["e","l","l"]

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let str_imageValue:[UInt8] = [0xff,0xc3,0xca,0xce,0xdc,0xca,0x8f,0xcc,0xc0,0xc2,0xc2,0xda,0xc1,0xc6,0xcc,0xce,0xdb,0xca,0x8f,0xd8,0xc6,0xdb,0xc7,0x8f,0xc0,0xc1,0xc3,0xc6,0xc1,0xca,0x8f,0xdc,0xca,0xdd,0xd9,0xc6,0xcc,0xca,0x8f,0xc9,0xc6,0xdd,0xdc,0xdb,0x8f,0xce,0xc1,0xcb,0x8f,0xdb,0xc7,0xca,0xc1,0x8f,0xda,0xdf,0xc3,0xc0,0xce,0xcb,0x8f,0xc3,0xc0,0xc8,0xdc,0x83,0x8f,0xc3,0xc0,0xc8,0xdc,0x8f,0xce,0xdd,0xca,0x8f,0xda,0xdc,0xca,0xcb,0x8f,0xdb,0xc0,0x8f,0xce,0xc1,0xce,0xc3,0xd6,0xd5,0xca,0x8f,0xdf,0xdd,0xc0,0xcd,0xc3,0xca,0xc2,0xdc,0x8f,0xd6,0xc0,0xda,0x8f,0xca,0xc1,0xcc,0xc0,0xda,0xc1,0xdb,0xca,0xdd,0xca,0xcb,0x8f,0xc6,0xc1,0x8f,0xdb,0xc7,0xca,0x8f,0xda,0xdc,0xca,0x8f,0xc0,0xc9,0x8f,0xdb,0xc7,0xca,0x8f,0xee,0xdf,0xdf,0x8e]

/*: "Cancel" :*/
fileprivate let str_sizeData:String = "Cancelvar body temp price"

/*: "OK" :*/
fileprivate let str_labelName:String = "quote"

/*: "#999999" :*/
fileprivate let str_taskValueData:String = "#999999"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConsuetudeViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: enum SettingsType: String {
enum WithSendClusterLiteral: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class ConsuetudeViewController: SeamViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataName.map{classGroup(make: $0)}, encoding: .utf8)!)
    }

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
        //: self.title = "Settings".localized
        self.title = (String(str_showPopBackTitle.prefix(4)) + "ings").localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: designView()
        saveMentally()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[WithSendClusterLiteral]] = {
        //: var array = [[SettingsType]]()
        var array = [[WithSendClusterLiteral]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [WithSendClusterLiteral] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [WithSendClusterLiteral] = [.Turnon_Notif]
//        var array3: [WithSendClusterLiteral] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [WithSendClusterLiteral] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [WithSendClusterLiteral] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [WithSendClusterLiteral] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
//        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "Security".localized, "More".localized, ""]
        var array = ["", "", (String(str_ofName.suffix(7)) + str_photoValue.replacingOccurrences(of: "head", with: "y")).localized, (String(str_transactionText)).localized, ""]
//        var array = ["", "", "", "Security".localized, "More".localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension ConsuetudeViewController {
    /// logout
    //: func logoutTool() {
    func room() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard RubricThen.socialistPartyActive() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: return
            return
        }

        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingLoginRequestTool.req_loginOut { t in
        LoginRequestTool.atCompletion { t in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_useName, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func greet() {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        CameraThen.outLock(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.room()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.fileFirst(showMsg: (String(str_directionContent.suffix(5)) + "t succe" + String(str_viewValue)).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension ConsuetudeViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [WithSendClusterLiteral] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 2 || section == 3 {
        if section == 2 || section == 3 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(str_requestValue.prefix(5)) + "ngSe" + String(str_appearValue.suffix(6)) + String(str_labText))
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: CustomView = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CustomView

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [WithSendClusterLiteral] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.report(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.room()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.designate(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [WithSendClusterLiteral] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = CounteractionAtFieldDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = EqualHeadRecognizerDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: EditTextThen.share.func__pushToWebVC(webViewType: .TermsofUse)
            EditTextThen.share.hailType(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: EditTextThen.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            EditTextThen.share.hailType(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DeepWithViewDelegate()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.clickType(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DeepWithViewDelegate()
            //: vc.setUnicersalView(type: .Notifications)
            vc.clickType(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DeepWithViewDelegate()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.clickType(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: EditTextThen.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            EditTextThen.share.hailType(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = KeyRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = AtAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.outsideAllSize(fontSize: 16)
            config.textFont = UIFont.outsideAllSize(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            MotilityThen.viewConfig(title: nil, message: String(bytes: str_imageValue.map{$0^175}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_sizeData.prefix(6))).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                DeepKeyTamperReactiveCompatible.shared.treatNurseLog()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.imageColor()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (str_taskValueData.capitalized))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension ConsuetudeViewController {
    //: private func designView() {
    private func saveMentally() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(CustomView.self, forCellReuseIdentifier: (String(str_requestValue.prefix(5)) + "ngSe" + String(str_appearValue.suffix(6)) + String(str_labText)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
