//func firstItem(items: [String]) -> String {
//    return items[0]
//}

var fruits: [String] = []

func firstItem(items: [String]) -> String? {
    if items.isEmpty {
        return nil
    }
    return items[0]
}

firstItem(fruits)


fruits = ["apple", "banana", "grape"]
if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}
// Prints "The first fruit is apple"

fruits = []
if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}
// Prints "There are no fruits!"

func produceFullName(withFirstName firstName: String, middleName: String?, lastName: String) -> String {
    var name = firstName
    if let middleName = middleName {
        name = "\(name) \(middleName)"
    }
    name = "\(name) \(lastName)"
    return name
}

produceFullName(withFirstName: "Jon", middleName: "Bon", lastName: "Jovi")
// Returns "Jon Bon Jovi"

produceFullName(withFirstName: "Mary", middleName: nil, lastName: "Doe")
// Returns "Mary Doe"