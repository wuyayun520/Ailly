
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_withoutTitle:[UInt8] = [0x7,0x0,0x7,0x1a,0x46,0xd,0x1,0xa,0xb,0x1c,0x54,0x47,0x4e,0x6,0xf,0x1d,0x4e,0x0,0x1,0x1a,0x4e,0xc,0xb,0xb,0x0,0x4e,0x7,0x3,0x1e,0x2,0xb,0x3,0xb,0x0,0x1a,0xb,0xa]

private func messageView(top num: UInt8) -> UInt8 {
    return num ^ 110
}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let str_toData:String = "viewon"
fileprivate let str_countName:String = "ao_nanmake to add accept regular"
fileprivate let str_managerName:String = "sizelt"

/*: "iv_crush" :*/
fileprivate let str_backgroundTitle:String = "iv_crusvar type number"
fileprivate let str_styleValue:String = "H"

/*: "Crush" :*/
fileprivate let str_addData:[Character] = ["C","r","u","s","h"]

/*: "get json error" :*/
fileprivate let str_sizeData:String = "get jsodata add main"
fileprivate let str_appViewData:String = "text"
fileprivate let str_inviteModelText:String = "view direction text error"

/*: "targetUid" :*/
fileprivate let str_infoTitle:String = "TARGET"
fileprivate let str_tipData:[Character] = ["U","i","d"]

/*: "The other party has received your crush" :*/
fileprivate let str_sizeBlockData:[UInt8] = [0xbc,0x80,0x8d,0xc8,0x87,0x9c,0x80,0x8d,0x9a,0xc8,0x98,0x89,0x9a,0x9c,0x91,0xc8,0x80,0x89,0x9b,0xc8,0x9a,0x8d,0x8b,0x8d,0x81,0x9e,0x8d,0x8c,0xc8,0x91,0x87,0x9d,0x9a,0xc8,0x8b,0x9a,0x9d,0x9b,0x80]

private func sexApp(value num: UInt8) -> UInt8 {
    return num ^ 232
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakePlayerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class MakePlayerDelegate: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
//        self.backgroundColor = UIColor.white
//        customUI()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_withoutTitle.map{messageView(top: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func frontUi() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.showSub(51, 51, 51, 0.8)

        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = ProgressTalkingButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (str_toData.replacingOccurrences(of: "view", with: "ic") + "_zili" + String(str_countName.prefix(6)) + "di_defa" + str_managerName.replacingOccurrences(of: "size", with: "u"))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_backgroundTitle.prefix(7)) + str_styleValue.lowercased())), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(str_addData)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishCommit), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension MakePlayerDelegate: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func finishCommit() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = ToEffectTool.default.alongError(type: .Crush)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_sizeData.prefix(7)) + str_appViewData.replacingOccurrences(of: "text", with: "n") + String(str_inviteModelText.suffix(6))))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(str_infoTitle.lowercased() + String(str_tipData))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        StreetSmartReactiveCompatible.params(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.constraintMsg(showMsg: String(bytes: str_sizeBlockData.map{sexApp(value: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.oversight(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
