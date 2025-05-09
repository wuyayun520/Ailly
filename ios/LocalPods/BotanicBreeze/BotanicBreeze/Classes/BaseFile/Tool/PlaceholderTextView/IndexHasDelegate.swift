
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameValue:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/10/7.
//

//: import UIKit
import UIKit

//: class TalkingTextView: UITextView {
class IndexHasDelegate: UITextView {
    /// 占位文字
    //: var placeholder: String?
    var placeholder: String?
    /// 占位文字颜色
    //: var placeholderColor: UIColor? = UIColor.publishView()
    var placeholderColor: UIColor? = UIColor.publishView()

//    var PlaceholderInsets: UIEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)

    //: var PlaceholderInsets: UIEdgeInsets? {
    var PlaceholderInsets: UIEdgeInsets? {
        //: willSet {
        willSet {}
        //: didSet {
        didSet {
            //: self.textContainerInset = self.PlaceholderInsets!
            self.textContainerInset = self.PlaceholderInsets!
        }
    }

    //: override init(frame: CGRect, textContainer: NSTextContainer?) {
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        //: super.init(frame: frame, textContainer: textContainer)
        super.init(frame: frame, textContainer: textContainer)
        // 设置默认字体
        //: self.font = UIFont.systemFont(ofSize: 15)
        self.font = UIFont.systemFont(ofSize: 15)
        // 使用通知监听文字改变
        //: NotificationCenter.default.addObserver(self, selector: #selector(textDidChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(cameraTable(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameValue.map{$0^53}, encoding: .utf8)!)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        // 如果有文字,就直接返回,不需要画占位文字
        //: if self.hasText {
        if self.hasText {
            //: return
            return
        }
        // 属性
        //: let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]
        let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]

        // 文字
        //: var rect1 = rect
        var rect1 = rect
        //: rect1.origin.x = self.PlaceholderInsets!.left
        rect1.origin.x = self.PlaceholderInsets!.left
        //: rect1.origin.y = self.PlaceholderInsets!.top
        rect1.origin.y = self.PlaceholderInsets!.top
        //: rect1.size.width -= 2*rect1.origin.x
        rect1.size.width -= 2 * rect1.origin.x
        //: (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
        (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
    }

    //: @objc func textDidChange(_ note: Notification) {
    @objc func cameraTable(_: Notification) {
        // 会重新调用drawRect:方法
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    }
}
