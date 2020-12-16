//
//  ContentView.swift
//  TuneSearchAssignment1
//
//  Created by Prof. Dr. Nunkesser, Robin on 16.12.20.
//

import SwiftUI
import TunesearchMockCore
import TunesearchCorePorts

struct ContentView: View {
    
    let command = MockSearchTracksCommand()
        
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                command.execute(inDTO: SearchTermDTO(term: "term")) {
                    switch $0 {
                    case let .success(collections):
                        success(value: collections)
                    case let .failure(error):
                        failure(failure: error)
                    }
                }
            }
    }
    
    func failure(failure: Error) {
        debugPrint(failure.localizedDescription)
    }
    
    func success(value: [TrackCollection]) {
        debugPrint(value)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
