//
//  MotivationWidgetQuote.swift
//  MotivationWidgetQuote
//
//  Created by atheer on 2021-06-27.
//

import WidgetKit
import SwiftUI

// timeline entry
struct MotivationQuoteEntry: TimelineEntry {
    var date: Date
    var motivationQuote: MotivationQuote
}

//provider
struct Provider: TimelineProvider {
    
    func placeholder(in context: Context) -> MotivationQuoteEntry {
        let entry = MotivationQuoteEntry(date: Date(), motivationQuote: MotivationQuote(quoteText: "--------------------", quoteAuthor: "--------"))
        print("placeholder")
        return entry
    }
    
    func getSnapshot(in context: Context, completion: @escaping (MotivationQuoteEntry) -> Void) {
        let quotes = MotivationQuotes.getQuotes(1)
        let entry = MotivationQuoteEntry(date: Date(), motivationQuote: quotes[0])
        print("snapshot")
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<MotivationQuoteEntry>) -> Void) {
        @AppStorage("widgetTime", store: UserDefaults(suiteName: "group.com.atheer.widgetTime"))
        var widgetTime: Int = 60
        let minutesInADay: Int = 1440
        
        var enteries: [MotivationQuoteEntry] = []
        var entryDate = Date()
        var quoteAmount: Int = minutesInADay / widgetTime
        //print("quoteAmount: \(quoteAmount)")
        //print("widgetTime: \(widgetTime)")
        
        let quotes = MotivationQuotes.getQuotes(quoteAmount + 2)
        
        // in case we only get the N/A back we should reset the quote amount
        quoteAmount = quotes.count
        
        // starting from index 2 to partially solve that the first quote immediatly gets skipped
        for i in 2..<quoteAmount {
            entryDate = Calendar.current.date(byAdding: .minute, value: widgetTime, to: entryDate)!
            print(entryDate)
            let quote = quotes[i]
            let entry = MotivationQuoteEntry(date: entryDate, motivationQuote: quote)
            enteries.append(entry)
        }
        
        let timeline = Timeline(entries: enteries, policy: .atEnd)
        print("timeline")
        completion(timeline)
    }
}

struct WidgetEntryView: View {
    let entry: Provider.Entry
    
    @AppStorage("bacgroundColor", store: UserDefaults(suiteName: "group.com.atheer.bacgroundColor"))
    var bacgroundColor: Color = .black
    
    @AppStorage("textColor", store: UserDefaults(suiteName: "group.com.atheer.textColor"))
    var textColor: Color = .white
    
    
    var body: some View {
        MotivationalQuoteView(data: entry.motivationQuote, textColor: textColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(bacgroundColor)
        
    }
}

@main
struct MotivationWidgetQuote: Widget {
    private let kind = "MotivationWidgetQuote"
    
    var body: some WidgetConfiguration {
        
        StaticConfiguration(kind: kind, provider: Provider(), content: {entry in
            WidgetEntryView(entry: entry)
        })
            .supportedFamilies([.systemMedium])
            .configurationDisplayName("Quote Widget")
            .description("This widget is used to show the quotes")
            
    }
}

