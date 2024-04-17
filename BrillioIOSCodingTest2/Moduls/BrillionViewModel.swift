//
//  BrillionViewModel.swift
//  BrillioIOSCodingTest2
//
//  Created by Ricardo Developer on 16/04/24.
//

import Foundation

class BrillionViewModel: ObservableObject {
    
    @Published var contenteModel: BrillioIOSCodingTest?
    @Published var error: Error?
    
    let ApiClientVM = APIClient()
    
    func getContent() {
        
        ApiClientVM.getquotes { result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let contents):
                    self.contenteModel = contents
                    print("results \(String(describing: self.contenteModel))")
                case .failure(let error):
                    print("Error fetching post: \(error)")
                }
            }
        }
    }
    
    func refreshContent() {
        getContent()
    }
}

