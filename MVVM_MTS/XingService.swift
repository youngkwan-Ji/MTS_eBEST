//
//  XingService.swift
//  MVVM_MTS
//
//  Created by youngkwanji on 2021/06/25.
//

import Foundation

class XingService : NSObject {
    var xingDataFetcher : XingDataFetcher = XingDataFetcher()
    
    func updateStatus() -> XingStatus {
        let status = xingDataFetcher.updateStatus()
        let model = XingStatus.init(isLogin: status.isLogin ? "Connected" : "Disconnected"
                                    , isConnect: status.isConnection ? "Connected" : "Disconnected")
        
        return model
    }
}
