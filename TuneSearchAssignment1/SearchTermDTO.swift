//
//  SearchTermDTO.swift
//  TuneSearchAssignment1
//
//  Created by Prof. Dr. Nunkesser, Robin on 16.12.20.
//

import Foundation
import TunesearchCorePorts

class SearchTermDTO : SearchTerm {
    internal init(term: String) {
        self.term = term
    }
    
    var term: String        
}
