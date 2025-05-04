/// Суммирует два числа.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Сумма a и b.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

/// Вычисляет среднее трех чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
///   - c: Третье число.
/// - Returns: Среднее значение.
func average(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}

/// Проверяет, является ли строка палиндромом.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка палиндром.
func isPalindrome(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Объединяет две строки.
/// - Parameters:
///   - a: Первая строка.
///   - b: Вторая строка.
/// - Returns: Объединенная строка.
func concatenate(_ a: String, _ b: String) -> String {
    return a + b
}

/// Проверяет, делится ли число нацело.
/// - Parameters:
///   - number: Число.
///   - divisor: Делитель.
/// - Returns: `true`, если делится без остатка.
func isDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

/// Вычисляет площадь прямоугольника.
/// - Parameters:
///   - length: Длина.
///   - width: Ширина.
/// - Returns: Площадь.
func rectangleArea(length: Double, width: Double) -> Double {
    return length * width
}

/// Конвертирует градусы Цельсия в Фаренгейты.
/// - Parameter celsius: Температура в Цельсиях.
/// - Returns: Температура в Фаренгейтах.
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return celsius * 9/5 + 32
}

/// Находит максимальное из трех чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
///   - c: Третье число.
/// - Returns: Максимальное число.
func maxOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max(a, max(b, c))
}

/// Проверяет четность числа.
/// - Parameter number: Число.
/// - Returns: `true`, если число четное.
func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Возводит число в степень.
/// - Parameters:
///   - base: Основание.
///   - exponent: Показатель степени.
/// - Returns: Результат возведения в степень.
func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

/// Считает количество символов в строке.
/// - Parameter str: Входная строка.
/// - Returns: Количество символов.
func countCharacters(_ str: String) -> Int {
    return str.count
}

/// Переворачивает массив.
/// - Parameter array: Входной массив.
/// - Returns: Перевернутый массив.
func reversedArray<T>(_ array: [T]) -> [T] {
    return array.reversed()
}

/// Проверяет наличие элемента в массиве.
/// - Parameters:
///   - array: Массив.
///   - element: Искомый элемент.
/// - Returns: `true`, если элемент найден.
func contains<T: Equatable>(_ array: [T], _ element: T) -> Bool {
    return array.contains(element)
}

/// Объединяет два массива.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Объединенный массив.
func combineArrays<T>(_ a: [T], _ b: [T]) -> [T] {
    return a + b
}

/// Считает количество гласных в строке.
/// - Parameter str: Входная строка.
/// - Returns: Число гласных.
func countVowels(_ str: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return str.lowercased().filter { vowels.contains($0) }.count
}

/// Удаляет пробелы из строки.
/// - Parameter str: Входная строка.
/// - Returns: Строка без пробелов.
func removeSpaces(_ str: String) -> String {
    return str.replacingOccurrences(of: " ", with: "")
}

/// Возводит элементы массива в квадрат.
/// - Parameter numbers: Массив чисел.
/// - Returns: Массив квадратов.
func squaredNumbers(_ numbers: [Double]) -> [Double] {
    return numbers.map { $0 * $0 }
}

/// Проверяет, является ли год високосным.
/// - Parameter year: Год.
/// - Returns: `true`, если високосный.
func isLeapYear(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
}

/// Вычисляет факториал числа.
/// - Parameter n: Число.
/// - Returns: Факториал.
func factorial(_ n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n - 1)
}

/// Проверяет, является ли число простым.
/// - Parameter number: Число.
/// - Returns: `true`, если число простое.
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<number {
        if number % i == 0 { return false }
    }
    return true
}

/// Конвертирует минуты в часы и минуты.
/// - Parameter minutes: Общее количество минут.
/// - Returns: Кортеж (часы, минуты).
func convertMinutes(_ minutes: Int) -> (hours: Int, minutes: Int) {
    return (minutes / 60, minutes % 60)
}

