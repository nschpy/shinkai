// MARK: - 11. Bike
/// Представляет велосипед с маркой, моделью и наличием передач.
/// - Properties:
///   - make: Марка велосипеда.
///   - model: Модель велосипеда.
///   - hasGears: Имеет ли велосипед передачи.
class Bike {
    /// Марка велосипеда.
    var make: String
    
    /// Модель велосипеда.
    var model: String
    
    /// Имеет ли велосипед передачи.
    var hasGears: Bool
    
    /// Инициализирует новый велосипед.
    /// - Parameters:
    ///   - make: Марка велосипеда.
    ///   - model: Модель велосипеда.
    ///   - hasGears: Имеет ли велосипед передачи.
    init(make: String, model: String, hasGears: Bool) {
        self.make = make
        self.model = model
        self.hasGears = hasGears
    }
    
    /// Имитирует процесс катания на велосипеде.
    func ride() {
        print("Riding the \(make) \(model).")
    }
}

// MARK: - 12. Truck
/// Представляет грузовик с маркой, моделью и грузоподъемностью.
/// - Properties:
///   - make: Марка грузовика.
///   - model: Модель грузовика.
///   - loadCapacity: Грузоподъемность грузовика в тоннах.
class Truck {
    /// Марка грузовика.
    var make: String
    
    /// Модель грузовика.
    var model: String
    
    /// Грузоподъемность грузовика в тоннах.
    var loadCapacity: Double
    
    /// Инициализирует новый грузовик.
    /// - Parameters:
    ///   - make: Марка грузовика.
    ///   - model: Модель грузовика.
    ///   - loadCapacity: Грузоподъемность грузовика.
    init(make: String, model: String, loadCapacity: Double) {
        self.make = make
        self.model = model
        self.loadCapacity = loadCapacity
    }
    
    /// Имитирует процесс доставки груза.
    func deliver() {
        print("Delivering with the \(make) \(model).")
    }
}

// MARK: - 13. Airplane
/// Представляет самолёт с маркой, моделью и вместимостью.
/// - Properties:
///   - make: Марка самолёта.
///   - model: Модель самолёта.
///   - capacity: Вместимость самолёта в количестве пассажиров.
class Airplane {
    /// Марка самолёта.
    var make: String
    
    /// Модель самолёта.
    var model: String
    
    /// Вместимость самолёта в количестве пассажиров.
    var capacity: Int
    
    /// Инициализирует новый самолёт.
    /// - Parameters:
    ///   - make: Марка самолёта.
    ///   - model: Модель самолёта.
    ///   - capacity: Вместимость самолёта.
    init(make: String, model: String, capacity: Int) {
        self.make = make
        self.model = model
        self.capacity = capacity
    }
    
    /// Имитирует процесс полёта.
    func fly() {
        print("The \(make) \(model) is flying.")
    }
}

// MARK: - 14. Circle
/// Представляет круг с радиусом.
/// - Properties:
///   - radius: Радиус круга в сантиметрах.
class Circle {
    /// Радиус круга в сантиметрах.
    var radius: Double
    
    /// Инициализирует новый круг.
    /// - Parameters:
    ///   - radius: Радиус круга.
    init(radius: Double) {
        self.radius = radius
    }
    
    /// Вычисляет площадь круга.
    /// - Returns: Площадь круга в квадратных сантиметрах.
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

// MARK: - 15. Rectangle
/// Представляет прямоугольник с шириной и высотой.
/// - Properties:
///   - width: Ширина прямоугольника в сантиметрах.
///   - height: Высота прямоугольника в сантиметрах.
class Rectangle {
    /// Ширина прямоугольника в сантиметрах.
    var width: Double
    
    /// Высота прямоугольника в сантиметрах.
    var height: Double
    
    /// Инициализирует новый прямоугольник.
    /// - Parameters:
    ///   - width: Ширина прямоугольника.
    ///   - height: Высота прямоугольника.
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    /// Вычисляет площадь прямоугольника.
    /// - Returns: Площадь прямоугольника в квадратных сантиметрах.
    func area() -> Double {
        return width * height
    }
}

// MARK: - 16. Triangle
/// Представляет треугольник с основанием и высотой.
/// - Properties:
///   - base: Основание треугольника в сантиметрах.
///   - height: Высота треугольника в сантиметрах.
class Triangle {
    /// Основание треугольника в сантиметрах.
    var base: Double
    
