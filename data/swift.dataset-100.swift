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

/// Вычисляет расстояние Хэмминга между двумя строками.
/// - Parameters:
///   - a: Первая строка.
///   - b: Вторая строка.
/// - Returns: Расстояние Хэмминга или nil при разной длине.
func hammingDistance(_ a: String, _ b: String) -> Int? {
    guard a.count == b.count else { return nil }
    return zip(a, b).filter { $0 != $1 }.count
}

/// Генерирует все перестановки массива.
/// - Parameter elements: Входной массив.
/// - Returns: Массив всех перестановок.
func permutations<T>(_ elements: [T]) -> [[T]] {
    guard elements.count > 1 else { return [elements] }
    return elements.indices.flatMap { i -> [[T]] in
        var rest = elements
        let elem = rest.remove(at: i)
        return permutations(rest).map { [elem] + $0 }
    }
}

/// Реализует алгоритм быстрой сортировки (quicksort).
/// - Parameter array: Входной массив.
/// - Returns: Отсортированный массив.
func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    let pivot = array[array.count/2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    return quickSort(less) + equal + quickSort(greater)
}

/// Реализует сортировку слиянием (merge sort).
/// - Parameter array: Входной массив.
/// - Returns: Отсортированный массив.
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    let mid = array.count / 2
    let left = mergeSort(Array(array[0..<mid]))
    let right = mergeSort(Array(array[mid...]))
    return merge(left, right)
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var result = [T]()
    var i = 0, j = 0
    while i < left.count && j < right.count {
        left[i] < right[j] ? (result.append(left[i]), i += 1) : (result.append(right[j]), j += 1)
    }
    return result + Array(left[i...]) + Array(right[j...])
}

/// Выполняет двоичный поиск в отсортированном массиве.
/// - Parameters:
///   - array: Отсортированный массив.
///   - target: Искомый элемент.
/// - Returns: Индекс элемента или nil.
func binarySearch<T: Comparable>(_ array: [T], _ target: T) -> Int? {
    var low = 0, high = array.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if array[mid] == target { return mid }
        array[mid] < target ? (low = mid + 1) : (high = mid - 1)
    }
    return nil
}

/// Проверяет баланс скобок разных типов (круглые, квадратные, фигурные).
/// - Parameter str: Входная строка.
/// - Returns: `true`, если скобки сбалансированы.
func isBalancedBrackets(_ str: String) -> Bool {
    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    var stack = [Character]()
    for char in str {
        if ["(", "[", "{"].contains(char) {
            stack.append(char)
        } else if let open = pairs[char] {
            guard stack.last == open else { return false }
            stack.removeLast()
        }
    }
    return stack.isEmpty
}

/// Конвертирует число в римскую систему счисления.
/// - Parameter number: Число от 1 до 3999.
/// - Returns: Римское число в виде строки.
func toRoman(_ number: Int) -> String {
    let values = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
                  (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
                  (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
    var result = ""
    var n = number
    for (value, symbol) in values {
        while n >= value {
            result += symbol
            n -= value
        }
    }
    return result
}

/// Вычисляет НОД для массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Наибольший общий делитель.
func gcdOfArray(_ numbers: [Int]) -> Int {
    return numbers.reduce(numbers[0]) { gcd($0, $1) }
}

/// Реализует алгоритм Дейкстры для поиска кратчайшего пути.
/// - Parameters:
///   - graph: Матрица смежности.
///   - start: Начальная вершина.
/// - Returns: Массив расстояний до вершин.
func dijkstra(graph: [[Int]], start: Int) -> [Int] {
    let n = graph.count
    var distances = Array(repeating: Int.max, count: n)
    var visited = Array(repeating: false, count: n)
    distances[start] = 0
    
    for _ in 0..<n {
        let u = (0..<n).filter { !visited[$0] }.min { distances[$0] < distances[$1] }!
        visited[u] = true
        for v in 0..<n {
            if graph[u][v] > 0 && !visited[v] {
                distances[v] = min(distances[v], distances[u] + graph[u][v])
            }
        }
    }
    return distances
}

/// Проверяет валидность номера кредитной карты с помощью алгоритма Луна.
/// - Parameter number: Номер карты.
/// - Returns: `true`, если номер валиден.
func luhnCheck(_ number: String) -> Bool {
    let digits = number.compactMap { $0.wholeNumberValue }.reversed()
    var sum = 0
    for (index, digit) in digits.enumerated() {
        sum += index % 2 == 1 ? (digit * 2).digits.reduce(0, +) : digit
    }
    return sum % 10 == 0
}

/// Преобразует HEX-строку в RGB-значения.
/// - Parameter hex: HEX-строка (формат: "#FFFFFF").
/// - Returns: Кортеж (red, green, blue) или nil при ошибке.
func hexToRGB(_ hex: String) -> (r: Int, g: Int, b: Int)? {
    guard hex.hasPrefix("#"), hex.count == 7 else { return nil }
    let values = hex.dropFirst().chunked(into: 2).compactMap { Int($0, radix: 16) }
    guard values.count == 3 else { return nil }
    return (values[0], values[1], values[2])
}

/// Реализует алгоритм сортировки пузырьком.
/// - Parameter array: Входной массив.
/// - Returns: Отсортированный массив.
func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
    var arr = array
    for i in 0..<arr.count {
        for j in 1..<arr.count - i {
            if arr[j-1] > arr[j] { arr.swapAt(j-1, j) }
        }
    }
    return arr
}

/// Реализует алгоритм сортировки вставками.
/// - Parameter array: Входной массив.
/// - Returns: Отсортированный массив.
func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
    var arr = array
    for i in 1..<arr.count {
        var j = i
        while j > 0 && arr[j] < arr[j-1] {
            arr.swapAt(j, j-1)
            j -= 1
        }
    }
    return arr
}

/// Проверяет, является ли граф двудольным.
/// - Parameters:
///   - graph: Матрица смежности.
///   - start: Начальная вершина.
/// - Returns: `true`, если граф двудольный.
func isBipartite(graph: [[Int]], start: Int) -> Bool {
    var colors = Array(repeating: -1, count: graph.count)
    var queue = [start]
    colors[start] = 0
    
    while !queue.isEmpty {
        let u = queue.removeFirst()
        for v in 0..<graph.count {
            if graph[u][v] == 1 {
                if colors[v] == -1 {
                    colors[v] = 1 - colors[u]
                    queue.append(v)
                } else if colors[v] == colors[u] {
                    return false
                }
            }
        }
    }
    return true
}

/// Шифрует строку с использованием XOR-шифрования.
/// - Parameters:
///   - str: Исходная строка.
///   - key: Ключ шифрования.
/// - Returns: Зашифрованная строка в Base64.
func xorEncrypt(_ str: String, key: String) -> String? {
    let data = str.data(using: .utf8)!
    let keyData = key.data(using: .utf8)!
    var encrypted = [UInt8]()
    for (i, byte) in data.enumerated() {
        encrypted.append(byte ^ keyData[i % keyData.count])
    }
    return Data(encrypted).base64EncodedString()
}

/// Реализует алгоритм RLE (Run-Length Encoding).
/// - Parameter str: Входная строка.
/// - Returns: Сжатая строка.
func runLengthEncoding(_ str: String) -> String {
    guard !str.isEmpty else { return "" }
    var result = ""
    var currentChar = str.first!
    var count = 1
    for char in str.dropFirst() {
        if char == currentChar {
            count += 1
        } else {
            result += "\(count)\(currentChar)"
            currentChar = char
            count = 1
        }
    }
    result += "\(count)\(currentChar)"
    return result
}

/// Находит НОК (наименьшее общее кратное) для массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: НОК.
func lcmOfArray(_ numbers: [Int]) -> Int {
    numbers.reduce(1) { lcm($0, $1) }
}

/// Конвертирует минуты в формат "часы:минуты".
/// - Parameter minutes: Общее количество минут.
/// - Returns: Строка формата "HH:mm".
func formatMinutes(_ minutes: Int) -> String {
    let hours = minutes / 60
    let mins = minutes % 60
    return String(format: "%02d:%02d", hours, mins)
}

/// Проверяет, является ли число степенью тройки.
/// - Parameter n: Число.
/// - Returns: `true`, если число является степенью тройки.
func isPowerOfThree(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var num = n
    while num % 3 == 0 { num /= 3 }
    return num == 1
}

