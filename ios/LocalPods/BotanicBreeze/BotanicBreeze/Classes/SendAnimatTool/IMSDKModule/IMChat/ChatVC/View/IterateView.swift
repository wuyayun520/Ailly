
//: Declare String Begin

/*: "IterateView deinit" :*/
fileprivate let str_alwaysTitle:[Character] = ["Q","u","o","t","e","D"]
fileprivate let str_toTitle:[Character] = ["e","t","a","i","l","P","o","p","V","i"]
fileprivate let str_instanceContent:String = "make equal add false labew de"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IterateView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class IterateView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(str_alwaysTitle) + String(str_toTitle) + String(str_instanceContent.suffix(5)) + "init"))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.cyclorama()
        //: self.setupSubViewsConstraint()
        self.views()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appValue.reversed(), encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension IterateView {
    //: func show() {
    func upFail() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
    }

    //: @objc func dismiss() {
    @objc func stateLabel() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension IterateView {
    // 添加视图
    //: private func setupSubviews() {
    private func cyclorama() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.imageColor()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func views() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
