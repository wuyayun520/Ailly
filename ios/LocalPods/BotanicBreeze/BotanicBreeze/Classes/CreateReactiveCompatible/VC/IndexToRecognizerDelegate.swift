
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let str_tipEqualName:String = "all positionBeautify"
fileprivate let str_imageCanFrameValue:[Character] = [" ","S","e","t","t","i","n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let str_timeName:String = "view comeicon_"
fileprivate let str_explainData:String = "deoSeto path model index app"
fileprivate let str_progressTitle:String = "AUTY"

/*: "Video Settings" :*/
fileprivate let str_withText:[Character] = ["V","i","d","e","o"," ","S","e","t","t","i","n","g"]
fileprivate let str_labName:[Character] = ["s"]

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let str_managerText:[UInt8] = [0x64,0x49,0x6c,0x6c,0x65,0x43,0x6f,0x65,0x64,0x69,0x56,0x65,0x76,0x69,0x65,0x63,0x65,0x52,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x67,0x6e,0x69,0x6b,0x6c,0x61,0x54]

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_colorTitle:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x22,0x61,0x72,0x65,0x6d,0x61,0x43,0x22,0x20,0x6e,0x65,0x70,0x6f,0x20,0x64,0x6e,0x61,0x20,0x22,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x22,0x20,0x72,0x65,0x74,0x6e,0x45]

/*: "Cancel" :*/
fileprivate let str_appLayerTitle:String = "value content returnCancel"

/*: "Settings" :*/
fileprivate let str_modelText:String = "info dismiss make frameSetting"
fileprivate let str_colorData:String = "call"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let str_topManagerShareName:[UInt8] = [0x3e,0x63,0x60,0x5e,0x5a,0x53,0xe,0x5b,0x53,0x4f,0x5c,0x61,0xe,0x62,0x63,0x60,0x5c,0xe,0x5d,0x5c,0xe,0x62,0x56,0x53,0xe,0x51,0x4f,0x5a,0x5a,0xe,0x57,0x5c,0x64,0x57,0x62,0x4f,0x62,0x57,0x5d,0x5c,0x1a,0xe,0x55,0x60,0x53,0x67,0xe,0x5b,0x53,0x4f,0x5c,0x61,0xe,0x62,0x63,0x60,0x5c,0xe,0x5d,0x54,0x54,0xe,0x62,0x56,0x53,0xe,0x51,0x4f,0x5a,0x5a,0xe,0x57,0x5c,0x64,0x57,0x62,0x4f,0x62,0x57,0x5d,0x5c,0x1c]

fileprivate func frontPath(succeed num: UInt8) -> UInt8 {
    let value = Int(num) + 18
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexToRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class IndexToRecognizerDelegate: SeamViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(str_tipEqualName.suffix(8)) + String(str_imageCanFrameValue)), (String(str_timeName.suffix(5)) + "me_vi" + String(str_explainData.prefix(5)) + "t_be" + str_progressTitle.lowercased())),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: self.title = "Video Settings".localized
        self.title = (String(str_withText) + String(str_labName)).localized
        //: self.setupSubviews()
        self.upwards()
        //: self.setupSubViewsConstraint()
        self.gift()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.imageColor()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(PuttView.self, forCellReuseIdentifier: String(bytes: str_managerText.reversed(), encoding: .utf8)!)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension IndexToRecognizerDelegate {
    //: func judgeCameraAuthorization() {
    func streetSmart() {
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
                MotilityThen.viewConfig(title: nil, message: String(bytes: str_colorTitle.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(str_appLayerTitle.suffix(6))).localized, rightBtnTitle: (String(str_modelText.suffix(7)) + str_colorData.replacingOccurrences(of: "call", with: "s")).localized) {
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
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension IndexToRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && kLet_infoData {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: PuttView = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_managerText.reversed(), encoding: .utf8)!, for: indexPath) as! PuttView
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.distance(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.distance(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.distance(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && kLet_infoData else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = AnalogDigitalConverterHeaderCell(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.solicitation(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.want(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && kLet_infoData {
                //: self.judgeCameraAuthorization()
                self.streetSmart()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.imageColor()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.outsideAllSize(fontSize: 14)
        title.font = UIFont.outsideAllSize(fontSize: 14)
        //: title.textColor = UIColor.publishView()
        title.textColor = UIColor.publishView()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: str_topManagerShareName.map{frontPath(succeed: $0)}, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension IndexToRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func upwards() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func gift() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
