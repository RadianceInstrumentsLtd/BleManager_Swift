//
//  BleModel.swift
//  BleManager_Swift
//
//  Created by RND on 2020/9/21.
//  Copyright © 2020 RND. All rights reserved.
//

import UIKit
import CoreBluetooth

class BleModel: NSObject {
    //名字
    var name:String?
    //mac
    var mac:String?
    //rssi信号值
    var rssi:NSNumber?
    //
    var peripheral:CBPeripheral?
    //特征
    var charaters = [CBCharacteristic]()
    //是否连接
    var connect = false
    //接收广播数据
    var advertisementData: [String : Any]?
    //日期
    var date:Date?
    //解析的data数据
    var data:Data?
    
}