/// Находит НОД двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Наибольший общий делитель.
func gcd(_ a: Int, _ b: Int) -> Int {
    var (x, y) = (a, b)
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}

/// Находит НОК двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Наименьшее общее кратное.
func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

/// Проверяет уникальность элементов массива.
/// - Parameter array: Массив.
/// - Returns: `true`, если все элементы уникальны.
func allUnique<T: Hashable>(_ array: [T]) -> Bool {
    return Set(array).count == array.count
}

/// Капитализирует первую букву строки.
/// - Parameter str: Входная строка.
/// - Returns: Строка с заглавной первой буквой.
func capitalizeFirstLetter(_ str: String) -> String {
    guard !str.isEmpty else { return str }
    return str.prefix(1).uppercased() + str.dropFirst()
}

/// Считает количество заданного символа в строке.
/// - Parameters:
///   - str: Строка.
///   - char: Искомый символ.
/// - Returns: Количество вхождений.
func countCharacter(_ str: String, _ char: Character) -> Int {
    return str.filter { $0 == char }.count
}

/// Извлекает цифры из строки.
/// - Parameter str: Входная строка.
/// - Returns: Массив цифр.
func extractNumbers(_ str: String) -> [Int] {
    return str.compactMap { Int(String($0)) }
}

/// Проверяет отсортирован ли массив.
/// - Parameter array: Массив чисел.
/// - Returns: `true`, если отсортирован.
func isSorted(_ array: [Int]) -> Bool {
    return array == array.sorted()
}

/// Генерирует приветствие.
/// - Parameter name: Имя.
/// - Returns: Приветственная строка.
func greeting(_ name: String) -> String {
    return "Hello, \(name)!"
}

/// Генерирует случайное число в диапазоне.
/// - Parameters:
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Случайное число.
func randomNumber(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

/// Проверяет, является ли число квадратом другого.
/// - Parameters:
///   - a: Число.
///   - b: Возможный квадрат.
/// - Returns: `true`, если b = a².
func isSquare(_ a: Int, of b: Int) -> Bool {
    return a * a == b
}

/// Суммирует элементы массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Сумма элементов.
func sumArray(_ numbers: [Double]) -> Double {
    return numbers.reduce(0, +)
}

/// Находит минимальный элемент массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Минимальное значение.
func findMin(_ numbers: [Int]) -> Int {
    return numbers.min() ?? 0
}

/// Преобразует строку в массив символов.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToArray(_ str: String) -> [Character] {
    return Array(str)
}

/// Заменяет подстроку в строке.
/// - Parameters:
///   - original: Исходная строка.
///   - old: Заменяемая подстрока.
///   - new: Новая подстрока.
/// - Returns: Модифицированная строка.
func replaceSubstring(_ original: String, _ old: String, _ new: String) -> String {
    return original.replacingOccurrences(of: old, with: new)
}

