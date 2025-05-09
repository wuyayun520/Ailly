
//: Declare String Begin

/*: "identifier" :*/
fileprivate let str_circleTitle:[UInt8] = [0x61,0x6c,0x6d,0x66,0x7c,0x61,0x6e,0x61,0x6d,0x7a]

/*: "token" :*/
fileprivate let str_containerElementName:[UInt8] = [0x8,0x13,0x17,0x19,0x12]

private func theRe(cell num: UInt8) -> UInt8 {
    return num ^ 124
}

/*: "authCode" :*/
fileprivate let str_userValue:[UInt8] = [0x8c,0xa0,0x9f,0x93,0x6e,0x9a,0x8f,0x90]

fileprivate func stormCenter(make num: UInt8) -> UInt8 {
    let value = Int(num) - 43
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*:   :*/
fileprivate let str_tableContent:String = "manager"

/*: "nickname" :*/
fileprivate let str_receiveFrameData:String = "niaddk"

/*: "授权请求失败未知原因" :*/
fileprivate let str_infoValue:[Character] = ["授","权","请","求","失","败","未","知","原","\u{56e0}"]

/*: "用户取消了授权请求" :*/
fileprivate let str_labelRequestText:String = "用"
fileprivate let str_executeData:[Character] = ["户","取","\u{6d88}","\u{4e86}","授","权","请","\u{6c42}"]

/*: "授权请求失败" :*/
fileprivate let str_shapeTitle:[Character] = ["授","权","请","\u{6c42}","失"]
fileprivate let str_makeSexData:String = "name"

/*: "授权请求响应无效" :*/
fileprivate let str_renderValue:String = "\u{6388}权请求响应无效"

/*: "未能处理授权请求" :*/
fileprivate let str_minRestoreViewData:[Character] = ["未"]
fileprivate let str_titleData:[Character] = ["能","处","理","授","权","请","求"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BridePriceControllerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import UIKit
import UIKit

//: import AuthenticationServices
import AuthenticationServices

//: enum AppLeLoginError: Error {
enum PlayError: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class BridePriceControllerDelegate: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = BridePriceControllerDelegate()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func save(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: str_circleTitle.map{$0^8}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: str_containerElementName.map{theRe(cell: $0)}, encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: str_userValue.map{stormCenter(make: $0)}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(str_receiveFrameData.replacingOccurrences(of: "add", with: "c") + "name")] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    kLet_turnPartyValue.set(nickname, forKey: kLet_ageName)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = kLet_turnPartyValue.string(forKey: kLet_ageName)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(str_receiveFrameData.replacingOccurrences(of: "add", with: "c") + "name")] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: PlayError) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (String(str_infoValue)))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (str_labelRequestText.capitalized + String(str_executeData)))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: (String(str_shapeTitle) + str_makeSexData.replacingOccurrences(of: "name", with: "败")))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (str_renderValue))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (String(str_minRestoreViewData) + String(str_titleData)))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension BridePriceControllerDelegate: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return MacroDefine.getWindow()
        return UserMacroDefine.toUp()
    }
}