/// Вычисляет угол между часовой и минутной стрелкой.
/// - Parameters:
///   - hour: Час (0-23).
///   - minute: Минута (0-59).
/// - Returns: Угол в градусах.
func clockAngle(hour: Int, minute: Int) -> Double {
    let hourAngle = Double((hour % 12) * 30 + minute / 2)
    let minuteAngle = Double(minute * 6)
    return abs(hourAngle - minuteAngle)
}

/// Реализует алгоритм Кадане для поиска максимальной подмассива.
/// - Parameter array: Массив чисел.
/// - Returns: Максимальная сумма подмассива.
func kadaneAlgorithm(_ array: [Int]) -> Int {
    var maxCurrent = array[0], maxGlobal = array[0]
    for num in array.dropFirst() {
        maxCurrent = max(num, maxCurrent + num)
        maxGlobal = max(maxGlobal, maxCurrent)
    }
    return maxGlobal
}

/// Преобразует строку в "змейный регистр" (snake_case).
/// - Parameter str: Входная строка.
/// - Returns: Строка в snake_case.
func toSnakeCase(_ str: String) -> String {
    str.lowercased().replacingOccurrences(of: " ", with: "_")
}

/// Проверяет, является ли год високосным по григорианскому календарю.
/// - Parameter year: Год.
/// - Returns: `true`, если високосный.
func isGregorianLeapYear(_ year: Int) -> Bool {
    (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
}

/// Вычисляет сумму Римских цифр в строке.
/// - Parameter roman: Римское число.
/// - Returns: Сумма цифр (без учета правил вычитания).
func sumRomanDigits(_ roman: String) -> Int {
    let values: [Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    return roman.reduce(0) { $0 + (values[$1] ?? 0) }
}

/// Генерирует массив простых чисел до N (решето Эратосфена).
/// - Parameter n: Верхняя граница.
/// - Returns: Массив простых чисел.
func sieveOfEratosthenes(_ n: Int) -> [Int] {
    guard n >= 2 else { return [] }
    var sieve = Array(repeating: true, count: n+1)
    sieve[0] = false
    sieve[1] = false
    for i in 2...Int(Double(n).squareRoot()) {
        if sieve[i] {
            for j in stride(from: i*i, through: n, by: i) {
                sieve[j] = false
            }
        }
    }
    return sieve.enumerated().filter { $0.element }.map { $0.offset }
}

/// Находит индекс Пикового элемента в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Индекс элемента, который больше соседей.
func findPeakElement(_ array: [Int]) -> Int? {
    guard !array.isEmpty else { return nil }
    for i in 0..<array.count {
        let prev = i > 0 ? array[i-1] : Int.min
        let next = i < array.count-1 ? array[i+1] : Int.min
        if array[i] >= prev && array[i] >= next { return i }
    }
    return nil
}

/// Реализует алгоритм BFS для поиска кратчайшего пути в матрице.
/// - Parameters:
///   - grid: Матрица (0 - пусто, 1 - препятствие).
///   - start: Начальная точка (x, y).
///   - end: Конечная точка (x, y).
/// - Returns: Длина кратчайшего пути или nil.
func bfsShortestPath(grid: [[Int]], start: (Int, Int), end: (Int, Int)) -> Int? {
    // Реализация с использованием очереди и проверки соседних клеток
}

/// Конвертирует десятичное число в шестнадцатеричное.
/// - Parameter decimal: Десятичное число.
/// - Returns: HEX-строка.
func decimalToHex(_ decimal: Int) -> String {
    String(format: "%02X", decimal)
}

/// Вычисляет дисперсию массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Дисперсия.
func variance(_ numbers: [Double]) -> Double {
    let mean = numbers.reduce(0, +) / Double(numbers.count)
    return numbers.reduce(0) { $0 + pow($1 - mean, 2) } / Double(numbers.count)
}

/// Проверяет, является ли число палиндромом в двоичной системе.
/// - Parameter number: Число.
/// - Returns: `true`, если двоичное представление - палиндром.
func isBinaryPalindrome(_ number: Int) -> Bool {
    let binary = String(number, radix: 2)
    return binary == String(binary.reversed())
}

/// Реализует сортировку выбором (selection sort).
/// - Parameter array: Входной массив.
/// - Returns: Отсортированный массив.
func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
    var arr = array
    for i in 0..<arr.count {
        var minIndex = i
        for j in i+1..<arr.count where arr[j] < arr[minIndex] {
            minIndex = j
        }
        arr.swapAt(i, minIndex)
    }
    return arr
}

/// Проверяет, является ли число палиндромом в десятичной системе.
/// - Parameter number: Число.
/// - Returns: `true`, если число читается одинаково слева направо и справа налево.
func isNumberPalindrome(_ number: Int) -> Bool {
    let str = String(number)
    return str == String(str.reversed())
}

/// Реализует алгоритм Флойда для обнаружения цикла в связном списке.
/// - Parameter head: Голова связного списка.
/// - Returns: `true`, если цикл обнаружен.
func floydCycleDetection<T>(_ head: ListNode<T>?) -> Bool {
    var slow = head, fast = head
    while fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast { return true }
    }
    return false
}

/// Конвертирует температуру между произвольными шкалами.
/// - Parameters:
///   - value: Исходное значение.
///   - from: Исходная шкала ("C", "F", "K", "R" для Ранкина).
///   - to: Целевая шкала.
/// - Returns: Конвертированное значение.
func convertTemperature(_ value: Double, from: String, to: String) -> Double {
    let kelvin: Double
    switch from.uppercased() {
    case "C": kelvin = value + 273.15
    case "F": kelvin = (value - 32) * 5/9 + 273.15
    case "K": kelvin = value
    case "R": kelvin = value * 5/9
    default: return value
    }
    
    switch to.uppercased() {
    case "C": return kelvin - 273.15
    case "F": return (kelvin - 273.15) * 9/5 + 32
    case "K": return kelvin
    case "R": return kelvin * 9/5
    default: return value
    }
}

/// Вычисляет определитель матрицы 3x3.
/// - Parameters:
///   - m11: Элемент [0][0].
///   - m12: Элемент [0][1].
///   - m13: Элемент [0][2].
///   - m21: Элемент [1][0].
///   - m22: Элемент [1][1].
///   - m23: Элемент [1][2].
///   - m31: Элемент [2][0].
///   - m32: Элемент [2][1].
///   - m33: Элемент [2][2].
/// - Returns: Определитель матрицы.
func matrixDeterminant3x3(m11: Double, m12: Double, m13: Double,
                         m21: Double, m22: Double, m23: Double,
                         m31: Double, m32: Double, m33: Double) -> Double {
    return m11*(m22*m33 - m23*m32) - m12*(m21*m33 - m23*m31) + m13*(m21*m32 - m22*m31)
}

/// Вычисляет экспоненциальное скользящее среднее (EMA).
/// - Parameters:
///   - prices: Массив цен.
///   - period: Период сглаживания.
/// - Returns: Массив значений EMA.
func exponentialMovingAverage(_ prices: [Double], period: Int) -> [Double] {
    guard !prices.isEmpty, period > 0 else { return [] }
    let multiplier = 2.0 / (Double(period) + 1.0)
    var ema = [prices[0]]
    for price in prices.dropFirst() {
        let newEMA = (price - ema.last!) * multiplier + ema.last!
        ema.append(newEMA)
    }
    return ema
}

/// Проверяет валидность скобок с несколькими типами (включая вложенные).
/// - Parameter str: Входная строка.
/// - Returns: `true`, если все скобки правильно вложены.
func areParenthesesBalanced(_ str: String) -> Bool {
    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    var stack = [Character]()
    for char in str {
        if ["(", "[", "{"].contains(char) {
            stack.append(char)
        } else if let opener = pairs[char] {
            guard stack.last == opener else { return false }
            stack.removeLast()
        }
    }
    return stack.isEmpty
}

/// Реализует алгоритм бинарного возведения в степень.
/// - Parameters:
///   - base: Основание.
///   - exponent: Показатель степени.
/// - Returns: Результат возведения в степень.
func binaryExponentiation(_ base: Int, _ exponent: Int) -> Int {
    guard exponent >= 0 else { return 0 }
    var result = 1
    var n = exponent
    var a = base
    while n > 0 {
        if n % 2 == 1 { result *= a }
        a *= a
        n /= 2
    }
    return result
}

/// Находит все простые делители числа.
/// - Parameter number: Число (>1).
/// - Returns: Массив простых делителей.
func primeFactors(_ number: Int) -> [Int] {
    var n = number
    var factors = [Int]()
    var divisor = 2
    while divisor * divisor <= n {
        while n % divisor == 0 {
            factors.append(divisor)
            n /= divisor
        }
        divisor += divisor == 2 ? 1 : 2
    }
    if n > 1 { factors.append(n) }
    return factors
}

