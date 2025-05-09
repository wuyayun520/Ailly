
//: Declare String Begin

/*: "icon_kong_kong_default" :*/
fileprivate let str_topContent:String = "on self identify numbericon_k"
fileprivate let str_moveName:String = "ong_komessage across guard date"
fileprivate let str_freeData:String = "kitfault"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingValue:[UInt8] = [0x1a,0x1d,0x1a,0x7,0x5b,0x10,0x1c,0x17,0x16,0x1,0x49,0x5a,0x53,0x1b,0x12,0x0,0x53,0x1d,0x1c,0x7,0x53,0x11,0x16,0x16,0x1d,0x53,0x1a,0x1e,0x3,0x1f,0x16,0x1e,0x16,0x1d,0x7,0x16,0x17]

private func playerTime(color num: UInt8) -> UInt8 {
    return num ^ 115
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

/// 样式
//: public struct EmptyStyle {
public struct ShadowViewEmptyStyle {
    /// 提示文字
    //: public var TipsTitle = ""
    public var TipsTitle = ""

    /// 缺省图片
    //: public var TipsIcon = "icon_kong_kong_default"
    public var TipsIcon = (String(str_topContent.suffix(6)) + String(str_moveName.prefix(6)) + "ng_d" + str_freeData.replacingOccurrences(of: "kit", with: "e"))

    /// 添加下拉刷新，默认添加
    //: public var addHeaderRefresh = true
    public var addHeaderRefresh = true
}

//: typealias EmptyViewBlock = () -> Void
typealias EmptyViewBlock = () -> Void

//: class EmptyView: UIScrollView {
class EmptyView: UIScrollView {
    //: var emptyBlock: EmptyViewBlock?
    var emptyBlock: EmptyViewBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_leadingValue.map{playerTime(color: $0)}, encoding: .utf8)!)
    }

    //: public init(frame: CGRect, style: EmptyStyle) {
    public init(frame: CGRect, style: ShadowViewEmptyStyle) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .appBgColor()
        self.backgroundColor = .imageColor()
        //: enptyStyle = style
        enptyStyle = style
        //: createUI()
        addUi()
        //: if enptyStyle.addHeaderRefresh {
        if enptyStyle.addHeaderRefresh {
            //: self.addHeaderRefresh { [weak self] in
            self.addHeader { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.headerRefresh()
                self.videoRefresh()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: self.endRefresh()
                    self.cancelButton()
                }
            }
        }
    }

    //: func headerRefresh() {
    func videoRefresh() {
        //: if self.emptyBlock != nil {
        if self.emptyBlock != nil {
            //: emptyBlock!()
            emptyBlock!()
        }
    }

    // MARK: - UI

    //: func createUI() {
    func addUi() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarHeight+192)
            make.top.equalToSuperview().offset(kLet_timeSenseValue + 192)
        }

        //: self.addSubview(desLab)
        self.addSubview(desLab)
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }

    // MARK: - Lazy load

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.eponymUp(name: self.enptyStyle.TipsIcon))
        let v = UIImageView(image: UIImage.eponymUp(name: self.enptyStyle.TipsIcon))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .publishView()
        lab.textColor = .publishView()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .pingfang(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = self.enptyStyle.TipsTitle
        lab.text = self.enptyStyle.TipsTitle
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var enptyStyle: EmptyStyle = {
    lazy var enptyStyle: ShadowViewEmptyStyle = {
        //: let temp = EmptyStyle()
        let temp = ShadowViewEmptyStyle()
        //: return temp
        return temp
        //: }()
    }()
}
