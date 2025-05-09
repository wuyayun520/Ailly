
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let str_makeData:[Character] = ["I","n","c","r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let str_reportEqualLetData:String = "Deview content at top color"
fileprivate let str_pathSendColorName:[Character] = ["c","r","e","a","s","e","："]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareData:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

private func withScore(view num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "bg_talk_closed_tc" :*/
fileprivate let str_indexText:String = "type path kit tablebg_tal"
fileprivate let str_contentTitle:[Character] = ["e","d","_","t","c"]

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let str_workSizeNameValue:[Character] = ["b","g","_","t","a","l","k","_","c","l","o"]
fileprivate let str_hiddenValue:String = "location anysed_tc_"
fileprivate let str_indexModelGameValue:String = "intimactuale"

/*: "btn_intimate_close" :*/
fileprivate let str_sharedOfTargetData:[Character] = ["b","t","n","_","i"]
fileprivate let str_titleContent:String = "viewim"

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let str_clearData:[UInt8] = [0x61,0x83,0x90,0x83,0x88,0x81,0x3a,0x81,0x83,0x80,0x8e,0x8d,0x3a,0xfd,0x9a,0x9b,0x87,0x7b,0x85,0x83,0x88,0x81,0x3a,0x7d,0x7b,0x86,0x86,0x8d,0x3a,0x7b,0x88,0x7e,0x3a,0x8d,0x7f,0x88,0x7e,0x83,0x88,0x81,0x3a,0x8a,0x7b,0x83,0x7e,0x3a,0x87,0x7f,0x8d,0x8d,0x7b,0x81,0x7f,0x8d,0x3a,0x7d,0x7b,0x88,0x3a,0x83,0x88,0x7d,0x8c,0x7f,0x7b,0x8d,0x7f,0x3a,0x83,0x88,0x8e,0x83,0x87,0x7b,0x7d,0x93,0x98]

fileprivate func toText(button num: UInt8) -> UInt8 {
    let value = Int(num) - 26
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let str_selectedData:[Character] = ["1"," ","c","o","i","n"," ","="]
fileprivate let str_toData:[Character] = [" ","1"," ","i","n","t","i","m","a","c","y"]

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let str_hiddenTitle:[UInt8] = [0x78,0x57,0x11,0x52,0x5e,0x58,0x5f,0x42,0x11,0x50,0x43,0x54,0x11,0x5f,0x5e,0x45,0x11,0x52,0x5e,0x5f,0x42,0x44,0x5c,0x54,0x55,0x11,0x46,0x58,0x45,0x59,0x58,0x5f,0x11,0x50,0x11,0x52,0x54,0x43,0x45,0x50,0x58,0x5f,0x11,0x41,0x54,0x43,0x58,0x5e,0x55,0x11,0x5e,0x57,0x11,0x45,0x58,0x5c,0x54,0x1d,0x11,0x45,0x59,0x54,0x11,0x58,0x5f,0x45,0x58,0x5c,0x50,0x52,0x48,0x11,0x5d,0x54,0x47,0x54,0x5d,0x11,0x46,0x58,0x5d,0x5d,0x11,0x53,0x54,0x11,0x43,0x54,0x55,0x44,0x52,0x54,0x55,0x1f]

private func photoTitle(row num: UInt8) -> UInt8 {
    return num ^ 49
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfKeyUpView.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class OfKeyUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(str_makeData)).localized, (String(str_reportEqualLetData.prefix(2)) + String(str_pathSendColorName)).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.eventCard()
        //: self.setupSubViewsConstraint()
        self.flashover()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareData.map{withScore(view: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.eponymUp(name: "bg_talk_closed_tc")
        imag.image = UIImage.eponymUp(name: (String(str_indexText.suffix(6)) + "k_clos" + String(str_contentTitle)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.eponymUp(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.eponymUp(name: (String(str_workSizeNameValue) + String(str_hiddenValue.suffix(7)) + str_indexModelGameValue.replacingOccurrences(of: "actual", with: "at")))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(InstructionsReactiveCompatible.self, forCellReuseIdentifier: InstructionsReactiveCompatible.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_sharedOfTargetData) + str_titleContent.replacingOccurrences(of: "view", with: "nt") + "ate_close")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(repurchase), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension OfKeyUpView {
    //: @objc private func closeBtnClick() {
    @objc private func repurchase() {
        //: dismiss()
        moveFinish()
    }

    //: func show() {
    func brandShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
    }

    //: @objc func dismiss() {
    @objc func moveFinish() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension OfKeyUpView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: InstructionsReactiveCompatible.className(), for: indexPath) as! InstructionsReactiveCompatible
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.aggregationSetCompartment(msg: String(bytes: str_clearData.map{toText(button: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.aggregationSetCompartment(msg: (String(str_selectedData) + String(str_toData)).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.aggregationSetCompartment(msg: String(bytes: str_hiddenTitle.map{photoTitle(row: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        titleLab.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension OfKeyUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func eventCard() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func flashover() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
