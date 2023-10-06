struct Book {
    let title: String
    let author: String
    let publicationYear: Int
}

func booksReleasedAfterYear(_ year: Int, from books: [Book]) -> [Book] {
    return books.filter { $0.publicationYear > year }
}

// Create book objects
let book1 = Book(title: "Book 1", author: "Author 1", publicationYear: 2000)
let book2 = Book(title: "Book 2", author: "Author 2", publicationYear: 2010)
let book3 = Book(title: "Book 3", author: "Author 3", publicationYear: 2020)

// Fill the array with these books
var booksArray: [Book] = [book1, book2, book3]

// Specify the year for filtering
let filterYear = 2015

// Filter and print books released after the specified year
let booksReleasedAfterFilterYear = booksReleasedAfterYear(filterYear, from: booksArray)
for book in booksReleasedAfterFilterYear {
    print("Title: \(book.title), Author: \(book.author), Publication Year: \(book.publicationYear)")
}