    /// Высота треугольника в сантиметрах.
    var height: Double
    
    /// Инициализирует новый треугольник.
    /// - Parameters:
    ///   - base: Основание треугольника.
    ///   - height: Высота треугольника.
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    /// Вычисляет площадь треугольника.
    /// - Returns: Площадь треугольника в квадратных сантиметрах.
    func area() -> Double {
        return 0.5 * base * height
    }
}

// MARK: - 17. Square
/// Представляет квадрат со стороной.
/// - Properties:
///   - side: Длина стороны квадрата в сантиметрах.
class Square {
    /// Длина стороны квадрата в сантиметрах.
    var side: Double
    
    /// Инициализирует новый квадрат.
    /// - Parameters:
    ///   - side: Длина стороны квадрата.
    init(side: Double) {
        self.side = side
    }
    
    /// Вычисляет площадь квадрата.
    /// - Returns: Площадь квадрата в квадратных сантиметрах.
    func area() -> Double {
        return side * side
    }
}

// MARK: - 18. Apple
/// Представляет яблоко с цветом и весом.
/// - Properties:
///   - color: Цвет яблока.
///   - weight: Вес яблока в граммах.
class Apple {
    /// Цвет яблока.
    var color: String
    
    /// Вес яблока в граммах.
    var weight: Int
    
    /// Инициализирует новое яблоко.
    /// - Parameters:
    ///   - color: Цвет яблока.
    ///   - weight: Вес яблока.
    init(color: String, weight: Int) {
        self.color = color
        self.weight = weight
    }
    
    /// Возвращает описание яблока.
    /// - Returns: Строка с описанием яблока.
    func describe() -> String {
        return "This is a \(color) apple weighing \(weight) grams."
    }
}

// MARK: - 19. Banana
/// Представляет банан с длиной и степенью спелости.
/// - Properties:
///   - length: Длина банана в сантиметрах.
///   - ripeness: Степень спелости банана.
class Banana {
    /// Длина банана в сантиметрах.
    var length: Double
    
    /// Степень спелости банана.
    var ripeness: String
    
    /// Инициализирует новый банан.
    /// - Parameters:
    ///   - length: Длина банана.
    ///   - ripeness: Степень спелости банана.
    init(length: Double, ripeness: String) {
        self.length = length
        self.ripeness = ripeness
    }
    
    /// Имитирует процесс очистки банана.
    func peel() {
        print("Peeling the banana.")
    }
}

// MARK: - 20. Pizza
/// Представляет пиццу с размером и топпингами.
/// - Properties:
///   - size: Размер пиццы.
///   - toppings: Список топпингов.
class Pizza {
    /// Размер пиццы.
    var size: String
    
    /// Список топпингов.
    var toppings: [String]
    
    /// Инициализирует новую пиццу.
    /// - Parameters:
    ///   - size: Размер пиццы.
    ///   - toppings: Список топпингов.
    init(size: String, toppings: [String]) {
        self.size = size
        self.toppings = toppings
    }
    
    /// Имитирует процесс выпечки пиццы.
    func bake() {
        print("Baking the \(size) pizza with \(toppings.joined(separator: ", ")).")
    }
}

// MARK: - 21. Burger
/// Представляет бургер с типом булки и количеством котлет.
/// - Properties:
///   - bunType: Тип булки.
///   - pattyCount: Количество котлет.
class Burger {
    /// Тип булки.
    var bunType: String
    
    /// Количество котлет.
    var pattyCount: Int
    
    /// Инициализирует новый бургер.
    /// - Parameters:
    ///   - bunType: Тип булки.
    ///   - pattyCount: Количество котлет.
    init(bunType: String, pattyCount: Int) {
        self.bunType = bunType
        self.pattyCount = pattyCount
    }
    
    /// Имитирует процесс сборки бургера.
    func assemble() {
        print("Assembling a \(bunType) burger with \(pattyCount) patties.")
    }
}

// MARK: - 22. Phone
/// Представляет телефон с брендом, моделью и цветом.
/// - Properties:
///   - brand: Бренд телефона.
///   - model: Модель телефона.
///   - color: Цвет телефона.
class Phone {
    /// Бренд телефона.
    var brand: String
    
    /// Модель телефона.
    var model: String
    
    /// Цвет телефона.
    var color: String
    