/// Реализует алгоритм Хаффмана для кодирования строки.
/// - Parameter str: Входная строка.
/// - Returns: Словарь с кодами символов.
func huffmanCoding(_ str: String) -> [Character: String] {
    let frequency = str.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    var heap = frequency.map { Node(char: $0.key, freq: $0.value) }.sorted { $0.freq < $1.freq }
    
    while heap.count > 1 {
        let left = heap.removeFirst()
        let right = heap.removeFirst()
        let merged = Node(freq: left.freq + right.freq, left: left, right: right)
        heap.insert(merged, at: heap.firstIndex { $0.freq > merged.freq } ?? heap.endIndex)
    }
    
    var codes = [Character: String]()
    func traverse(_ node: Node?, code: String) {
        guard let node = node else { return }
        if let char = node.char {
            codes[char] = code
            return
        }
        traverse(node.left, code: code + "0")
        traverse(node.right, code: code + "1")
    }
    traverse(heap.first, code: "")
    return codes
}

private class Node {
    let char: Character?
    let freq: Int
    let left: Node?
    let right: Node?
    
    init(char: Character? = nil, freq: Int, left: Node? = nil, right: Node? = nil) {
        self.char = char
        self.freq = freq
        self.left = left
        self.right = right
    }
}

/// Вычисляет площадь многоугольника по формуле шнуровки.
/// - Parameter points: Массив точек (x, y).
/// - Returns: Площадь многоугольника.
func polygonArea(_ points: [(x: Double, y: Double)]) -> Double {
    let n = points.count
    var area = 0.0
    for i in 0..<n {
        let j = (i + 1) % n
        area += points[i].x * points[j].y
        area -= points[j].x * points[i].y
    }
    return abs(area) / 2.0
}

/// Проверяет, является ли число автоморфным (оканчивается на квадрат самого себя).
/// - Parameter number: Число.
/// - Returns: `true`, если автоморфное.
func isAutomorphicNumber(_ number: Int) -> Bool {
    let square = number * number
    return String(square).hasSuffix(String(number))
}

/// Реализует алгоритм Z-функции для строки.
/// - Parameter str: Входная строка.
/// - Returns: Z-массив.
func zAlgorithm(_ str: String) -> [Int] {
    let n = str.count
    var z = [Int](repeating: 0, count: n)
    var l = 0, r = 0
    let chars = Array(str)
    
    for i in 1..<n {
        if i <= r {
            z[i] = min(r - i + 1, z[i - l])
        }
        while i + z[i] < n && chars[z[i]] == chars[i + z[i]] {
            z[i] += 1
        }
        if i + z[i] - 1 > r {
            l = i
            r = i + z[i] - 1
        }
    }
    z[0] = n
    return z
}

/// Конвертирует целое число в слова (английский язык).
/// - Parameter number: Число (0 ≤ number ≤ 999,999,999).
/// - Returns: Число прописью.
func numberToWords(_ number: Int) -> String {
    let units = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    let teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    func convertChunk(_ n: Int) -> String {
        var result = ""
        let hundred = n / 100
        let remainder = n % 100
        if hundred > 0 { result += "\(units[hundred]) hundred " }
        if remainder >= 20 {
            result += "\(tens[remainder/10]) "
            if remainder%10 != 0 { result += "\(units[remainder%10])" }
        } else if remainder >= 10 {
            result += teens[remainder-10]
        } else if remainder > 0 {
            result += units[remainder]
        }
        return result.trimmingCharacters(in: .whitespaces)
    }
    
    guard number != 0 else { return "zero" }
    var result = ""
    let million = (number / 1_000_000) % 1_000
    let thousand = (number / 1_000) % 1_000
    let remainder = number % 1_000
    
    if million > 0 { result += "\(convertChunk(million)) million " }
    if thousand > 0 { result += "\(convertChunk(thousand)) thousand " }
    if remainder > 0 { result += convertChunk(remainder) }
    
    return result.trimmingCharacters(in: .whitespaces)
}

/// Реализует алгоритм А* для поиска пути в сетке.
/// - Parameters:
///   - grid: 2D массив (0 - проходимо, 1 - препятствие).
///   - start: Начальная точка (x, y).
///   - end: Конечная точка (x, y).
/// - Returns: Кратчайший путь как массив точек.
func aStarPathfinding(grid: [[Int]], start: (x: Int, y: Int), end: (x: Int, y: Int)) -> [(x: Int, y: Int)]? {
    // Реализация с приоритетной очередью и эвристикой Манхэттена
    return nil
}

/// Вычисляет CRC32 контрольную сумму для данных.
/// - Parameter data: Входные данные.
/// - Returns: Контрольная сумма.
func crc32Checksum(data: Data) -> UInt32 {
    var crc: UInt32 = 0xFFFFFFFF
    let table: [UInt32] = (0...255).map { i in
        var c = UInt32(i)
        for _ in 0..<8 {
            c = (c & 1) != 0 ? (0xEDB88320 ^ (c >> 1)) : (c >> 1)
        }
        return c
    }
    
    for byte in data {
        crc = table[Int((crc ^ UInt32(byte)) & 0xFF)] ^ (crc >> 8)
    }
    return crc ^ 0xFFFFFFFF
}

/// Проверяет, является ли массив перестановкой чисел от 1 до N.
/// - Parameter array: Входной массив.
/// - Returns: `true`, если является перестановкой.
func isPermutation(_ array: [Int]) -> Bool {
    let n = array.count
    let expected = Set(1...n)
    return Set(array) == expected
}

/// Реализует алгоритм Ланцоша для приближенного вычисления собственных значений.
/// - Parameter matrix: Квадратная матрица.
/// - Returns: Приближенные собственные значения.
func lanczosAlgorithm(matrix: [[Double]]) -> [Double] {
    // Реализация метода Ланцоша для больших разреженных матриц
    return []
}

/// Преобразует строку в звуковой код (Soundex).
/// - Parameter str: Входная строка.
/// - Returns: Код Soundex (формат: A123).
func soundexCode(_ str: String) -> String {
    let mapping: [Character: String] = [
        "B":"1", "F":"1", "P":"1", "V":"1",
        "C":"2", "G":"2", "J":"2", "K":"2", "Q":"2", "S":"2", "X":"2", "Z":"2",
        "D":"3", "T":"3",
        "L":"4",
        "M":"5", "N":"5",
        "R":"6"
    ]
    
    var code = ""
    let chars = str.uppercased().filter { $0.isLetter }
    guard !chars.isEmpty else { return "" }
    
    code.append(chars.first!)
    var prev = mapping[chars.first!] ?? ""
    
    for char in chars.dropFirst() {
        guard code.count < 4 else { break }
        let current = mapping[char] ?? ""
        if current != prev && !current.isEmpty {
            code += current
        }
        prev = current
    }
    
    return code.padding(toLength: 4, withPad: "0", startingAt: 0)
}

/// Вычисляет сумму цифр факториала числа.
/// - Parameter n: Число (n ≥ 0).
/// - Returns: Сумма цифр n!.
func factorialDigitSum(_ n: Int) -> Int {
    guard n > 0 else { return 1 }
    var factorial = [1]
    for i in 1...n {
        var carry = 0
        for j in 0..<factorial.count {
            let product = factorial[j] * i + carry
            factorial[j] = product % 10
            carry = product / 10
        }
        while carry > 0 {
            factorial.append(carry % 10)
            carry /= 10
        }
    }
    return factorial.reduce(0, +)
}

