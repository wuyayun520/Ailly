
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerValue:[UInt8] = [0x4c,0x4b,0x4c,0x51,0xd,0x46,0x4a,0x41,0x40,0x57,0x1f,0xc,0x5,0x4d,0x44,0x56,0x5,0x4b,0x4a,0x51,0x5,0x47,0x40,0x40,0x4b,0x5,0x4c,0x48,0x55,0x49,0x40,0x48,0x40,0x4b,0x51,0x40,0x41]

private func textCall(current num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "Price Settings" :*/
fileprivate let str_messageValue:String = "server to truePrice"
fileprivate let str_makeValue:String = "tingtotal"

/*: "5.00" :*/
fileprivate let str_interestedShareData:[Character] = ["5",".","0","0"]

/*: "30" :*/
fileprivate let str_languageName:[Character] = ["3","0"]

/*: "20" :*/
fileprivate let str_onViewMatchName:[Character] = ["2","0"]

/*: "Chat price settings" :*/
fileprivate let str_rawErrorValue:String = "Chlet bubble view"
fileprivate let str_mainStyleLogValue:[Character] = ["a","t"," ","p","r","i","c","e"," ","s","e","t","t","i","n","g","s"]

/*: "Video call price settings" :*/
fileprivate let str_makeName:[Character] = ["V","i","d","e","o"," ","c","a","l","l"," ","p","r","i","c","e"]
fileprivate let str_modelCancelText:String = "equal user path center se"
fileprivate let str_gestureText:[Character] = ["t","t","i","n","g","s"]

/*: "Voice call price settings" :*/
fileprivate let str_pushName:[Character] = ["V","o","i","c","e"," ","c","a","l","l"," "]
fileprivate let str_rawData:String = "makeic"
fileprivate let str_activeText:String = "ticurrents"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameShowSetVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class NameShowSetVc: SeamViewController {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [DataHandyJSON] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [DataHandyJSON] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [DataHandyJSON] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerValue.map{textCall(current: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
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

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(str_messageValue.suffix(5)) + " Set" + str_makeValue.replacingOccurrences(of: "total", with: "s")).localized

        //: self.setupSubviews()
        self.toBegin()
        //: self.setupSubViewsConstraint()
        self.setup()
        //: self.bindInteraction()
        self.belowQuantityeraction()
        //: self.setupData()
        self.shared()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.imageColor()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(CellView.self, forCellReuseIdentifier: CellView.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension NameShowSetVc {
    //: private func setupData() {
    private func shared() {
        //: for tempModel in EqualThen.share.appUserConfigMode.chatPriceSettings {
        for tempModel in EqualThen.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(EqualThen.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(EqualThen.share.loginUserMode.messagePrice ?? (String(str_interestedShareData)))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in EqualThen.share.appUserConfigMode.videoPriceSettings {
        for tempModel in EqualThen.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(EqualThen.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(EqualThen.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in EqualThen.share.appUserConfigMode.voicePriceSettings {
        for tempModel in EqualThen.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(EqualThen.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(EqualThen.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension NameShowSetVc: UITableViewDelegate, UITableViewDataSource {
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
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CellView.className(), for: indexPath) as! CellView
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.selectedLeve(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: kLet_cameraValue, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.imageColor()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: kLet_cameraValue - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(str_rawErrorValue.prefix(2)) + String(str_mainStyleLogValue)).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(str_makeName) + String(str_modelCancelText.suffix(3)) + String(str_gestureText)).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(str_pushName) + str_rawData.replacingOccurrences(of: "make", with: "pr") + "e set" + str_activeText.replacingOccurrences(of: "current", with: "ng")).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .publishView()
        titleLab.textColor = .publishView()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .pingfang(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = TargetThen(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.endView()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension NameShowSetVc {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension NameShowSetVc {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension NameShowSetVc {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension NameShowSetVc {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension NameShowSetVc {
    // 添加视图
    //: private func setupSubviews() {
    private func toBegin() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setup() {}

    // 添加事件
    //: private func bindInteraction() {
    private func belowQuantityeraction() {}
}
