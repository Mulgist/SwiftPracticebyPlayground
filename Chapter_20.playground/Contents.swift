// Chapter 20 옵셔널 체이닝

import UIKit

class Person {
    var contact: Contact?
}

class Contact {
    var address: String?
    var tel: String?
    var email: String?
}

let p = Person()
var email = p.contact?.email!

if let contact = p.contact {
    if let email = contact.email {
        print(email)
    } else {
        print("nil email")
    }
} else {
    print("nil contact")
}

let p2 = Person()
var email2 = p2.contact?.email

if let email = p2.contact?.email {
    // ...
}

p2.contact?.email? = "whoami@outlook.com"

if let email = p.contact?.email {
    print(email)
} else {
    print("nil email")
}

class Person2 {
    var contact: Contact2?
    
    init() {
        contact = Contact2()
    }
}

class Contact2 {
    var address: String?
    var tel: String?
    var email: String? = "N/A"
}

let p3 = Person2()

p3.contact?.email? = "whoami@outlook.com"

if let email = p3.contact?.email {
    print(email)
} else {
    print("nil email")
}

class Person3 {
    var contact: Contact3?
    
    init() {
        contact = Contact3()
    }
}

class Contact3 {
    var address: String?
    var tel: String?
    var email: String = "whoami@outlook.com"
}

let p4 = Person3()
p4.contact = Contact3()

let email3 = (p4.contact?.email)!

if let email = p4.contact?.email {
    print(email)
} else {
    print("nil email")
}