    /// Инициализирует новый телефон.
    /// - Parameters:
    ///   - brand: Бренд телефона.
    ///   - model: Модель телефона.
    ///   - color: Цвет телефона.
    init(brand: String, model: String, color: String) {
        self.brand = brand
        self.model = model
        self.color = color
    }
    
    /// Имитирует звонок на телефоне.
    func call() {
        print("Calling from \(brand) \(model).")
    }
}

// MARK: - 23. Laptop
/// Представляет ноутбук с брендом, моделью, объёмом RAM и объёмом хранилища.
/// - Properties:
///   - brand: Бренд ноутбука.
///   - model: Модель ноутбука.
///   - ram: Объём RAM в гигабайтах.
///   - storage: Объём хранилища в гигабайтах.
class Laptop {
    /// Бренд ноутбука.
    var brand: String
    
    /// Модель ноутбука.
    var model: String
    
    /// Объём RAM в гигабайтах.
    var ram: Int
    
    /// Объём хранилища в гигабайтах.
    var storage: Int
    
    /// Инициализирует новый ноутбук.
    /// - Parameters:
    ///   - brand: Бренд ноутбука.
    ///   - model: Модель ноутбука.
    ///   - ram: Объём RAM в гигабайтах.
    ///   - storage: Объём хранилища в гигабайтах.
    init(brand: String, model: String, ram: Int, storage: Int) {
        self.brand = brand
        self.model = model
        self.ram = ram
        self.storage = storage
    }
    
    /// Имитирует включение ноутбука.
    func turnOn() {
        print("Turning on the \(brand) \(model).")
    }
}

// MARK: - 24. TV
/// Представляет телевизор с брендом, размером и наличием смарт-функций.
/// - Properties:
///   - brand: Бренд телевизора.
///   - size: Размер экрана в дюймах.
///   - isSmart: Является ли телевизор смарт-TV.
class TV {
    /// Бренд телевизора.
    var brand: String
    
    /// Размер экрана в дюймах.
    var size: Int
    
    /// Является ли телевизор смарт-TV.
    var isSmart: Bool
    
    /// Инициализирует новый телевизор.
    /// - Parameters:
    ///   - brand: Бренд телевизора.
    ///   - size: Размер экрана в дюймах.
    ///   - isSmart: Является ли телевизор смарт-TV.
    init(brand: String, size: Int, isSmart: Bool) {
        self.brand = brand
        self.size = size
        self.isSmart = isSmart
    }
    
    /// Имитирует включение телевизора.
    func turnOn() {
        print("Turning on the \(size)-inch \(brand) TV.")
    }
}

// MARK: - 25. Refrigerator
/// Представляет холодильник с брендом, ёмкостью и наличием системы No Frost.
/// - Properties:
///   - brand: Бренд холодильника.
///   - capacity: Ёмкость холодильника в литрах.
///   - isFrostFree: Имеет ли холодильник систему No Frost.
class Refrigerator {
    /// Бренд холодильника.
    var brand: String
    
    /// Ёмкость холодильника в литрах.
    var capacity: Double
    
    /// Имеет ли холодильник систему No Frost.
    var isFrostFree: Bool
    
    /// Инициализирует новый холодильник.
    /// - Parameters:
    ///   - brand: Бренд холодильника.
    ///   - capacity: Ёмкость холодильника в литрах.
    ///   - isFrostFree: Имеет ли холодильник систему No Frost.
    init(brand: String, capacity: Double, isFrostFree: Bool) {
        self.brand = brand
        self.capacity = capacity
        self.isFrostFree = isFrostFree
    }
    
    /// Имитирует открытие холодильника.
    func open() {
        print("Opening the \(brand) refrigerator.")
    }
}

// MARK: - 26. Chair
/// Представляет стул с материалом, цветом и высотой.
/// - Properties:
///   - material: Материал стула.
///   - color: Цвет стула.
///   - height: Высота стула в сантиметрах.
class Chair {
    /// Материал стула.
    var material: String
    
    /// Цвет стула.
    var color: String
    
    /// Высота стула в сантиметрах.
    var height: Double
    
    /// Инициализирует новый стул.
    /// - Parameters:
    ///   - material: Материал стула.
    ///   - color: Цвет стула.
    ///   - height: Высота стула.
    init(material: String, color: String, height: Double) {
        self.material = material
        self.color = color
        self.height = height
    }
    
