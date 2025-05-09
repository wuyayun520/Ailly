
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_touchManagerValue:[UInt8] = [0xe1,0xe6,0xe1,0xfc,0xa0,0xeb,0xe7,0xec,0xed,0xfa,0xb2,0xa1,0xa8,0xe0,0xe9,0xfb,0xa8,0xe6,0xe7,0xfc,0xa8,0xea,0xed,0xed,0xe6,0xa8,0xe1,0xe5,0xf8,0xe4,0xed,0xe5,0xed,0xe6,0xfc,0xed,0xec]

private func addTableLeading(status num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "Edit" :*/
fileprivate let str_dataContent:String = "Editsecond center user"

/*: "btn_me_edit_add" :*/
fileprivate let str_interactionName:[Character] = ["b","t","n","_","m"]
fileprivate let str_pathSucceedMakeName:String = "e_edcontent for between make"

/*: "About me" :*/
fileprivate let str_tagErrorTitle:String = "About metype var label"

/*: "My interests" :*/
fileprivate let str_managerName:String = "size bass title viewMy int"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FreeCopyreadOrSoMeCompartmentView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: enum TagType: Int {
enum PlayerOffsetTarget: Int {
    //: case AboutMe = 0
    case AboutMe = 0
    //: case Interests
    case Interests
}

//: typealias EditAboutBtnBlock = () -> Void
typealias EditAboutBtnBlock = () -> Void
//: typealias EditdeleteTagBlock = (UserSeleteTagModel) -> Void
typealias EditdeleteTagBlock = (OfHandyJSON) -> Void

//: class TalkingEditAboutMeCell: UITableViewCell {
class FreeCopyreadOrSoMeCompartmentView: UITableViewCell {
    //: var tagtype: TagType = .AboutMe
    var tagtype: PlayerOffsetTarget = .AboutMe
    //: var editBtnBlock: EditAboutBtnBlock!
    var editBtnBlock: EditAboutBtnBlock!
    //: var deleteBlock: EditdeleteTagBlock!
    var deleteBlock: EditdeleteTagBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(addBtn)
        backView.addSubview(addBtn)
        //: backView.addSubview(tagview)
        backView.addSubview(tagview)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_touchManagerValue.map{addTableLeading(status: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView.snp.top)
            make.top.equalTo(backView.snp.top)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: addBtn.snp.makeConstraints { make in
        addBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
        }
        //: tagview.snp.makeConstraints { make in
        tagview.snp.makeConstraints { make in
            //: make.leading.equalTo(backView)
            make.leading.equalTo(backView)
            //: make.trailing.equalTo(backView)
            make.trailing.equalTo(backView)
            //: make.top.equalTo(titleLB.snp.bottom)
            make.top.equalTo(titleLB.snp.bottom)
            //: make.bottom.equalTo(backView).offset(-8)
            make.bottom.equalTo(backView).offset(-8)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: tagview.setframe(frame: tagview.frame)
        tagview.transmissionChannel(frame: tagview.frame)
        //: tagview.tagContentAlignment = .left
        tagview.tagContentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: tagview.tagContentAlignment = .right
            tagview.tagContentAlignment = .right
        }
        //: tagview.backgroundColor = .white
        tagview.backgroundColor = .white
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var addBtn: TalkingButton = {
    lazy var addBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = ProgressTalkingButton()
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(str_dataContent.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.executeTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: btn.setImage(UIImage.eponymUp(name: "btn_me_edit_add"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_interactionName) + String(str_pathSucceedMakeName.prefix(4)) + "it_add")), for: .normal)
        //: btn.addTarget(self, action: #selector(addBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eliminate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var tagview: TalkingTagView = {
    lazy var tagview: SkinTagView = {
        //: let tag = TalkingTagView.init()
        let tag = SkinTagView()
        //: return tag
        return tag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditAboutMeCell {
extension FreeCopyreadOrSoMeCompartmentView {
    //: func setTitle() {
    func outsideName() {
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: titleLB.text = "About me".localized
            titleLB.text = (String(str_tagErrorTitle.prefix(8))).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: titleLB.text = "My interests".localized
            titleLB.text = (String(str_managerName.suffix(6)) + "erests").localized
            //: break
        }
    }

    //: func setMessage(_ messarray: [UserSeleteTagModel]) {
    func imbricateUpwardly(_ messarray: [OfHandyJSON]) {
        //: tagview.titles = messarray
        tagview.titles = messarray
        //: tagview.freshView()
        tagview.orientationAction()
        //: tagview.deleteBlock = { tag in
        tagview.deleteBlock = { tag in
            //: if self.deleteBlock != nil {
            if self.deleteBlock != nil {
                //: self.deleteBlock(tag)
                self.deleteBlock(tag)
            }
        }
    }

    //: @objc func addBtnClick() {
    @objc func eliminate() {
        //: if editBtnBlock != nil {
        if editBtnBlock != nil {
            //: editBtnBlock()
            editBtnBlock()
        }
    }
}
