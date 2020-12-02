import UIKit

class Unit {
    var helth : Double
    var damage : Double
    var protection : Double
    var agility : Int
    var nickname : String
    
    init(helth : Double, damage : Double, protection : Double, agility : Int, nickname : String) {
        self.helth = helth
        self.damage = damage
        self.protection = protection
        self.agility = agility
        self.nickname = nickname
    }
    
    func attack(enemy : Unit) {
        
    }
}

class animeguy : Unit {
    
    override func attack(enemy: Unit) {
        
    }
    
    
}

class chackNoris : Unit {
    
    override func attack(enemy: Unit) {
       
    }
    
}

class fighter : Unit {
  
    override func attack(enemy: Unit) {
        
    }
    
}

class ZonaArea {
    
    func beginBattle(attackers : Unit, guardians : Unit, wave : Int) {
            
            while attackers.helth > 0 && guardians.helth > 0 {
                
            
                attackers.helth = attackers.helth - guardians.damage/attackers.protection
                
                guardians.helth = guardians.helth - attackers.damage/guardians.protection
            
                print(attackers.helth)
                print(guardians.helth)
                print(wave)
                
            }
        
        if attackers.helth > 0 {
            print("Победили атакующие на волне \(wave)" )
        }
        
    }
    
    
}

class Game {
    
    func start() {
        
        
        let initialHelth = 400
        
        let initialDamage = 20
        
        
        let guardians = chackNoris(
            helth: 500,
            damage: 25,
            protection: 1.5,
            agility: 100,
            nickname: "chack"
        )
        
        let arena = ZonaArea()
        
        var k = 0
        
        while guardians.helth > 0  {
            
            k += 1
            
            let attackers = fighter(helth: Double(initialHelth * k), damage: Double(initialDamage * k), protection: 2, agility: 150, nickname: "Pidor")

            arena.beginBattle(attackers: attackers, guardians: guardians, wave: k)
        
        }
        
    }
    
}

let game = Game()

game.start()