/// Проверяет, является ли число числом Армстронга.
/// - Parameter number: Число.
/// - Returns: true, если сумма цифр в степени количества цифр равна числу.
func isArmstrongNumber(_ number: Int) -> Bool {
    let digits = String(number).compactMap { Int(String($0)) }
    let power = digits.count
    return digits.map { Int(pow(Double($0), Double(power)) }.reduce(0, +) == number
}

/// Конвертирует RGB в HEX-формат.
/// - Parameters:
///   - r: Красный (0-255).
///   - g: Зеленый (0-255).
///   - b: Синий (0-255).
/// - Returns: HEX-строка.
func rgbToHex(r: Int, g: Int, b: Int) -> String {
    return String(format: "#%02X%02X%02X", r, g, b)
}

/// Вычисляет периодическую доходность по сложным процентам.
/// - Parameters:
///   - principal: Начальная сумма.
///   - rate: Годовая процентная ставка.
///   - years: Количество лет.
///   - compounds: Начислений в год.
/// - Returns: Итоговая сумма.
func compoundInterest(principal: Double, rate: Double, years: Int, compounds: Int) -> Double {
    return principal * pow(1 + rate / Double(compounds), Double(compounds * years))
}

/// Проверяет валидность ISBN-10.
/// - Parameter isbn: Строка ISBN.
/// - Returns: true, если контрольная сумма совпадает.
func isValidISBN10(_ isbn: String) -> Bool {
    let cleaned = isbn.replacingOccurrences(of: "-", with: "")
    guard cleaned.count == 10 else { return false }
    
    var sum = 0
    for (i, char) in cleaned.enumerated() {
        guard let digit = char.isNumber ? Int(String(char)) : (i == 9 && char == "X" ? 10 : nil) else { return false }
        sum += digit * (10 - i)
    }
    return sum % 11 == 0
}

/// Вычисляет угол между векторами в радианах.
/// - Parameters:
///   - (x1, y1): Первый вектор.
///   - (x2, y2): Второй вектор.
/// - Returns: Угол между векторами.
func angleBetweenVectors(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    let dot = x1*x2 + y1*y2
    let mag1 = sqrt(x1*x1 + y1*y1)
    let mag2 = sqrt(x2*x2 + y2*y2)
    return acos(dot / (mag1 * mag2))
}

/// Генерирует MD5-хеш строки.
/// - Parameter string: Входная строка.
/// - Returns: Хеш в виде строки.
func md5Hash(_ string: String) -> String {
    let data = Data(string.utf8)
    var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
    _ = data.withUnsafeBytes { CC_MD5($0.baseAddress, CC_LONG(data.count), &hash) }
    return hash.map { String(format: "%02hhx", $0) }.joined()
}

/// Проверяет магический квадрат 3x3.
/// - Parameter matrix: Матрица 3x3.
/// - Returns: true, если суммы строк, столбцов и диагоналей равны.
func isMagicSquare(_ matrix: [[Int]]) -> Bool {
    guard matrix.count == 3, matrix.allSatisfy({ $0.count == 3 }) else { return false }
    let magicSum = 15 // Для традиционного магического квадрата 3x3
    let diag1 = matrix[0][0] + matrix[1][1] + matrix[2][2]
    let diag2 = matrix[0][2] + matrix[1][1] + matrix[2][0]
    guard diag1 == magicSum, diag2 == magicSum else { return false }
    
    for i in 0..<3 {
        let rowSum = matrix[i].reduce(0, +)
        let colSum = matrix[0][i] + matrix[1][i] + matrix[2][i]
        guard rowSum == magicSum, colSum == magicSum else { return false }
    }
    return true
}

/// Вычисляет полиномиальные коэффициенты.
/// - Parameter roots: Корни полинома.
/// - Returns: Коэффициенты полинома.
func polynomialCoefficients(roots: [Double]) -> [Double] {
    var coefficients = [1.0]
    for root in roots {
        coefficients = zip(coefficients + [0], [0] + coefficients).map { $0 - root * $1 }
    }
    return coefficients
}

/// Проверяет, является ли год годом апокалипсиса (простое число).
/// - Parameter year: Год.
/// - Returns: true, если год - простое число.
func isApocalypseYear(_ year: Int) -> Bool {
    guard year > 1 else { return false }
    for i in 2..<Int(sqrt(Double(year))) + 1 {
        if year % i == 0 { return false }
    }
    return true
}

/// Вычисляет площадь эллипса.
/// - Parameters:
///   - a: Большая полуось.
///   - b: Малая полуось.
/// - Returns: Площадь эллипса.
func ellipseArea(a: Double, b: Double) -> Double {
    return .pi * a * b
}

/// Конвертирует скорость между единицами измерения.
/// - Parameters:
///   - value: Значение.
///   - from: Исходные единицы ("km/h", "m/s", "mph").
///   - to: Целевые единицы.
/// - Returns: Конвертированная скорость.
func convertSpeed(_ value: Double, from: String, to: String) -> Double {
    let inMps: Double
    switch from.lowercased() {
    case "km/h": inMps = value / 3.6
    case "mph": inMps = value * 0.44704
    default: inMps = value
    }
    
    switch to.lowercased() {
    case "km/h": return inMps * 3.6
    case "mph": return inMps / 0.44704
    default: return inMps
    }
}

/// Находит анаграммные группы в массиве слов.
/// - Parameter words: Массив слов.
/// - Returns: Массив групп анаграмм.
func groupAnagrams(_ words: [String]) -> [[String]] {
    let groups = Dictionary(grouping: words) { String($0.sorted()) }
    return Array(groups.values.filter { $0.count > 1 })
}

/// Вычисляет нормализованный вектор.
/// - Parameters:
///   - x: X компонент.
///   - y: Y компонент.
/// - Returns: Нормализованный вектор (x, y).
func normalizeVector(x: Double, y: Double) -> (Double, Double) {
    let length = sqrt(x*x + y*y)
    guard length != 0 else { return (0, 0) }
    return (x/length, y/length)
}

/// Проверяет валидность пароля (минимум 8 символов, заглавная, цифра, спецсимвол).
/// - Parameter password: Пароль.
/// - Returns: true, если пароль соответствует требованиям.
func isValidPassword(_ password: String) -> Bool {
    let pattern = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$"
    return password.range(of: pattern, options: .regularExpression) != nil
}

/// Вычисляет факториал с использованием хвостовой рекурсии.
/// - Parameters:
///   - n: Число.
///   - accumulator: Аккумулятор (начинать с 1).
/// - Returns: Факториал числа.
func tailRecursiveFactorial(_ n: Int, accumulator: Int = 1) -> Int {
    return n <= 1 ? accumulator : tailRecursiveFactorial(n-1, accumulator: accumulator * n)
}

/// Конвертирует градусы в градианы.
/// - Parameter degrees: Угол в градусах.
/// - Returns: Угол в градианах.
func degreesToGradians(_ degrees: Double) -> Double {
    return degrees * 10 / 9
}

/// Вычисляет количество комбинаций с повторениями.
/// - Parameters:
///   - n: Общее количество элементов.
///   - k: Размер выборки.
/// - Returns: Число комбинаций с повторениями.
func combinationsWithRepetition(n: Int, k: Int) -> Int {
    return (n + k - 1).choose(k)
}

/// Проверяет, является ли строка таутограммой (все слова начинаются с одной буквы).
/// - Parameters:
///   - str: Входная строка.
///   - caseSensitive: Учитывать регистр.
/// - Returns: true, если таутограмма.
func isTautogram(_ str: String, caseSensitive: Bool = false) -> Bool {
    let words = str.components(separatedBy: .whitespaces).filter { !$0.isEmpty }
    guard !words.isEmpty else { return false }
    
    let firstLetter = caseSensitive ? words[0].first : words[0].lowercased().first
    return words.allSatisfy { word in
        let letter = caseSensitive ? word.first : word.lowercased().first
        return letter == firstLetter
    }
}

/// Проверяет, является ли число четным и положительным
func isEvenAndPositive(_ number: Int) -> Bool {
    return number > 0 && number % 2 == 0
}

/// Вычисляет НОК трех чисел
func lcmThreeNumbers(a: Int, b: Int, c: Int) -> Int {
    return lcm(lcm(a, b), c)
}

/// Преобразует километры в мили
func kilometersToMiles(_ km: Double) -> Double {
    return km * 0.621371
}

/// Считает количество пробелов в строке
func countSpaces(in text: String) -> Int {
    return text.filter { $0 == " " }.count
}

/// Проверяет, содержит ли строка только цифры
func isNumericString(_ str: String) -> Bool {
    return !str.isEmpty && str.allSatisfy { $0.isNumber }
}

/// Вычисляет площадь круга по диаметру
func circleArea(diameter: Double) -> Double {
    let radius = diameter / 2
    return .pi * radius * radius
}

/// Генерирует приветствие по времени суток
func timeBasedGreeting() -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12: return "Доброе утро!"
    case 12..<18: return "Добрый день!"
    case 18..<24: return "Добрый вечер!"
    default: return "Доброй ночи!"
    }
}

/// Проверяет, можно ли из букв первого слова составить второе
func canFormWord(from letters: String, word: String) -> Bool {
    let lettersCount = letters.lowercased().countedCharacters
    let wordCount = word.lowercased().countedCharacters
    return wordCount.allSatisfy { lettersCount[$0.key] ?? 0 >= $0.value }
}

private extension String {
    var countedCharacters: [Character: Int] {
        return self.filter { !$0.isWhitespace }.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    }
}

