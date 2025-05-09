
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleName:[UInt8] = [0x5d,0x5a,0x5d,0x40,0x1c,0x57,0x5b,0x50,0x51,0x46,0xe,0x1d,0x14,0x5c,0x55,0x47,0x14,0x5a,0x5b,0x40,0x14,0x56,0x51,0x51,0x5a,0x14,0x5d,0x59,0x44,0x58,0x51,0x59,0x51,0x5a,0x40,0x51,0x50]

private func cellMake(all num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "Greeting Message Settings" :*/
fileprivate let str_roomTitle:String = "Greetfirst in my as"
fileprivate let str_imageText:String = "self view view var succeedMess"
fileprivate let str_dataValue:String = "Settingsas equal male"

/*: "CaptureViewCell" :*/
fileprivate let str_appData:String = "cell first make selfTalkin"
fileprivate let str_makeName:[Character] = ["i","n","g","S","e","t","T","a","b","l","e","C","e","l","l"]

/*: "Voice greeting" :*/
fileprivate let str_bottomData:String = "Voice grextension title view data"
fileprivate let str_sourceText:[Character] = ["e","e","t","i","n","g"]

/*: "icon_me_greet_vioce" :*/
fileprivate let str_pointName:String = "icleadingn"
fileprivate let str_valueEqualTitle:String = "reet_vcard room leading var bite"

/*: "Text greeting" :*/
fileprivate let str_groupText:String = "available model if titleText"
fileprivate let str_sectionValue:String = "TING"

/*: "icon_me_greet_text" :*/
fileprivate let str_removeValueText:String = "icon_mlab self"
fileprivate let str_layerContent:String = "e_greeview mode status"

/*: "Photo greeting" :*/
fileprivate let str_cardName:[Character] = ["P","h","o","t","o"," ","g","r"]
fileprivate let str_giftSexData:String = "datedateting"

/*: "icon_me_greet_photo" :*/
fileprivate let str_interactionText:String = "imakeon"
fileprivate let str_proText:String = "lab viewgreet_"
fileprivate let str_keyName:[Character] = ["o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class CustomViewDelegate: SeamViewController {
    //: var settingModel = TalkingSettingModel()
    var settingModel = ViewSettingModel()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleName.map{cellMake(all: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        rawData()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(str_roomTitle.prefix(5)) + "ing " + String(str_imageText.suffix(4)) + "age " + String(str_dataValue.prefix(8))).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.imageColor()
        //: setupSubviews()
        eliteSubviews()
        //: setupSubViewsConstraint()
        simulcast()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: "TalkingGreetingSetTableCell")
        table.register(CaptureViewCell.self, forCellReuseIdentifier: (String(str_appData.suffix(6)) + "gGreet" + String(str_makeName)))
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

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension CustomViewDelegate {
    //: func getSettingData() {
    func rawData() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        CameraThen.completion(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<ViewSettingModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension CustomViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetingSetTableCell"
        let identifier = (String(str_appData.suffix(6)) + "gGreet" + String(str_makeName))
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetingSetTableCell
        let cell: CaptureViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CaptureViewCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.firstAdd(titile: (String(str_bottomData.prefix(8)) + String(str_sourceText)).localized, iconStr: (str_pointName.replacingOccurrences(of: "leading", with: "o") + "_me_g" + String(str_valueEqualTitle.prefix(6)) + "ioce"), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.firstAdd(titile: (String(str_groupText.suffix(4)) + " gree" + str_sectionValue.lowercased()).localized, iconStr: (String(str_removeValueText.prefix(6)) + String(str_layerContent.prefix(6)) + "t_text"), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.firstAdd(titile: (String(str_cardName) + str_giftSexData.replacingOccurrences(of: "date", with: "e")).localized, iconStr: (str_interactionText.replacingOccurrences(of: "make", with: "c") + "_me_" + String(str_proText.suffix(6)) + "phot" + String(str_keyName)), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = FreeThen()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = PopViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = AddressUpPhotoVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension CustomViewDelegate {
    //: private func setupSubviews() {
    private func eliteSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func simulcast() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
