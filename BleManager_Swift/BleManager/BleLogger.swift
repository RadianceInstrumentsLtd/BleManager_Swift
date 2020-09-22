//
//  BleLogger.swift
//  BleManager_Swift
//
//  Created by RND on 2020/9/21.
//  Copyright © 2020 RND. All rights reserved.
//

import UIKit

internal protocol BleLoggerProtocol: class {
    func loggerDidLogString(_ string: String)
}

//internal只能访问自己模块的东西

internal struct BleLogger {
    
    internal static weak var delegate: BleLoggerProtocol?
    
    internal static let loggingDateFormatter: DateFormatter = {
           let formatter = DateFormatter()
           formatter.dateFormat = "HH:mm:ss.SSS"
           return formatter
    }()
    
    internal static func log(_ string: String) {
        let date = Date()
        let stringWithDate = "[\(loggingDateFormatter.string(from: date))] \(string)"
        print("<--BleMananger--> "+stringWithDate, terminator: "")
        BleLogger.delegate?.loggerDidLogString(stringWithDate)
    }
    
}