    /// Имитирует регулировку высоты стула.
    func adjustHeight() {
        print("Adjusting the height of the \(color) \(material) chair.")
    }
}

// MARK: - 27. Table
/// Представляет стол с материалом, формой и размером.
/// - Properties:
///   - material: Материал стола.
///   - shape: Форма стола.
///   - size: Размер стола в квадратных метрах.
class Table {
    /// Материал стола.
    var material: String
    
    /// Форма стола.
    var shape: String
    
    /// Размер стола в квадратных метрах.
    var size: Double
    
    /// Инициализирует новый стол.
    /// - Parameters:
    ///   - material: Материал стола.
    ///   - shape: Форма стола.
    ///   - size: Размер стола.
    init(material: String, shape: String, size: Double) {
        self.material = material
        self.shape = shape
        self.size = size
    }
    
    /// Имитирует установку стола.
    func setTable() {
        print("Setting up the \(shape) \(material) table.")
    }
}

// MARK: - 28. Bed
/// Представляет кровать с размером, материалом и наличием балдахина.
/// - Properties:
///   - size: Размер кровати.
///   - material: Материал кровати.
///   - hasCanopy: Имеет ли кровать балдахин.
class Bed {
    /// Размер кровати.
    var size: String
    
    /// Материал кровати.
    var material: String
    
    /// Имеет ли кровать балдахин.
    var hasCanopy: Bool
    
    /// Инициализирует новую кровать.
    /// - Parameters:
    ///   - size: Размер кровати.
    ///   - material: Материал кровати.
    ///   - hasCanopy: Имеет ли кровать балдахин.
    init(size: String, material: String, hasCanopy: Bool) {
        self.size = size
        self.material = material
        self.hasCanopy = hasCanopy
    }
    
    /// Имитирует процесс заправки кровати.
    func makeBed() {
        print("Making the \(size) \(material) bed.")
    }
}

// MARK: - 29. Sofa
/// Представляет диван с цветом, количеством мест и материалом.
/// - Properties:
///   - color: Цвет дивана.
///   - numberOfSeats: Количество мест.
///   - material: Материал дивана.
class Sofa {
    /// Цвет дивана.
    var color: String
    
    /// Количество мест.
    var numberOfSeats: Int
    
    /// Материал дивана.
    var material: String
    
    /// Инициализирует новый диван.
    /// - Parameters:
    ///   - color: Цвет дивана.
    ///   - numberOfSeats: Количество мест.
    ///   - material: Материал дивана.
    init(color: String, numberOfSeats: Int, material: String) {
        self.color = color
        self.numberOfSeats = numberOfSeats
        self.material = material
    }
    
    /// Имитирует процесс откидывания спинки дивана.
    func recline() {
        print("Reclining the \(color) \(material) sofa.")
    }
}

// MARK: - 30. Tree
/// Представляет дерево с типом, высотой и возрастом.
/// - Properties:
///   - type: Тип дерева.
///   - height: Высота дерева в метрах.
///   - age: Возраст дерева в годах.
class Tree {
    /// Тип дерева.
    var type: String
    
    /// Высота дерева в метрах.
    var height: Double
    
    /// Возраст дерева в годах.
    var age: Int
    
    /// Инициализирует новое дерево.
    /// - Parameters:
    ///   - type: Тип дерева.
    ///   - height: Высота дерева.
    ///   - age: Возраст дерева.
    init(type: String, height: Double, age: Int) {
        self.type = type
        self.height = height
        self.age = age
    }
    
    /// Имитирует рост дерева.
    func grow() {
        print("The \(type) tree is growing.")
    }
}

// MARK: - 31. Flower
/// Представляет цветок с названием, цветом и количеством лепестков.
/// - Properties:
///   - name: Название цветка.
///   - color: Цвет цветка.
///   - numberOfPetals: Количество лепестков.
class Flower {
    /// Название цветка.
    var name: String
    
    /// Цвет цветка.
    var color: String
    
    /// Количество лепестков.
    var numberOfPetals: Int
    
    /// Инициализирует новый цветок.
    /// - Parameters:
    ///   - name: Название цветка.
    ///   - color: Цвет цветка.
    ///   - numberOfPetals: Количество лепестков.
    init(name: String, color: String, numberOfPetals: Int) {
        self.name = name
        self.color = color
        self.numberOfPetals = numberOfPetals
    }
    
