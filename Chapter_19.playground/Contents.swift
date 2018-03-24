// Chapter 19 서브스크립트

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

let list = ["iPhone", "iPad", "iPod", "Mac Pro"]
let product = list[1]

let country = ["kr": "한국", "us": "미국"]
let korea = country["kr"]

class Headquarters {
    private var squad: [SuperHero]
    
    init(heros: [SuperHero]) {
        squad = heros
    }
    
    subscript(index: Int) -> SuperHero? {
        get {
            if index < squad.count {
                return squad[index]
            }
            return nil
        }
        set {
            if let hero = newValue {
                if index < squad.count {
                    squad[index] = hero
                } else {
                    squad.append(hero)
                }
            } else {
                if index < squad.count {
                    squad.remove(at: index)
                }
            }
        }
    }
    
    subscript(key: String) -> SuperHero? {
        get {
            for hero in squad {
                if hero.name == key {
                    return hero
                }
            }
            return nil
        }
        set {
            if let index = squad.index(where: { $0.name == key }) {
                if let hero = newValue {
                    squad[index] = hero
                } else {
                    squad.remove(at: index)
                }
            } else {
                if let hero = newValue {
                    squad.append(hero)
                }
            }
        }
    }
    
    func printSquad() {
        var list = [String]()
        for hero in squad {
            list.append(hero.name)
        }
        
        print(list.joined(separator: ", "))
    }
}

let ironMan = SuperHero(heroName: "Iron Man", sidekickName: "Jarvis")
let thor = SuperHero(heroName: "Thor")
let captainAmerica = SuperHero(heroName: "Captain America")

let shield = Headquarters(heros: [ironMan, thor])
shield.printSquad()

var firstHero = shield[0]
print(firstHero?.name)

shield[0] = captainAmerica
firstHero = shield[0]
print(firstHero?.name)

var hero = shield["Iron Man"]
print(hero?.name)

shield["Iron Man"] = ironMan
hero = shield["Iron Man"]
print(hero?.name)

shield.printSquad()

shield[0] = nil
shield.printSquad()

shield["Thor"] = nil
shield.printSquad()