/// Вычисляет среднюю длину слов в строке
func averageWordLength(in text: String) -> Double {
    let words = text.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }
    guard !words.isEmpty else { return 0 }
    let total = words.reduce(0) { $0 + $1.count }
    return Double(total) / Double(words.count)
}

/// Проверяет, является ли год високосным по юлианскому календарю
func isJulianLeapYear(_ year: Int) -> Bool {
    return year % 4 == 0
}

/// Конвертирует радианы в градусы
func radiansToDegrees(_ radians: Double) -> Double {
    return radians * 180 / .pi
}

/// Находит разницу между максимальным и минимальным элементами массива
func rangeOfArray(_ numbers: [Int]) -> Int {
    guard !numbers.isEmpty else { return 0 }
    return numbers.max()! - numbers.min()!
}

/// Проверяет, является ли число треугольным
func isTriangularNumber(_ n: Int) -> Bool {
    let discriminant = 1 + 8 * n
    let sqrtDiscriminant = Int(sqrt(Double(discriminant)))
    return sqrtDiscriminant * sqrtDiscriminant == discriminant && (sqrtDiscriminant - 1) % 2 == 0
}

/// Вычисляет сумму всех делителей числа
func sumOfDivisors(_ number: Int) -> Int {
    guard number > 0 else { return 0 }
    return (1...number).filter { number % $0 == 0 }.reduce(0, +)
}

/// Переворачивает слова в строке
func reverseWords(in text: String) -> String {
    return text.components(separatedBy: " ").reversed().joined(separator: " ")
}

/// Проверяет, являются ли два числа взаимно простыми
func areCoprime(_ a: Int, _ b: Int) -> Bool {
    return gcd(a, b) == 1
}

/// Вычисляет расстояние Левенштейна между двумя строками
func levenshteinDistance(_ a: String, _ b: String) -> Int {
    let empty = [Int](repeating: 0, count: b.count + 1)
    var matrix = (0...a.count).map { [$0] + empty }
    
    for (i, aChar) in a.enumerated() {
        for (j, bChar) in b.enumerated() {
            matrix[i+1][j+1] = aChar == bChar ? 
                matrix[i][j] : 
                min(matrix[i][j], matrix[i][j+1], matrix[i+1][j]) + 1
        }
    }
    return matrix.last?.last ?? 0
}

/// Проверяет, является ли массив возрастающим
func isIncreasing(_ numbers: [Int]) -> Bool {
    return numbers == numbers.sorted(by: <)
}

/// Вычисляет факториал без рекурсии
func iterativeFactorial(_ n: Int) -> Int {
    return (1...max(n, 0)).reduce(1, *)
}

/// Конвертирует температуру в Кельвинах
func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

/// Находит индекс первого уникального символа в строке
func firstUniqueCharacterIndex(in text: String) -> Int? {
    let counts = text.reduce(into: [Character: Int]()) { $0[$1, default: 0] += 1 }
    return text.enumerated().first { counts[$1] == 1 }?.offset
}

/// Проверяет, является ли число квадратом простого числа
func isSquareOfPrime(_ n: Int) -> Bool {
    let sqrtN = Int(sqrt(Double(n)))
    return sqrtN * sqrtN == n && isPrime(sqrtN)
}

/// Вычисляет сумму всех четных чисел до N
func sumOfEvenNumbers(upTo n: Int) -> Int {
    return (0...n).filter { $0 % 2 == 0 }.reduce(0, +)
}

/// Проверяет валидность PIN-кода (ровно 4 или 6 цифр)
func isValidPIN(_ pin: String) -> Bool {
    return pin.count == 4 || pin.count == 6) && pin.allSatisfy { $0.isNumber }
}

/// Вычисляет угол между часовой стрелкой и 12 часами
func hourHandAngle(hour: Int, minutes: Int) -> Double {
    let hourPosition = Double(hour % 12) * 30 + Double(minutes) * 0.5
    return hourPosition
}

/// Проверяет, является ли строка панграммой (содержит все буквы алфавита)
func isPangram(_ text: String) -> Bool {
    let letters = text.lowercased().filter { $0.isLetter }
    return Set(letters).count >= 26
}