/// Проверяет пустую строку или пробелы.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пуста или содержит только пробелы.
func isBlank(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Проверяет анаграммы.
/// - Parameters:
///   - a: Первая строка.
///   - b: Вторая строка.
/// - Returns: `true`, если строки - анаграммы.
func areAnagrams(_ a: String, _ b: String) -> Bool {
    return a.lowercased().sorted() == b.lowercased().sorted()
}

/// Конвертирует десятичное число в двоичное.
/// - Parameter decimal: Десятичное число.
/// - Returns: Двоичная строка.
func decimalToBinary(_ decimal: Int) -> String {
    return String(decimal, radix: 2)
}

/// Проверяет валидность email.
/// - Parameter email: Строка с email.
/// - Returns: `true`, если email валиден.
func isValidEmail(_ email: String) -> Bool {
    let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return email.range(of: pattern, options: .regularExpression) != nil
}

/// Вычисляет индекс массы тела (ИМТ).
/// - Parameters:
///   - weight: Вес в кг.
///   - height: Рост в метрах.
/// - Returns: Значение ИМТ.
func calculateBMI(weight: Double, height: Double) -> Double {
    return weight / (height * height)
}

/// Конвертирует метры в километры.
/// - Parameter meters: Значение в метрах.
/// - Returns: Значение в километрах.
func metersToKilometers(_ meters: Double) -> Double {
    return meters / 1000
}

/// Форматирует число как валюту.
/// - Parameters:
///   - number: Число.
///   - currency: Код валюты (например, "USD").
///   - locale: Локаль (по умолчанию текущая).
/// - Returns: Отформатированная строка.
func formatCurrency(_ number: Double, currency: String, locale: Locale = .current) -> String? {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = currency
    formatter.locale = locale
    return formatter.string(from: NSNumber(value: number))
}

/// Проверяет вхождение подстроки без учета регистра.
/// - Parameters:
///   - str: Строка.
///   - substring: Подстрока.
/// - Returns: `true`, если содержит.
func containsCaseInsensitive(_ str: String, _ substring: String) -> Bool {
    return str.lowercased().contains(substring.lowercased())
}

/// Удаляет HTML теги из строки.
/// - Parameter html: HTML строка.
/// - Returns: Текст без тегов.
func removeHTMLTags(_ html: String) -> String {
    return html.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
}

/// Считает количество слов в строке.
/// - Parameter str: Входная строка.
/// - Returns: Число слов.
func countWords(_ str: String) -> Int {
    return str.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }.count
}

/// Сортирует массив строк по алфавиту.
/// - Parameter strings: Массив строк.
/// - Returns: Отсортированный массив.
func sortStringsAlphabetically(_ strings: [String]) -> [String] {
    return strings.sorted()
}

/// Преобразует словарь в массив кортежей.
/// - Parameter dict: Входной словарь.
/// - Returns: Массив кортежей (ключ, значение).
func dictionaryToTuples<T: Hashable, U>(_ dict: [T: U]) -> [(T, U)] {
    return Array(dict)
}

/// Проверяет условие для всех элементов массива.
/// - Parameters:
///   - array: Массив.
///   - condition: Условие (замыкание).
/// - Returns: `true`, если все элементы удовлетворяют условию.
func allSatisfy<T>(_ array: [T], _ condition: (T) -> Bool) -> Bool {
    return array.allSatisfy(condition)
}

