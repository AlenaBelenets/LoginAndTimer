//
//  TimeCounter.swift
//  LoginAndTimer
//
//  Created by Alena Belenets on 15.09.2022.
//

import Foundation
import Combine


class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 3
    var buttonTitle = "Start"
    var timer: Timer?

    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateCounter),
            userInfo:nil,
            repeats: true
        )
        
        buttonDidTapped()
    }
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        objectWillChange.send(self)
    }

    private func buttonDidTapped() {
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        objectWillChange.send(self)
    }

    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
