//
//  WidgetTimeConfiguartion.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-08.
//

import SwiftUI
import WidgetKit

struct WidgetTimeConfiguartion: View {
    @State private var SelectedTimeframe = Timeframe.hour
    @State private var SelectedMinute = MinuteEnum.Zero
    @State private var SelectedHour = HourEnum.One
    
    @AppStorage("widgetTime", store: UserDefaults(suiteName: "group.com.atheer.widgetTime"))
    var widgetTime: Int = 60
    
    var body: some View {
        VStack {
            Indicator()
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            CustomDivider()
            
            VStack {
                Text("Select Timeframe")
                    .font(.title2)
                    .padding()
                Picker("", selection: $SelectedTimeframe) {
                    ForEach(Timeframe.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding()
            
            if SelectedTimeframe == Timeframe.hour {
                VStack {
                    Picker("", selection: $SelectedHour) {
                        ForEach(HourEnum.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            } else if SelectedTimeframe == Timeframe.minute {
                VStack {
                    Picker("", selection: $SelectedMinute) {
                        ForEach(MinuteEnum.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            }
            
            if SelectedHour == HourEnum.Zero {
                Text("The widget will update every \(SelectedMinute.rawValue) Minute")
            } else if SelectedHour != HourEnum.Zero && SelectedMinute != MinuteEnum.Zero {
                Text("The Widget will update every \(SelectedHour.rawValue) Hour and \(SelectedMinute.rawValue) Minute")
            } else {
                Text("The widget will update every \(SelectedHour.rawValue) Hour")
            }
            
            Spacer()
            
        }
        .onDisappear {
            widgetTime = (Int(SelectedMinute.rawValue)!) + (Int(SelectedHour.rawValue)! * 60)
            // hacky way of making sure user dosen't choose 0 as widget time update frequency
            if widgetTime == 0 {
                widgetTime = 60
            }
            print("updated from onDisappear \(widgetTime)")
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            widgetTime = (Int(SelectedMinute.rawValue)!) + (Int(SelectedHour.rawValue)! * 60)
            // hacky way of making sure user dosen't choose 0 as widget time update frequency
            if widgetTime == 0 {
                widgetTime = 60
            }
            print("updated from background mode \(widgetTime)")
        }
    }
}
