
//: Declare String Begin

/*: "#666666" :*/
fileprivate let str_makeMessageText:String = "#6666"
fileprivate let str_requestTitle:[Character] = ["6","6"]

/*: "#8566FF" :*/
fileprivate let str_itemName:[Character] = ["#","8","5","6","6","F","F"]

/*: "Home" :*/
fileprivate let str_toData:[Character] = ["H","o","m","e"]

/*: "Like" :*/
fileprivate let str_rowName:String = "Likemake view make"

/*: "Message" :*/
fileprivate let str_dataModelText:String = "result position scale if toMessage"

/*: "Me" :*/
fileprivate let str_titleTotalItemValue:[Character] = ["M","e"]

/*: "Live" :*/
fileprivate let str_maleText:String = "color add toLive"

/*: "icon_randownCall_nor" :*/
fileprivate let str_modelUserTitle:[UInt8] = [0x4a,0x40,0x4c,0x4d,0x7c,0x51,0x42,0x4d,0x47,0x4c,0x54,0x4d,0x60,0x42,0x4f,0x4f,0x7c,0x4d,0x4c,0x51]

private func lengthFrame(end num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "icon_randownCall_pre" :*/
fileprivate let str_errorText:String = "countc"
fileprivate let str_partyTitle:[Character] = ["o","n","_","r","a","n","d","o","w","n","C","a","l","l","_","p","r","e"]

/*: "icon_home_match_nor" :*/
fileprivate let str_clickData:[UInt8] = [0x33,0x39,0x35,0x34,0x5,0x32,0x35,0x37,0x3f,0x5,0x37,0x3b,0x2e,0x39,0x32,0x5,0x34,0x35,0x28]

private func halfNameCenter(add num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "icon_home_match_pre" :*/
fileprivate let str_normalEqualContentName:[Character] = ["i","c","o","n","_","h","o","m"]
fileprivate let str_modelData:String = "count nor returne_ma"

/*: "btn_popular_pop_nor" :*/
fileprivate let str_explainName:[UInt8] = [0x17,0x1,0x1b,0x2a,0x5,0x1a,0x5,0x0,0x19,0x14,0x7,0x2a,0x5,0x1a,0x5,0x2a,0x1b,0x1a,0x7]

private func atVideo(click num: UInt8) -> UInt8 {
    return num ^ 117
}

/*: "btn_popular_pop_pre" :*/
fileprivate let str_keyValue:String = "open label table data centerbtn_po"
fileprivate let str_hiddenData:[Character] = ["p","o","p","_","p","r","e"]

/*: "btn_label_add_nor" :*/
fileprivate let str_pushName:[UInt8] = [0x30,0x26,0x3c,0xd,0x3e,0x33,0x30,0x37,0x3e,0xd,0x33,0x36,0x36,0xd,0x3c,0x3d,0x20]

/*: "btn_label_add_pre" :*/
fileprivate let str_sectionValue:[Character] = ["b","t","n","_","l","a"]
fileprivate let str_duringName:[Character] = ["b","e","l","_","a","d","d","_","p","r","e"]

/*: "btn_chat_cha_nor" :*/
fileprivate let str_changeData:[UInt8] = [0x5f,0x49,0x53,0x62,0x5e,0x55,0x5c,0x49,0x62,0x5e,0x55,0x5c,0x62,0x53,0x52,0x4f]

/*: "btn_chat_cha_pre" :*/
fileprivate let str_serverContent:String = "pop number viewbtn_ch"
fileprivate let str_equalData:[Character] = ["a","_","p","r","e"]

/*: "btn_me_my_nor" :*/
fileprivate let str_objectApplicationValue:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x79,0x6d,0x5f,0x65,0x6d,0x5f,0x6e,0x74,0x62]

/*: "btn_me_my_pre" :*/
fileprivate let str_toValue:[Character] = ["b","t","n","_","m"]
fileprivate let str_sizeValue:String = "e_log shadow"
fileprivate let str_imageData:String = "my_premake let"

/*: "btn_live_add_nor" :*/
fileprivate let str_managerValue:[UInt8] = [0x79,0x6f,0x75,0x44,0x77,0x72,0x6d,0x7e,0x44,0x7a,0x7f,0x7f,0x44,0x75,0x74,0x69]

private func colorOn(count num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "btn_live_add_pre" :*/
fileprivate let str_languageName:[Character] = ["b","t","n","_","l","i","v","e","_","a","d","d","_","p","r","e"]

/*: "get json error" :*/
fileprivate let str_freeTitle:String = "get jsicon conversation window"
fileprivate let str_editStyleValue:String = "valuevalueovalue"

/*: "99+" :*/
fileprivate let str_labelData:String = "99+"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BulgeThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import UIKit
import UIKit

//: class TalkingTabBar: UITabBar {
class BulgeThen: UITabBar {
    //: var currentTabType = 0
    var currentTabType = 0
    // 消息tabBar展示头像
    //: private var messageIcon = UIImageView()
    private var messageIcon = UIImageView()

    //: func setupItemsWithArr(itemTypes: Array<TabBarItemType>) {
    func engraft(itemTypes: [DeepEquatable]) {
        //: if itemTypes.count == 0 {
        if itemTypes.count == 0 {
            //: return
            return
        }
        //: let viewWidth = ScreenWidth
        let viewWidth = kLet_cameraValue
        //: let backView = UIView.init()
        let backView = UIView()
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.height.equalTo(Int(TabBarViewHeight))
            make.height.equalTo(Int(kLet_viewDepthText))
        }
        //: backView.backgroundColor = .white
        backView.backgroundColor = .white
        //: backView.layer.shadowColor = UIColor.init(red: 188/255.0, green: 188/255.0, blue: 188/255.0, alpha: 0.5).cgColor
        backView.layer.shadowColor = UIColor(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0, alpha: 0.5).cgColor
        //: backView.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: backView.layer.shadowOpacity = 1
        backView.layer.shadowOpacity = 1
        //: backView.layer.shadowRadius = 6
        backView.layer.shadowRadius = 6

        //: let width = Int(viewWidth)/itemTypes.count
        let width = Int(viewWidth) / itemTypes.count

        //: for i in 0..<itemTypes.count {
        for i in 0 ..< itemTypes.count {
            //: let itemType = itemTypes[i]
            let itemType = itemTypes[i]
            //: let btn = barBtnFor(itemType: itemType)!
            let btn = unwishedNaturePublicHouseItem(itemType: itemType)!
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.isSelected = (itemType.rawValue == currentTabType)
            btn.isSelected = (itemType.rawValue == currentTabType)
            //: backView.addSubview(btn)
            backView.addSubview(btn)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.leading.equalTo(width*i)
                make.leading.equalTo(width * i)
                //: make.size.equalTo(CGSize.init(width: width, height: 48))
                make.size.equalTo(CGSize(width: width, height: 48))
            }
            //: if itemType != TabBarItemType.FreeMoment {
            if itemType != DeepEquatable.FreeMoment {
                //: setBtnPlace(btn: btn)
                ground(btn: btn)
            }

            //: if itemType == TabBarItemType.Message {
            if itemType == DeepEquatable.Message {
                //: messageIcon = UIImageView()
                messageIcon = UIImageView()
                //: messageIcon.contentMode = .scaleAspectFill
                messageIcon.contentMode = .scaleAspectFill
                //: messageIcon.layer.cornerRadius = 15.0
                messageIcon.layer.cornerRadius = 15.0
                //: messageIcon.layer.masksToBounds = true
                messageIcon.layer.masksToBounds = true
                //: messageIcon.isHidden = true
                messageIcon.isHidden = true
                //: btn.addSubview(messageIcon)
                btn.addSubview(messageIcon)
                //: messageIcon.snp.makeConstraints { make in
                messageIcon.snp.makeConstraints { make in
                    //: let y = btn.imageView?.origin.y ?? 0
                    let y = btn.imageView?.origin.y ?? 0
                    //: make.top.equalTo(y-2)
                    make.top.equalTo(y - 2)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 30, height: 30))
                    make.size.equalTo(CGSize(width: 30, height: 30))
                }
                //: } else if itemType == TabBarItemType.Live {
            } else if itemType == DeepEquatable.Live { // 直播tabBar添加SVGA动效
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: liveSvga.isHidden = true
                liveSvga.isHidden = true
                //: btn.addSubview(liveSvga)
                btn.addSubview(liveSvga)
                //: liveSvga.snp.makeConstraints { make in
                liveSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
                //: } else if itemType == TabBarItemType.Randow {
            } else if itemType == DeepEquatable.Randow {
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: randowSvga.isHidden = true
                randowSvga.isHidden = true
                //: btn.addSubview(randowSvga)
                btn.addSubview(randowSvga)
                //: randowSvga.snp.makeConstraints { make in
                randowSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
            }
        }

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance.init()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .clear
            tabBarAppearance.backgroundColor = .clear
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = .clear
            tabBarAppearance.shadowColor = .clear
            //: self.standardAppearance = tabBarAppearance
            self.standardAppearance = tabBarAppearance
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: self.scrollEdgeAppearance = tabBarAppearance
                self.scrollEdgeAppearance = tabBarAppearance
                //: } else {
            } else {
                // Fallback on earlier versions
            }
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func barBtnFor(itemType: TabBarItemType) -> UIButton? {
    func unwishedNaturePublicHouseItem(itemType: DeepEquatable) -> UIButton? {
        //: switch itemType {
        switch itemType {
        //: case .Social, .Moment, .Account, .Message, .Randow, .Live:
        case .Social, .Moment, .Account, .Message, .Randow, .Live:
            //: let btn: UIButton = UIButton.init(type: .custom)
            let btn = UIButton(type: .custom)
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.backgroundColor = .clear
            btn.backgroundColor = .clear
            //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
            btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 11)
            //: btn.setTitle(self.itemTitleFor(itemType: itemType), for: .normal)
            btn.setTitle(self.direction(itemType: itemType), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#666666"), for: .normal)
            btn.setTitleColor(UIColor(hex: (str_makeMessageText.capitalized + String(str_requestTitle))), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#8566FF"), for: .selected)
            btn.setTitleColor(UIColor(hex: (String(str_itemName))), for: .selected)
            //: btn.setImage(UIImage.eponymUp(name: self.itemImageFor(itemType: itemType, btnSelect: false)), for: .normal)
            btn.setImage(UIImage.eponymUp(name: self.rangeName(itemType: itemType, btnSelect: false)), for: .normal)
            //: btn.setImage(UIImage.eponymUp(name: self.itemImageFor(itemType: itemType, btnSelect: true)), for: .selected)
            btn.setImage(UIImage.eponymUp(name: self.rangeName(itemType: itemType, btnSelect: true)), for: .selected)

            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: return btn
            return btn
        //: case .FreeMoment:
        case .FreeMoment:
            //: return nil
            return nil
        //: case .Login:
        case .Login:
            //: return nil
            return nil
        //: case .meet:
        case .meet:
            //: return nil
            return nil
        }
    }

    //: func itemTitleFor(itemType: TabBarItemType) -> String {
    func direction(itemType: DeepEquatable) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return "Home".localized
            return (String(str_toData)).localized
        //: case .Social:
        case .Social:
//            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue {
//                return "People".localized
//            } else if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
//                return "Hot".localized
//            } else {
//                return "Home".localized
//            }
            //: return "Home".localized
            return (String(str_toData)).localized

        //: case .Moment:
        case .Moment:
            //: return "Like".localized
            return (String(str_rowName.prefix(4))).localized
//            return "Moment".localized
        //: case .Message:
        case .Message:
            //: return "Message".localized
            return (String(str_dataModelText.suffix(7))).localized
        //: case .Account:
        case .Account:
            //: return "Me".localized
            return "Me".localized
        //: case .Live:
        case .Live:
            //: return "Live".localized
            return (String(str_maleText.suffix(4))).localized
        //: case .Login, .FreeMoment, .meet:
        case .Login, .FreeMoment, .meet:
            //: return ""
            return ""
        }
    }

    //: func itemImageFor(itemType: TabBarItemType, btnSelect: Bool) -> String {
    func rangeName(itemType: DeepEquatable, btnSelect: Bool) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return btnSelect == false ? "icon_randownCall_nor":"icon_randownCall_pre"
            return btnSelect == false ? String(bytes: str_modelUserTitle.map{lengthFrame(end: $0)}, encoding: .utf8)! : (str_errorText.replacingOccurrences(of: "count", with: "i") + String(str_partyTitle))
        //: case .Social:
        case .Social:
