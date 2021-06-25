//
//  XingViewModel.swift
//  MVVM_MTS
//
//  Created by youngkwanji on 2021/06/25.
//

import Foundation

class XingViewModel : ObservableObject {
    @Published var xingStatus = XingStatus()

    var xingService : XingService = XingService()
    
    func checkConnection(){
        xingStatus = xingService.updateStatus()
    }
}
