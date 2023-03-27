//
//  ContentView.swift
//  MVVM
//
//  Created by Lakshith Nishshanke on 2023-03-26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Search for Word Definitions")
            HStack {
                TextField("Enter your word here", text: self.$viewModel.searchText)
                    .textFieldStyle(.roundedBorder)
                Button(action: {
                    self.viewModel.searchDefinition()
                }, label: {
                    Image(systemName: "magnifyingglass")
                })
            }
            if self.viewModel.definition != "" {
                Text(self.viewModel.definition)
                    .padding(.vertical, 50)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
