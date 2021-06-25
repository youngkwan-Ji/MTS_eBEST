//
//  ContentView.swift
//  MVVM_MTS
//
//  Created by youngkwanji on 2021/06/24.
//

import SwiftUI
import XingAPIMobile

struct ContentView: View {
    @ObservedObject private var xingViewModel = XingViewModel()
    
    var body: some View {
        VStack{
            Text("연결 상태 : " + xingViewModel.xingStatus.isLogin)
                .padding()
            
            Text("로그인 상태 : " + xingViewModel.xingStatus.isConnect)
                .padding()
            
            Button("연결 상태 확인"
                   , action: { xingViewModel.checkConnection() })
                .padding()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