/// Конвертирует римские цифры в целое число.
/// - Parameter roman: Римское число.
/// - Returns: Целое число.
func romanToInt(_ roman: String) -> Int {
    let values: [Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    var total = 0
    var prev = 0
    for char in roman.reversed() {
        let value = values[char] ?? 0
        total += (value >= prev) ? value : -value
        prev = value
    }
    return total
}

/// Вычисляет сумму налога.
/// - Parameters:
///   - amount: Сумма.
///   - taxRate: Процент налога.
/// - Returns: Сумма налога.
func calculateTax(amount: Double, taxRate: Double) -> Double {
    return amount * taxRate / 100
}

/// Проверяет, является ли массив подмножеством.
/// - Parameters:
///   - subset: Подмножество.
///   - set: Основное множество.
/// - Returns: `true`, если subset содержится в set.
func isSubset<T: Hashable>(_ subset: [T], of set: [T]) -> Bool {
    let setSet = Set(set)
    return subset.allSatisfy { setSet.contains($0) }
}

/// Вычисляет среднее значение массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Среднее значение.
func arrayAverage(_ numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Находит наиболее частый элемент массива.
/// - Parameter array: Массив.
/// - Returns: Самый частый элемент.
func mostFrequent<T: Hashable>(_ array: [T]) -> T? {
    let counts = array.reduce(into: [:]) { $0[$1, default:0] += 1 }
    return counts.max { $0.value < $1.value }?.key
}

/// Преобразует строку в CamelCase.
/// - Parameter str: Входная строка.
/// - Returns: Строка в CamelCase.
func toCamelCase(_ str: String) -> String {
    let parts = str.components(separatedBy: CharacterSet.alphanumerics.inverted)
    guard let first = parts.first else { return "" }
    let rest = parts.dropFirst().map { $0.capitalized }
    return first + rest.joined()
}

/// Шифрует строку шифром Цезаря.
/// - Parameters:
///   - str: Исходная строка.
///   - shift: Сдвиг.
///   - encrypt: true - шифрование, false - дешифровка.
/// - Returns: Результирующая строка.
func caesarCipher(_ str: String, shift: Int, encrypt: Bool) -> String {
    let shift = encrypt ? shift : 26 - shift
    return String(str.unicodeScalars.map { c in
        if c.isASCII && c.isLetter {
            let base = c.value >= 65 && c.value <= 90 ? 65 : 97
            return Character(UnicodeScalar((Int(c.value) - base + shift) % 26 + base)!)
        }
        return Character(c)
    })
}

/// Проверяет баланс скобок в строке.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если скобки сбалансированы.
func isBalancedParentheses(_ str: String) -> Bool {
    var stack = 0
    for char in str {
        if char == "(" { stack += 1 }
        else if char == ")" {
            stack -= 1
            if stack < 0 { return false }
        }
    }
    return stack == 0
}

/// Конвертирует км/ч в м/с.
/// - Parameter kmh: Скорость в км/ч.
/// - Returns: Скорость в м/с.
func kmhToMs(_ kmh: Double) -> Double {
    return kmh * 1000 / 3600
}

/// Генерирует UUID.
/// - Returns: Строка UUID.
func generateUUID() -> String {
    return UUID().uuidString
}

/// Проверяет валидность номера телефона (простая проверка).
/// - Parameter phone: Номер телефона.
/// - Returns: `true`, если номер валиден.
func isValidPhone(_ phone: String) -> Bool {
    let pattern = "^\\+?\\d{10,}$"
    return phone.range(of: pattern, options: .regularExpression) != nil
}

/// Вычисляет расстояние между двумя точками.
/// - Parameters:
///   - x1: X координата первой точки.
///   - y1: Y координата первой точки.
///   - x2: X координата второй точки.
///   - y2: Y координата второй точки.
/// - Returns: Евклидово расстояние.
func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
}

/// Конвертирует температуру между шкалами.
/// - Parameters:
///   - value: Исходное значение.
///   - from: Исходная шкала (C, F, K).
///   - to: Целевая шкала (C, F, K).
/// - Returns: Конвертированное значение.
func convertTemperature(_ value: Double, from: String, to: String) -> Double {
    switch (from.uppercased(), to.uppercased()) {
    case ("C", "F"): return value * 9/5 + 32
    case ("C", "K"): return value + 273.15
    case ("F", "C"): return (value - 32) * 5/9
    case ("F", "K"): return (value - 32) * 5/9 + 273.15
    case ("K", "C"): return value - 273.15
    case ("K", "F"): return (value - 273.15) * 9/5 + 32
    default: return value
    }
}

/// Проверяет, является ли число степенью двойки.
/// - Parameter number: Число.
/// - Returns: `true`, если число - степень двойки.
func isPowerOfTwo(_ number: Int) -> Bool {
    return number > 0 && (number & (number - 1)) == 0
}

/// Считает разницу в днях между двумя датами.
/// - Parameters:
///   - date1: Первая дата.
///   - date2: Вторая дата.
/// - Returns: Количество дней.
func daysBetween(date1: Date, date2: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: date1, to: date2).day ?? 0
}

