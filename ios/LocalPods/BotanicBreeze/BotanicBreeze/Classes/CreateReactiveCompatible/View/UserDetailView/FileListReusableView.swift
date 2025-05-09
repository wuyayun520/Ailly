
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indicatorData:[UInt8] = [0xc7,0xc0,0xc7,0xda,0x86,0xcd,0xc1,0xca,0xcb,0xdc,0x94,0x87,0x8e,0xc6,0xcf,0xdd,0x8e,0xc0,0xc1,0xda,0x8e,0xcc,0xcb,0xcb,0xc0,0x8e,0xc7,0xc3,0xde,0xc2,0xcb,0xc3,0xcb,0xc0,0xda,0xcb,0xca]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileListReusableView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagItemCell: UICollectionViewCell {
class FileListReusableView: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.element()
        //: self.setupSubViewsConstraint()
        self.setupWindow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indicatorData.map{$0^174}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var bgView: UIView = {
    lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .RGBA(0.92, 0.91, 1, 1)
        view.backgroundColor = .showSub(0.92, 0.91, 1, 1)
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: lazy var tagLabel: UILabel = {
    lazy var tagLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 14)
        lb.font = .pingfang(type: .Regular, fontSize: 14)
        //: lb.textColor = .RGBA(0.92, 0.91, 1, 1)
        lb.textColor = .showSub(0.92, 0.91, 1, 1)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: Layout

//: extension TalkingUserDetailTagItemCell {
extension FileListReusableView {
    //: private func setupSubviews() {
    private func element() {
        //: contentView.addSubview(bgView)
        contentView.addSubview(bgView)
        //: bgView.addSubview(tagLabel)
        bgView.addSubview(tagLabel)
    }

    //: private func setupSubViewsConstraint() {
    private func setupWindow() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }

        //: tagLabel.snp.makeConstraints { make in
        tagLabel.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