//            return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            //: return btnSelect == false ? "icon_home_match_nor":"icon_home_match_pre"
            return btnSelect == false ? String(bytes: str_clickData.map{halfNameCenter(add: $0)}, encoding: .utf8)! : (String(str_normalEqualContentName) + String(str_modelData.suffix(4)) + "tch_pre")
        //: case .Moment:
        case .Moment:
//            return btnSelect == false ? "btn_discocer_dis_nor":"btn_discocer_dis_pre"
            //: return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            return btnSelect == false ? String(bytes: str_explainName.map{atVideo(click: $0)}, encoding: .utf8)! : (String(str_keyValue.suffix(6)) + "pular_" + String(str_hiddenData))
        //: case .FreeMoment:
        case .FreeMoment:
            //: return btnSelect == false ? "btn_label_add_nor":"btn_label_add_pre"
            return btnSelect == false ? String(bytes: str_pushName.map{$0^82}, encoding: .utf8)! : (String(str_sectionValue) + String(str_duringName))
        //: case .Message:
        case .Message:
            //: return btnSelect == false ? "btn_chat_cha_nor":"btn_chat_cha_pre"
            return btnSelect == false ? String(bytes: str_changeData.map{$0^61}, encoding: .utf8)! : (String(str_serverContent.suffix(6)) + "at_ch" + String(str_equalData))
        //: case .Account:
        case .Account:
            //: return btnSelect == false ? "btn_me_my_nor":"btn_me_my_pre"
            return btnSelect == false ? String(bytes: str_objectApplicationValue.reversed(), encoding: .utf8)! : (String(str_toValue) + String(str_sizeValue.prefix(2)) + String(str_imageData.prefix(6)))
        //: case .Live:
        case .Live:
            //: return btnSelect == false ? "btn_live_add_nor":"btn_live_add_pre"
            return btnSelect == false ? String(bytes: str_managerValue.map{colorOn(count: $0)}, encoding: .utf8)! : (String(str_languageName))
        //: case .Login, .meet:
        case .Login, .meet:
            //: return ""
            return ""
        }
    }

    /// 更改tabbar按钮选中状态
    //: func setSelectedTabItem(itemType: TabBarItemType) {
    func vantage(itemType: DeepEquatable) {
        //: let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        //: if itemType.rawValue != currentTabType && btn.isSelected == true {
        if itemType.rawValue != currentTabType && btn.isSelected == true {
            //: btn.isSelected = false
            btn.isSelected = false
        }
        //: let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        //: lastBtn.isSelected = true
        lastBtn.isSelected = true
        //: currentTabType = itemType.rawValue
        currentTabType = itemType.rawValue
        //: if itemType == .Message {
        if itemType == .Message {
            //: hideNewMessageUser()
            inherit()
        }
    }

    //: func setBtnPlace(btn: UIButton) {
    func ground(btn: UIButton) {
        //: let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        //: let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0
        let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0

        //: let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        //: let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        //: if LanguageManager.shared.direction == .leftToRight {
        if FileReactiveCompatible.shared.direction == .leftToRight {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: 0, bottom: 0, right: -titleW)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: 0, bottom: 0, right: -titleW)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH-2, right: 0)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH - 2, right: 0)
            //: } else {
        } else {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: -titleW, bottom: 0, right: 0)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: -titleW, bottom: 0, right: 0)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH-2, right:  -imageW)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH - 2, right: -imageW)
        }
    }

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_tabBar)
            let url = ToEffectTool.default.alongError(type: .Live_tabBar)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_freeTitle.prefix(6)) + "on e" + str_editStyleValue.replacingOccurrences(of: "value", with: "r")))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var randowSvga: SVGAPlayer = {
    private lazy var randowSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Tabbar_randownCall)
            let url = ToEffectTool.default.alongError(type: .Tabbar_randownCall)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_freeTitle.prefix(6)) + "on e" + str_editStyleValue.replacingOccurrences(of: "value", with: "r")))
        }

        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabBar {
extension BulgeThen {
    /// 刷新消息未读数角标
    //: func refreshBadgeLayoutWith(unread: Int, barType: TabBarItemType) {
    func tableStreetwise(unread: Int, barType: DeepEquatable) {
        //: let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        //: let label = getBadgeLabel(btn: btn)
        let label = nameBtn(btn: btn)
        //: if unread > 0 {
        if unread > 0 {
            //: label.isHidden = false
            label.isHidden = false
            //: if unread > 99 {
            if unread > 99 {
                //: label.text = "99+"
                label.text = "99+"
                //: } else {
            } else {
                //: label.text = "\(unread)"
                label.text = "\(unread)"
            }
            //: } else {
        } else {
            //: label.isHidden = true
            label.isHidden = true
            //: hideNewMessageUser()
            inherit()
        }
        //: var labWidth = 18.0
        var labWidth = 18.0
        //: if unread > 99 {
        if unread > 99 {
            //: labWidth = 30.0
            labWidth = 30.0
            //: } else if unread > 9 {
        } else if unread > 9 {
            //: labWidth = 23.0
            labWidth = 23.0
        }
        //: let delta = KDeviceIsIphoneX ? 5 : 2
        let delta = kLet_licenseTitle ? 5 : 2
        //: label.snp.remakeConstraints { make in
        label.snp.remakeConstraints { make in
            //: make.leading.equalTo(btn.snp.centerX).offset(10)
            make.leading.equalTo(btn.snp.centerX).offset(10)
            //: make.top.equalTo(delta)
            make.top.equalTo(delta)
            //: make.size.equalTo(CGSize(width: labWidth, height: 18.0))
            make.size.equalTo(CGSize(width: labWidth, height: 18.0))
        }
    }

    //: func getBadgeLabel(btn: UIButton) -> UILabel {
    func nameBtn(btn: UIButton) -> UILabel {
        //: var badgeLabel = btn.viewWithTag(1000)
        var badgeLabel = btn.viewWithTag(1000)
        //: if badgeLabel == nil {
        if badgeLabel == nil {
            //: var tempLabel = UILabel.init()
            var tempLabel = UILabel()
            //: tempLabel = UILabel.init()
            tempLabel = UILabel()
            //: tempLabel.tag = 1000
            tempLabel.tag = 1000
            //: tempLabel.backgroundColor = UIColor.msgTipsColor()
            tempLabel.backgroundColor = UIColor.trim()
            //: tempLabel.layer.cornerRadius = 9
            tempLabel.layer.cornerRadius = 9
            //: tempLabel.layer.borderWidth = 1
            tempLabel.layer.borderWidth = 1
            //: tempLabel.layer.borderColor = UIColor.white.cgColor
            tempLabel.layer.borderColor = UIColor.white.cgColor
            //: tempLabel.clipsToBounds = true
            tempLabel.clipsToBounds = true
            //: tempLabel.textColor = UIColor.white
            tempLabel.textColor = UIColor.white
            //: tempLabel.font = UIFont.pingfangWithDiameter(fontSize: 13)
            tempLabel.font = UIFont.pingfangWithDiameter(fontSize: 13)
            //: tempLabel.isHidden = true
            tempLabel.isHidden = true
            //: tempLabel.textAlignment = .center
            tempLabel.textAlignment = .center

            //: btn.addSubview(tempLabel)
            btn.addSubview(tempLabel)
            //: badgeLabel = tempLabel
            badgeLabel = tempLabel
        }
        //: return badgeLabel as! UILabel
        return badgeLabel as! UILabel
    }

    /// 展示消息tab头像
    //: func showNewMessageUser(headPic: String) {
    func presentTopStereoscopicPhotograph(headPic: String) {
        //: if currentTabType != TabBarItemType.Message.rawValue {
        if currentTabType != DeepEquatable.Message.rawValue {
            //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
            let btn = self.viewWithTag(DeepEquatable.Message.rawValue + 100) as? UIButton
            //: if btn != nil {
            if btn != nil {
                //: self.messageIcon.isHidden = false
                self.messageIcon.isHidden = false
                //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                //: self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
                self.messageIcon.lineBorder(urlStr: headPic, options: optionsInfo)
            }
        }
    }

    /// 隐藏消息tab头像
    //: func hideNewMessageUser() {
    func inherit() {
        //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
        let btn = self.viewWithTag(DeepEquatable.Message.rawValue + 100) as? UIButton
        //: if btn != nil {
        if btn != nil {
            //: self.messageIcon.isHidden = true
            self.messageIcon.isHidden = true
        }
    }

    /// 展示女性直播toast提示
    //: func showFemaleLiveTurnOnToast() {
    func toast() {
        //: guard self.subviews.count > 0 else { return }
        guard self.subviews.count > 0 else { return }
        //: TalkingLiveTabToast().show(superView: self)
        TargetReactiveCompatible().panorama(superView: self)
    }

    /// 更改直播按钮图标
    //: func switchLiveTabBarImage() {
    func channel() {
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return }
        //: let liveBtn = self.viewWithTag(TabBarItemType.Live.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(DeepEquatable.Live.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: if TalkingLiveManager.shared().isLive ||
        if UserPushListener.sexApp().isLive ||
            //: TalkingVoiceRoomManager.shared().isParty, String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == EqualThen.share.loginUid {
            ViewRoomManager.astatine().isParty, String(ViewRoomManager.astatine().partyModel.streamerInfo.uid) == EqualThen.share.loginUid
        {
            //: liveSvga.isHidden = false
            liveSvga.isHidden = false
            //: } else {
        } else {
            //: liveSvga.isHidden = true
            liveSvga.isHidden = true
        }
    }

    /// 更改Randow按钮图标
    //: func switchRandowTabBarImage(isHidde: Bool) {
    func iconHidde(isHidde: Bool) {
        //: let liveBtn = self.viewWithTag(TabBarItemType.Randow.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(DeepEquatable.Randow.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: randowSvga.isHidden = !isHidde
        randowSvga.isHidden = !isHidde
    }
}
