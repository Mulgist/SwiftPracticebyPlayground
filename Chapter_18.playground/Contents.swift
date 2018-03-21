// Chapter 18 메소드

import UIKit

class SuperHero {
    var name: String
    var sidekick: String?
    
    init(heroName: String, sidekickName: String? = nil) {
        name = heroName
        sidekick = sidekickName
    }
    
    func callSecretary() {
        if let name = sidekick {
            print("Hey, \(name)!")
        } else {
            print("\(name) is working alone.")
        }
    }
    
    @objc func attack(weapon: String, target: String?) -> Bool {
        if let target = target {
            callSecretary()
            print("Attack \(target) with \(weapon)!!!")
            return true
        }
        return false
    }
}

// callSecretary()

let ironMan = SuperHero(heroName: "Iron man", sidekickName: "Jarvis")
ironMan.callSecretary()
ironMan.attack(weapon: "Repulsor Beam", target: "Mandarin")

let thor = SuperHero(heroName: "Thor")
thor.callSecretary()
thor.attack(weapon: "Mj lnir", target: "Laufey")

struct Weapon {
    var name: String
    var durability: Int
    
    func use() {
        if durability > 0 {
            // durability -= 1  // Error
        }
    }
}

struct Weapon2 {
    var name: String
    var durability: Int
    
    mutating func use() {
        if durability > 0 {
            durability -= 1
        }
    }
}

var repulsorBeam = Weapon2(name: "Repulsor Beam", durability: 10)
repulsorBeam.use()
print(repulsorBeam.durability)

repulsorBeam.use()
print(repulsorBeam.durability)

let repulsorBeam2 = Weapon2(name: "Repulsor Beam", durability: 10)
// repulsorBeam.use()   // Error

struct Weapon3 {
    var name: String
    var durability: Int
    
    mutating func use() {
        if durablity > 0 {
            durablity -= 1
        }
    }
    
    mutating func switchWeapon(_ name: String, durability: Int = 10) {
        self = Weapon3(name: name, durability: durability)
    }
}

var myWeapon = Weapon3(name: "Repulsor Beam", durability: 10)
print(myWeapon.name, myWeapon.durability)

myWeapon.switchWeapon("Mj lnir", durability: 10000)
print(myWeapon.name, myWeapon.durability)

let attackSelector = #selector(SuperHero.attack(weapon:target:))

let button = UIButton()
button.addTarget(ironMan, action: attackSelector, for: .touchUpInside)