    /// Имитирует процесс цветения.
    func bloom() {
        print("The \(name) is blooming.")
    }
}

// MARK: - 32. River
/// Представляет реку с названием, длиной и скоростью течения.
/// - Properties:
///   - name: Название реки.
///   - length: Длина реки в километрах.
///   - flowRate: Скорость течения в метрах в секунду.
class River {
    /// Название реки.
    var name: String
    
    /// Длина реки в километрах.
    var length: Double
    
    /// Скорость течения в метрах в секунду.
    var flowRate: Double
    
    /// Инициализирует новую реку.
    /// - Parameters:
    ///   - name: Название реки.
    ///   - length: Длина реки.
    ///   - flowRate: Скорость течения.
    init(name: String, length: Double, flowRate: Double) {
        self.name = name
        self.length = length
        self.flowRate = flowRate
    }
    
    /// Имитирует процесс течения реки.
    func flow() {
        print("The \(name) is flowing at \(flowRate) m/s.")
    }
}

// MARK: - 33. Mountain
/// Представляет гору с названием, высотой и расположением.
/// - Properties:
///   - name: Название горы.
///   - height: Высота горы в метрах.
///   - location: Расположение горы.
class Mountain {
    /// Название горы.
    var name: String
    
    /// Высота горы в метрах.
    var height: Double
    
    /// Расположение горы.
    var location: String
    
    /// Инициализирует новую гору.
    /// - Parameters:
    ///   - name: Название горы.
    ///   - height: Высота горы.
    ///   - location: Расположение горы.
    init(name: String, height: Double, location: String) {
        self.name = name
        self.height = height
        self.location = location
    }
    
    /// Имитирует процесс эрозии горы.
    func erode() {
        print("The \(name) is being eroded.")
    }
}

// MARK: - 34. Player
/// Представляет игрока с именем, командой и позицией.
/// - Properties:
///   - name: Имя игрока.
///   - team: Команда игрока.
///   - position: Позиция игрока.
class Player {
    /// Имя игрока.
    var name: String
    
    /// Команда игрока.
    var team: String
    
    /// Позиция игрока.
    var position: String
    
    /// Инициализирует нового игрока.
    /// - Parameters:
    ///   - name: Имя игрока.
    ///   - team: Команда игрока.
    ///   - position: Позиция игрока.
    init(name: String, team: String, position: String) {
        self.name = name
        self.team = team
        self.position = position
    }
    
    /// Имитирует процесс игры.
    func play() {
        print("\(name) is playing for \(team) at \(position).")
    }
}

// MARK: - 35. Team
/// Представляет команду с названием, видом спорта и количеством игроков.
/// - Properties:
///   - name: Название команды.
///   - sport: Вид спорта.
///   - players: Количество игроков.
class Team {
    /// Название команды.
    var name: String
    
    /// Вид спорта.
    var sport: String
    
    /// Количество игроков.
    var players: Int
    
    /// Инициализирует новую команду.
    /// - Parameters:
    ///   - name: Название команды.
    ///   - sport: Вид спорта.
    ///   - players: Количество игроков.
    init(name: String, sport: String, players: Int) {
        self.name = name
        self.sport = sport
        self.players = players
    }
    
    /// Имитирует победу команды.
    func win() {
        print("The \(name) team wins in \(sport)!")
    }
}

// MARK: - 36. Score
/// Представляет счёт с очками домашней команды и гостевой команды.
/// - Properties:
///   - homeTeam: Очки домашней команды.
///   - awayTeam: Очки гостевой команды.
class Score {
    /// Очки домашней команды.
    var homeTeam: Int
    
    /// Очки гостевой команды.
    var awayTeam: Int
    
    /// Инициализирует новый счёт.
    /// - Parameters:
    ///   - homeTeam: Очки домашней команды.
    ///   - awayTeam: Очки гостевой команды.
    init(homeTeam: Int, awayTeam: Int) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
    
    /// Обновляет счёт.
    /// - Parameters:
    ///   - newHome: Новое количество очков домашней команды.
    ///   - newAway: Новое количество очков гостевой команды.
    func updateScore(newHome: Int, newAway: Int) {
        homeTeam = newHome
        awayTeam = newAway
        print("Updated score: Home \(homeTeam) - Away \(awayTeam)")
    }
}