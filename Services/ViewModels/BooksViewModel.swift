//
//  BooksViewModel.swift
//  Services
//
//  Created by Артём Мошнин on 15/2/21.
//

import Foundation
import FirebaseFirestore

class BooksViewModel: ObservableObject {
    @Published var books = [Book]()
    private let db = Firestore.firestore()
    
    func fetchData() {
        db.collection("books").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.books = documents.map({ (queryDocumentSnapshot) -> Book in
                let data = queryDocumentSnapshot.data()
                
                let title = data["title"] as? String ?? ""
                let author = data["author"] as? String ?? ""
                let pages = data["pages"] as? Int ?? 0
                
                return Book(title: title, author: author, numberOfPages: pages)
            })
        }
    }
}
