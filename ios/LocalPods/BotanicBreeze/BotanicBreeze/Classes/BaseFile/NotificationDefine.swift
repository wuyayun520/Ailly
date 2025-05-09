
//: Declare String Begin

/*: "DID_LOGIN_SUCCESS_NOTIFICATION" :*/
fileprivate let str_nameData:String = "DID_Lcount view text aspect"
fileprivate let str_liveValue:String = "string var string let cell_SUCCE"
fileprivate let str_errorData:String = "pushICA"

/*: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION" :*/
fileprivate let str_equalName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x53,0x45,0x43,0x43,0x55,0x53,0x5f,0x54,0x55,0x4f,0x5f,0x4e,0x49,0x47,0x4f,0x4c,0x5f,0x44,0x49,0x44]

/*: "UPDATE_APP_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_buttonName:[UInt8] = [0x94,0x91,0x85,0x80,0x95,0x84,0x9e,0x80,0x91,0x91,0x9e,0x86,0x84,0x95,0x82,0x8e,0x8f,0x87,0x88,0x86,0x9e,0x8f,0x8e,0x95,0x88,0x87,0x88,0x82,0x80,0x95,0x88,0x8e,0x8f]

private func checkedData(app num: UInt8) -> UInt8 {
    return num ^ 193
}

/*: "REFRESH_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_requestTitle:[UInt8] = [0x44,0x53,0x50,0x44,0x53,0x45,0x5e,0x49,0x5f,0x58,0x52,0x53,0x4e,0x49,0x51,0x53,0x42,0x55,0x59,0x58,0x50,0x5f,0x51,0x49,0x58,0x59,0x42,0x5f,0x50,0x5f,0x55,0x57,0x42,0x5f,0x59,0x58]

private func methodEmpty(to num: UInt8) -> UInt8 {
    return num ^ 22
}

/*: "UPDATE_INDEX_GETCONFIG_NOTIFICATION" :*/
fileprivate let str_labelData:[UInt8] = [0x82,0x7d,0x71,0x6e,0x81,0x72,0x8c,0x76,0x7b,0x71,0x72,0x85,0x8c,0x74,0x72,0x81,0x70,0x7c,0x7b,0x73,0x76,0x74,0x8c,0x7b,0x7c,0x81,0x76,0x73,0x76,0x70,0x6e,0x81,0x76,0x7c,0x7b]

