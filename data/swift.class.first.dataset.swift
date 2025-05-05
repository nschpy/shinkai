
// MARK: - 1. User
/// Представляет пользователя с именем и возрастом.
/// - Properties:
///   - name: Полное имя пользователя.
///   - age: Возраст пользователя в годах.
class User {
    /// Полное имя пользователя.
    var name: String
    /// Возраст пользователя в годах.
    var age: Int

    /// Инициализирует нового пользователя.
    /// - Parameters:
    ///   - name: Имя пользователя.
    ///   - age: Возраст пользователя.
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    /// Возвращает приветственное сообщение.
    /// - Returns: Строка с приветствием пользователя.
    func greet() -> String {
        return "Hello, \(name)!"
    }
}

// MARK: - 2. Car
/// Представляет автомобиль с маркой, моделью и годом выпуска.
/// - Properties:
///   - make: Производитель автомобиля.
///   - model: Модель автомобиля.
///   - year: Год выпуска.
class Car {
    var make: String
    var model: String
    var year: Int

    /// Инициализирует новую машину.
    /// - Parameters:
    ///   - make: Производитель.
    ///   - model: Модель.
    ///   - year: Год выпуска.
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }

    /// Возвращает полное название автомобиля.
    /// - Returns: Строка "make model (year)".
    func fullName() -> String {
        return "\(make) \(model) (\(year))"
    }
}

// MARK: - 3. Rectangle
/// Представляет прямоугольник с шириной и высотой.
class Rectangle {
    /// Ширина прямоугольника.
    var width: Double
    /// Высота прямоугольника.
    var height: Double

    /// Инициализирует прямоугольник.
    /// - Parameters:
    ///   - width: Ширина.
    ///   - height: Высота.
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    /// Вычисляет площадь прямоугольника.
    /// - Returns: Площадь (width * height).
    func area() -> Double {
        return width * height
    }
}

// MARK: - 4. Circle
/// Представляет круг с радиусом.
class Circle {
    /// Радиус круга.
    var radius: Double

    /// Инициализирует круг.
    /// - Parameter radius: Радиус.
    init(radius: Double) {
        self.radius = radius
    }

    /// Вычисляет площадь круга.
    /// - Returns: Площадь (π * radius²).
    func area() -> Double {
        return .pi * radius * radius
    }
}

// MARK: - 5. BankAccount
/// Представляет банковский счет.
class BankAccount {
    /// Баланс счета.
    private(set) var balance: Double = 0.0

    /// Инициализирует счет с начальным балансом.
    /// - Parameter initialBalance: Начальный баланс.
    init(initialBalance: Double) {
        balance = initialBalance
    }

    /// Вносит сумму на счет.
    /// - Parameter amount: Сумма для внесения.
    func deposit(_ amount: Double) {
        balance += amount
    }

    /// Снимает сумму со счета.
    /// - Parameter amount: Сумма для снятия.
    /// - Returns: true, если снятие успешно.
    func withdraw(_ amount: Double) -> Bool {
        guard amount <= balance else { return false }
        balance -= amount
        return true
    }
}

// MARK: - 6. Book
/// Представляет книгу с названием и автором.
class Book {
    var title: String
    var author: String

    /// Инициализирует книгу.
    /// - Parameters:
    ///   - title: Заголовок.
    ///   - author: Автор.
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }

    /// Возвращает описание книги.
    /// - Returns: "title by author".
    func description() -> String {
        return "\(title) by \(author)"
    }
}

// MARK: - 7. Animal
/// Базовый класс для животных.
class Animal {
    var name: String

    /// Инициализирует животное.
    /// - Parameter name: Имя животного.
    init(name: String) {
        self.name = name
    }

    /// Издает звук.
    /// - Returns: Строка со звуком животного.
    func sound() -> String {
        return "" // Переопределяется в подклассах
    }
}

// MARK: - 8. Dog
/// Представляет собаку.
class Dog: Animal {
    /// Возвращает лай.
    override func sound() -> String {
        return "Woof!"
    }
}

// MARK: - 9. Cat
/// Представляет кошку.
class Cat: Animal {
    /// Возвращает мяу.
    override func sound() -> String {
        return "Meow!"
    }
}

