
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userClearValue:[UInt8] = [0x6e,0x69,0x6e,0x73,0x2f,0x64,0x68,0x63,0x62,0x75,0x3d,0x2e,0x27,0x6f,0x66,0x74,0x27,0x69,0x68,0x73,0x27,0x65,0x62,0x62,0x69,0x27,0x6e,0x6a,0x77,0x6b,0x62,0x6a,0x62,0x69,0x73,0x62,0x63]

private func searchStart(can num: UInt8) -> UInt8 {
    return num ^ 7
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Joeyoung on 2022/9/1.
//

//: import UIKit
import UIKit

//: let kProgressHUD_W            = 80.0
let kLet_halfName = 80.0
//: let kProgressHUD_cornerRadius = 14.0
let kLet_roomText = 14.0
//: let kProgressHUD_alpha        = 0.9
let kLet_pointData = 0.9
//: let kBackgroundView_alpha     = 0.6
let kLet_matchText = 0.6
//: let kAnimationInterval        = 0.2
let kLet_windowValue = 0.2
//: let kTransformScale           = 0.9
let kLet_skipData = 0.9

//: open class ProgressHUD: UIView {
open class ModelReactiveCompatible: UIView {
    //: required public init?(coder: NSCoder) {
    public required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userClearValue.map{searchStart(can: $0)}, encoding: .utf8)!)
    }

    //: static var shared = ProgressHUD()
    static var shared = ModelReactiveCompatible()
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: self.backgroundColor = UIColor(white: 0, alpha: 0)
        self.backgroundColor = UIColor(white: 0, alpha: 0)
        //: self.addSubview(activityIndicator)
        self.addSubview(activityIndicator)
    }

    //: open override func copy() -> Any { return self }
    override open func copy() -> Any { return self }
    //: open override func mutableCopy() -> Any { return self }
    override open func mutableCopy() -> Any { return self }

    //: class func show() {
    class func fromTarget() {
        //: show(superView: nil)
        sendImage(superView: nil)
    }

    //: class func show(superView: UIView?) {
    class func sendImage(superView: UIView?) {
        //: if superView != nil {
        if superView != nil {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: ProgressHUD.shared.frame = superView!.bounds
                ModelReactiveCompatible.shared.frame = superView!.bounds
                //: ProgressHUD.shared.activityIndicator.center = ProgressHUD.shared.center
                ModelReactiveCompatible.shared.activityIndicator.center = ModelReactiveCompatible.shared.center
                //: superView!.addSubview(ProgressHUD.shared)
                superView!.addSubview(ModelReactiveCompatible.shared)
            }
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: ProgressHUD.shared.frame = UIScreen.main.bounds
                ModelReactiveCompatible.shared.frame = UIScreen.main.bounds
                //: ProgressHUD.shared.activityIndicator.center = ProgressHUD.shared.center
                ModelReactiveCompatible.shared.activityIndicator.center = ModelReactiveCompatible.shared.center
                //: MacroDefine.getWindow().addSubview(ProgressHUD.shared)
                UserMacroDefine.toUp().addSubview(ModelReactiveCompatible.shared)
            }
        }
        //: ProgressHUD.shared.hud_startAnimating()
        ModelReactiveCompatible.shared.callAnimating()
    }

    //: class func dismiss() {
    class func dataConverterCan() {
        //: ProgressHUD.shared.hud_stopAnimating()
        ModelReactiveCompatible.shared.fromMoment()
    }

    //: private func hud_startAnimating() {
    private func callAnimating() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.backgroundColor = UIColor(white: 0, alpha: 0)
            self.backgroundColor = UIColor(white: 0, alpha: 0)
            //: self.activityIndicator.transform = CGAffineTransform(scaleX: kTransformScale, y: kTransformScale)
            self.activityIndicator.transform = CGAffineTransform(scaleX: kLet_skipData, y: kLet_skipData)
            //: self.activityIndicator.alpha = 0
            self.activityIndicator.alpha = 0
            //: UIView.animate(withDuration: kAnimationInterval) {
            UIView.animate(withDuration: kLet_windowValue) {
                //: self.backgroundColor = UIColor(white: 0, alpha: kBackgroundView_alpha)
                self.backgroundColor = UIColor(white: 0, alpha: kLet_matchText)
                //: self.activityIndicator.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.activityIndicator.transform = CGAffineTransform(scaleX: 1, y: 1)
                //: self.activityIndicator.alpha = kProgressHUD_alpha
                self.activityIndicator.alpha = kLet_pointData
                //: self.activityIndicator.startAnimating()
                self.activityIndicator.startAnimating()
            }
        }
    }

    //: private func hud_stopAnimating() {
    private func fromMoment() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: UIView.animate(withDuration: kAnimationInterval) {
            UIView.animate(withDuration: kLet_windowValue) {
                //: self.backgroundColor = UIColor(white: 0, alpha: 0)
                self.backgroundColor = UIColor(white: 0, alpha: 0)
                //: self.activityIndicator.transform = CGAffineTransform(scaleX: kTransformScale, y: kTransformScale)
                self.activityIndicator.transform = CGAffineTransform(scaleX: kLet_skipData, y: kLet_skipData)
                //: self.activityIndicator.alpha = 0
                self.activityIndicator.alpha = 0
                //: } completion: { finished in
            } completion: { _ in
                //: self.activityIndicator.stopAnimating()
                self.activityIndicator.stopAnimating()
                //: ProgressHUD.shared.removeFromSuperview()
                ModelReactiveCompatible.shared.removeFromSuperview()
            }
        }
    }

    // MARK: - Lazy load

    //: private lazy var activityIndicator: UIActivityIndicatorView = {
    private lazy var activityIndicator: UIActivityIndicatorView = {
        //: let indicator = UIActivityIndicatorView(style: .whiteLarge)
        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        //: indicator.bounds = CGRect(x: 0, y: 0, width: kProgressHUD_W, height: kProgressHUD_W)
        indicator.bounds = CGRect(x: 0, y: 0, width: kLet_halfName, height: kLet_halfName)
        //: indicator.center = self.center
        indicator.center = self.center
        //: indicator.backgroundColor = .black
        indicator.backgroundColor = .black
        //: indicator.layer.cornerRadius = kProgressHUD_cornerRadius
        indicator.layer.cornerRadius = kLet_roomText
        //: indicator.layer.masksToBounds = true
        indicator.layer.masksToBounds = true
        //: return indicator
        return indicator
        //: }()
    }()
}

