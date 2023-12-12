//
//  ViewController.swift
//  Homework_SOLID
//
//  Created by Vlad on 11.12.23.
//

import UIKit

//MARK: Single responsibility

//1
class Racer {
    
    let name: String
    let lapTime: Double
    
    init(name: String, lapTime: Double) {
        self.name = name
        self.lapTime = lapTime
    }
    
    func printNameAndResult() {
        print("Гонщик - \(name), время за круг - \(lapTime)")
    }
}


//2

class Editor {
    
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func removesSpaces() {}
    
}


//MARK: Open-Closed

//1
protocol JobVacancy {
    var name: String { get }
    var salary: Int { get }
    
    func printAdvertisement()
}

class Сhemist: JobVacancy {
    var name: String
    var salary: Int
    
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }
    
    func printAdvertisement() {
        print("Нужен \(name), заработная плата \(salary)")
    }
}


//2

protocol Car {
    var name: String { get }
    var time: Int { get }
    
    func printAccelerationToHundreds()
}

class Audi: Car {
    var name: String
    var time: Int
    
    init(name: String, time: Int) {
        self.name = name
        self.time = time
    }
    
    func printAccelerationToHundreds() {
        print("\(name) разгоняется до сотни за \(time)")
    }
    
}

//MARK: Liskov

//1
protocol Animal {
    func makeSound()
}

class Frog: Animal {
    func makeSound() {
        print("Ква-ква")
    }
}

class Duck: Animal {
    func makeSound() {
        print("Кря-кря")
    }
}

let frog: Animal = Frog()
let duck: Animal = Duck()

frog.makeSound()
duck.makeSound()



//2

class Fruit {
    func eat() {
        
    }
}

class Apple: Fruit {
    override func eat() {
        print("кушать яблоко")
    }
}

class Mango: Fruit {
    override func eat() {
        print("кушать манго")
    }
}


func eatFruit(_ fruit: Fruit) {
    fruit.eat()
}

let apple = Apple()
let mango = Mango()

eatFruit(apple)
eatFruit(mango)

//MARK: Interface segregation principle

//1
protocol AirTransport {
    func fly()
}

protocol GroundTransport {
    func drive()
}

class Bus: GroundTransport {
    func drive() {}
}

// 2

protocol ElectricalEngine {
    func engineRunsOnElectricity() {
        
    }
}

protocol GasEngine {
    func engineRunsOnGasoline() {
        
    }
}

class Mercedez: ElectricalEngine, GasEngine {
    func engineRunsOnGasoline() {
        
    }
    
    func engineRunsOnElectricity() {
        
    }
}

class Lada: GasEngine {
    func engineRunsOnGasoline() {
        
    }
}



//MARK: Dependency inversion

//1

protocol Automobile {
    func startEngine() {
        
    }
}

class Sedan: Automobile {
    func startEngine() {
        print("Седан заведен")
    }
}

class Crossover: Automobile {
    func startEngine() {
        print("Кроссовер заведен")
    }
}

class CarDriver {
    let automobile: Automobile
    
    init(automobile: Automobile) {
        self.automobile = automobile
    }
    
    func driveAutomobile() {
        automobile.startEngine()
    }
}


//2

protocol Clothing {
    func wear() {
        
    }
}

class Shirt: Clothing {
    func wear() {
        print("Носить рубашку")
    }
}

class ChoiceOfClothes {
    let clothing: Clothing
    
    init(clothing: Clothing) {
        self.clothing = clothing
    }
    
    func putOnClothing() {
        clothing.wear()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