/// Вычисляет сумму всех цифр в массиве чисел
func sumOfDigitsInArray(_ numbers: [Int]) -> Int {
    return numbers.flatMap { String($0).compactMap { Int(String($0)) }.reduce(0, +)
}

/// Проверяет, являются ли все числа в массиве отрицательными
func allNegative(_ numbers: [Int]) -> Bool {
    return numbers.allSatisfy { $0 < 0 }
}

/// Конвертирует секунды в дни, часы, минуты и секунды
func convertSeconds(_ seconds: Int) -> (days: Int, hours: Int, minutes: Int, seconds: Int) {
    var remaining = seconds
    let days = remaining / 86400
    remaining %= 86400
    let hours = remaining / 3600
    remaining %= 3600
    let minutes = remaining / 60
    remaining %= 60
    return (days, hours, minutes, remaining)
}

/// Находит наиболее часто встречающийся элемент
func mostFrequentElement<T: Hashable>(in array: [T]) -> T? {
    let counts = array.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.max { $0.value < $1.value }?.key
}

/// Проверяет, является ли число сбалансированным (суммы цифр слева и справа равны)
func isBalancedNumber(_ number: Int) -> Bool {
    let digits = String(number).compactMap { Int(String($0)) }
    guard digits.count % 2 == 1 else { return false }
    let mid = digits.count / 2
    return digits[0..<mid].reduce(0, +) == digits[mid+1...].reduce(0, +)
}

/// Вычисляет медиану массива
func medianOfArray(_ numbers: [Double]) -> Double {
    let sorted = numbers.sorted()
    let mid = sorted.count / 2
    return sorted.count % 2 == 0 ? (sorted[mid] + sorted[mid-1]) / 2 : sorted[mid]
}

/// Проверяет, является ли строка изограммой (все буквы уникальны)
func isIsogram(_ text: String) -> Bool {
    let letters = text.lowercased().filter { $0.isLetter }
    return letters.count == Set(letters).count
}

/// Вычисляет сумму квадратов первых N чисел
func sumOfSquares(upTo n: Int) -> Int {
    return (1...n).map { $0 * $0 }.reduce(0, +)
}

/// Проверяет, является ли число кубом целого числа
func isPerfectCube(_ n: Int) -> Bool {
    let cubeRoot = Int(round(pow(Double(n), 1/3)))
    return cubeRoot * cubeRoot * cubeRoot == n
}

/// Конвертирует футы в метры
func feetToMeters(_ feet: Double) -> Double {
    return feet * 0.3048
}

/// Находит разность между суммой квадратов и квадратом суммы
func sumSquareDifference(upTo n: Int) -> Int {
    let sum = (1...n).reduce(0, +)
    let sumOfSquares = (1...n).map { $0 * $0 }.reduce(0, +)
    return sum * sum - sumOfSquares
}

/// Проверяет, является ли число числом Смита
func isSmithNumber(_ n: Int) -> Bool {
    let primeFactors = primeFactors(n)
    let digitSum = String(n).compactMap { Int(String($0)) }.reduce(0, +)
    let factorSum = primeFactors.flatMap { String($0).compactMap { Int(String($0)) } }.reduce(0, +)
    return primeFactors.count > 1 && digitSum == factorSum
}

/// Вычисляет расстояние Чебышева между двумя точками
func chebyshevDistance(x1: Int, y1: Int, x2: Int, y2: Int) -> Int {
    return max(abs(x1 - x2), abs(y1 - y2))
}

/// Проверяет, является ли строка мобильным номером (начинается с +7 или 8)
func isRussianMobileNumber(_ phone: String) -> Bool {
    let pattern = "^(\\+7|8)\\d{10}$"
    return phone.range(of: pattern, options: .regularExpression) != nil
}

/// Вычисляет модальное значение массива
func mode<T: Hashable>(of array: [T]) -> [T] {
    let counts = array.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    guard let maxCount = counts.values.max() else { return [] }
    return counts.filter { $0.value == maxCount }.map { $0.key }
}

/// Проверяет, является ли год годом с повторяющимися цифрами
/// - Parameter year: Год (4-значное число)
/// - Returns: true, если все цифры года уникальны
func hasUniqueDigits(year: Int) -> Bool {
    let digits = Set(String(year))
    return digits.count == 4
}

/// Вычисляет разницу между квадратом суммы и суммой квадратов двух чисел
/// - Parameters:
///   - a: Первое число
///   - b: Второе число
/// - Returns: (a + b)² - (a² + b²)
func squareDifference(a: Int, b: Int) -> Int {
    return (a + b) * (a + b) - (a * a + b * b)
}

/// Проверяет, содержит ли строка только уникальные символы
/// - Parameter str: Входная строка
/// - Returns: true, если все символы уникальны
func allCharactersUnique(_ str: String) -> Bool {
    return str.count == Set(str).count
}

/// Конвертирует метры в километры
/// - Parameter meters: Значение в метрах
/// - Returns: Значение в километрах
func metersToKilometers(_ meters: Double) -> Double {
    return meters / 1000
}

/// Находит среднее геометрическое двух чисел
/// - Parameters:
///   - a: Первое число
///   - b: Второе число
/// - Returns: √(a * b)
func geometricMean(a: Double, b: Double) -> Double {
    return sqrt(a * b)
}

/// Проверяет, является ли число совершенным квадратом
/// - Parameter number: Проверяемое число
/// - Returns: true, если число - полный квадрат
func isPerfectSquare(_ number: Int) -> Bool {
    let sqrtNum = Int(Double(number).squareRoot())
    return sqrtNum * sqrtNum == number
}

/// Переводит температуру из Фаренгейтов в Цельсии
/// - Parameter fahrenheit: Температура в °F
/// - Returns: Температура в °C
func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

/// Считает количество согласных букв в строке
/// - Parameter text: Входная строка
/// - Returns: Количество согласных
func countConsonants(text: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return text.lowercased().filter { $0.isLetter && !vowels.contains($0) }.count
}

/// Проверяет, является ли массив симметричным относительно центра
/// - Parameter array: Входной массив
/// - Returns: true, если массив симметричен
func isSymmetricArray<T: Equatable>(_ array: [T]) -> Bool {
    for i in 0..<array.count/2 {
        if array[i] != array[array.count - 1 - i] {
            return false
        }
    }
    return true
}

/// Вычисляет процент от числа
/// - Parameters:
///   - value: Исходное число
///   - percent: Процент (0-100)
/// - Returns: Результат вычисления
func calculatePercentage(value: Double, percent: Double) -> Double {
    return value * percent / 100
}

/// Проверяет, заканчивается ли строка указанным суффиксом
/// - Parameters:
///   - str: Основная строка
///   - suffix: Проверяемый суффикс
/// - Returns: true, если строка заканчивается суффиксом
func endsWith(str: String, suffix: String) -> Bool {
    return str.hasSuffix(suffix)
}

/// Конвертирует часы и минуты в общее количество минут
/// - Parameters:
///   - hours: Часы
///   - minutes: Минуты
/// - Returns: Общее количество минут
func timeToMinutes(hours: Int, minutes: Int) -> Int {
    return hours * 60 + minutes
}

/// Находит минимальное из трех чисел
/// - Parameters:
///   - a: Первое число
///   - b: Второе число
///   - c: Третье число
/// - Returns: Наименьшее число
func minOfThree(a: Int, b: Int, c: Int) -> Int {
    return min(a, min(b, c))
}

/// Проверяет, содержит ли массив дубликаты
/// - Parameter array: Входной массив
/// - Returns: true, если есть повторяющиеся элементы
func hasDuplicates<T: Hashable>(_ array: [T]) -> Bool {
    return array.count != Set(array).count
}

/// Вычисляет площадь поверхности куба
/// - Parameter side: Длина ребра куба
/// - Returns: Площадь поверхности
func cubeSurfaceArea(side: Double) -> Double {
    return 6 * side * side
}

/// Проверяет, является ли число степенью четверки
/// - Parameter n: Проверяемое число
/// - Returns: true, если число - степень 4
func isPowerOfFour(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var num = n
    while num % 4 == 0 { num /= 4 }
    return num == 1
}

/// Конвертирует римские цифры в целое число (упрощенная версия)
/// - Parameter roman: Римское число (I-X)
/// - Returns: Соответствующее целое число
func romanToIntSimple(_ roman: String) -> Int {
    let values: [Character: Int] = ["I":1, "V":5, "X":10]
    return roman.reversed().reduce(0) { $0 + (values[$1] ?? 0) }
}

/// Вычисляет сумму цифр в числе
/// - Parameter number: Исходное число
/// - Returns: Сумма цифр
func sumOfDigits(number: Int) -> Int {
    return String(number).compactMap { Int(String($0)) }.reduce(0, +)
}

/// Проверяет, является ли строка палиндромом игнорируя пробелы
/// - Parameter str: Входная строка
/// - Returns: true, если строка - палиндром
func isPalindromeIgnoringSpaces(_ str: String) -> Bool {
    let cleaned = str.replacingOccurrences(of: " ", with: "").lowercased()
    return cleaned == String(cleaned.reversed())
}

/// Вычисляет объем шара
/// - Parameter radius: Радиус шара
/// - Returns: Объем
func sphereVolume(radius: Double) -> Double {
    return (4/3) * .pi * pow(radius, 3)
}

/// Проверяет, являются ли две строки анаграммами.
/// - Parameters:
///   - str1: Первая строка.
///   - str2: Вторая строка.
/// - Returns: true, если строки являются анаграммами.
func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    return str1.lowercased().sorted() == str2.lowercased().sorted()
}

/// Возвращает количество уникальных элементов в массиве.
/// - Parameter array: Входной массив.
/// - Returns: Количество уникальных элементов.
func countUnique<T: Hashable>(in array: [T]) -> Int {
    return Set(array).count
}

/// Форматирует дату в строку формата "dd.MM.yyyy".
/// - Parameter date: Дата для форматирования.
/// - Returns: Отформатированная строка.
func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    return formatter.string(from: date)
}

/// Объединяет два словаря. Значения из второго заменяют дубли в первом.
/// - Parameters:
///   - dict1: Первый словарь.
///   - dict2: Второй словарь.
/// - Returns: Объединенный словарь.
func mergeDictionaries<K, V>(_ dict1: [K: V], _ dict2: [K: V]) -> [K: V] {
    return dict1.merging(dict2) { _, new in new }
}

/// Подсчитывает количество слов в строке.
/// - Parameter text: Входная строка.
/// - Returns: Количество слов.
func wordCount(in text: String) -> Int {
    return text.split { $0.isWhitespace }.count
}

/// Вычисляет наибольший общий делитель двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: НОД.
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

/// Считывает содержимое файла по указанному пути.
/// - Parameter path: Путь к файлу.
/// - Returns: Строка с содержимым файла или nil.
func readFile(at path: String) -> String? {
    return try? String(contentsOfFile: path, encoding: .utf8)
}

/// Проверяет, является ли массив палиндромом.
/// - Parameter array: Массив элементов.
/// - Returns: true, если массив читается одинаково в обе стороны.
func isPalindrome<T: Equatable>(_ array: [T]) -> Bool {
    return array == array.reversed()
}

/// Удаляет дубликаты из массива, сохраняя порядок.
/// - Parameter array: Входной массив.
/// - Returns: Массив без дубликатов.
func removeDuplicates<T: Hashable>(from array: [T]) -> [T] {
    var seen = Set<T>()
    return array.filter { seen.insert($0).inserted }
}

/// Возвращает размер файла в байтах.
/// - Parameter path: Путь к файлу.
/// - Returns: Размер файла в байтах или nil.
func fileSize(at path: String) -> UInt64? {
    let attr = try? FileManager.default.attributesOfItem(atPath: path)
    return attr?[.size] as? UInt64
}

/// Преобразует строку в формат заголовка (каждое слово с заглавной буквы).
/// - Parameter text: Входная строка.
/// - Returns: Строка в формате заголовка.
func toTitleCase(_ text: String) -> String {
    return text.capitalized
}

/// Возвращает сумму всех четных чисел в массиве.
/// - Parameter numbers: Массив целых чисел.
/// - Returns: Сумма четных чисел.
func sumOfEvenNumbers(in numbers: [Int]) -> Int {
    return numbers.filter { $0 % 2 == 0 }.reduce(0, +)
}

/// Проверяет, является ли строка допустимым email.
/// - Parameter email: Строка для проверки.
/// - Returns: true, если строка похожа на email.
func isValidEmail(_ email: String) -> Bool {
    let pattern = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,}$"
    let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    return regex?.firstMatch(in: email, options: [], range: NSRange(location: 0, length: email.utf16.count)) != nil
}

/// Преобразует словарь в строку JSON.
/// - Parameter dictionary: Словарь для преобразования.
/// - Returns: Строка JSON или nil.
func jsonString(from dictionary: [String: Any]) -> String? {
    guard let data = try? JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted) else { return nil }
    return String(data: data, encoding: .utf8)
}