/// Проверяет, является ли строка числом.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка может быть конвертирована в число.
func isNumeric(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Вычисляет периметр многоугольника.
/// - Parameter sides: Длины сторон.
/// - Returns: Сумма длин сторон.
func polygonPerimeter(_ sides: Double...) -> Double {
    return sides.reduce(0, +)
}

/// Проверяет наличие дубликатов в массиве.
/// - Parameter array: Массив.
/// - Returns: `true`, если есть дубликаты.
func hasDuplicates<T: Hashable>(_ array: [T]) -> Bool {
    return Set(array).count != array.count
}

/// Считает сумму цифр числа.
/// - Parameter number: Число.
/// - Returns: Сумма цифр.
func sumOfDigits(_ number: Int) -> Int {
    return String(number).compactMap { Int(String($0)) }.reduce(0, +)
}

/// Объединяет массив строк в строку с разделителем.
/// - Parameters:
///   - array: Массив строк.
///   - separator: Разделитель.
/// - Returns: Объединенная строка.
func joinArray(_ array: [String], separator: String) -> String {
    return array.joined(separator: separator)
}

/// Вычисляет n-е число Фибоначчи.
/// - Parameter n: Порядковый номер.
/// - Returns: Число Фибоначчи.
func fibonacci(_ n: Int) -> Int {
    guard n > 1 else { return n }
    return fibonacci(n-1) + fibonacci(n-2)
}

/// Конвертирует секунды в часы, минуты и секунды.
/// - Parameter totalSeconds: Общее количество секунд.
/// - Returns: Кортеж (часы, минуты, секунды).
func secondsToTime(_ totalSeconds: Int) -> (hours: Int, minutes: Int, seconds: Int) {
    return (totalSeconds / 3600, (totalSeconds % 3600) / 60, totalSeconds % 60)
}

/// Считает количество согласных в строке.
/// - Parameter str: Входная строка.
/// - Returns: Количество согласных.
func countConsonants(_ str: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return str.lowercased().filter { $0.isLetter && !vowels.contains($0) }.count
}

/// Проверяет, находится ли точка внутри круга.
/// - Parameters:
///   - x: X координата точки.
///   - y: Y координата точки.
///   - centerX: X координата центра круга.
///   - centerY: Y координата центра круга.
///   - radius: Радиус круга.
/// - Returns: `true`, если точка внутри круга.
func isPointInCircle(x: Double, y: Double, centerX: Double, centerY: Double, radius: Double) -> Bool {
    return pow(x - centerX, 2) + pow(y - centerY, 2) <= pow(radius, 2)
}

/// Вычисляет детерминант матрицы 2x2.
/// - Parameters:
///   - a: Элемент a11.
///   - b: Элемент a12.
///   - c: Элемент a21.
///   - d: Элемент a22.
/// - Returns: Детерминант.
func matrixDeterminant(a: Double, b: Double, c: Double, d: Double) -> Double {
    return a * d - b * c
}

/// Конвертирует двоичную строку в десятичное число.
/// - Parameter binary: Двоичная строка.
/// - Returns: Десятичное число.
func binaryToDecimal(_ binary: String) -> Int? {
    return Int(binary, radix: 2)
}

/// Находит второй по величине элемент массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Второй максимальный элемент.
func secondLargest(_ numbers: [Int]) -> Int? {
    let sorted = numbers.sorted(by: >)
    return sorted.count >= 2 ? sorted[1] : nil
}

/// Проверяет, является ли строка панграммой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если содержит все буквы алфавита.
func isPangram(_ str: String) -> Bool {
    let letters = str.lowercased().filter { $0.isLetter }
    return Set(letters).count >= 26
}

/// Вычисляет цену со скидкой.
/// - Parameters:
///   - price: Исходная цена.
///   - discount: Процент скидки.
/// - Returns: Цена после скидки.
func applyDiscount(price: Double, discount: Double) -> Double {
    return price * (1 - discount / 100)
}

/// Конвертирует градусы в радианы.
/// - Parameter degrees: Угол в градусах.
/// - Returns: Угол в радианах.
func degreesToRadians(_ degrees: Double) -> Double {
    return degrees * .pi / 180
}

/// Проверяет, могут ли три числа быть сторонами треугольника.
/// - Parameters:
///   - a: Первая сторона.
///   - b: Вторая сторона.
///   - c: Третья сторона.
/// - Returns: `true`, если выполняется неравенство треугольника.
func isTriangle(_ a: Double, _ b: Double, _ c: Double) -> Bool {
    return a + b > c && a + c > b && b + c > a
}

/// Вычисляет площадь треугольника по формуле Герона.
/// - Parameters:
///   - a: Первая сторона.
///   - b: Вторая сторона.
///   - c: Третья сторона.
/// - Returns: Площадь треугольника.
func heronsFormula(a: Double, b: Double, c: Double) -> Double? {
    guard isTriangle(a, b, c) else { return nil }
    let s = (a + b + c) / 2
    return sqrt(s * (s - a) * (s - b) * (s - c))
}

/// Генерирует случайный пароль.
/// - Parameter length: Длина пароля.
/// - Returns: Случайный пароль.
func generatePassword(_ length: Int) -> String {
    let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"
    return String((0..<length).map { _ in chars.randomElement()! })
}

/// Проверяет, является ли массив симметричным.
/// - Parameter array: Массив.
/// - Returns: `true`, если массив симметричен.
func isSymmetric<T: Equatable>(_ array: [T]) -> Bool {
    return array == array.reversed()
}

/// Преобразует строку в snake_case.
/// - Parameter str: Входная строка.
/// - Returns: Строка в snake_case.
func toSnakeCase(_ str: String) -> String {
    return str.lowercased().replacingOccurrences(of: " ", with: "_")
}

/// Проверяет, заканчивается ли строка суффиксом.
/// - Parameters:
///   - str: Строка.
///   - suffix: Суффикс.
/// - Returns: `true`, если строка заканчивается суффиксом.
func endsWith(_ str: String, _ suffix: String) -> Bool {
    return str.hasSuffix(suffix)
}

/// Считает количество предложений в строке.
/// - Parameter str: Входная строка.
/// - Returns: Количество предложений.
func countSentences(_ str: String) -> Int {
    return str.components(separatedBy: CharacterSet.sentenceTerminators).filter { !$0.isEmpty }.count
}

/// Извлекает домен из URL.
/// - Parameter url: URL строка.
/// - Returns: Домен или nil.
func extractDomain(_ url: String) -> String? {
    return URL(string: url)?.host
}

/// Проверяет, отсортирован ли массив по возрастанию.
/// - Parameter array: Массив чисел.
/// - Returns: `true`, если массив отсортирован.
func isAscending(_ array: [Int]) -> Bool {
    return array == array.sorted()
}

/// Вычисляет взвешенную сумму.
/// - Parameters:
///   - values: Массив значений.
///   - weights: Массив весов.
/// - Returns: Взвешенная сумма.
func weightedSum(values: [Double], weights: [Double]) -> Double {
    return zip(values, weights).map(*).reduce(0, +)
}

/// Проверяет, можно ли прочитать строку как палиндром.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если возможен палиндром.
func canFormPalindrome(_ str: String) -> Bool {
    let counts = str.filter { $0.isLetter }.reduce(into: [:]) { $0[$1, default:0] += 1 }
    let oddCounts = counts.values.filter { $0 % 2 != 0 }.count
    return oddCounts <= 1
}

/// Вычисляет процентное изменение между двумя числами.
/// - Parameters:
///   - old: Исходное значение.
///   - new: Новое значение.
/// - Returns: Процент изменения.
func percentageChange(old: Double, new: Double) -> Double {
    return ((new - old) / old) * 100
}

/// Проверяет, является ли число положительным.
/// - Parameter number: Число.
/// - Returns: `true`, если число положительное.
func isPositive(_ number: Double) -> Bool {
    return number > 0
}

/// Конвертирует гектары в квадратные метры.
/// - Parameter hectares: Значение в гектарах.
/// - Returns: Значение в квадратных метрах.
func hectaresToSquareMeters(_ hectares: Double) -> Double {
    return hectares * 10000
}

/// Находит медиану массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Медиана.
func median(_ numbers: [Double]) -> Double {
    let sorted = numbers.sorted()
    let mid = sorted.count / 2
    return sorted.count % 2 == 0 ? (sorted[mid] + sorted[mid-1]) / 2 : sorted[mid]
}

/// Проверяет уникальность элементов массива.
/// - Parameter array: Массив.
/// - Returns: `true`, если все элементы уникальны.
func areElementsUnique<T: Hashable>(_ array: [T]) -> Bool {
    return Set(array).count == array.count
}

/// Суммирует два вектора.
/// - Parameters:
///   - a: Первый вектор.
///   - b: Второй вектор.
/// - Returns: Сумма векторов.
func vectorAddition(_ a: [Double], _ b: [Double]) -> [Double]? {
    guard a.count == b.count else { return nil }
    return zip(a, b).map(+)
}

/// Конвертирует время из 12-часового формата в 24-часовой.
/// - Parameter time12: Время в формате "hh:mm AM/PM".
/// - Returns: Время в формате "HH:mm".
func convertTo24HourFormat(_ time12: String) -> String? {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm a"
    guard let date = formatter.date(from: time12) else { return nil }
    formatter.dateFormat = "HH:mm"
    return formatter.string(from: date)
}

/// Проверяет валидность имени пользователя.
/// - Parameter username: Имя пользователя.
/// - Returns: `true`, если имя валидно (только буквы и цифры).
func isValidUsername(_ username: String) -> Bool {
    return username.range(of: "^[a-zA-Z0-9]+$", options: .regularExpression) != nil
}

/// Вычисляет среднее геометрическое.
/// - Parameter numbers: Массив чисел.
/// - Returns: Среднее геометрическое.
func geometricMean(_ numbers: [Double]) -> Double {
    let product = numbers.reduce(1, *)
    return pow(product, 1/Double(numbers.count))
}

/// Проверяет, является ли число совершенным.
/// - Parameter number: Число.
/// - Returns: `true`, если число совершенное.
func isPerfectNumber(_ number: Int) -> Bool {
    guard number > 0 else { return false }
    var sum = 0
    for i in 1..<number {
        if number % i == 0 { sum += i }
    }
    return sum == number
}

/// Конвертирует римские цифры в арабские.
/// - Parameter roman: Римское число.
/// - Returns: Арабское число.
func romanToArabic(_ roman: String) -> Int {
    let values: [Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    var total = 0
    var prevValue = 0
    for char in roman.reversed() {
        let value = values[char] ?? 0
        total += (value >= prevValue) ? value : -value
        prevValue = value
    }
    return total
}

/// Вычисляет количество комбинаций.
/// - Parameters:
///   - n: Общее количество элементов.
///   - k: Размер комбинации.
/// - Returns: Число комбинаций C(n, k).
func combinations(n: Int, k: Int) -> Int {
    func factorial(_ num: Int) -> Int {
        return (1...num).reduce(1, *)
    }
    return factorial(n) / (factorial(k) * factorial(n - k))
}

/// Проверяет, является ли строка IPv4 адресом.
/// - Parameter ip: Строка с адресом.
/// - Returns: `true`, если адрес валиден.
func isValidIPv4(_ ip: String) -> Bool {
    let parts = ip.components(separatedBy: ".")
    guard parts.count == 4 else { return false }
    for part in parts {
        guard let num = Int(part), (0...255).contains(num) else { return false }
    }
    return true
}

/// Преобразует строку в дату.
/// - Parameters:
///   - dateString: Строка с датой.
///   - format: Формат даты (например, "yyyy-MM-dd").
/// - Returns: Объект Date.
func stringToDate(_ dateString: String, format: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.date(from: dateString)
}

/// Считает количество вхождений подстроки.
/// - Parameters:
///   - str: Строка.
///   - substring: Подстрока.
/// - Returns: Количество вхождений.
func countOccurrences(of substring: String, in str: String) -> Int {
    return str.components(separatedBy: substring).count - 1
}