fileprivate func equalLicense(remove num: UInt8) -> UInt8 {
    let value = Int(num) - 45
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "UPDATE_USER_GETMYINFO_NOTIFICATION" :*/
fileprivate let str_viewName:[UInt8] = [0x19,0x1c,0x8,0xd,0x18,0x9,0x13,0x19,0x1f,0x9,0x1e,0x13,0xb,0x9,0x18,0x1,0x15,0x5,0x2,0xa,0x3,0x13,0x2,0x3,0x18,0x5,0xa,0x5,0xf,0xd,0x18,0x5,0x3,0x2]

private func skinColorWrap(tag num: UInt8) -> UInt8 {
    return num ^ 76
}

/*: "USER_GETMYINFO_SUCCEED_NOTIFICATION" :*/
fileprivate let str_ageShowSendData:[UInt8] = [0x51,0x57,0x41,0x56,0x5b,0x43,0x41,0x50,0x49,0x5d,0x4d,0x4a,0x42,0x4b,0x5b,0x57,0x51,0x47,0x47,0x41,0x41,0x40,0x5b,0x4a,0x4b,0x50,0x4d,0x42,0x4d,0x47,0x45,0x50,0x4d,0x4b,0x4a]

private func pathRaw(container num: UInt8) -> UInt8 {
    return num ^ 4
}

/*: "USER_UPDATE_RESIDUALINFO_NOTIFICATION" :*/
fileprivate let str_coverText:[UInt8] = [0x99,0x9f,0x89,0x9e,0x93,0x99,0x9c,0x88,0x8d,0x98,0x89,0x93,0x9e,0x89,0x9f,0x85,0x88,0x99,0x8d,0x80,0x85,0x82,0x8a,0x83,0x93,0x82,0x83,0x98,0x85,0x8a,0x85,0x8f,0x8d,0x98,0x85,0x83,0x82]

/*: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION" :*/
fileprivate let str_userName:[UInt8] = [0x24,0x21,0x35,0x30,0x25,0x34,0x2e,0x24,0x22,0x34,0x23,0x2e,0x36,0x34,0x25,0x38,0x3f,0x37,0x3e,0x32,0x3e,0x3d,0x24,0x3c,0x3f,0x2e,0x3f,0x3e,0x25,0x38,0x37,0x38,0x32,0x30,0x25,0x38,0x3e,0x3f]

private func equalFalse(text num: UInt8) -> UInt8 {
    return num ^ 113
}

/*: "USER_RECIEVED_GIFT_NOTIFICATION" :*/
fileprivate let str_selectionValue:[UInt8] = [0x9f,0x99,0x8f,0x98,0x95,0x98,0x8f,0x89,0x83,0x8f,0x9c,0x8f,0x8e,0x95,0x8d,0x83,0x8c,0x9e,0x95,0x84,0x85,0x9e,0x83,0x8c,0x83,0x89,0x8b,0x9e,0x83,0x85,0x84]

/*: "USER_INFO_MSG_LIST_NOTIFICATION" :*/
fileprivate let str_messageValue:[UInt8] = [0xd8,0xde,0xc8,0xdf,0xd2,0xc4,0xc3,0xcb,0xc2,0xd2,0xc0,0xde,0xca,0xd2,0xc1,0xc4,0xde,0xd9,0xd2,0xc3,0xc2,0xd9,0xc4,0xcb,0xc4,0xce,0xcc,0xd9,0xc4,0xc2,0xc3]

private func lineGreet(your num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "CHAT_TIPS_TEXT_NOTIFICATION" :*/
fileprivate let str_errorName:[Character] = ["C","H","A","T","_","T","I","P","S","_","T","E","X","T","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "WHOLIKEME_BADGENUMBER_NOTIF" :*/
fileprivate let str_indexStyleValue:[Character] = ["W","H","O","L","I","K","E","M","E","_"]
fileprivate let str_leadingName:String = "badgen"
fileprivate let str_currentName:String = "_NOTIFwith list self container remove"

/*: "UPDATE_COMMENTNUMBER_NOTIFICATION" :*/
fileprivate let str_frameValue:[UInt8] = [0xf9,0xf4,0xe8,0xe5,0xf8,0xe9,0x3,0xe7,0xf3,0xf1,0xf1,0xe9,0xf2,0xf8,0xf2,0xf9,0xf1,0xe6,0xe9,0xf6,0x3,0xf2,0xf3,0xf8,0xed,0xea,0xed,0xe7,0xe5,0xf8,0xed,0xf3,0xf2]

fileprivate func falseToS(show num: UInt8) -> UInt8 {
    let value = Int(num) - 164
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "UPDATE_LIKE_NUMBER_NOTIFICATION" :*/
fileprivate let str_upTitle:[UInt8] = [0xb0,0xab,0x9f,0x9c,0xaf,0xa0,0xba,0xa7,0xa4,0xa6,0xa0,0xba,0xa9,0xb0,0xa8,0x9d,0xa0,0xad,0xba,0xa9,0xaa,0xaf,0xa4,0xa1,0xa4,0x9e,0x9c,0xaf,0xa4,0xaa,0xa9]

fileprivate func viewBottom(icon num: UInt8) -> UInt8 {
    let value = Int(num) - 91
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "UPDATE_ATTION_NOTIFICATION" :*/
fileprivate let str_statusValue:String = "UcontentDA"
fileprivate let str_activityName:String = "bottom bottom shared guardION_N"
fileprivate let str_locationData:String = "ICATImakeN"

/*: "DELETE_MINE_POST_NOTIFICATION" :*/
fileprivate let str_removeTitle:[Character] = ["D","E","L","E","T","E","_","M","I","N","E","_","P","O","S","T"]
fileprivate let str_actionName:String = "request use attention_NOT"

/*: "FREEBTN_UPLOAD_POST_NOTIFICATION" :*/
fileprivate let str_cellRestoreName:[UInt8] = [0xc8,0xdc,0xcb,0xcb,0xcc,0xda,0xc0,0xd1,0xdb,0xde,0xc2,0xc1,0xcf,0xca,0xd1,0xde,0xc1,0xdd,0xda,0xd1,0xc0,0xc1,0xda,0xc7,0xc8,0xc7,0xcd,0xcf,0xda,0xc7,0xc1,0xc0]

/*: "POST_EXPLORE_SUCCESS_NOTIFICATION" :*/
fileprivate let str_indexName:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x53,0x53,0x45,0x43,0x43,0x55,0x53,0x5f,0x45,0x52,0x4f,0x4c,0x50,0x58,0x45,0x5f,0x54,0x53,0x4f,0x50]

/*: "CHAT_NEW_MSG_NOTIFICATION" :*/
fileprivate let str_phoneName:[Character] = ["C","H","A","T","_","N","E","W","_","M","S","G","_","N","O","T","I","F","I"]
fileprivate let str_tableText:String = "cation"

/*: "CHAT_MSG_READ_RECEIPT_NOTIFICATION" :*/
fileprivate let str_shareData:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x54,0x50,0x49,0x45,0x43,0x45,0x52,0x5f,0x44,0x41,0x45,0x52,0x5f,0x47,0x53,0x4d,0x5f,0x54,0x41,0x48,0x43]

/*: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION" :*/
fileprivate let str_curValue:[UInt8] = [0x21,0x3f,0x2b,0x20,0x25,0x3f,0x38,0x33,0x39,0x3c,0x28,0x2d,0x38,0x29,0x33,0x23,0x22,0x20,0x25,0x22,0x29,0x3f,0x38,0x2d,0x38,0x39,0x3f,0x33,0x22,0x23,0x38,0x25,0x2a,0x25,0x2f,0x2d,0x38,0x25,0x23,0x22]

private func equalPhoto(with num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION" :*/
fileprivate let str_greetTitle:[UInt8] = [0x62,0x7c,0x68,0x63,0x66,0x7c,0x7b,0x70,0x7a,0x7f,0x6b,0x6e,0x7b,0x6a,0x70,0x66,0x61,0x7b,0x66,0x62,0x6e,0x7b,0x6a,0x70,0x61,0x60,0x7b,0x66,0x69,0x66,0x6c,0x6e,0x7b,0x66,0x60,0x61]

private func messageTrack(search num: UInt8) -> UInt8 {
    return num ^ 47
}

/*: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION" :*/
fileprivate let str_bindName:[UInt8] = [0xec,0xe7,0xee,0xfb,0xf0,0xee,0xeb,0xeb,0xf0,0xec,0xee,0xe3,0xe3,0xf0,0xfd,0xea,0xec,0xe0,0xfd,0xeb,0xf0,0xe2,0xfc,0xe8,0xf0,0xe1,0xe0,0xfb,0xe6,0xe9,0xe6,0xec,0xee,0xfb,0xe6,0xe0,0xe1]

private func insideView(model num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION" :*/
fileprivate let str_tableName:[UInt8] = [0x8c,0x93,0x9e,0x9f,0x95,0x85,0x99,0x92,0x9b,0x8e,0x85,0x95,0x8e,0x92,0x9f,0x88,0x85,0x99,0x9b,0x97,0x9f,0x88,0x9b,0x85,0x9b,0x8c,0x9b,0x93,0x96,0x9b,0x98,0x96,0x9f,0x85,0x94,0x95,0x8e,0x93,0x9c,0x93,0x99,0x9b,0x8e,0x93,0x95,0x94]

/*: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION" :*/
fileprivate let str_dataTitle:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x48,0x53,0x45,0x52,0x46,0x45,0x52,0x45,0x4d,0x4f,0x48,0x5f,0x4c,0x49,0x41,0x54,0x45,0x44,0x5f,0x48,0x43,0x52,0x41,0x45,0x53]

/*: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION" :*/
fileprivate let str_intervalValue:[UInt8] = [0x4d,0x51,0x43,0x4e,0x3d,0x42,0x59,0x4e,0x3b,0x3c,0x3c,0x3b,0x4c,0x59,0x42,0x49,0x47,0x3f,0x59,0x4a,0x3b,0x4c,0x4e,0x53,0x59,0x48,0x49,0x4e,0x43,0x40,0x43,0x3d,0x3b,0x4e,0x43,0x49,0x48]

fileprivate func listShared(value num: UInt8) -> UInt8 {
    let value = Int(num) - 250
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "PUSH_MEEDIT_NOTIFICATION" :*/
fileprivate let str_fillText:String = "PUSplace"
fileprivate let str_emptyPriceData:String = "DIT_NOdata photo table value"
fileprivate let str_cellValue:String = "ATIborder"
fileprivate let str_arrayData:[Character] = ["N"]

/*: "LIVE_USER_POINT_CHANGE" :*/
fileprivate let str_addData:[Character] = ["L","I","V","E","_","U","S","E"]
fileprivate let str_cornerData:[Character] = ["R","_","P","O","I","N","T","_","C","H","A","N","G","E"]

/*: "LIVE_HALF_VIEW_SHOW" :*/
fileprivate let str_itemFirstTitle:String = "LdataVE"
fileprivate let str_viewNoData:[Character] = ["F","_","V","I"]
fileprivate let str_roomTitle:[Character] = ["E","W","_","S","H","O","W"]

/*: "LIVE_HALF_VIEW_DISMISS" :*/
fileprivate let str_videoData:String = "live"
fileprivate let str_scaleMakeValue:String = "Iminimum"
fileprivate let str_fileAllTitle:String = "W_DISMISSguard route"

/*: "LIVE_RECIVE_STARTLIVE_NOTIFICATION" :*/
fileprivate let str_modelValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x56,0x49,0x4c,0x54,0x52,0x41,0x54,0x53,0x5f,0x45,0x56,0x49,0x43,0x45,0x52,0x5f,0x45,0x56,0x49,0x4c]

/*: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION" :*/
fileprivate let str_titleValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x4e,0x45,0x45,0x52,0x43,0x53,0x54,0x41,0x4f,0x4c,0x46,0x5f,0x45,0x56,0x49,0x43,0x45,0x52,0x5f,0x45,0x56,0x49,0x4c]

/*: "LIVE_BLOCK_USER_NOTIFICATION" :*/
fileprivate let str_feeData:String = "sendVE"
fileprivate let str_shareValue:String = "K_USEerror equal regular game equal"
fileprivate let str_mapName:String = "TIFICshared"

/*: "SOCKET_IS_OPEN_NOTIFICATION" :*/
fileprivate let str_keyPointName:[Character] = ["S","O","C","K","E","T","_","I","S","_","O","P","E","N","_","N","O","T","I","F","I","C","A","T","I","O"]
fileprivate let str_succeedAfterData:String = "event"

/*: "GIFT_REFRESHPACKAGE_NOTIFICATION" :*/
fileprivate let str_valueName:[UInt8] = [0x51,0x5f,0x50,0x42,0x49,0x44,0x53,0x50,0x44,0x53,0x45,0x5e,0x46,0x57,0x55,0x5d,0x57,0x51,0x53,0x49,0x58,0x59,0x42,0x5f,0x50,0x5f,0x55,0x57,0x42,0x5f,0x59,0x58]

private func modelResult(size num: UInt8) -> UInt8 {
    return num ^ 22
}

/*: "VIDEOCALL_INITIV_NOTIFICATION" :*/
fileprivate let str_voiceContent:String = "colorIDE"
fileprivate let str_listenContent:[Character] = ["N","I","T","I","V","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION" :*/
fileprivate let str_addName:[UInt8] = [0x41,0x5e,0x53,0x52,0x58,0x54,0x56,0x5b,0x5b,0x48,0x52,0x59,0x53,0x48,0x54,0x5b,0x58,0x44,0x52,0x53,0x5e,0x44,0x54,0x58,0x42,0x59,0x43,0x44,0x48,0x59,0x58,0x43,0x5e,0x51,0x5e,0x54,0x56,0x43,0x5e,0x58,0x59]

/*: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION" :*/
fileprivate let str_hiddenValue:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x53,0x4f,0x4c,0x43,0x5f,0x44,0x4e,0x45,0x5f,0x45,0x47,0x41,0x50,0x46,0x4c,0x41,0x48,0x45,0x47,0x52,0x41,0x48,0x43,0x45,0x52]

/*: "Net Error, Try again later" :*/
fileprivate let str_mentionName:[Character] = ["N","e","t"," ","E","r","r","o","r",","," ","T","r","y"," ","a"]
fileprivate let str_equalData:[Character] = ["g","a","i","n"," ","l","a","t","e","r"]

/*: "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be \"Face cerification\"." :*/
fileprivate let str_locationContent:[UInt8] = [0x92,0xa0,0x5b,0xb2,0x9c,0xa9,0xaf,0x5b,0xa0,0xb1,0xa0,0xad,0xb4,0xaa,0xa9,0xa0,0x5b,0xaf,0xaa,0x5b,0xa0,0xa9,0xa5,0xaa,0xb4,0x5b,0x9c,0x5b,0xa3,0xa0,0x9c,0xa7,0xaf,0xa3,0xb4,0x5b,0x9e,0xa3,0x9c,0xaf,0xaf,0xa4,0xa9,0xa2,0x5b,0xa0,0xa9,0xb1,0xa4,0xad,0xaa,0xa9,0xa8,0xa0,0xa9,0xaf,0x5b,0x9c,0xa9,0x9f,0x5b,0xaf,0xaa,0x5b,0xb0,0xae,0xa0,0x5b,0xaf,0xa3,0xa4,0xae,0x5b,0xa1,0xa0,0x9c,0xaf,0xb0,0xad,0xa0,0x5b,0xb4,0xaa,0xb0,0x5b,0xa9,0xa0,0xa0,0x9f,0x5b,0xaf,0xaa,0x5b,0x9d,0xa0,0x5b,0x5d,0x81,0x9c,0x9e,0xa0,0x5b,0x9e,0xa0,0xad,0xa4,0xa1,0xa4,0x9e,0x9c,0xaf,0xa4,0xaa,0xa9,0x5d,0x69]

fileprivate func pushUpIcon(point num: UInt8) -> UInt8 {
    let value = Int(num) + 197
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?" :*/
fileprivate let str_phoneTitle:[UInt8] = [0x3e,0x5,0x5c,0x1e,0x10,0x13,0x1f,0x17,0x15,0x12,0x1b,0x5c,0x1d,0x5c,0x9,0xf,0x19,0xe,0x50,0x5c,0x5,0x13,0x9,0x5c,0xb,0x15,0x10,0x10,0x5c,0x12,0x13,0x8,0x5c,0xe,0x19,0x1f,0x19,0x15,0xa,0x19,0x5c,0x14,0x15,0xf,0x53,0x14,0x19,0xe,0x5c,0x12,0x19,0xb,0x5c,0x11,0x19,0xf,0xf,0x1d,0x1b,0x19,0xf,0x5c,0x1d,0x12,0x18,0x5c,0x8,0x14,0x19,0x5c,0x11,0x19,0xf,0xf,0x1d,0x1b,0x19,0x5c,0x14,0x15,0xf,0x8,0x13,0xe,0x5,0x5c,0xb,0x15,0x10,0x10,0x5c,0x1e,0x19,0x5c,0xe,0x19,0x11,0x13,0xa,0x19,0x18,0x5c,0x8,0x13,0x13,0x52,0x5c,0x3f,0x13,0x12,0x8,0x15,0x12,0x9,0x19,0x5c,0x8,0x13,0x5c,0x1e,0x10,0x13,0x1f,0x17,0x5c,0x8,0x14,0x15,0xf,0x5c,0x9,0xf,0x19,0xe,0x43]

private func worldView(m num: UInt8) -> UInt8 {
    return num ^ 124
}

/*: "Turn on permissions in settings before you can use the feature" :*/
fileprivate let str_fromValue:[UInt8] = [0x65,0x72,0x75,0x74,0x61,0x65,0x66,0x20,0x65,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6e,0x61,0x63,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x73,0x20,0x6e,0x69,0x20,0x73,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x54]

/*: "Not available during a call" :*/
fileprivate let str_backData:String = "Not areturn not number self to"
fileprivate let str_toLabelValue:String = "able app last panel model"
fileprivate let str_imageData:String = " a calcommit gift view frame view"
fileprivate let str_uniformData:[Character] = ["l"]

/*: "You're on the live" :*/
fileprivate let str_giftSucceedValue:[Character] = ["Y","o","u","\'","r","e"," ","o","n"," ","t","h"]
fileprivate let str_gestureValue:String = "e livereturn view self"

/*: "You are already in Party room" :*/
fileprivate let str_modeName:String = "make model name message currentYou ar"
fileprivate let str_effectFileData:String = "of imagedy in "
fileprivate let str_userTitle:String = "rleadingleadingm"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationDefine.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import Foundation
import Foundation

// MARK: - NSNotification

// 登录成功
//: public let DID_LOGIN_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_SUCCESS_NOTIFICATION")
public let kLet_popText = NSNotification.Name(rawValue: (String(str_nameData.prefix(5)) + "OGIN" + String(str_liveValue.suffix(6)) + "SS_NOT" + str_errorData.replacingOccurrences(of: "push", with: "IF") + "TION"))
// 退出登录
//: public let DID_LOGIN_OUT_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "DID_LOGIN_OUT_SUCCESS_NOTIFICATION")
public let kLet_useName = NSNotification.Name(rawValue: String(bytes: str_equalName.reversed(), encoding: .utf8)!)
// app配置信息
//: public let UPDATE_APP_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_APP_GETCONFIG_NOTIFICATION")
public let kLet_netName = NSNotification.Name(rawValue: String(bytes: str_buttonName.map{checkedData(app: $0)}, encoding: .utf8)!)
// 刷新 mf/index/getConfig配置信息接口
//: public let REFRESH_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "REFRESH_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_senseTitle = NSNotification.Name(rawValue: String(bytes: str_requestTitle.map{methodEmpty(to: $0)}, encoding: .utf8)!)
// mf/index/getConfig配置信息接口成功通知
//: public let UPDATE_INDEX_GETCONFIG_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_INDEX_GETCONFIG_NOTIFICATION")
public let kLet_turnName = NSNotification.Name(rawValue: String(bytes: str_labelData.map{equalLicense(remove: $0)}, encoding: .utf8)!)
// 请求app个人信息
//: public let UPDATE_USER_GETMYINFO_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETMYINFO_NOTIFICATION")
public let kLet_postVersionScreenContent = NSNotification.Name(rawValue: String(bytes: str_viewName.map{skinColorWrap(tag: $0)}, encoding: .utf8)!)
// app个人信息请求成功
//: public let USER_GETMYINFO_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "USER_GETMYINFO_SUCCEED_NOTIFICATION")
public let kLet_viewValue = NSNotification.Name(rawValue: String(bytes: str_ageShowSendData.map{pathRaw(container: $0)}, encoding: .utf8)!)
// 刷新218用户余额次数/会员状态
public let USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION = NSNotification.Name(rawValue: "USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION")

// 刷新金币
//: public let UPDATE_USER_GETINFOCOLUMN_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_USER_GETINFOCOLUMN_NOTIFICATION")
public let kLet_freeValue = NSNotification.Name(rawValue: String(bytes: str_userName.map{equalFalse(text: $0)}, encoding: .utf8)!)
// 首页礼物
//: public let USER_RECIEVED_GIFT_NOTIFICATION = NSNotification.Name(rawValue: "USER_RECIEVED_GIFT_NOTIFICATION")
public let kLet_marginValue = NSNotification.Name(rawValue: String(bytes: str_selectionValue.map{$0^202}, encoding: .utf8)!)
// 获取聊天列表数据成功
//: public let USER_INFO_MSG_LIST_NOTIFICATION = NSNotification.Name(rawValue: "USER_INFO_MSG_LIST_NOTIFICATION")
public let kLet_barTitle = NSNotification.Name(rawValue: String(bytes: str_messageValue.map{lineGreet(your: $0)}, encoding: .utf8)!)

// 插入聊天提示消息
//: public let CHAT_TIPS_TEXT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_TIPS_TEXT_NOTIFICATION")
public let kLet_changeValue = NSNotification.Name(rawValue: (String(str_errorName)))

// 获取谁喜欢我数量消息
//: public let WHOLIKEME_BADGENUMBER_NOTIF = NSNotification.Name(rawValue: "WHOLIKEME_BADGENUMBER_NOTIF")
public let kLet_pathSenseData = NSNotification.Name(rawValue: (String(str_indexStyleValue) + str_leadingName.uppercased() + "UMBER" + String(str_currentName.prefix(6))))

// 更新评论数量
//: public let UPDATE_COMMENTNUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_COMMENTNUMBER_NOTIFICATION")
public let kLet_infoRecordValue = NSNotification.Name(rawValue: String(bytes: str_frameValue.map{falseToS(show: $0)}, encoding: .utf8)!)
// 动态更新点赞数量
//: public let UPDATE_LIKE_NUMBER_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_LIKE_NUMBER_NOTIFICATION")
public let kLet_formalShowData = NSNotification.Name(rawValue: String(bytes: str_upTitle.map{viewBottom(icon: $0)}, encoding: .utf8)!)
// 动态关注
//: public let UPDATE_ATTION_NOTIFICATION = NSNotification.Name(rawValue: "UPDATE_ATTION_NOTIFICATION")
public let kLet_messageTitle = NSNotification.Name(rawValue: (str_statusValue.replacingOccurrences(of: "content", with: "P") + "TE_ATT" + String(str_activityName.suffix(5)) + "OTIF" + str_locationData.replacingOccurrences(of: "make", with: "O")))
// 删除个人动态，动态列表更新
//: public let DELETE_MINE_POST_NOTIFICATION = NSNotification.Name(rawValue: "DELETE_MINE_POST_NOTIFICATION")
public let kLet_dismissName = NSNotification.Name(rawValue: (String(str_removeTitle) + String(str_actionName.suffix(4)) + "IFICATION"))
// 打开发布动态
//: public let FREEBTN_UPLOAD_POST_NOTIFICATION = NSNotification.Name(rawValue: "FREEBTN_UPLOAD_POST_NOTIFICATION")
public let kLet_formalTitle = NSNotification.Name(rawValue: String(bytes: str_cellRestoreName.map{$0^142}, encoding: .utf8)!)

// 发布动态成功，列表更新
//: public let POST_EXPLORE_SUCCESS_NOTIFICATION = NSNotification.Name(rawValue: "POST_EXPLORE_SUCCESS_NOTIFICATION")
public let kLet_roomValue = NSNotification.Name(rawValue: String(bytes: str_indexName.reversed(), encoding: .utf8)!)

// 收到新消息
//: public let CHAT_NEW_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_NEW_MSG_NOTIFICATION")
public let kLet_domainEnvironmentTitle = NSNotification.Name(rawValue: (String(str_phoneName) + str_tableText.uppercased()))

// 消息已读回执通知
//: public let CHAT_MSG_READ_RECEIPT_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_MSG_READ_RECEIPT_NOTIFICATION")
public let kLet_senseValue = NSNotification.Name(rawValue: String(bytes: str_shareData.reversed(), encoding: .utf8)!)

// 消息列表更新在线状态
//: public let MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION")
public let kLet_viewName = NSNotification.Name(rawValue: String(bytes: str_curValue.map{equalPhoto(with: $0)}, encoding: .utf8)!)

// 消息列表更新亲密度
//: public let MSGLIST_UPDATE_INTIMATE_NOTIFICATION = NSNotification.Name(rawValue: "MSGLIST_UPDATE_INTIMATE_NOTIFICATION")
public let kLet_minText = NSNotification.Name(rawValue: String(bytes: str_greetTitle.map{messageTrack(search: $0)}, encoding: .utf8)!)

// 本地插入通话送礼的消息
//: public let CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION = NSNotification.Name(rawValue: "CHAT_ADD_CALL_RECORD_MSG_NOTIFICATION")
public let kLet_timeValue = NSNotification.Name(rawValue: String(bytes: str_bindName.map{insideView(model: $0)}, encoding: .utf8)!)

// 视频通话对方摄像头是否可用通知
//: public let VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION = NSNotification.Name(rawValue: "VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION")
public let kLet_titleValue = NSNotification.Name(rawValue: String(bytes: str_tableName.map{$0^218}, encoding: .utf8)!)

// 搜索筛选页触发首页刷新
//: public let SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION = NSNotification.Name(rawValue: "SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION")
public let kLet_tabCellName = NSNotification.Name(rawValue: String(bytes: str_dataTitle.reversed(), encoding: .utf8)!)

// 切换底部tabbar到home-party
//: public let SWITCH_TABBAR_HOME_PARTY_NOTIFICATION = NSNotification.Name(rawValue: "SWITCH_TABBAR_HOME_PARTY_NOTIFICATION")
public let kLet_videoAgeHeightData = NSNotification.Name(rawValue: String(bytes: str_intervalValue.map{listShared(value: $0)}, encoding: .utf8)!)

// 打开个人资料编辑页
//: public let PUSH_MEEDIT_NOTIFICATION = NSNotification.Name(rawValue: "PUSH_MEEDIT_NOTIFICATION")
public let kLet_guideViewName = NSNotification.Name(rawValue: (str_fillText.replacingOccurrences(of: "place", with: "H") + "_MEE" + String(str_emptyPriceData.prefix(6)) + "TIFIC" + str_cellValue.replacingOccurrences(of: "border", with: "O") + String(str_arrayData)))

// 积分收益变更
//: public let LIVE_USER_POINT_CHANGE = NSNotification.Name(rawValue: "LIVE_USER_POINT_CHANGE")
public let kLet_statusText = NSNotification.Name(rawValue: (String(str_addData) + String(str_cornerData)))

// 直播中半屏页面显示
//: public let LIVE_HALF_VIEW_SHOW = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_SHOW")
public let kLet_requestValue = NSNotification.Name(rawValue: (str_itemFirstTitle.replacingOccurrences(of: "data", with: "I") + "_HAL" + String(str_viewNoData) + String(str_roomTitle)))

// 直播中半屏页面消失
//: public let LIVE_HALF_VIEW_DISMISS = NSNotification.Name(rawValue: "LIVE_HALF_VIEW_DISMISS")
public let kLet_contentData = NSNotification.Name(rawValue: (str_videoData.uppercased() + "_HALF_V" + str_scaleMakeValue.replacingOccurrences(of: "minimum", with: "E") + String(str_fileAllTitle.prefix(9))))

// 接收到主播开播通知
//: public let LIVE_RECIVE_STARTLIVE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_STARTLIVE_NOTIFICATION")
public let kLet_licenseData = NSNotification.Name(rawValue: String(bytes: str_modelValue.reversed(), encoding: .utf8)!)

// 飘屏
//: public let LIVE_RECIVE_FLOATSCREEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_RECIVE_FLOATSCREEN_NOTIFICATION")
public let kLet_messageBottomTitle = NSNotification.Name(rawValue: String(bytes: str_titleValue.reversed(), encoding: .utf8)!)

// 直播中拉黑用户提出房间
//: public let LIVE_BLOCK_USER_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_BLOCK_USER_NOTIFICATION")
public let kLet_giftRecordText = NSNotification.Name(rawValue: (str_feeData.replacingOccurrences(of: "send", with: "LI") + "_BLOC" + String(str_shareValue.prefix(5)) + "R_NO" + str_mapName.replacingOccurrences(of: "shared", with: "A") + "TION"))

// 长连接建立成功
//: public let SOCKET_IS_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "SOCKET_IS_OPEN_NOTIFICATION")
public let kLet_deviceContent = NSNotification.Name(rawValue: (String(str_keyPointName) + str_succeedAfterData.replacingOccurrences(of: "event", with: "N")))

// 刷新礼物背包
//: public let GIFT_REFRESHPACKAGE_NOTIFICATION = NSNotification.Name(rawValue: "GIFT_REFRESHPACKAGE_NOTIFICATION")
public let kLet_screenValue = NSNotification.Name(rawValue: String(bytes: str_valueName.map{modelResult(size: $0)}, encoding: .utf8)!)

// 显示主动拨打视频弹窗
//: public let VIDEOCALL_INITIV_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_INITIV_NOTIFICATION")
public let kLet_recordHomeClickTitle = NSNotification.Name(rawValue: (str_voiceContent.replacingOccurrences(of: "color", with: "V") + "OCALL_I" + String(str_listenContent)))

// 通话结束，关闭弹窗
//: public let VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION = NSNotification.Name(rawValue: "VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION")
public let kLet_postValue = NSNotification.Name(rawValue: String(bytes: str_addName.map{$0^23}, encoding: .utf8)!)

// 半屏充值页关闭
//: public let RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION = NSNotification.Name(rawValue: "RECHARGEHALFPAGE_END_CLOSE_NOTIFICATION")
public let kLet_maxContent = NSNotification.Name(rawValue: String(bytes: str_hiddenValue.reversed(), encoding: .utf8)!)

// MARK: - EditNotificationTool

//: @objcMembers public class NSNotificationTool: NSObject {
@objcMembers public class EditNotificationTool: NSObject {
    //: class public func getLoginOutNoti() -> String {
    public class func loginSearch() -> String {
        //: return DID_LOGIN_OUT_SUCCESS_NOTIFICATION.rawValue
        return kLet_useName.rawValue
    }

    //: class public func getUserIngoListNoti() -> String {
    public class func instrumentality() -> String {
        //: return USER_INFO_MSG_LIST_NOTIFICATION.rawValue
        return kLet_barTitle.rawValue
    }

    //: class public func getChatNewMsgNoti() -> String {
    public class func goEnable() -> String {
        //: return CHAT_NEW_MSG_NOTIFICATION.rawValue
        return kLet_domainEnvironmentTitle.rawValue
    }
}

// MARK: - 宏文本

// 网络失败toast
//: public let kNetErrorMsg = "Net Error, Try again later".localized
public let kLet_errorData = (String(str_mentionName) + String(str_equalData)).localized
// 真人认证
//: public let kMessage_FaceCerification = "We want everyone to enjoy a healthy chatting environment and to use this feature you need to be \"Face cerification\".".localized
public let kLet_errContent = String(bytes: str_locationContent.map{pushUpIcon(point: $0)}, encoding: .utf8)!.localized

// 拉黑
//: public let kMessage_blocking = "By blocking a user, you will not receive his/her new messages and the message history will be removed too. Continue to block this user?".localized
public let kLet_viewNetValue = String(bytes: str_phoneTitle.map{worldView(m: $0)}, encoding: .utf8)!.localized
// 音视频/直播 手机权限提醒
//: public let kMessage_permissions_error = "Turn on permissions in settings before you can use the feature".localized
public let kLet_likeCancelData = String(bytes: str_fromValue.reversed(), encoding: .utf8)!.localized
// 视频通话中部分功能限制使用
//: public let kMessage_videoTalking_limit = "Not available during a call".localized
public let kLet_replaceTitle = (String(str_backData.prefix(5)) + "vail" + String(str_toLabelValue.prefix(5)) + "during" + String(str_imageData.prefix(6)) + String(str_uniformData)).localized
// 直播中部分功能限制使用
//: public let kMessage_live_limit = "You're on the live".localized
public let kLet_domainData = (String(str_giftSucceedValue) + String(str_gestureValue.prefix(6))).localized
// 语聊房部分功能限制使用
//: public let kMessage_party_limit = "You are already in Party room".localized
public let kLet_succeedName = (String(str_modeName.suffix(6)) + "e alrea" + String(str_effectFileData.suffix(6)) + "Party " + str_userTitle.replacingOccurrences(of: "leading", with: "o")).localized
