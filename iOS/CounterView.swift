//
//  CounterView.swift
//  iOS
//
//  Created by Alex Basson on 8/12/24.
//

import SwiftUI

struct CounterView: View {
    
    @State var count: Int = 0
    internal var didAppear: ((Self) -> Void)?
        
    var body: some View {
        VStack {
            Text("Count: \(count)")
            
            Button(action: { count += 1 }, label: { Text("Counter") })
        }
        .onAppear { self.didAppear?(self) }
    }
}

#Preview {
    CounterView()
}