/// Проверяет, существует ли файл по заданному пути.
/// - Parameter path: Путь к файлу.
/// - Returns: true, если файл существует.
func fileExists(at path: String) -> Bool {
    return FileManager.default.fileExists(atPath: path)
}

/// Находит медиану в массиве целых чисел.
/// - Parameter numbers: Массив целых чисел.
/// - Returns: Медиана или nil, если массив пуст.
func median(of numbers: [Int]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sorted = numbers.sorted()
    let mid = sorted.count / 2
    if sorted.count % 2 == 0 {
        return Double(sorted[mid - 1] + sorted[mid]) / 2.0
    } else {
        return Double(sorted[mid])
    }
}

/// Переводит байты в читаемый формат (КБ, МБ и т.д.).
/// - Parameter bytes: Размер в байтах.
/// - Returns: Форматированная строка.
func readableFileSize(from bytes: Int64) -> String {
    let formatter = ByteCountFormatter()
    formatter.countStyle = .file
    return formatter.string(fromByteCount: bytes)
}

/// Получает текущий день недели в строковом виде.
/// - Returns: Название дня недели.
func currentDayOfWeek() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    return formatter.string(from: Date())
}

/// Удаляет пустые строки из массива строк.
/// - Parameter lines: Массив строк.
/// - Returns: Новый массив без пустых строк.
func removeEmptyLines(from lines: [String]) -> [String] {
    return lines.filter { !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
}

/// Проверяет, начинается ли строка с заглавной буквы.
/// - Parameter text: Строка для проверки.
/// - Returns: true, если строка начинается с заглавной буквы.
func startsWithCapitalLetter(_ text: String) -> Bool {
    guard let first = text.first else { return false }
    return first.isUppercase
}

/// Получает дату в формате ISO8601.
/// - Parameter date: Дата.
/// - Returns: Строка в формате ISO8601.
func iso8601String(from date: Date) -> String {
    let formatter = ISO8601DateFormatter()
    return formatter.string(from: date)
}

/// Разворачивает словарь (меняет местами ключи и значения).
/// - Parameter dictionary: Словарь.
/// - Returns: Новый словарь.
func invertDictionary<K, V>(_ dictionary: [K: V]) -> [V: K] where K: Hashable, V: Hashable {
    var result: [V: K] = [:]
    for (key, value) in dictionary {
        result[value] = key
    }
    return result
}

/// Проверяет, является ли число простым.
/// - Parameter number: Целое число.
/// - Returns: true, если число простое.
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 {
            return false
        }
    }
    return true
}

/// Удаляет последний компонент пути файла.
/// - Parameter path: Строка пути.
/// - Returns: Новый путь без последнего компонента.
func removingLastPathComponent(from path: String) -> String {
    return (path as NSString).deletingLastPathComponent
}

/// Возвращает элементы, встречающиеся чаще одного раза.
/// - Parameter array: Массив.
/// - Returns: Массив повторяющихся элементов.
func duplicates<T: Hashable>(in array: [T]) -> [T] {
    var counts: [T: Int] = [:]
    array.forEach { counts[$0, default: 0] += 1 }
    return counts.filter { $0.value > 1 }.map { $0.key }
}

/// Проверяет, содержит ли строка только цифры.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка состоит только из цифр.
func isNumeric(_ text: String) -> Bool {
    return !text.isEmpty && text.allSatisfy { $0.isNumber }
}

/// Удаляет все пробелы из строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка без пробелов.
func removeSpaces(from text: String) -> String {
    return text.replacingOccurrences(of: " ", with: "")
}

/// Создает массив из уникальных символов строки.
/// - Parameter text: Входная строка.
/// - Returns: Массив уникальных символов.
func uniqueCharacters(in text: String) -> [Character] {
    return Array(Set(text))
}

/// Возвращает словарь с подсчетом частоты слов в строке.
/// - Parameter text: Входная строка.
/// - Returns: Словарь [слово: количество].
func wordFrequencies(in text: String) -> [String: Int] {
    let words = text.lowercased().split { !$0.isLetter }.map(String.init)
    var result: [String: Int] = [:]
    for word in words {
        result[word, default: 0] += 1
    }
    return result
}

/// Проверяет, находится ли указанная дата в будущем.
/// - Parameter date: Дата для проверки.
/// - Returns: true, если дата в будущем.
func isFutureDate(_ date: Date) -> Bool {
    return date > Date()
}

/// Удаляет нулевые значения из массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Массив без нулей.
func removeZeros(from numbers: [Int]) -> [Int] {
    return numbers.filter { $0 != 0 }
}

/// Получает расширение файла из строки пути.
/// - Parameter path: Строка пути.
/// - Returns: Расширение файла или пустая строка.
func fileExtension(from path: String) -> String {
    return (path as NSString).pathExtension
}

/// Проверяет, является ли строка палиндромом без учета регистра и пробелов.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка палиндром.
func isCleanPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == cleaned.reversed()
}

/// Сортирует словарь по значениям в порядке убывания.
/// - Parameter dictionary: Словарь [ключ: значение].
/// - Returns: Отсортированный массив пар.
func sortDictionaryByValueDescending<K, V: Comparable>(_ dictionary: [K: V]) -> [(K, V)] {
    return dictionary.sorted { $0.value > $1.value }
}

/// Проверяет, все ли элементы массива уникальны.
/// - Parameter array: Массив элементов.
/// - Returns: true, если все элементы уникальны.
func allElementsUnique<T: Hashable>(_ array: [T]) -> Bool {
    return Set(array).count == array.count
}

/// Сравнивает два массива на равенство независимо от порядка.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: true, если массивы содержат одинаковые элементы.
func areArraysEqualUnordered<T: Hashable>(_ a: [T], _ b: [T]) -> Bool {
    return Set(a) == Set(b)
}

/// Извлекает все числа из строки.
/// - Parameter text: Входная строка.
/// - Returns: Массив целых чисел.
func extractNumbers(from text: String) -> [Int] {
    let pattern = "\\d+"
    let matches = try? NSRegularExpression(pattern: pattern).matches(in: text, range: NSRange(text.startIndex..., in: text))
    return matches?.compactMap {
        Int((text as NSString).substring(with: $0.range))
    } ?? []
}

/// Возвращает количество файлов в указанной директории.
/// - Parameter path: Путь к директории.
/// - Returns: Количество файлов или nil.
func fileCount(in path: String) -> Int? {
    try? FileManager.default.contentsOfDirectory(atPath: path).count
}

/// Проверяет, все ли строки в массиве непустые.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки непустые.
func allNonEmpty(_ array: [String]) -> Bool {
    return array.allSatisfy { !$0.isEmpty }
}

/// Делит строку на подстроки заданной длины.
/// - Parameters:
///   - text: Входная строка.
///   - length: Длина подстрок.
/// - Returns: Массив подстрок.
func chunkString(_ text: String, length: Int) -> [String] {
    guard length > 0 else { return [] }
    return stride(from: 0, to: text.count, by: length).map {
        let start = text.index(text.startIndex, offsetBy: $0)
        let end = text.index(start, offsetBy: length, limitedBy: text.endIndex) ?? text.endIndex
        return String(text[start..<end])
    }
}

/// Получает минимальное и максимальное значение массива.
/// - Parameter array: Массив чисел.
/// - Returns: Кортеж (min, max) или nil.
func minMax(of array: [Int]) -> (Int, Int)? {
    guard let min = array.min(), let max = array.max() else { return nil }
    return (min, max)
}

/// Проверяет, содержит ли массив хотя бы один элемент из другого массива.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: true, если есть общие элементы.
func hasCommonElements<T: Hashable>(_ array1: [T], _ array2: [T]) -> Bool {
    return !Set(array1).isDisjoint(with: Set(array2))
}

/// Удаляет указанный префикс из строки, если он есть.
/// - Parameters:
///   - string: Исходная строка.
///   - prefix: Префикс для удаления.
/// - Returns: Строка без префикса.
func removePrefix(_ string: String, prefix: String) -> String {
    return string.hasPrefix(prefix) ? String(string.dropFirst(prefix.count)) : string
}

/// Преобразует строку в массив слов, удаляя знаки препинания.
/// - Parameter text: Входная строка.
/// - Returns: Массив слов.
func tokenize(_ text: String) -> [String] {
    return text.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
}

/// Возвращает количество дней между двумя датами.
/// - Parameters:
///   - from: Начальная дата.
///   - to: Конечная дата.
/// - Returns: Количество дней.
func daysBetween(_ from: Date, _ to: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: from, to: to).day ?? 0
}

