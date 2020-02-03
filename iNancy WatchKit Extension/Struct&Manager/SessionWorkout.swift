////
////  SessionWorkout.swift
////  iNancy WatchKit Extension
////
////  Created by Massimo Maddaluno on 24/01/2020.
////  Copyright © 2020 Massimo Maddaluno. All rights reserved.
////
//
//import Foundation
//import SwiftUI
//import Combine
//import HealthKit
//
//struct PrancerciseWorkout {
//  var start: Date
//  var end: Date
//  
//  init(start: Date, end: Date) {
//    self.start = start
//    self.end = end
//  }
//
//  var duration: TimeInterval {
//    return end.timeIntervalSince(start)
//  }
//
//  var totalEnergyBurned: Double {
//    let prancerciseCaloriesPerHour: Double = 450
//    let hours: Double = duration / 3600
//    let totalCalories = prancerciseCaloriesPerHour * hours
//    return totalCalories
//  }
//}
//
//let healthStore = HKHealthStore()
//let configuration = HKWorkoutConfiguration()
//configuration.activityType = .yoga
//configuration.locationType = .unknown
//
//
//
//do {
//    session = try HKWorkoutSession(healthStore: healthStore, configuration: configuration)
//    builder = session.associatedWorkoutBuilder()
//} catch {
//    // Handle failure here.
//    return
//}
//
//builder.dataSource = HKLiveWorkoutDataSource(healthStore: healthStore,
//workoutConfiguration: configuration)
//
//
//session.delegate = self
//builder.delegate = self
//
//
//session.startActivity(with: Date())
//builder.beginCollection(withStart: Date()) { (success, error) in
//
//    guard success else {
//        // Handle errors.
//    }
//
//    // Indicate that the session has started.
//}
//
//func workoutBuilder(_ workoutBuilder: HKLiveWorkoutBuilder, didCollectDataOf collectedTypes: Set<HKSampleType>) {
//    for type in collectedTypes {
//        guard let quantityType = type as? HKQuantityType else {
//            return // Nothing to do.
//        }
//
//        // Calculate statistics for the type.
//        let statistics = workoutBuilder.statistics(for: quantityType)
//        let label = labelForQuantityType(quantityType)
//
//        DispatchQueue.main.async() {
//            // Update the user interface.
//        }
//    }
//}


//import WatchKit
//import Foundation
//import HealthKit
//
//class InterfaceController: WKInterfaceController {
//
//    private let healthStore = HKHealthStore()
//    private var workoutSession: HKWorkoutSession?
//    fileprivate var hapticFeedbackTimer: Timer?
//    
//    override func awake(withContext context: Any?) {
//        super.awake(withContext: context)
//    }
//    
//    override func willActivate() {
//        super.willActivate()
//        startWorkout()
//    }
//    
//    override func didDeactivate() {
//        // This method is called when watch view controller is no longer visible
//        super.didDeactivate()
//    }
//
//    private func startWorkout() {
//        let workoutConfiguration = HKWorkoutConfiguration()
//        workoutConfiguration.activityType = .yoga
//    
//        do {
//            workoutSession = try HKWorkoutSession(configuration: workoutConfiguration)
//            workoutSession?.delegate = self
//            healthStore.start(workoutSession!)
//        } catch {
//            print(error)
//        }
//    }
//    
//    @objc fileprivate func vibrate() {
//        WKInterfaceDevice.current().play(.success)
//    }
//}
//
//extension InterfaceController: HKWorkoutSessionDelegate {
//    func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error) {
//        
//    }
//    
//    func workoutSession(_ workoutSession: HKWorkoutSession, didGenerate event: HKWorkoutEvent) {
//        
//    }
//    
//    func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date) {
//        switch toState {
//        case .running:
//            hapticFeedbackTimer = Timer(timeInterval: 5, target: self, selector: #selector(vibrate), userInfo: nil, repeats: true)
//            RunLoop.main.add(hapticFeedbackTimer!, forMode: .RunLoop.Mode.default)
//        default:
//            hapticFeedbackTimer?.invalidate()
//            hapticFeedbackTimer = nil
//        }
//    }
//}
