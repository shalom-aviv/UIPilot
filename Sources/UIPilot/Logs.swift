//
//  EmptyLog.swift
//  
//
//  Created by Amisha I on 28/03/22.
//

import Foundation

protocol Logger {
    func log(_ value: String)
}


class EmptyLog: Logger {
    func log(_ value: String) {
        
    }
}


class DebugLog: Logger {
    func log(_ value: String) {
        print(value)
    }
}