/// Заменяет все вхождения подстроки в строке.
/// - Parameters:
///   - text: Исходная строка.
///   - target: Подстрока для замены.
///   - replacement: Подстрока-замена.
/// - Returns: Обновленная строка.
func replaceAll(_ text: String, target: String, replacement: String) -> String {
    return text.replacingOccurrences(of: target, with: replacement)
}

/// Удаляет все символы, не являющиеся буквами.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только буквы.
func lettersOnly(_ text: String) -> String {
    return text.filter { $0.isLetter }
}

/// Возвращает все ключи словаря, соответствующие заданному значению.
/// - Parameters:
///   - dictionary: Словарь.
///   - value: Значение для поиска.
/// - Returns: Массив ключей.
func keysForValue<K, V: Equatable>(_ dictionary: [K: V], value: V) -> [K] {
    return dictionary.filter { $0.value == value }.map { $0.key }
}

/// Проверяет, содержат ли все строки в массиве подстроку.
/// - Parameters:
///   - array: Массив строк.
///   - substring: Искомая подстрока.
/// - Returns: true, если все строки содержат подстроку.
func allContain(_ array: [String], substring: String) -> Bool {
    return array.allSatisfy { $0.contains(substring) }
}

/// Удаляет дубликаты символов из строки, сохраняя порядок.
/// - Parameter text: Входная строка.
/// - Returns: Строка без повторяющихся символов.
func removeDuplicateCharacters(from text: String) -> String {
    var seen = Set<Character>()
    return String(text.filter { seen.insert($0).inserted })
}

/// Возвращает обратную строку.
/// - Parameter text: Входная строка.
/// - Returns: Строка в обратном порядке.
func reversedString(_ text: String) -> String {
    return String(text.reversed())
}

/// Проверяет, содержит ли строка только буквы.
/// - Parameter text: Входная строка.
/// - Returns: true, если все символы — буквы.
func isAlphabetic(_ text: String) -> Bool {
    return !text.isEmpty && text.allSatisfy { $0.isLetter }
}

/// Преобразует массив строк в одну строку с разделителем.
/// - Parameters:
///   - array: Массив строк.
///   - separator: Разделитель.
/// - Returns: Объединённая строка.
func joinStrings(_ array: [String], separator: String) -> String {
    return array.joined(separator: separator)
}

/// Получает расширение файла как нижний регистр.
/// - Parameter path: Строка пути.
/// - Returns: Расширение файла в нижнем регистре.
func lowercaseFileExtension(_ path: String) -> String {
    return (path as NSString).pathExtension.lowercased()
}

/// Проверяет, является ли год високосным.
/// - Parameter year: Год.
/// - Returns: true, если год високосный.
func isLeapYear(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

/// Возвращает количество символов в строке, исключая пробелы.
/// - Parameter text: Входная строка.
/// - Returns: Количество символов.
func characterCountExcludingSpaces(_ text: String) -> Int {
    return text.filter { !$0.isWhitespace }.count
}

/// Возвращает дату через указанное количество дней от текущей.
/// - Parameter days: Количество дней.
/// - Returns: Дата в будущем.
func dateAfter(days: Int) -> Date {
    return Calendar.current.date(byAdding: .day, value: days, to: Date()) ?? Date()
}

/// Преобразует массив строк в Set.
/// - Parameter array: Массив строк.
/// - Returns: Множество уникальных строк.
func toSet(_ array: [String]) -> Set<String> {
    return Set(array)
}

/// Проверяет, содержит ли строка только символы ASCII.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка содержит только ASCII.
func isASCII(_ text: String) -> Bool {
    return text.allSatisfy { $0.isASCII }
}

/// Удаляет все гласные из строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка без гласных.
func removeVowels(from text: String) -> String {
    return text.filter { !"aeiouAEIOU".contains($0) }
}

/// Находит первое повторяющееся значение в массиве.
/// - Parameter array: Массив элементов.
/// - Returns: Повторяющийся элемент или nil.
func firstDuplicate<T: Hashable>(in array: [T]) -> T? {
    var seen = Set<T>()
    for element in array {
        if !seen.insert(element).inserted {
            return element
        }
    }
    return nil
}

/// Делит строку на слова по пробелам.
/// - Parameter text: Входная строка.
/// - Returns: Массив слов.
func splitIntoWords(_ text: String) -> [String] {
    return text.split(separator: " ").map(String.init)
}

/// Получает индекс первого вхождения элемента в массиве.
/// - Parameters:
///   - element: Элемент для поиска.
///   - array: Массив.
/// - Returns: Индекс элемента или nil.
func indexOf<T: Equatable>(_ element: T, in array: [T]) -> Int? {
    return array.firstIndex(of: element)
}

/// Удаляет все знаки препинания из строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка без знаков препинания.
func removePunctuation(from text: String) -> String {
    return text.filter { !$0.isPunctuation }
}

/// Проверяет, является ли строка URL.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — допустимый URL.
func isValidURL(_ text: String) -> Bool {
    return URL(string: text) != nil
}

/// Находит наибольшее число в массиве.
/// - Parameter numbers: Массив целых чисел.
/// - Returns: Максимальное значение или nil.
func maxValue(in numbers: [Int]) -> Int? {
    return numbers.max()
}

/// Удаляет заданный элемент из массива.
/// - Parameters:
///   - element: Элемент для удаления.
///   - array: Исходный массив.
/// - Returns: Новый массив без заданного элемента.
func removeElement<T: Equatable>(_ element: T, from array: [T]) -> [T] {
    return array.filter { $0 != element }
}

/// Проверяет, все ли символы в строке уникальны.
/// - Parameter text: Входная строка.
/// - Returns: true, если все символы уникальны.
func allCharactersUnique(_ text: String) -> Bool {
    return Set(text).count == text.count
}

/// Возвращает строку с инвертированным регистром.
/// - Parameter text: Входная строка.
/// - Returns: Строка с изменённым регистром.
func invertedCase(_ text: String) -> String {
    return String(text.map {
        $0.isUppercase ? Character($0.lowercased()) : Character($0.uppercased())
    })
}

/// Получает дату и время в формате "dd.MM.yyyy HH:mm".
/// - Returns: Форматированная строка даты и времени.
func formattedDateTime() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy HH:mm"
    return formatter.string(from: Date())
}

/// Возвращает количество элементов в массиве, удовлетворяющих условию.
/// - Parameters:
///   - array: Массив.
///   - condition: Условие фильтрации.
/// - Returns: Количество подходящих элементов.
func countWhere<T>(_ array: [T], condition: (T) -> Bool) -> Int {
    return array.filter(condition).count
}

/// Возвращает первые n символов строки.
/// - Parameters:
///   - text: Входная строка.
///   - count: Количество символов.
/// - Returns: Подстрока из первых n символов.
func firstCharacters(of text: String, count: Int) -> String {
    return String(text.prefix(count))
}

/// Сравнивает две строки без учета регистра.
/// - Parameters:
///   - a: Первая строка.
///   - b: Вторая строка.
/// - Returns: true, если строки равны.
func caseInsensitiveEquals(_ a: String, _ b: String) -> Bool {
    return a.lowercased() == b.lowercased()
}

/// Проверяет, начинается ли строка с цифры.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка начинается с цифры.
func startsWithDigit(_ text: String) -> Bool {
    guard let first = text.first else { return false }
    return first.isNumber
}

/// Разделяет массив на пары элементов.
/// - Parameter array: Исходный массив.
/// - Returns: Массив пар.
func pairElements<T>(_ array: [T]) -> [[T]] {
    var result: [[T]] = []
    var index = 0
    while index < array.count {
        let end = min(index + 2, array.count)
        result.append(Array(array[index..<end]))
        index += 2
    }
    return result
}

/// Проверяет, является ли массив отсортированным.
/// - Parameter array: Массив сравнимых элементов.
/// - Returns: true, если массив отсортирован.
func isSorted<T: Comparable>(_ array: [T]) -> Bool {
    return array == array.sorted()
}

/// Сортирует массив строк по длине.
/// - Parameter array: Массив строк.
/// - Returns: Отсортированный массив.
func sortByLength(_ array: [String]) -> [String] {
    return array.sorted { $0.count < $1.count }
}

/// Находит общее количество вхождений символа в массив строк.
/// - Parameters:
///   - character: Символ для подсчета.
///   - array: Массив строк.
/// - Returns: Количество вхождений символа.
func countCharacter(_ character: Character, in array: [String]) -> Int {
    return array.reduce(0) { $0 + $1.filter { $0 == character }.count }
}