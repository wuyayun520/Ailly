
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_totalName:[UInt8] = [0x6e,0x73,0x6e,0x79,0x2d,0x68,0x74,0x69,0x6a,0x77,0x3f,0x2e,0x25,0x6d,0x66,0x78,0x25,0x73,0x74,0x79,0x25,0x67,0x6a,0x6a,0x73,0x25,0x6e,0x72,0x75,0x71,0x6a,0x72,0x6a,0x73,0x79,0x6a,0x69]

fileprivate func viewFor(action num: UInt8) -> UInt8 {
    let value = Int(num) - 5
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let str_imageValue:[Character] = ["i","c","o","n","_"]
fileprivate let str_currentData:String = "videapp"
fileprivate let str_screenName:[Character] = ["a","n","s","l","a","t","e","_","n","o","r"]

/*: "icon_videoCall_translate_pre" :*/
fileprivate let str_objectData:[Character] = ["i","c","o","n","_","v","i","d","e","o","C","a","l","l","_","t","r","a","n","s","l","a","t","e","_","p"]
fileprivate let str_errorSizeData:String = "layer"

/*: "targetText" :*/
fileprivate let str_componentData:[Character] = ["t","a","r","g","e","t","T","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class DataThen: TargetBassCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: WithDanmuModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            doView()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_totalName.map{viewFor(action: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_imageValue) + str_currentData.replacingOccurrences(of: "app", with: "o") + "Call_tr" + String(str_screenName))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_objectData) + str_errorSizeData.replacingOccurrences(of: "layer", with: "re"))), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fixing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension DataThen {
    //: func setCell() {
    func doView() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func fixing() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = NameMakeReactiveCompatible()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.drop(model: self.msgModel)
                //: self.setCell()
                self.doView()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: PostulationReactiveCompatible.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                PostulationReactiveCompatible.dismissCompletion(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(String(str_componentData))].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = NameMakeReactiveCompatible()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.drop(model: self.msgModel)
                        //: self.setCell()
                        self.doView()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = NameMakeReactiveCompatible()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.taskMake(model: self.msgModel)
            //: self.setCell()
            self.doView()
        }
    }
}
