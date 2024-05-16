//
//  ViewModel.swift
//  Testing timer app
//
//  Created by Arshad Buchori on 16/05/24.
//

import Foundation

class CounterModel: ObservableObject {
    
    @Published var count = 0
    @Published var second = 0
    @Published var stayStill = true
    private var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.count += 1
            print(self!.count % 3)

            if self!.count % 3 == 0 {
                self?.stayStill.toggle()
            
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func restartTimer() {
        count = 0
    }
    
    func playerState() {
        
    }

}
