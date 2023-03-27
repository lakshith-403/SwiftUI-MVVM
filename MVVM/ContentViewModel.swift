//
//  ContentViewModel.swift
//  MVVM
//
//  Created by Lakshith Nishshanke on 2023-03-26.
//

import Foundation

@MainActor
class ContentViewModel: ObservableObject {
    private var model = ContentModel()
    @Published var searchText: String = ""
    @Published var definition: String = ""
    
    public func searchDefinition() {
        Task {
            let response = await model.getDefinition(forWord: self.searchText)
            self.definition = response
        }
    }
}