//: extension ProgressHUD {
extension ModelReactiveCompatible {
    //: class func toast(_ str: String?) {
    class func doMake(_ str: String?) {
        //: toast(str, showTime: 1)
        enableLoad(str, showTime: 1)
    }

    //: class func toast(_ str: String?, showTime: CGFloat) {
    class func enableLoad(_ str: String?, showTime: CGFloat) {
        //: guard str != nil else { return }
        guard str != nil else { return }

        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.backgroundColor = UIColor(white: 0, alpha: 0.8)
        titleLab.backgroundColor = UIColor(white: 0, alpha: 0.8)
        //: titleLab.layer.cornerRadius = 5
        titleLab.layer.cornerRadius = 5
        //: titleLab.layer.masksToBounds = true
        titleLab.layer.masksToBounds = true
        //: titleLab.text = str
        titleLab.text = str
        //: titleLab.font = .systemFont(ofSize: 16)
        titleLab.font = .systemFont(ofSize: 16)
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.numberOfLines = 0
        titleLab.numberOfLines = 0
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: MacroDefine.getWindow().addSubview(titleLab)
        UserMacroDefine.toUp().addSubview(titleLab)
        //: let size = titleLab.sizeThatFits(CGSize(width: UIScreen.main.bounds.width - 40, height: CGFloat(MAXFLOAT)))
        let size = titleLab.sizeThatFits(CGSize(width: UIScreen.main.bounds.width - 40, height: CGFloat(MAXFLOAT)))
        //: titleLab.center = MacroDefine.getWindow().center
        titleLab.center = UserMacroDefine.toUp().center
        //: titleLab.bounds = CGRect(x: 0, y: 0, width: size.width + 30, height: size.height + 30)
        titleLab.bounds = CGRect(x: 0, y: 0, width: size.width + 30, height: size.height + 30)
        //: titleLab.alpha = 0
        titleLab.alpha = 0

        //: UIView.animate(withDuration: 0.2) {
        UIView.animate(withDuration: 0.2) {
            //: titleLab.alpha = 1
            titleLab.alpha = 1
            //: } completion: { finished in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + showTime) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + showTime) {
                //: UIView.animate(withDuration: 0.2) {
                UIView.animate(withDuration: 0.2) {
                    //: titleLab.alpha = 1
                    titleLab.alpha = 1
                    //: } completion: { finished in
                } completion: { _ in
                    //: titleLab.removeFromSuperview()
                    titleLab.removeFromSuperview()
                }
            }
        }
    }
}
