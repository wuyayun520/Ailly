
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_kindName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Not reaching the required level" :*/
fileprivate let str_objectSendText:[UInt8] = [0xbe,0x9f,0x84,0xd0,0x82,0x95,0x91,0x93,0x98,0x99,0x9e,0x97,0xd0,0x84,0x98,0x95,0xd0,0x82,0x95,0x81,0x85,0x99,0x82,0x95,0x94,0xd0,0x9c,0x95,0x86,0x95,0x9c]

/*: "text_fee" :*/
fileprivate let str_makeValue:String = "text_fself type min live equal"
fileprivate let str_numberTitle:String = "index"

/*: "video_fee" :*/
fileprivate let str_shareTitle:String = "video_fecell false"
fileprivate let str_valueSectionTitle:[Character] = ["e"]

/*: "voice_fee" :*/
fileprivate let str_requestName:[Character] = ["v","o","i","c","e","_","f","e","e"]

/*: "value" :*/
fileprivate let str_dataName:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingFemaleChatSetView: UIView {
class TargetThen: UIView {
    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [DataHandyJSON] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = TalkingPopView()
    var popView = NameThen()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = kLet_nextData
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: DataHandyJSON) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.kind()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_kindName.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

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
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(TalkingSetCell.self, forCellReuseIdentifier: TalkingSetCell.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension TargetThen: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSetCell.className(), for: indexPath) as! TalkingSetCell
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: DataHandyJSON = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.roomCompartment(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: DataHandyJSON = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(EqualThen.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(EqualThen.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.oversight(showMsg: String(bytes: str_objectSendText.map{$0^240}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        blockTo(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func blockTo(model: DataHandyJSON) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (String(str_makeValue.prefix(6)) + str_numberTitle.replacingOccurrences(of: "index", with: "ee"))
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (String(str_shareTitle.prefix(8)) + String(str_valueSectionTitle))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (String(str_requestName))
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(String(str_dataName))] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        CameraThen.frameCompletion(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.trademarkView()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.oversight(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension TargetThen {
    // 添加视图
    //: private func setupSubviews() {
    private func kind() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.observe(view: self)
        //: popView.showInView(view: MacroDefine.getWindow())
        popView.shackUp(view: UserMacroDefine.toUp())
    }

    //: @objc func dismissView() {
    @objc func trademarkView() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: kLet_clickData, width: kLet_cameraValue, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.big()
        }
    }

    //: func showView() {
    func endView() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: kLet_clickData - self.contentHeight, width: kLet_cameraValue, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
