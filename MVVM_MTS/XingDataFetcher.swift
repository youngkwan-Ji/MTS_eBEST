//
//  XingDataFetcher.swift
//  MVVM_MTS
//
//  Created by youngkwanji on 2021/06/25.
//

import Foundation
import XingAPIMobile

class XingDataFetcher : NSObject{
    private var xingAPI : XingAPI!
    
    override init(){
        super.init()
        xingAPI = XingAPI.getInstance()
        xingAPI.initAPI()
    }
    
    func updateStatus() -> (isLogin: Bool, isConnection: Bool){
        return (xingAPI.isLogin(), xingAPI.isConnected())
    }
}