// MARK: - 10. Playlist
/// Представляет плейлист песен.
class Playlist {
    /// Список песен.
    private(set) var songs: [Song] = []

    /// Добавляет песню в плейлист.
    /// - Parameter song: Песня для добавления.
    func addSong(_ song: Song) {
        songs.append(song)
    }
}

// MARK: - 11. Song
/// Представляет песню с названием и исполнителем.
class Song {
    var title: String
    var artist: String

    /// Инициализирует песню.
    /// - Parameters:
    ///   - title: Название.
    ///   - artist: Исполнитель.
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
}

// MARK: - 12. Point
/// Представляет точку в 2D пространстве.
class Point {
    var x: Double
    var y: Double

    /// Инициализирует точку.
    /// - Parameters:
    ///   - x: Координата x.
    ///   - y: Координата y.
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

// MARK: - 13. Counter
/// Представляет счетчик.
class Counter {
    private(set) var count: Int = 0

    /// Увеличивает счетчик на единицу.
    func increment() {
        count += 1
    }

    /// Сбрасывает счетчик в ноль.
    func reset() {
        count = 0
    }
}

// MARK: - 14. Timer
/// Представляет простой таймер.
class Timer {
    private var startTime: Date?

    /// Запускает таймер.
    func start() {
        startTime = Date()
    }

    /// Возвращает прошедшее время.
    /// - Returns: Интервал времени или nil.
    func elapsed() -> TimeInterval? {
        guard let start = startTime else { return nil }
        return Date().timeIntervalSince(start)
    }
}

// MARK: - 15. Logger
/// Простой логгер сообщений.
class Logger {
    /// Логирует сообщение в консоль.
    /// - Parameter message: Сообщение для логирования.
    func log(_ message: String) {
        print("[LOG] \(message)")
    }
}

// MARK: - 16. Matrix
/// Представляет матрицу размеров rows x cols.
class Matrix {
    var rows: Int
    var cols: Int
    private var grid: [Double]

    /// Инициализирует матрицу.
    /// - Parameters:
    ///   - rows: Число строк.
    ///   - cols: Число столбцов.
    init(rows: Int, cols: Int) {
        self.rows = rows
        self.cols = cols
        self.grid = Array(repeating: 0.0, count: rows * cols)
    }

    /// Устанавливает значение в ячейке.
    func setValue(_ value: Double, atRow row: Int, col: Int) {
        grid[row * cols + col] = value
    }

    /// Получает значение из ячейки.
    func value(atRow row: Int, col: Int) -> Double {
        return grid[row * cols + col]
    }
}

// MARK: - 17. Vector
/// Представляет вектор в 3D пространстве.
class Vector {
    var x: Double
    var y: Double
    var z: Double

    /// Инициализирует вектор.
    init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }

    /// Вычисляет длину вектора.
    /// - Returns: Евклидова норма.
    func magnitude() -> Double {
        return sqrt(x*x + y*y + z*z)
    }
}

// MARK: - 18. SettingsManager
/// Управляет настройками приложения.
class SettingsManager {
    private var settings: [String: Any] = [:]

    /// Сохраняет значение настройки.
    func set(value: Any, forKey key: String) {
        settings[key] = value
    }

    /// Получает значение настройки.
    func get(forKey key: String) -> Any? {
        return settings[key]
    }
}

// MARK: - 19. APIClient
/// Клиент для выполнения HTTP запросов.
class APIClient {
    /// Выполняет GET запрос.
    /// - Parameters:
    ///   - url: URL для запроса.
    ///   - completion: Блок завершения с данными и ошибкой.
    func get(from url: URL, completion: (Data?, Error?) -> Void) {
        // Реализация запроса (упрощенная)
    }
}

// MARK: - 20. Contact
/// Представляет контакт с именем и электронной почтой.
class Contact {
    var name: String
    var email: String

    /// Инициализирует контакт.
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }

    /// Возвращает контактную информацию.
    /// - Returns: Строка "name <email>".
    func info() -> String {
        return "\(name) <\(email)>"
    }
}