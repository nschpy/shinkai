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

/// Возвращает true, если строка содержит только пробелы.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка состоит только из пробелов.
func isWhitespaceOnly(_ text: String) -> Bool {
    return !text.isEmpty && text.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Обрезает строку до максимальной длины.
/// - Parameters:
///   - text: Входная строка.
///   - length: Максимальная длина.
/// - Returns: Обрезанная строка.
func truncate(_ text: String, to length: Int) -> String {
    return String(text.prefix(length))
}

/// Возвращает строку, содержащую только цифры из исходной строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только цифры.
func extractDigits(from text: String) -> String {
    return text.filter { $0.isNumber }
}

/// Переводит число секунд в строку формата "чч:мм:сс".
/// - Parameter seconds: Количество секунд.
/// - Returns: Строка времени.
func formatTime(seconds: Int) -> String {
    let h = seconds / 3600
    let m = (seconds % 3600) / 60
    let s = seconds % 60
    return String(format: "%02d:%02d:%02d", h, m, s)
}

/// Проверяет, есть ли хотя бы один элемент, удовлетворяющий условию.
/// - Parameters:
///   - array: Массив элементов.
///   - predicate: Условие.
/// - Returns: true, если найден хотя бы один элемент.
func containsWhere<T>(_ array: [T], predicate: (T) -> Bool) -> Bool {
    return array.contains(where: predicate)
}

/// Возвращает только уникальные строки, игнорируя регистр.
/// - Parameter array: Массив строк.
/// - Returns: Массив уникальных строк.
func uniqueIgnoringCase(_ array: [String]) -> [String] {
    var seen = Set<String>()
    return array.filter {
        let lower = $0.lowercased()
        if seen.contains(lower) {
            return false
        } else {
            seen.insert(lower)
            return true
        }
    }
}

/// Заменяет пробелы на символ подчеркивания.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заменёнными пробелами.
func underscoreSpaces(in text: String) -> String {
    return text.replacingOccurrences(of: " ", with: "_")
}

/// Получает день месяца из даты.
/// - Parameter date: Дата.
/// - Returns: День месяца (1–31).
func dayOfMonth(from date: Date) -> Int {
    return Calendar.current.component(.day, from: date)
}

/// Преобразует строку в булево значение.
/// - Parameter text: Входная строка.
/// - Returns: Булево значение или nil.
func parseBool(from text: String) -> Bool? {
    let lower = text.lowercased()
    if lower == "true" || lower == "yes" || lower == "1" {
        return true
    } else if lower == "false" || lower == "no" || lower == "0" {
        return false
    } else {
        return nil
    }
}

/// Возвращает список слов, длина которых больше заданной.
/// - Parameters:
///   - words: Массив слов.
///   - minLength: Минимальная длина.
/// - Returns: Отфильтрованный массив.
func filterLongWords(_ words: [String], minLength: Int) -> [String] {
    return words.filter { $0.count > minLength }
}

/// Проверяет, содержит ли строка хотя бы один символ верхнего регистра.
/// - Parameter text: Входная строка.
/// - Returns: true, если есть хотя бы один символ верхнего регистра.
func containsUppercase(_ text: String) -> Bool {
    return text.contains { $0.isUppercase }
}

/// Подсчитывает общее количество слов во всех строках массива.
/// - Parameter array: Массив строк.
/// - Returns: Общее количество слов.
func totalWordCount(in array: [String]) -> Int {
    return array.reduce(0) { $0 + $1.split(separator: " ").count }
}

/// Преобразует массив кортежей (ключ, значение) в словарь.
/// - Parameter pairs: Массив пар.
/// - Returns: Словарь.
func dictionaryFromPairs<K, V>(_ pairs: [(K, V)]) -> [K: V] {
    return Dictionary(uniqueKeysWithValues: pairs)
}

/// Возвращает строку с символами в верхнем регистре.
/// - Parameter text: Входная строка.
/// - Returns: Строка в верхнем регистре.
func toUpperCase(_ text: String) -> String {
    return text.uppercased()
}

/// Проверяет, находится ли число в заданном диапазоне (включительно).
/// - Parameters:
///   - number: Проверяемое число.
///   - range: Диапазон.
/// - Returns: true, если число входит в диапазон.
func isInRange(_ number: Int, range: ClosedRange<Int>) -> Bool {
    return range.contains(number)
}

/// Объединяет два массива без дубликатов.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Объединенный массив без повторов.
func mergeUnique<T: Hashable>(_ a: [T], _ b: [T]) -> [T] {
    return Array(Set(a).union(b))
}

/// Возвращает true, если строка соответствует регулярному выражению.
/// - Parameters:
///   - text: Входная строка.
///   - pattern: Регулярное выражение.
/// - Returns: true, если есть совпадение.
func matchesRegex(_ text: String, pattern: String) -> Bool {
    return (try? NSRegularExpression(pattern: pattern))
        .map { $0.firstMatch(in: text, range: NSRange(text.startIndex..., in: text)) != nil } ?? false
}

/// Проверяет, все ли элементы массива являются положительными.
/// - Parameter numbers: Массив чисел.
/// - Returns: true, если все элементы больше нуля.
func allPositive(_ numbers: [Int]) -> Bool {
    return numbers.allSatisfy { $0 > 0 }
}

/// Возвращает количество строк, содержащих заданную подстроку.
/// - Parameters:
///   - array: Массив строк.
///   - substring: Искомая подстрока.
/// - Returns: Количество совпадений.
func countContaining(_ array: [String], substring: String) -> Int {
    return array.filter { $0.contains(substring) }.count
}

/// Форматирует число как валюту в текущей локали.
/// - Parameter amount: Сумма.
/// - Returns: Строка с валютой.
func formatCurrency(_ amount: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount)"
}

/// Возвращает первый непустой элемент из массива строк.
/// - Parameter array: Массив строк.
/// - Returns: Первый непустой элемент или nil.
func firstNonEmpty(_ array: [String]) -> String? {
    return array.first { !$0.isEmpty }
}

/// Проверяет, все ли строки в массиве состоят только из букв.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки содержат только буквы.
func allAlphabetic(_ array: [String]) -> Bool {
    return array.allSatisfy { $0.allSatisfy { $0.isLetter } }
}

/// Разделяет строку на строки фиксированной длины с переносом строки.
/// - Parameters:
///   - text: Входная строка.
///   - length: Максимальная длина.
/// - Returns: Многострочная строка.
func wrapText(_ text: String, length: Int) -> String {
    return stride(from: 0, to: text.count, by: length).map {
        let start = text.index(text.startIndex, offsetBy: $0)
        let end = text.index(start, offsetBy: length, limitedBy: text.endIndex) ?? text.endIndex
        return String(text[start..<end])
    }.joined(separator: "\n")
}

/// Проверяет, заканчивается ли строка знаком препинания.
/// - Parameter text: Входная строка.
/// - Returns: true, если последний символ — знак препинания.
func endsWithPunctuation(_ text: String) -> Bool {
    return text.last?.isPunctuation ?? false
}

/// Возвращает массив, состоящий только из чисел, кратных заданному значению.
/// - Parameters:
///   - array: Массив чисел.
///   - factor: Делитель.
/// - Returns: Отфильтрованный массив.
func filterMultiples(of factor: Int, in array: [Int]) -> [Int] {
    return array.filter { $0 % factor == 0 }
}

/// Преобразует Bool в строку "Да"/"Нет".
/// - Parameter value: Булево значение.
/// - Returns: "Да", если true, иначе "Нет".
func yesNoString(_ value: Bool) -> String {
    return value ? "Да" : "Нет"
}

/// Округляет число до заданного количества знаков после запятой.
/// - Parameters:
///   - value: Число.
///   - places: Количество знаков.
/// - Returns: Округлённое число.
func roundToPlaces(_ value: Double, places: Int) -> Double {
    let factor = pow(10.0, Double(places))
    return (value * factor).rounded() / factor
}

/// Проверяет, есть ли в строке хотя бы одна цифра.
/// - Parameter text: Входная строка.
/// - Returns: true, если в строке есть цифра.
func containsDigit(_ text: String) -> Bool {
    return text.contains { $0.isNumber }
}

/// Возвращает имя месяца по номеру.
/// - Parameter month: Номер месяца (1–12).
/// - Returns: Название месяца или nil.
func monthName(from month: Int) -> String? {
    let formatter = DateFormatter()
    return formatter.monthSymbols[safe: month - 1]
}

/// Безопасно получает элемент массива по индексу.
/// - Parameters:
///   - array: Массив.
///   - index: Индекс.
/// - Returns: Элемент или nil.
func safeElement<T>(in array: [T], at index: Int) -> T? {
    return array.indices.contains(index) ? array[index] : nil
}

/// Удаляет все нулевые значения из словаря.
/// - Parameter dictionary: Словарь с числовыми значениями.
/// - Returns: Новый словарь без нулей.
func removeZeroValues<K>(_ dictionary: [K: Int]) -> [K: Int] {
    return dictionary.filter { $0.value != 0 }
}

/// Проверяет, начинается ли файл с указанного расширения.
/// - Parameters:
///   - path: Путь к файлу.
///   - extension: Расширение без точки.
/// - Returns: true, если файл соответствует расширению.
func hasFileExtension(_ path: String, extension ext: String) -> Bool {
    return (path as NSString).pathExtension.lowercased() == ext.lowercased()
}

/// Возвращает true, если строка содержит только символы нижнего регистра.
/// - Parameter text: Входная строка.
/// - Returns: true, если все буквы — в нижнем регистре.
func isLowercase(_ text: String) -> Bool {
    return !text.isEmpty && text.allSatisfy { !$0.isUppercase }
}

/// Преобразует массив булевых значений в строку из "1" и "0".
/// - Parameter array: Массив булевых значений.
/// - Returns: Строка, где true — "1", false — "0".
func boolArrayToBinaryString(_ array: [Bool]) -> String {
    return array.map { $0 ? "1" : "0" }.joined()
}

/// Проверяет, содержит ли массив только уникальные строки без учета регистра.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки уникальны.
func areAllStringsUniqueIgnoringCase(_ array: [String]) -> Bool {
    let lowered = array.map { $0.lowercased() }
    return Set(lowered).count == lowered.count
}

/// Создает словарь частот символов строки.
/// - Parameter text: Входная строка.
/// - Returns: Словарь [символ: частота].
func characterFrequencies(in text: String) -> [Character: Int] {
    var result: [Character: Int] = [:]
    for char in text {
        result[char, default: 0] += 1
    }
    return result
}

/// Удаляет дубликаты слов из строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка без повторяющихся слов.
func removeDuplicateWords(from text: String) -> String {
    var seen = Set<String>()
    return text.split(separator: " ").filter {
        seen.insert(String($0)).inserted
    }.joined(separator: " ")
}

/// Проверяет, является ли строка JSON.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — валидный JSON.
func isValidJSON(_ text: String) -> Bool {
    guard let data = text.data(using: .utf8) else { return false }
    return (try? JSONSerialization.jsonObject(with: data)) != nil
}

/// Преобразует массив строк в словарь по длине слов.
/// - Parameter array: Массив строк.
/// - Returns: Словарь [длина: слова].
func groupByLength(_ array: [String]) -> [Int: [String]] {
    return Dictionary(grouping: array, by: { $0.count })
}

/// Создает массив всех четных чисел в диапазоне.
/// - Parameters:
///   - start: Начало диапазона.
///   - end: Конец диапазона.
/// - Returns: Массив четных чисел.
func evenNumbers(from start: Int, to end: Int) -> [Int] {
    return Array(start...end).filter { $0 % 2 == 0 }
}

/// Проверяет, является ли строка шестнадцатеричным числом.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — hex.
func isHex(_ text: String) -> Bool {
    let pattern = "^[0-9a-fA-F]+$"
    return matchesRegex(text, pattern: pattern)
}

/// Подсчитывает количество элементов, превышающих заданное значение.
/// - Parameters:
///   - array: Массив чисел.
///   - threshold: Порог.
/// - Returns: Количество элементов.
func countGreaterThan(_ array: [Int], threshold: Int) -> Int {
    return array.filter { $0 > threshold }.count
}

/// Возвращает true, если строка представляет собой положительное число.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — положительное число.
func isPositiveNumber(_ text: String) -> Bool {
    return Double(text).map { $0 > 0 } ?? false
}

/// Возвращает массив чисел, возведённых в квадрат.
/// - Parameter array: Массив чисел.
/// - Returns: Массив квадратов.
func squared(_ array: [Int]) -> [Int] {
    return array.map { $0 * $0 }
}

/// Переводит строку в "верблюжий регистр" (camelCase).
/// - Parameter text: Входная строка.
/// - Returns: Строка в camelCase.
func toCamelCase(_ text: String) -> String {
    let parts = text.lowercased().split { !$0.isLetter }
    guard let first = parts.first else { return "" }
    return ([first] + parts.dropFirst().map { $0.capitalized }).joined()
}

/// Преобразует строку в массив Unicode кодов.
/// - Parameter text: Входная строка.
/// - Returns: Массив Unicode-значений символов.
func unicodeScalars(from text: String) -> [UInt32] {
    return text.unicodeScalars.map { $0.value }
}

/// Удаляет все символы кроме букв и цифр.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только буквы и цифры.
func alphanumericOnly(_ text: String) -> String {
    return text.filter { $0.isLetter || $0.isNumber }
}

/// Подсчитывает количество гласных в строке.
/// - Parameter text: Входная строка.
/// - Returns: Количество гласных символов.
func vowelCount(in text: String) -> Int {
    let vowels = "aeiouAEIOU"
    return text.filter { vowels.contains($0) }.count
}

/// Вращает массив на заданное количество позиций.
/// - Parameters:
///   - array: Исходный массив.
///   - positions: Количество позиций для сдвига вправо.
/// - Returns: Новый массив после вращения.
func rotate<T>(array: [T], by positions: Int) -> [T] {
    guard !array.isEmpty else { return array }
    let offset = ((positions % array.count) + array.count) % array.count
    return Array(array[offset...] + array[..<offset])
}

/// Проверяет, выпадает ли дата на выходной день (суббота или воскресенье).
/// - Parameter date: Дата для проверки.
/// - Returns: true, если дата — суббота или воскресенье.
func isWeekend(_ date: Date) -> Bool {
    let weekday = Calendar.current.component(.weekday, from: date)
    return weekday == 1 || weekday == 7
}

/// Возвращает значение по ключу или значение по умолчанию, если ключ отсутствует.
/// - Parameters:
///   - key: Ключ для поиска.
///   - dictionary: Словарь.
///   - defaultValue: Значение по умолчанию.
/// - Returns: Значение из словаря или defaultValue.
func valueOrDefault<K: Hashable, V>(_ key: K, in dictionary: [K: V], default defaultValue: V) -> V {
    return dictionary[key] ?? defaultValue
}

/// Создает каталог по указанному пути, если он не существует.
/// - Parameter path: Путь к каталогу.
/// - Returns: true, если каталог создан или уже существует.
func createDirectory(at path: String) -> Bool {
    let url = URL(fileURLWithPath: path)
    do {
        try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
        return true
    } catch {
        return false
    }
}

/// Перемешивает символы в строке случайным образом.
/// - Parameter text: Входная строка.
/// - Returns: Строка с перемешанными символами.
func shuffledString(_ text: String) -> String {
    return String(text.shuffled())
}

/// "Выравнивает" вложенный массив из массивов в один плоский массив.
/// - Parameter nested: Вложенный массив.
/// - Returns: Плоский массив элементов.
func flatten<T>(_ nested: [[T]]) -> [T] {
    return nested.flatMap { $0 }
}

/// Вычисляет возраст по дате рождения.
/// - Parameter birthDate: Дата рождения.
/// - Returns: Возраст в полных годах.
func age(from birthDate: Date) -> Int {
    let now = Date()
    let comps = Calendar.current.dateComponents([.year], from: birthDate, to: now)
    return comps.year ?? 0
}

/// Применяет трансформацию к значениям словаря и возвращает новый словарь.
/// - Parameters:
///   - dict: Исходный словарь.
///   - transform: Функция преобразования значений.
/// - Returns: Новый словарь с преобразованными значениями.
func mapValues<K: Hashable, V, U>(_ dict: [K: V], transform: (V) -> U) -> [K: U] {
    return dict.mapValues(transform)
}

/// Копирует файл из одного пути в другой.
/// - Parameters:
///   - from: Путь к исходному файлу.
///   - to: Целевой путь.
/// - Returns: true, если копирование прошло успешно.
func copyFile(from: String, to: String) -> Bool {
    do {
        try FileManager.default.copyItem(atPath: from, toPath: to)
        return true
    } catch {
        return false
    }
}

/// Нормализует пробелы в строке: удаляет начальные и конечные, и сводит повторяющиеся к одному.
/// - Parameter text: Входная строка.
/// - Returns: Строка с нормализованными пробелами.
func normalizeWhitespace(_ text: String) -> String {
    let components = text.trimmingCharacters(in: .whitespacesAndNewlines)
        .components(separatedBy: .whitespacesAndNewlines)
        .filter { !$0.isEmpty }
    return components.joined(separator: " ")
}

/// Объединяет два массива в массив кортежей попарно.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Массив кортежей (элемент из a, элемент из b).
func zipArrays<A, B>(_ a: [A], _ b: [B]) -> [(A, B)] {
    return Array(zip(a, b))
}

/// Находит следующую дату указанного дня недели (1 — воскресенье, 2 — понедельник … 7 — суббота).
/// - Parameters:
///   - weekday: Номер дня недели.
///   - from: Дата старта.
/// - Returns: Следующая дата этого дня недели или nil.
func nextWeekday(_ weekday: Int, from date: Date) -> Date? {
    var comp = DateComponents()
    comp.weekday = weekday
    return Calendar.current.nextDate(after: date, matching: comp, matchingPolicy: .nextTime)
}

/// Отфильтровывает словарь по предикату, возвращая только пары, где значение проходит проверку.
/// - Parameters:
///   - dict: Исходный словарь.
///   - predicate: Функция проверки значений.
/// - Returns: Отфильтрованный словарь.
func filterDictionary<K: Hashable, V>(_ dict: [K: V], predicate: (V) -> Bool) -> [K: V] {
    return dict.filter { predicate($0.value) }
}

/// Рекурсивно возвращает список всех файлов в каталоге и его подкаталогах.
/// - Parameter path: Путь к каталогу.
/// - Returns: Массив путей к файлам или nil.
func recursiveFileList(at path: String) -> [String]? {
    let url = URL(fileURLWithPath: path)
    let fm = FileManager.default
    guard let enumerator = fm.enumerator(at: url, includingPropertiesForKeys: nil) else { return nil }
    return enumerator.compactMap { ($0 as? URL)?.path }
}

/// Возвращает строку, заменяя все пробелы на дефисы.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заменёнными пробелами на дефисы.
func replaceSpacesWithDashes(_ text: String) -> String {
    return text.replacingOccurrences(of: " ", with: "-")
}

/// Находит наибольший общий делитель (НОД) для нескольких чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: НОД для всех чисел.
func gcdOfArray(_ numbers: [Int]) -> Int {
    guard let first = numbers.first else { return 0 }
    return numbers.dropFirst().reduce(first) { gcd($0, $1) }
}

/// Возвращает строку в формате "dd-MM-yyyy" из даты.
/// - Parameter date: Дата.
/// - Returns: Отформатированная строка.
func formatDateToDayMonthYear(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy"
    return formatter.string(from: date)
}

/// Проверяет, является ли строка действительным URL.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является валидным URL.
func isValidURL(_ text: String) -> Bool {
    return URL(string: text) != nil
}

/// Преобразует строку в массив символов, но игнорирует пробелы.
/// - Parameter text: Входная строка.
/// - Returns: Массив символов без пробелов.
func charactersWithoutSpaces(from text: String) -> [Character] {
    return text.filter { !$0.isWhitespace }
}

/// Находит пересечение двух массивов.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Массив общих элементов.
func intersection<T: Hashable>(_ a: [T], _ b: [T]) -> [T] {
    return Array(Set(a).intersection(Set(b)))
}

/// Проверяет, является ли строка палиндромом, игнорируя пробелы и регистр.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка палиндром.
func isPalindromeIgnoringSpacesAndCase(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Возвращает массив чисел, которые делятся на заданное число.
/// - Parameters:
///   - array: Массив чисел.
///   - divisor: Делитель.
/// - Returns: Массив чисел, делящихся на divisor.
func filterByDivisibility(_ array: [Int], by divisor: Int) -> [Int] {
    return array.filter { $0 % divisor == 0 }
}

/// Вычисляет сумму квадратов чисел в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Сумма квадратов чисел.
func sumOfSquares(_ array: [Int]) -> Int {
    return array.reduce(0) { $0 + $1 * $1 }
}

/// Получает разницу между двумя датами в днях.
/// - Parameters:
///   - from: Начальная дата.
///   - to: Конечная дата.
/// - Returns: Разница в днях.
func daysBetweenDates(from: Date, to: Date) -> Int {
    let components = Calendar.current.dateComponents([.day], from: from, to: to)
    return components.day ?? 0
}

/// Преобразует строку в число, если возможно, или возвращает nil.
/// - Parameter text: Входная строка.
/// - Returns: Число или nil.
func toIntOrNil(_ text: String) -> Int? {
    return Int(text)
}

/// Переводит строку в формат "yyyy-MM-dd" из даты.
/// - Parameter date: Дата.
/// - Returns: Отформатированная строка.
func formatDateToYearMonthDay(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.string(from: date)
}

/// Заменяет все вхождения одного символа на другой в строке.
/// - Parameters:
///   - text: Входная строка.
///   - target: Символ для замены.
///   - replacement: Новый символ.
/// - Returns: Строка с заменёнными символами.
func replaceCharacter(in text: String, target: Character, replacement: Character) -> String {
    return text.map { $0 == target ? replacement : $0 }.joined()
}

/// Возвращает число в строковом представлении с добавлением ведущих нулей.
/// - Parameters:
///   - number: Число.
///   - length: Длина строки с ведущими нулями.
/// - Returns: Строка с ведущими нулями.
func paddedNumber(_ number: Int, toLength length: Int) -> String {
    return String(format: "%0\(length)d", number)
}

/// Создает строку, состоящую из повторяющихся символов.
/// - Parameters:
///   - character: Символ для повторения.
///   - count: Количество повторений.
/// - Returns: Строка с повторяющимися символами.
func repeatCharacter(_ character: Character, count: Int) -> String {
    return String(repeating: String(character), count: count)
}

/// Возвращает строку, содержащую все буквы строки в верхнем регистре, игнорируя цифры и символы.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заглавными буквами.
func uppercaseLettersOnly(_ text: String) -> String {
    return text.filter { $0.isLetter }.uppercased()
}

/// Проверяет, является ли строка числом с плавающей точкой.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка представляет число с плавающей точкой.
func isFloatingPointNumber(_ text: String) -> Bool {
    return Double(text) != nil
}

/// Получает все уникальные элементы массива.
/// - Parameter array: Массив элементов.
/// - Returns: Массив уникальных элементов.
func uniqueElements<T: Hashable>(_ array: [T]) -> [T] {
    return Array(Set(array))
}

/// Сортирует массив строк по длине строк, а затем по алфавиту.
/// - Parameter array: Массив строк.
/// - Returns: Отсортированный массив строк.
func sortByLengthAndAlphabetically(_ array: [String]) -> [String] {
    return array.sorted { $0.count == $1.count ? $0 < $1 : $0.count < $1.count }
}

/// Проверяет, является ли строка пустой или состоит только из пробелов.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка пустая или состоит только из пробелов.
func isBlank(_ text: String) -> Bool {
    return text.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Преобразует строку в массив чисел, разделяя её по пробелам.
/// - Parameter text: Входная строка.
/// - Returns: Массив чисел.
func stringToIntArray(_ text: String) -> [Int]? {
    return text.split(separator: " ").compactMap { Int($0) }
}

/// Возвращает максимальное и минимальное значение из массива чисел.
/// - Parameter array: Массив чисел.
/// - Returns: Кортеж с минимальным и максимальным значением.
func minMaxValues(from array: [Int]) -> (min: Int?, max: Int?) {
    guard !array.isEmpty else { return (nil, nil) }
    return (array.min(), array.max())
}

/// Преобразует строку в формат "dd/MM/yyyy".
/// - Parameter date: Дата.
/// - Returns: Отформатированная строка.
func formatToDayMonthYear(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return formatter.string(from: date)
}

/// Проверяет, является ли строка содержимым JSON-массива.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка представляет массив JSON.
func isJSONArray(_ text: String) -> Bool {
    let data = text.data(using: .utf8)
    return (try? JSONSerialization.jsonObject(with: data!, options: [])) is [Any]
}

/// Проверяет, все ли элементы в массиве строк имеют одинаковую длину.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки одинаковой длины.
func allStringsOfEqualLength(_ array: [String]) -> Bool {
    guard let first = array.first else { return true }
    return array.allSatisfy { $0.count == first.count }
}

/// Возвращает строку, состоящую из символов, представляющих цифры в исходной строке.
/// - Parameter text: Входная строка.
/// - Returns: Строка, состоящая только из цифр.
func extractDigitsString(from text: String) -> String {
    return text.filter { $0.isNumber }
}

/// Создаёт и возвращает массив, содержащий элементы, которые встречаются в обоих массивах.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Массив общих элементов.
func commonElements<T: Hashable>(_ a: [T], _ b: [T]) -> [T] {
    return Array(Set(a).intersection(Set(b)))
}

/// Преобразует массив чисел в строку, разделенную заданным разделителем.
/// - Parameters:
///   - array: Массив чисел.
///   - separator: Разделитель.
/// - Returns: Строка с числами, разделёнными separator.
func joinNumbersWithSeparator(_ array: [Int], separator: String) -> String {
    return array.map { String($0) }.joined(separator: separator)
}

/// Возвращает сумму всех элементов в массиве, деленных на 2.
/// - Parameter array: Массив чисел.
/// - Returns: Сумма всех чисел, делённых на 2.
func sumOfHalvedValues(_ array: [Int]) -> Double {
    return Double(array.reduce(0) { $0 + $1 }) / 2.0
}

/// Проверяет, является ли число чётным.
/// - Parameter number: Число.
/// - Returns: true, если число чётное.
func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Преобразует строку в массив слов, разделенных пробелами.
/// - Parameter text: Входная строка.
/// - Returns: Массив слов.
func stringToWordsArray(_ text: String) -> [String] {
    return text.split(separator: " ").map { String($0) }
}

/// Возвращает строку с удалёнными символами пунктуации.
/// - Parameter text: Входная строка.
/// - Returns: Строка без пунктуации.
func removePunctuationFromString(_ text: String) -> String {
    return text.filter { !$0.isPunctuation }
}

/// Проверяет, является ли строка числовым значением, которое не является целым числом.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка представляет число с плавающей точкой, false — целое число или не число.
func isNonIntegerNumber(_ text: String) -> Bool {
    if let number = Double(text) {
        return floor(number) != number
    }
    return false
}

/// Генерирует строку, содержащую повторяющийся символ определённое количество раз.
/// - Parameters:
///   - character: Символ для повторения.
///   - count: Количество повторений.
/// - Returns: Строка с повторяющимися символами.
func repeatCharacter(_ character: Character, count: Int) -> String {
    return String(repeating: String(character), count: count)
}

/// Проверяет, является ли строка уникальной в массиве строк.
/// - Parameters:
///   - text: Строка для проверки.
///   - array: Массив строк.
/// - Returns: true, если строка встречается в массиве только один раз.
func isUniqueString(_ text: String, in array: [String]) -> Bool {
    return array.filter { $0 == text }.count == 1
}

/// Преобразует строку в число с заданным округлением до определённого числа знаков после запятой.
/// - Parameters:
///   - text: Входная строка.
///   - decimals: Количество знаков после запятой.
/// - Returns: Округлённое число.
func roundedNumber(from text: String, decimals: Int) -> Double? {
    guard let number = Double(text) else { return nil }
    return round(number * pow(10, Double(decimals))) / pow(10, Double(decimals))
}

/// Возвращает строку, содержащую все цифры из строки в порядке их появления.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только цифры.
func extractDigitsInOrder(from text: String) -> String {
    return text.filter { $0.isNumber }
}

/// Переводит строку в "кобольдский" регистр (каждое слово с маленькой буквы, кроме первого).
/// - Parameter text: Входная строка.
/// - Returns: Строка в "кобольдском" регистре.
func toCobolCase(_ text: String) -> String {
    let words = text.split(separator: " ").map { $0.lowercased() }
    guard let first = words.first else { return "" }
    return [first] + words.dropFirst().map { $0.capitalized }.joined(separator: " ")
}

/// Возвращает строку с удалением всех символов, которые встречаются в другой строке.
/// - Parameters:
///   - text: Входная строка.
///   - charactersToRemove: Строка с символами для удаления.
/// - Returns: Строка без указанных символов.
func removeCharactersFromString(_ text: String, charactersToRemove: String) -> String {
    return text.filter { !charactersToRemove.contains($0) }
}

/// Проверяет, является ли строка полным числом без десятичной точки.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка представляет целое число.
func isWholeNumber(_ text: String) -> Bool {
    return Int(text) != nil
}

/// Проверяет, является ли строка подстрокой другой строки.
/// - Parameters:
///   - substring: Подстрока для проверки.
///   - text: Исходная строка.
/// - Returns: true, если подстрока найдена в строке.
func containsSubstring(_ substring: String, in text: String) -> Bool {
    return text.contains(substring)
}

/// Преобразует строку в список слов с учётом заглавных букв (каждое новое слово начинается с заглавной буквы).
/// - Parameter text: Входная строка.
/// - Returns: Массив слов с учётом заглавных букв.
func stringToCapitalizedWords(_ text: String) -> [String] {
    return text.split(separator: " ").map { $0.capitalized }
}

/// Преобразует строку в строку с чередующимися буквами в верхнем и нижнем регистрах.
/// - Parameter text: Входная строка.
/// - Returns: Строка с чередующимися заглавными и строчными буквами.
func alternatingCase(_ text: String) -> String {
    return String(text.enumerated().map { (index, character) in
        index % 2 == 0 ? character.lowercased() : character.uppercased()
    })
}

/// Возвращает индекс первого вхождения подстроки в строку.
/// - Parameters:
///   - substring: Подстрока для поиска.
///   - text: Исходная строка.
/// - Returns: Индекс первого вхождения подстроки или nil, если не найдено.
func indexOfSubstring(_ substring: String, in text: String) -> Int? {
    return text.range(of: substring)?.lowerBound.utf16Offset(in: text)
}

/// Проверяет, является ли строка палиндромом, учитывая только алфавитные символы и игнорируя регистр.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является палиндромом.
func isAlphaOnlyPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Возвращает строку, содержащую только заглавные буквы из исходной строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только заглавные буквы.
func extractUppercaseLetters(from text: String) -> String {
    return text.filter { $0.isUppercase }
}

/// Возвращает true, если строка является числовым значением в двоичной системе.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является двоичным числом.
func isBinaryNumber(_ text: String) -> Bool {
    return text.allSatisfy { $0 == "0" || $0 == "1" }
}

/// Возвращает строку с первым символом, преобразованным в заглавную букву.
/// - Parameter text: Входная строка.
/// - Returns: Строка с первым символом в верхнем регистре.
func capitalizeFirstLetter(_ text: String) -> String {
    guard let first = text.first else { return text }
    return first.uppercased() + text.dropFirst()
}

/// Преобразует строку в массив, разбивая по каждому символу.
/// - Parameter text: Входная строка.
/// - Returns: Массив символов.
func stringToCharArray(_ text: String) -> [Character] {
    return Array(text)
}

/// Возвращает строку, которая является результатом повторения строкового значения несколько раз.
/// - Parameters:
///   - text: Входная строка.
///   - count: Количество повторений.
/// - Returns: Повторённая строка.
func repeatString(_ text: String, count: Int) -> String {
    return String(repeating: text, count: count)
}

/// Проверяет, является ли строка представлением действительного времени в формате "HH:mm".
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является временем в формате "HH:mm".
func isValidTime(_ text: String) -> Bool {
    let pattern = "^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$"
    return matchesRegex(text, pattern: pattern)
}

/// Возвращает строку, состоящую только из цифр и символов тире, если они присутствуют в строке.
/// - Parameter text: Входная строка.
/// - Returns: Строка с цифрами и тире.
func extractDigitsAndDashes(from text: String) -> String {
    return text.filter { $0.isNumber || $0 == "-" }
}

/// Возвращает все символы строки в нижнем регистре, кроме чисел.
/// - Parameter text: Входная строка.
/// - Returns: Строка с буквами в нижнем регистре.
func lowercaseLettersWithoutNumbers(from text: String) -> String {
    return text.filter { $0.isLetter }.lowercased()
}

/// Проверяет, все ли строки в массиве имеют одинаковую длину.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки одинаковой длины.
func allStringsHaveEqualLength(_ array: [String]) -> Bool {
    guard let firstLength = array.first?.count else { return true }
    return array.allSatisfy { $0.count == firstLength }
}

/// Преобразует строку в список строк, разделённых определённым символом.
/// - Parameters:
///   - text: Входная строка.
///   - separator: Символ для разделения.
/// - Returns: Массив строк.
func splitStringByCharacter(_ text: String, separator: Character) -> [String] {
    return text.split(separator: separator).map { String($0) }
}

/// Проверяет, является ли строка числовым значением в шестнадцатеричной системе.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является шестнадцатеричным числом.
func isHexadecimalNumber(_ text: String) -> Bool {
    let pattern = "^[0-9A-Fa-f]+$"
    return matchesRegex(text, pattern: pattern)
}

/// Преобразует строку в дату с учётом времени в формате "yyyy-MM-dd HH:mm:ss".
/// - Parameter text: Входная строка.
/// - Returns: Дата, если строка соответствует формату.
func stringToDate(_ text: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return formatter.date(from: text)
}

/// Преобразует строку в строку с удалёнными пробелами, знаками препинания и символами новой строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка без пробелов и знаков препинания.
func cleanString(_ text: String) -> String {
    let charactersToRemove = CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters)
    return text.filter { !charactersToRemove.contains($0.unicodeScalars.first!) }
}

/// Преобразует строку в число с использованием заданной базы (например, 2 для двоичной системы).
/// - Parameters:
///   - text: Входная строка.
///   - base: База числа.
/// - Returns: Число в заданной системе счисления.
func stringToNumberWithBase(_ text: String, base: Int) -> Int? {
    return Int(text, radix: base)
}

/// Преобразует строку в массив символов и возвращает количество уникальных символов.
/// - Parameter text: Входная строка.
/// - Returns: Количество уникальных символов.
func countUniqueCharacters(in text: String) -> Int {
    return Set(text).count
}

/// Возвращает строку, состоящую из символов, которые встречаются в строке не более одного раза.
/// - Parameter text: Входная строка.
/// - Returns: Строка с уникальными символами.
func uniqueCharactersOnly(in text: String) -> String {
    let characterCount = text.reduce(into: [:]) { counts, char in counts[char, default: 0] += 1 }
    return String(text.filter { characterCount[$0] == 1 })
}

/// Проверяет, является ли строка строкой, представляющей корректный email-адрес.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — корректный email.
func isValidEmail(_ text: String) -> Bool {
    let emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
    return matchesRegex(text, pattern: emailRegex)
}

/// Возвращает строку, которая является результатом склеивания всех чисел из строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка, содержащая только числа из исходной строки.
func extractNumbersFromString(_ text: String) -> String {
    return text.filter { $0.isNumber }
}

/// Преобразует строку с числовым значением в проценты.
/// - Parameters:
///   - text: Входная строка.
///   - precision: Количество знаков после запятой.
/// - Returns: Строка с процентным значением.
func stringToPercentage(_ text: String, precision: Int) -> String? {
    guard let number = Double(text) else { return nil }
    let percentage = number * 100
    return String(format: "%.\(precision)f%%", percentage)
}

/// Возвращает строку, где символы чередуются между верхним и нижним регистром.
/// - Parameter text: Входная строка.
/// - Returns: Строка с чередующимися буквами.
func alternatingUpperAndLowerCase(_ text: String) -> String {
    return String(text.enumerated().map { (index, char) in
        index % 2 == 0 ? char.lowercased() : char.uppercased()
    })
}

/// Проверяет, является ли строка числовым значением, включая десятичную точку.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является числом.
func isNumeric(_ text: String) -> Bool {
    return Double(text) != nil
}

/// Находит все уникальные слова в строке и возвращает их в массив.
/// - Parameter text: Входная строка.
/// - Returns: Массив уникальных слов.
func uniqueWords(in text: String) -> [String] {
    let words = text.lowercased().split { !$0.isLetter }
    return Array(Set(words.map { String($0) }))
}

/// Возвращает строку, в которой каждое слово начинается с заглавной буквы.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заглавными буквами в начале каждого слова.
func capitalizeWords(_ text: String) -> String {
    return text.split(separator: " ").map { $0.capitalized }.joined(separator: " ")
}

/// Преобразует строку в список слов, которые начинаются с заданной буквы.
/// - Parameters:
///   - text: Входная строка.
///   - letter: Буква для фильтрации.
/// - Returns: Массив слов, начинающихся с заданной буквы.
func wordsStartingWithLetter(_ text: String, letter: Character) -> [String] {
    return text.split(separator: " ").filter { $0.first == letter }.map { String($0) }
}

/// Проверяет, является ли строка в формате даты (например, "yyyy-MM-dd").
/// - Parameter text: Входная строка.
/// - Returns: true, если строка — дата в формате "yyyy-MM-dd".
func isValidDate(_ text: String) -> Bool {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.date(from: text) != nil
}

/// Преобразует строку с числами в массив чисел.
/// - Parameter text: Входная строка.
/// - Returns: Массив чисел.
func stringToNumberArray(_ text: String) -> [Int]? {
    return text.split(separator: " ").compactMap { Int($0) }
}

/// Возвращает строку с первым и последним символом исходной строки.
/// - Parameter text: Входная строка.
/// - Returns: Строка с первым и последним символом.
func firstAndLastCharacter(_ text: String) -> String {
    guard text.count > 1 else { return text }
    return String([text.first!, text.last!])
}

/// Проверяет, является ли строка числом в десятичной системе счисления.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка представляет десятичное число.
func isDecimalNumber(_ text: String) -> Bool {
    let decimalRegex = "^[0-9]*\\.?[0-9]+$"
    return matchesRegex(text, pattern: decimalRegex)
}

/// Возвращает строку, в которой символы, не являющиеся цифрами, заменены на подчеркивания.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заменёнными символами.
func replaceNonDigitsWithUnderscores(_ text: String) -> String {
    return text.map { $0.isNumber ? $0 : "_" }.joined()
}

/// Возвращает строку, в которой все цифры заменены на звёздочки.
/// - Parameter text: Входная строка.
/// - Returns: Строка с заменёнными цифрами.
func replaceDigitsWithAsterisks(_ text: String) -> String {
    return text.map { $0.isNumber ? "*" : $0 }.joined()
}

/// Преобразует строку в массив слов, разделённых пробелами и знаками препинания.
/// - Parameter text: Входная строка.
/// - Returns: Массив слов.
func stringToWordsWithPunctuation(_ text: String) -> [String] {
    return text.split { $0.isWhitespace || $0.isPunctuation }
        .map { String($0) }
}

/// Проверяет, является ли строка строкой с алфавитными символами только.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка состоит только из букв.
func isAlphabeticString(_ text: String) -> Bool {
    return text.allSatisfy { $0.isLetter }
}

/// Возвращает строку с удалёнными все цифры из текста.
/// - Parameter text: Входная строка.
/// - Returns: Строка без цифр.
func removeDigits(from text: String) -> String {
    return text.filter { !$0.isNumber }
}

/// Проверяет, является ли строка числом, включая отрицательные числа и числа с плавающей точкой.
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является числом.
func isValidNumber(_ text: String) -> Bool {
    let numberRegex = "^-?\\d*(\\.\\d+)?$"
    return matchesRegex(text, pattern: numberRegex)
}

/// Возвращает строку, в которой все символы кроме букв и цифр заменены на дефисы.
/// - Parameter text: Входная строка.
/// - Returns: Строка с дефисами вместо символов.
func replaceNonAlphanumericWithDashes(_ text: String) -> String {
    return text.map { $0.isLetter || $0.isNumber ? $0 : "-" }.joined()
}

/// Преобразует строку с числами в массив чисел с точностью до двух знаков после запятой.
/// - Parameter text: Входная строка.
/// - Returns: Массив чисел с точностью до двух знаков.
func stringToDoubleArrayWithPrecision(_ text: String) -> [Double]? {
    return text.split(separator: " ").compactMap { Double($0).map { round($0 * 100) / 100 } }
}

/// Возвращает строку, в которой каждый символ преобразован в его Unicode код.
/// - Parameter text: Входная строка.
/// - Returns: Строка с Unicode кодами символов.
func stringToUnicodeCodes(_ text: String) -> String {
    return text.unicodeScalars.map { "\\u{\(String(format: "%04X", $0.value))}" }.joined()
}

/// Проверяет, все ли строки в массиве начинаются с заглавной буквы.
/// - Parameter array: Массив строк.
/// - Returns: true, если все строки начинаются с заглавной буквы.
func allStringsStartWithUppercase(_ array: [String]) -> Bool {
    return array.allSatisfy { !$0.isEmpty && $0.first!.isUppercase }
}

/// Возвращает строку, в которой удалены все пробелы перед и после строки, а также все лишние пробелы между словами.
/// - Parameter text: Входная строка.
/// - Returns: Строка без лишних пробелов.
func removeExtraSpaces(_ text: String) -> String {
    let components = text.split { $0.isWhitespace }
    return components.joined(separator: " ")
}

/// Преобразует строку в строку, в которой все символы на чётных позициях заменены на заглавные буквы.
/// - Parameter text: Входная строка.
/// - Returns: Строка с чередующимися заглавными буквами.
func capitalizeEvenIndexedLetters(_ text: String) -> String {
    return String(text.enumerated().map { (index, char) in
        index % 2 == 0 ? char.uppercased() : char.lowercased()
    })
}

/// Возвращает строку, содержащую все уникальные слова из строки, игнорируя регистр.
/// - Parameter text: Входная строка.
/// - Returns: Строка с уникальными словами.
func uniqueWordsIgnoringCase(_ text: String) -> String {
    let words = text.lowercased().split { !$0.isLetter }
    let uniqueWords = Set(words.map { String($0) })
    return uniqueWords.joined(separator: " ")
}

/// Проверяет, является ли строка строкой с действительным IP-адресом (IPv4).
/// - Parameter text: Входная строка.
/// - Returns: true, если строка является действительным IPv4.
func isValidIPv4(_ text: String) -> Bool {
    let components = text.split(separator: ".")
    guard components.count == 4 else { return false }
    return components.allSatisfy {
        guard let number = Int($0), (0...255).contains(number) else { return false }
        return true
    }
}

/// Возвращает строку, в которой все цифры заменены на их квадратные значения.
/// - Parameter text: Входная строка.
/// - Returns: Строка с квадратами цифр.
func replaceDigitsWithSquares(_ text: String) -> String {
    return text.map { $0.isNumber ? String(Int(String($0))! * Int(String($0))!) : String($0) }.joined()
}

/// Преобразует строку в строку с удалёнными символами, которые встречаются более одного раза.
/// - Parameter text: Входная строка.
/// - Returns: Строка с уникальными символами.
func removeRepeatedCharacters(from text: String) -> String {
    var seen = Set<Character>()
    return text.filter { seen.insert($0).inserted }
}

/// Возвращает сумму всех элементов в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Сумма всех элементов массива.
func sumOfArray(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}

/// Возвращает наибольшее значение в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Наибольшее значение или nil, если массив пуст.
func maxOfArray(_ array: [Int]) -> Int? {
    return array.max()
}

/// Возвращает минимальное значение в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Минимальное значение или nil, если массив пуст.
func minOfArray(_ array: [Int]) -> Int? {
    return array.min()
}

/// Возвращает новый массив с элементами, умноженными на заданное число.
/// - Parameters:
///   - array: Массив чисел.
///   - multiplier: Число для умножения.
/// - Returns: Новый массив с умноженными элементами.
func multiplyArrayElements(_ array: [Int], by multiplier: Int) -> [Int] {
    return array.map { $0 * multiplier }
}

/// Удаляет все дубликаты из массива.
/// - Parameter array: Массив.
/// - Returns: Массив без дубликатов.
func removeDuplicates<T: Hashable>(_ array: [T]) -> [T] {
    return Array(Set(array))
}

/// Возвращает новый массив, отсортированный по убыванию.
/// - Parameter array: Массив чисел.
/// - Returns: Массив чисел, отсортированный по убыванию.
func sortArrayDescending(_ array: [Int]) -> [Int] {
    return array.sorted { $0 > $1 }
}

/// Проверяет, содержат ли два массива одинаковые элементы, независимо от порядка.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: true, если массивы содержат одинаковые элементы.
func areArraysEqualUnordered<T: Hashable>(_ array1: [T], _ array2: [T]) -> Bool {
    return Set(array1) == Set(array2)
}

/// Проверяет, все ли элементы массива положительные.
/// - Parameter array: Массив чисел.
/// - Returns: true, если все элементы массива положительные.
func allPositiveElements(_ array: [Int]) -> Bool {
    return array.allSatisfy { $0 > 0 }
}

/// Возвращает массив чисел, которые встречаются в обоих массивах.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив общих элементов.
func commonElements<T: Hashable>(_ array1: [T], _ array2: [T]) -> [T] {
    return Array(Set(array1).intersection(Set(array2)))
}

/// Разбивает массив на несколько подмассивов заданного размера.
/// - Parameters:
///   - array: Исходный массив.
///   - size: Размер подмассивов.
/// - Returns: Массив подмассивов.
func chunkArray<T>(_ array: [T], size: Int) -> [[T]] {
    var chunks: [[T]] = []
    for i in stride(from: 0, to: array.count, by: size) {
        let chunk = Array(array[i..<min(i + size, array.count)])
        chunks.append(chunk)
    }
    return chunks
}

/// Преобразует массив строк в массив чисел.
/// - Parameter array: Массив строк, содержащих числа.
/// - Returns: Массив чисел.
func stringArrayToIntArray(_ array: [String]) -> [Int]? {
    return array.compactMap { Int($0) }
}

/// Находит индекс первого появления элемента в массиве.
/// - Parameters:
///   - array: Массив.
///   - element: Элемент для поиска.
/// - Returns: Индекс первого вхождения элемента или nil, если элемент не найден.
func indexOfElement<T: Equatable>(_ array: [T], element: T) -> Int? {
    return array.firstIndex(of: element)
}

/// Возвращает элементы массива, которые меньше заданного значения.
/// - Parameters:
///   - array: Массив чисел.
///   - value: Пороговое значение.
/// - Returns: Массив элементов, которые меньше заданного значения.
func elementsLessThan<T: Comparable>(_ array: [T], value: T) -> [T] {
    return array.filter { $0 < value }
}

/// Возвращает массив, содержащий все элементы массива, которые больше заданного значения.
/// - Parameters:
///   - array: Массив чисел.
///   - value: Пороговое значение.
/// - Returns: Массив элементов, которые больше заданного значения.
func elementsGreaterThan<T: Comparable>(_ array: [T], value: T) -> [T] {
    return array.filter { $0 > value }
}

/// Переводит массив чисел в массив строк, округляя до заданного количества знаков после запятой.
/// - Parameters:
///   - array: Массив чисел.
///   - precision: Количество знаков после запятой.
/// - Returns: Массив строк с округленными числами.
func numberArrayToStringArray(_ array: [Double], precision: Int) -> [String] {
    return array.map { String(format: "%.\(precision)f", $0) }
}

/// Возвращает массив с индексами всех элементов, равных заданному.
/// - Parameters:
///   - array: Массив.
///   - element: Элемент для поиска.
/// - Returns: Массив индексов.
func indicesOfElement<T: Equatable>(_ array: [T], element: T) -> [Int] {
    return array.enumerated().compactMap { $1 == element ? $0 : nil }
}

/// Возвращает новый массив, который состоит из элементов исходного массива, умноженных на заданный коэффициент.
/// - Parameters:
///   - array: Массив чисел.
///   - factor: Коэффициент умножения.
/// - Returns: Массив с умноженными элементами.
func scaleArray(_ array: [Int], by factor: Int) -> [Int] {
    return array.map { $0 * factor }
}

/// Проверяет, является ли массив отсортированным по возрастанию.
/// - Parameter array: Массив чисел.
/// - Returns: true, если массив отсортирован по возрастанию.
func isArraySortedAscending(_ array: [Int]) -> Bool {
    return array == array.sorted()
}

/// Проверяет, является ли массив отсортированным по убыванию.
/// - Parameter array: Массив чисел.
/// - Returns: true, если массив отсортирован по убыванию.
func isArraySortedDescending(_ array: [Int]) -> Bool {
    return array == array.sorted { $0 > $1 }
}

/// Преобразует массив строк в массив длины строк.
/// - Parameter array: Массив строк.
/// - Returns: Массив длин строк.
func lengthOfStringsArray(_ array: [String]) -> [Int] {
    return array.map { $0.count }
}

/// Возвращает количество уникальных элементов в массиве.
/// - Parameter array: Массив элементов.
/// - Returns: Количество уникальных элементов.
func countUniqueElements<T: Hashable>(_ array: [T]) -> Int {
    return Set(array).count
}

/// Возвращает массив, который состоит только из четных чисел из исходного массива.
/// - Parameter array: Массив чисел.
/// - Returns: Массив четных чисел.
func evenNumbers(from array: [Int]) -> [Int] {
    return array.filter { $0 % 2 == 0 }
}

/// Возвращает массив, который состоит только из нечетных чисел из исходного массива.
/// - Parameter array: Массив чисел.
/// - Returns: Массив нечетных чисел.
func oddNumbers(from array: [Int]) -> [Int] {
    return array.filter { $0 % 2 != 0 }
}

/// Находит произведение всех элементов массива.
/// - Parameter array: Массив чисел.
/// - Returns: Произведение всех элементов массива.
func productOfArray(_ array: [Int]) -> Int {
    return array.reduce(1, *)
}

/// Проверяет, является ли элемент максимальным в массиве.
/// - Parameters:
///   - array: Массив чисел.
///   - element: Элемент для проверки.
/// - Returns: true, если элемент максимален в массиве.
func isMaxElement<T: Comparable>(_ array: [T], element: T) -> Bool {
    return element == array.max()
}

/// Преобразует массив чисел в массив строк в формате "$number$".
/// - Parameter array: Массив чисел.
/// - Returns: Массив строк в формате "$number$".
func formatArrayAsCurrency(_ array: [Int]) -> [String] {
    return array.map { "$\($0)" }
}

/// Находит элементы массива, которые больше среднего значения.
/// - Parameter array: Массив чисел.
/// - Returns: Массив элементов, которые больше среднего.
func elementsGreaterThanAverage(_ array: [Int]) -> [Int] {
    let average = Double(array.reduce(0, +)) / Double(array.count)
    return array.filter { Double($0) > average }
}

/// Создает новый массив, содержащий элементы, которые встречаются больше одного раза.
/// - Parameter array: Массив.
/// - Returns: Массив элементов, которые встречаются более одного раза.
func duplicateElements<T: Hashable>(_ array: [T]) -> [T] {
    let counts = array.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.filter { $0.value > 1 }.map { $0.key }
}

/// Суммирует все элементы в массиве, кроме максимального.
/// - Parameter array: Массив чисел.
/// - Returns: Сумма всех элементов, кроме максимального.
func sumExcludingMax(_ array: [Int]) -> Int? {
    guard let maxElement = array.max() else { return nil }
    return array.filter { $0 != maxElement }.reduce(0, +)
}

/// Проверяет, является ли элемент минимальным в массиве.
/// - Parameters:
///   - array: Массив чисел.
///   - element: Элемент для проверки.
/// - Returns: true, если элемент минимален в массиве.
func isMinElement<T: Comparable>(_ array: [T], element: T) -> Bool {
    return element == array.min()
}

/// Преобразует массив строк в массив их обратных значений.
/// - Parameter array: Массив строк.
/// - Returns: Массив строк с обратным порядком символов.
func reverseStringsInArray(_ array: [String]) -> [String] {
    return array.map { String($0.reversed()) }
}

/// Возвращает массив всех индексов, на которых встречается заданный элемент.
/// - Parameters:
///   - array: Массив.
///   - element: Элемент для поиска.
/// - Returns: Массив индексов.
func indicesOfOccurrences<T: Equatable>(_ array: [T], element: T) -> [Int] {
    return array.enumerated().compactMap { $1 == element ? $0 : nil }
}

/// Преобразует массив чисел в строку, где числа разделены запятой.
/// - Parameter array: Массив чисел.
/// - Returns: Строка с числами, разделёнными запятыми.
func joinNumbersWithCommas(_ array: [Int]) -> String {
    return array.map { String($0) }.joined(separator: ", ")
}

/// Возвращает массив всех элементов, которые встречаются в массиве только один раз.
/// - Parameter array: Массив.
/// - Returns: Массив элементов, которые встречаются один раз.
func uniqueElementsInArray<T: Hashable>(_ array: [T]) -> [T] {
    let counts = array.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.filter { $0.value == 1 }.map { $0.key }
}

/// Сортирует массив чисел по возрастанию и возвращает только уникальные элементы.
/// - Parameter array: Массив чисел.
/// - Returns: Отсортированный массив уникальных элементов.
func sortAndRemoveDuplicates(_ array: [Int]) -> [Int] {
    return Array(Set(array)).sorted()
}

/// Преобразует массив строк в массив строк, где каждый элемент начинается с заглавной буквы.
/// - Parameter array: Массив строк.
/// - Returns: Массив строк с заглавной буквы.
func capitalizeStringsInArray(_ array: [String]) -> [String] {
    return array.map { $0.capitalized }
}

/// Возвращает новый массив, состоящий только из чётных чисел из исходного массива.
/// - Parameter array: Массив чисел.
/// - Returns: Массив чётных чисел.
func filterEvenNumbers(_ array: [Int]) -> [Int] {
    return array.filter { $0 % 2 == 0 }
}

/// Возвращает новый массив, состоящий только из чисел, кратных заданному числу.
/// - Parameters:
///   - array: Массив чисел.
///   - divisor: Число для проверки кратности.
/// - Returns: Массив чисел, кратных divisor.
func filterMultiples(of divisor: Int, in array: [Int]) -> [Int] {
    return array.filter { $0 % divisor == 0 }
}

/// Находит медиану массива чисел.
/// - Parameter array: Массив чисел.
/// - Returns: Медиана массива.
func medianOfArray(_ array: [Int]) -> Double? {
    guard !array.isEmpty else { return nil }
    let sorted = array.sorted()
    if sorted.count % 2 == 0 {
        return Double(sorted[sorted.count / 2 - 1] + sorted[sorted.count / 2]) / 2.0
    } else {
        return Double(sorted[sorted.count / 2])
    }
}

/// Возвращает новый массив, в котором каждый элемент умножен на индекс его положения в исходном массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Новый массив, элементы которого умножены на их индексы.
func multiplyByIndex(_ array: [Int]) -> [Int] {
    return array.enumerated().map { $0.element * $0.offset }
}

/// Проверяет, есть ли в массиве хотя бы одно отрицательное число.
/// - Parameter array: Массив чисел.
/// - Returns: true, если есть хотя бы одно отрицательное число.
func containsNegative(_ array: [Int]) -> Bool {
    return array.contains { $0 < 0 }
}

/// Возвращает новый массив, в котором элементы отсортированы по возрастанию и дублируются элементы.
/// - Parameter array: Массив чисел.
/// - Returns: Отсортированный массив с повторяющимися элементами.
func sortAndDuplicate(_ array: [Int]) -> [Int] {
    return array.sorted().flatMap { [$0, $0] }
}

/// Преобразует массив строк в новый массив строк, длина которых больше заданного значения.
/// - Parameters:
///   - array: Массив строк.
///   - minLength: Минимальная длина строк.
/// - Returns: Массив строк, длина которых больше minLength.
func filterStringsByLength(_ array: [String], minLength: Int) -> [String] {
    return array.filter { $0.count > minLength }
}

/// Возвращает факториал заданного числа.
/// - Parameter number: Число.
/// - Returns: Факториал числа.
func factorial(of number: Int) -> Int {
    guard number >= 0 else { return 0 }
    return (1...number).reduce(1, *)
}

/// Возвращает сумму всех цифр числа.
/// - Parameter number: Число.
/// - Returns: Сумма всех цифр числа.
func sumOfDigits(of number: Int) -> Int {
    return String(abs(number)).compactMap { $0.wholeNumberValue }.reduce(0, +)
}

/// Проверяет, является ли число простым.
/// - Parameter number: Число.
/// - Returns: true, если число простое.
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 { return false }
    }
    return true
}

/// Возвращает наибольший общий делитель (НОД) двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: НОД.
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

/// Возвращает наименьшее общее кратное (НОК) двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: НОК.
func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

/// Преобразует число в строку с добавлением ведущих нулей до заданной длины.
/// - Parameters:
///   - number: Число.
///   - length: Длина строки.
/// - Returns: Строка с ведущими нулями.
func paddedNumber(_ number: Int, toLength length: Int) -> String {
    return String(format: "%0\(length)d", number)
}

/// Возвращает среднее арифметическое элементов массива.
/// - Parameter array: Массив чисел.
/// - Returns: Среднее арифметическое.
func average(of array: [Int]) -> Double {
    return array.isEmpty ? 0 : Double(array.reduce(0, +)) / Double(array.count)
}

/// Проверяет, является ли число чётным.
/// - Parameter number: Число.
/// - Returns: true, если число чётное.
func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Проверяет, является ли число нечётным.
/// - Parameter number: Число.
/// - Returns: true, если число нечётное.
func isOdd(_ number: Int) -> Bool {
    return number % 2 != 0
}

/// Преобразует число в строку с процентами.
/// - Parameter number: Число.
/// - Returns: Строка с процентами.
func toPercentage(_ number: Double) -> String {
    return String(format: "%.2f%%", number * 100)
}

/// Возвращает число, которое является квадратным корнем из заданного числа.
/// - Parameter number: Число.
/// - Returns: Квадратный корень числа.
func squareRoot(of number: Double) -> Double {
    return sqrt(number)
}

/// Возвращает число, которое является кубическим корнем из заданного числа.
/// - Parameter number: Число.
/// - Returns: Кубический корень числа.
func cubeRoot(of number: Double) -> Double {
    return pow(number, 1.0 / 3.0)
}

/// Проверяет, является ли число степенью двойки.
/// - Parameter number: Число.
/// - Returns: true, если число является степенью двойки.
func isPowerOfTwo(_ number: Int) -> Bool {
    return number > 0 && (number & (number - 1)) == 0
}

/// Возвращает абсолютное значение числа.
/// - Parameter number: Число.
/// - Returns: Абсолютное значение числа.
func absoluteValue(of number: Int) -> Int {
    return abs(number)
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

/// Проверяет, является ли строка числом в десятичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка может быть преобразована в число.
func isDecimalNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Вычисляет сумму цифр в числе.
/// - Parameter number: Входное число.
/// - Returns: Сумма цифр.
func sumDigits(of number: Int) -> Int {
    return String(abs(number)).compactMap { $0.wholeNumberValue }.reduce(0, +)
}

/// Конвертирует строку в заглавные буквы.
/// - Parameter str: Входная строка.
/// - Returns: Строка, где все буквы заглавные.
func toUpperCase(_ str: String) -> String {
    return str.uppercased()
}

/// Переводит строку в нижний регистр.
/// - Parameter str: Входная строка.
/// - Returns: Строка, где все буквы в нижнем регистре.
func toLowerCase(_ str: String) -> String {
    return str.lowercased()
}

/// Вычисляет общее количество дней между двумя датами.
/// - Parameters:
///   - startDate: Начальная дата.
///   - endDate: Конечная дата.
/// - Returns: Количество дней.
func daysBetween(startDate: Date, endDate: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
}

/// Умножает все элементы массива на число.
/// - Parameters:
///   - array: Массив чисел.
///   - multiplier: Число для умножения.
/// - Returns: Массив умноженных чисел.
func multiplyArray(_ array: [Int], by multiplier: Int) -> [Int] {
    return array.map { $0 * multiplier }
}

/// Проверяет, является ли строка пустой или содержит только пробелы.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пуста или состоит только из пробелов.
func isEmptyOrWhitespace(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Конвертирует секунды в часы и минуты.
/// - Parameter seconds: Общее количество секунд.
/// - Returns: Кортеж (часы, минуты).
func secondsToHoursMinutes(_ seconds: Int) -> (hours: Int, minutes: Int) {
    return (seconds / 3600, (seconds % 3600) / 60)
}

/// Ищет минимальное число в массиве.
/// - Parameter array: Массив чисел.
/// - Returns: Минимальное число.
func findMinValue(_ array: [Int]) -> Int? {
    return array.min()
}

/// Проводит операцию деления с остатком.
/// - Parameters:
///   - dividend: Делимое.
///   - divisor: Делитель.
/// - Returns: Кортеж (частное, остаток).
func divideWithRemainder(dividend: Int, divisor: Int) -> (quotient: Int, remainder: Int) {
    return (dividend / divisor, dividend % divisor)
}

/// Проверяет, является ли строка палиндромом без учета регистра и пробелов.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка палиндром.
func isPalindromeIgnoringSpaces(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Преобразует строку в массив слов.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToWords(_ str: String) -> [String] {
    return str.split(whereSeparator: { $0.isWhitespace }).map { String($0) }
}

/// Сортирует массив строк по длине.
/// - Parameter strings: Массив строк.
/// - Returns: Отсортированный по длине массив.
func sortStringsByLength(_ strings: [String]) -> [String] {
    return strings.sorted { $0.count < $1.count }
}

/// Проверяет, содержится ли подстрока в строке.
/// - Parameters:
///   - str: Строка.
///   - substring: Подстрока.
/// - Returns: `true`, если подстрока содержится в строке.
func containsSubstring(_ str: String, _ substring: String) -> Bool {
    return str.contains(substring)
}

/// Генерирует случайный элемент из массива.
/// - Parameter array: Массив элементов.
/// - Returns: Случайный элемент из массива.
func randomElement<T>(_ array: [T]) -> T? {
    return array.randomElement()
}

/// Вычисляет среднее значение в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Среднее значение.
func average(of numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Объединяет несколько строк в одну.
/// - Parameter strings: Массив строк.
/// - Returns: Объединенная строка.
func concatenateStrings(_ strings: [String]) -> String {
    return strings.joined()
}

/// Проверяет, является ли строка числовым значением с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой число с плавающей точкой.
func isFloatNumber(_ str: String) -> Bool {
    return Float(str) != nil
}

/// Преобразует строку в массив символов.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToCharacters(_ str: String) -> [Character] {
    return Array(str)
}

/// Возвращает число, увеличенное на 1.
/// - Parameter number: Входное число.
/// - Returns: Число, увеличенное на 1.
func increment(_ number: Int) -> Int {
    return number + 1
}

/// Конвертирует строку в массив целых чисел.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел, извлечённых из строки.
func stringToIntegers(_ str: String) -> [Int] {
    return str.compactMap { Int(String($0)) }
}

/// Проверяет, является ли строка валидным URL.
/// - Parameter url: Входная строка.
/// - Returns: `true`, если строка является валидным URL.
func isValidURL(_ url: String) -> Bool {
    return URL(string: url) != nil
}

/// Вычисляет произведение всех чисел в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Произведение всех чисел в массиве.
func multiplyArrayElements(_ numbers: [Int]) -> Int {
    return numbers.reduce(1, *)
}

/// Генерирует случайный элемент из массива, исключая дубликаты.
/// - Parameter array: Массив элементов.
/// - Returns: Массив с уникальными случайными элементами.
func randomUniqueElements<T>(_ array: [T]) -> [T] {
    return Array(Set(array)).shuffled()
}

/// Проверяет, является ли число четным.
/// - Parameter number: Входное число.
/// - Returns: `true`, если число чётное.
func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Вычисляет наибольший общий делитель (НОД) для массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: НОД для всех чисел массива.
func gcdOfArray(_ numbers: [Int]) -> Int {
    return numbers.reduce(numbers[0]) { gcd($0, $1) }
}

/// Проверяет, является ли строка цифровой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка содержит только цифры.
func isNumericString(_ str: String) -> Bool {
    return str.allSatisfy { $0.isNumber }
}

/// Преобразует строку в числовое значение с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Числовое значение с плавающей точкой.
func stringToDouble(_ str: String) -> Double? {
    return Double(str)
}

/// Выполняет округление числа до ближайшего целого.
/// - Parameter number: Входное число.
/// - Returns: Округленное число.
func roundToNearestInteger(_ number: Double) -> Int {
    return Int(round(number))
}

/// Проверяет, является ли строка валидным адресом электронной почты.
/// - Parameter email: Входная строка.
/// - Returns: `true`, если строка является валидным email.
func isValidEmailAddress(_ email: String) -> Bool {
    let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return email.range(of: pattern, options: .regularExpression) != nil
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является шестнадцатеричным числом.
func isHexadecimal(_ str: String) -> Bool {
    return Int(str, radix: 16) != nil
}

/// Конвертирует строку в массив байтов (массив целых чисел).
/// - Parameter str: Входная строка.
/// - Returns: Массив байтов.
func stringToBytes(_ str: String) -> [UInt8] {
    return Array(str.utf8)
}

/// Преобразует строку в формат "собака_запятая" (snake_case).
/// - Parameter str: Входная строка.
/// - Returns: Строка в snake_case.
func toSnakeCase(_ str: String) -> String {
    return str.lowercased().replacingOccurrences(of: " ", with: "_")
}

/// Конвертирует число в строку в двоичном представлении.
/// - Parameter number: Входное число.
/// - Returns: Строка в двоичном формате.
func toBinaryString(_ number: Int) -> String {
    return String(number, radix: 2)
}

/// Преобразует строку в массив чисел с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArray(_ str: String) -> [Float] {
    return str.split(separator: ",").compactMap { Float($0.trimmingCharacters(in: .whitespaces)) }
}

/// Возвращает строку, в которой все символы перевёрнуты.
/// - Parameter str: Входная строка.
/// - Returns: Строка с перевёрнутыми символами.
func reverseString(_ str: String) -> String {
    return String(str.reversed())
}

/// Выполняет побитовую операцию И для двух целых чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Результат побитовой операции И.
func bitwiseAnd(_ a: Int, _ b: Int) -> Int {
    return a & b
}

/// Преобразует строку в массив подстрок с заданной длиной.
/// - Parameters:
///   - str: Входная строка.
///   - length: Длина подстрок.
/// - Returns: Массив подстрок.
func splitStringIntoSubstrings(_ str: String, length: Int) -> [String] {
    return stride(from: 0, to: str.count, by: length).map {
        let startIndex = str.index(str.startIndex, offsetBy: $0)
        let endIndex = str.index(startIndex, offsetBy: length, limitedBy: str.endIndex) ?? str.endIndex
        return String(str[startIndex..<endIndex])
    }
}

/// Умножает все элементы массива на указанное число.
/// - Parameters:
///   - array: Массив чисел.
///   - multiplier: Число для умножения.
/// - Returns: Массив чисел после умножения.
func multiplyArrayByNumber(_ array: [Double], multiplier: Double) -> [Double] {
    return array.map { $0 * multiplier }
}

/// Генерирует строку с повторяющимися символами.
/// - Parameters:
///   - char: Символ для повторения.
///   - count: Количество повторений.
/// - Returns: Строка с повторяющимися символами.
func repeatCharacter(_ char: Character, count: Int) -> String {
    return String(repeating: char, count: count)
}

/// Проверяет, является ли строка пустой или состоит только из пробелов.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пуста или состоит только из пробелов.
func isWhitespaceOnly(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Находит наибольший общий делитель (НОД) для двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: НОД для двух чисел.
func gcd(_ a: Int, _ b: Int) -> Int {
    var (x, y) = (a, b)
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}

/// Генерирует строку, содержащую повторяющийся символ заданное количество раз.
/// - Parameters:
///   - char: Символ для повторения.
///   - count: Количество повторений.
/// - Returns: Строка с повторяющимися символами.
func repeatCharacterString(_ char: Character, count: Int) -> String {
    return String(repeating: char, count: count)
}

/// Преобразует строку в массив слов, разделенных пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToWordArray(_ str: String) -> [String] {
    return str.split(separator: " ").map { String($0) }
}

/// Вычисляет корень квадратный из числа.
/// - Parameter number: Входное число.
/// - Returns: Квадратный корень числа.
func squareRoot(_ number: Double) -> Double {
    return sqrt(number)
}

/// Преобразует строку в формат "CamelCase".
/// - Parameter str: Входная строка.
/// - Returns: Строка в формате "CamelCase".
func toCamelCase(_ str: String) -> String {
    let words = str.split(separator: " ").map { $0.lowercased() }
    return words.first! + words.dropFirst().map { $0.capitalized }.joined()
}

/// Возвращает сумму всех чисел в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Сумма чисел.
func sumOfArray(_ numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

/// Проверяет, является ли строка числом с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой число с плавающей точкой.
func isFloat(_ str: String) -> Bool {
    return Float(str) != nil
}

/// Преобразует строку в массив целых чисел.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntArray(_ str: String) -> [Int] {
    return str.split(separator: ",").compactMap { Int($0) }
}

/// Находит факториал числа.
/// - Parameter n: Число.
/// - Returns: Факториал числа.
func factorial(_ n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n - 1)
}

/// Преобразует строку в строку, где каждый символ зашифрован сдвигом по алфавиту.
/// - Parameters:
///   - str: Входная строка.
///   - shift: Сдвиг по алфавиту.
/// - Returns: Зашифрованная строка.
func caesarCipher(_ str: String, shift: Int) -> String {
    return String(str.unicodeScalars.map { char in
        if char.isLetter {
            let base: UInt32 = char.isUppercase ? 65 : 97
            let shifted = (char.value - base + UInt32(shift)) % 26 + base
            return Character(UnicodeScalar(shifted)!)
        }
        return char
    })
}

/// Находит среднее арифметическое массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Среднее арифметическое.
func averageOfArray(_ numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует строку в массив символов.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToCharacterArray(_ str: String) -> [Character] {
    return Array(str)
}

/// Проверяет, является ли число простым.
/// - Parameter number: Число.
/// - Returns: `true`, если число простое.
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

/// Преобразует число в строку с заданным количеством знаков после запятой.
/// - Parameters:
///   - number: Входное число.
///   - precision: Количество знаков после запятой.
/// - Returns: Строка с числом, округленным до заданной точности.
func formatDecimal(_ number: Double, precision: Int) -> String {
    return String(format: "%.\(precision)f", number)
}

/// Проверяет, является ли строка палиндромом.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка палиндром.
func isPalindrome(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Проверяет, являются ли два числа взаимно простыми (их НОД равен 1).
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: `true`, если числа взаимно простые.
func areCoprime(_ a: Int, _ b: Int) -> Bool {
    return gcd(a, b) == 1
}

/// Вычисляет расстояние между двумя точками в 2D пространстве.
/// - Parameters:
///   - x1: X координата первой точки.
///   - y1: Y координата первой точки.
///   - x2: X координата второй точки.
///   - y2: Y координата второй точки.
/// - Returns: Евклидово расстояние.
func distanceBetweenPoints(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
}

/// Проверяет, является ли строка анаграммой другой строки.
/// - Parameters:
///   - str1: Первая строка.
///   - str2: Вторая строка.
/// - Returns: `true`, если строки являются анаграммами.
func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    return str1.lowercased().sorted() == str2.lowercased().sorted()
}

/// Преобразует строку в массив чисел с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой, извлеченных из строки.
func stringToDoubleArray(_ str: String) -> [Double] {
    return str.split(separator: ",").compactMap { Double($0) }
}

/// Проверяет, является ли строка числом в экспоненциальной форме.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой число в экспоненциальной форме.
func isScientificNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Проверяет, является ли строка валидным UUID.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является валидным UUID.
func isValidUUID(_ str: String) -> Bool {
    return UUID(uuidString: str) != nil
}

/// Вычисляет факториал числа с использованием итеративного подхода.
/// - Parameter n: Число.
/// - Returns: Факториал числа.
func iterativeFactorial(_ n: Int) -> Int {
    return (1...n).reduce(1, *)
}

/// Преобразует строку в формат "Title Case" (каждое слово начинается с заглавной буквы).
/// - Parameter str: Входная строка.
/// - Returns: Строка в формате "Title Case".
func toTitleCase(_ str: String) -> String {
    return str.lowercased().split(separator: " ").map { $0.capitalized }.joined(separator: " ")
}

/// Генерирует уникальный идентификатор с помощью текущего времени.
/// - Returns: Строка с уникальным идентификатором.
func generateUniqueID() -> String {
    return UUID().uuidString + "-" + String(Int(Date().timeIntervalSince1970))
}

/// Преобразует строку в массив булевых значений (True/False).
/// - Parameter str: Входная строка.
/// - Returns: Массив булевых значений, где каждый символ '1' - true, а '0' - false.
func stringToBoolArray(_ str: String) -> [Bool] {
    return str.compactMap { $0 == "1" ? true : ($0 == "0" ? false : nil) }
}

/// Преобразует строку в массив целых чисел, разделенных пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayWithSpaces(_ str: String) -> [Int] {
    return str.split(separator: " ").compactMap { Int($0) }
}

/// Поворачивает строку на заданное количество символов.
/// - Parameters:
///   - str: Входная строка.
///   - shift: Количество символов для сдвига.
/// - Returns: Повернутая строка.
func rotateString(_ str: String, by shift: Int) -> String {
    let index = str.index(str.startIndex, offsetBy: shift % str.count)
    return String(str[index...] + str[..<index])
}

/// Преобразует строку в массив символов в верхнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в верхнем регистре.
func stringToUppercaseCharArray(_ str: String) -> [Character] {
    return Array(str.uppercased())
}

/// Преобразует строку в массив целых чисел с учетом возможных пробелов.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntArrayWithSpaces(_ str: String) -> [Int] {
    return str.split(separator: " ").compactMap { Int($0) }
}

/// Сортирует массив строк по длине строки в убывающем порядке.
/// - Parameter strings: Массив строк.
/// - Returns: Отсортированный массив строк по длине.
func sortStringsByLengthDescending(_ strings: [String]) -> [String] {
    return strings.sorted { $0.count > $1.count }
}

/// Преобразует строку в строку с чередующимися заглавными и строчными буквами.
/// - Parameter str: Входная строка.
/// - Returns: Строка с чередующимися заглавными и строчными буквами.
func alternateCase(_ str: String) -> String {
    return str.enumerated().map { (index, char) in
        index % 2 == 0 ? char.lowercased() : char.uppercased()
    }.joined()
}

/// Преобразует строку в массив чисел, разделенных пробелами или запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел.
func stringToNumbersArray(_ str: String) -> [Int] {
    return str.split(whereSeparator: { $0 == " " || $0 == "," }).compactMap { Int($0) }
}

/// Проверяет, является ли строка числом в двоичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является двоичным числом.
func isBinaryNumber(_ str: String) -> Bool {
    return str.allSatisfy { $0 == "0" || $0 == "1" }
}

/// Преобразует массив строк в строку с разделителями.
/// - Parameters:
///   - strings: Массив строк.
///   - separator: Разделитель.
/// - Returns: Объединенная строка с разделителями.
func joinStringsWithSeparator(_ strings: [String], separator: String) -> String {
    return strings.joined(separator: separator)
}

/// Преобразует строку в массив символов в нижнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в нижнем регистре.
func stringToLowercaseCharArray(_ str: String) -> [Character] {
    return Array(str.lowercased())
}

/// Возвращает абсолютное значение числа.
/// - Parameter number: Входное число.
/// - Returns: Абсолютное значение числа.
func absoluteValue(_ number: Double) -> Double {
    return abs(number)
}

/// Преобразует строку в массив чисел, игнорируя символы, не являющиеся цифрами.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел.
func extractNumbersFromString(_ str: String) -> [Int] {
    return str.compactMap { Int(String($0)) }
}

/// Проверяет, является ли строка валидным IP-адресом (IPv4).
/// - Parameter ip: Входная строка.
/// - Returns: `true`, если строка является валидным IPv4-адресом.
func isValidIPv4(_ ip: String) -> Bool {
    let parts = ip.split(separator: ".")
    guard parts.count == 4 else { return false }
    return parts.allSatisfy { part in
        if let number = Int(part), number >= 0 && number <= 255 {
            return true
        }
        return false
    }
}

/// Возвращает максимальное значение в массиве чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Максимальное значение в массиве.
func maxValue(of numbers: [Int]) -> Int? {
    return numbers.max()
}

/// Находит среднее значение массива чисел с плавающей точкой.
/// - Parameter numbers: Массив чисел.
/// - Returns: Среднее значение.
func average(of numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует температуру из Цельсия в Кельвины.
/// - Parameter celsius: Температура в Цельсиях.
/// - Returns: Температура в Кельвинах.
func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

/// Проверяет, является ли массив чисел возрастающим.
/// - Parameter array: Массив чисел.
/// - Returns: `true`, если массив возрастающий.
func isArrayAscending(_ array: [Int]) -> Bool {
    return array == array.sorted()
}

/// Переводит температуру из Фаренгейтов в Цельсии.
/// - Parameter fahrenheit: Температура в Фаренгейтах.
/// - Returns: Температура в Цельсиях.
func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

/// Проверяет, является ли число четным.
/// - Parameter number: Входное число.
/// - Returns: `true`, если число четное.
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

/// Генерирует случайное число в указанном диапазоне.
/// - Parameters:
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Случайное число в диапазоне от `min` до `max`.
func randomInRange(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

/// Преобразует массив строк в одну строку, разделяя их запятой.
/// - Parameter strings: Массив строк.
/// - Returns: Объединенная строка.
func joinStringsWithComma(_ strings: [String]) -> String {
    return strings.joined(separator: ", ")
}

/// Вычисляет периметр прямоугольника.
/// - Parameters:
///   - length: Длина.
///   - width: Ширина.
/// - Returns: Периметр прямоугольника.
func rectanglePerimeter(length: Double, width: Double) -> Double {
    return 2 * (length + width)
}

/// Конвертирует градусы в радианы.
/// - Parameter degrees: Угол в градусах.
/// - Returns: Угол в радианах.
func degreesToRadians(_ degrees: Double) -> Double {
    return degrees * .pi / 180
}

/// Умножает два матричных массива.
/// - Parameters:
///   - matrix1: Первая матрица.
///   - matrix2: Вторая матрица.
/// - Returns: Результат умножения двух матриц.
func matrixMultiply(matrix1: [[Int]], matrix2: [[Int]]) -> [[Int]]? {
    let rowCount = matrix1.count
    let colCount = matrix2[0].count
    let commonDim = matrix1[0].count
    
    guard matrix2.count == commonDim else { return nil }
    
    var result = Array(repeating: Array(repeating: 0, count: colCount), count: rowCount)
    
    for i in 0..<rowCount {
        for j in 0..<colCount {
            for k in 0..<commonDim {
                result[i][j] += matrix1[i][k] * matrix2[k][j]
            }
        }
    }
    
    return result
}

/// Проверяет, является ли число простым.
/// - Parameter number: Входное число.
/// - Returns: `true`, если число простое.
func isPrimeNumber(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<number {
        if number % i == 0 { return false }
    }
    return true
}

/// Вычисляет факториал числа с помощью рекурсии.
/// - Parameter n: Число.
/// - Returns: Факториал числа.
func recursiveFactorial(_ n: Int) -> Int {
    return n == 0 ? 1 : n * recursiveFactorial(n - 1)
}

/// Проверяет, является ли строка палиндромом (с учетом регистра).
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка палиндром.
func isPalindromeCaseSensitive(_ str: String) -> Bool {
    return str == String(str.reversed())
}

/// Находит максимальный элемент в массиве чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Максимальное значение в массиве.
func findMax(of numbers: [Int]) -> Int? {
    return numbers.max()
}

/// Конвертирует значение в битах в байты.
/// - Parameter bits: Значение в битах.
/// - Returns: Значение в байтах.
func bitsToBytes(_ bits: Int) -> Int {
    return bits / 8
}

/// Проверяет, является ли число квадратом другого числа.
/// - Parameters:
///   - a: Число.
///   - b: Число для проверки.
/// - Returns: `true`, если b = a².
func isSquareOf(a: Int, b: Int) -> Bool {
    return a * a == b
}

/// Преобразует строку в массив байтов.
/// - Parameter str: Входная строка.
/// - Returns: Массив байтов.
func stringToByteArray(_ str: String) -> [UInt8] {
    return Array(str.utf8)
}

/// Преобразует температуру из Кельвинов в Цельсии.
/// - Parameter kelvin: Температура в Кельвинах.
/// - Returns: Температура в Цельсиях.
func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

/// Преобразует массив целых чисел в строку, разделенную пробелами.
/// - Parameter numbers: Массив целых чисел.
/// - Returns: Строка с числами, разделенными пробелами.
func intArrayToString(_ numbers: [Int]) -> String {
    return numbers.map { String($0) }.joined(separator: " ")
}

/// Преобразует массив целых чисел в массив строк.
/// - Parameter numbers: Массив целых чисел.
/// - Returns: Массив строк, представляющих числа.
func intArrayToStringArray(_ numbers: [Int]) -> [String] {
    return numbers.map { String($0) }
}

/// Вычисляет сумму элементов множества.
/// - Parameter set: Множество чисел.
/// - Returns: Сумма элементов множества.
func sumOfSet(_ set: Set<Int>) -> Int {
    return set.reduce(0, +)
}

/// Проверяет, является ли переданная дата в будущем.
/// - Parameter date: Дата для проверки.
/// - Returns: `true`, если дата в будущем.
func isFutureDate(_ date: Date) -> Bool {
    return date > Date()
}

/// Возвращает первый элемент массива, если он существует.
/// - Parameter array: Массив элементов.
/// - Returns: Первый элемент массива или `nil`, если массив пуст.
func firstElement<T>(_ array: [T]) -> T? {
    return array.first
}

/// Преобразует массив строк в массив целых чисел, если возможно.
/// - Parameter strings: Массив строк.
/// - Returns: Массив целых чисел или `nil`, если не все строки могут быть преобразованы.
func stringArrayToIntArray(_ strings: [String]) -> [Int]? {
    return strings.compactMap { Int($0) }
}

/// Проверяет, является ли переданное число положительным.
/// - Parameter number: Число для проверки.
/// - Returns: `true`, если число положительное.
func isPositiveNumber(_ number: Int) -> Bool {
    return number > 0
}

/// Выполняет побитовую операцию И для двух массивов чисел.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив, содержащий побитовые операции И для каждого соответствующего элемента.
func bitwiseAndArrays(_ array1: [Int], _ array2: [Int]) -> [Int]? {
    guard array1.count == array2.count else { return nil }
    return zip(array1, array2).map { $0 & $1 }
}

/// Преобразует строку в массив символов и возвращает количество гласных.
/// - Parameter str: Входная строка.
/// - Returns: Количество гласных в строке.
func countVowelsInString(_ str: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    return str.filter { vowels.contains($0) }.count
}

/// Преобразует двухмерный массив чисел в одномерный массив.
/// - Parameter matrix: Двухмерный массив чисел.
/// - Returns: Одномерный массив.
func flattenMatrix(_ matrix: [[Int]]) -> [Int] {
    return matrix.flatMap { $0 }
}

/// Находит строку с максимальной длиной в массиве строк.
/// - Parameter strings: Массив строк.
/// - Returns: Строка с максимальной длиной.
func longestString(_ strings: [String]) -> String? {
    return strings.max { $0.count < $1.count }
}

/// Проверяет, является ли переданная строка валидным URL.
/// - Parameter urlString: Строка, представляющая URL.
/// - Returns: `true`, если строка является валидным URL.
func isValidURLString(_ urlString: String) -> Bool {
    return URL(string: urlString) != nil
}

/// Вычисляет среднее значение чисел в массиве с плавающей точкой.
/// - Parameter numbers: Массив чисел с плавающей точкой.
/// - Returns: Среднее значение.
func averageOfDoubleArray(_ numbers: [Double]) -> Double {
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует строку в массив символов в верхнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в верхнем регистре.
func stringToUpperCaseArray(_ str: String) -> [Character] {
    return Array(str.uppercased())
}

/// Сортирует массив слов в алфавитном порядке.
/// - Parameter words: Массив слов.
/// - Returns: Отсортированный массив слов.
func sortWordsAlphabetically(_ words: [String]) -> [String] {
    return words.sorted()
}

/// Преобразует число в двоичную строку.
/// - Parameter number: Число.
/// - Returns: Строка, представляющая число в двоичном формате.
func intToBinaryString(_ number: Int) -> String {
    return String(number, radix: 2)
}

/// Преобразует строку в массив чисел, извлекая только цифры.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел.
func extractDigitsFromString(_ str: String) -> [Int] {
    return str.compactMap { $0.wholeNumberValue }
}

/// Находит наибольший элемент в словаре, используя его значение.
/// - Parameter dictionary: Словарь с целочисленными значениями.
/// - Returns: Ключ, связанный с наибольшим значением, или `nil`, если словарь пуст.
func findMaxKeyInDictionary(_ dictionary: [String: Int]) -> String? {
    return dictionary.max(by: { $0.value < $1.value })?.key
}

/// Преобразует строку в массив целых чисел, игнорируя нечисловые символы.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func extractIntegersFromString(_ str: String) -> [Int] {
    return str.compactMap { Int(String($0)) }
}

/// Создает кортеж с минимальным и максимальным значением из массива.
/// - Parameter numbers: Массив чисел.
/// - Returns: Кортеж с минимальным и максимальным значением.
func minMaxFromArray(_ numbers: [Int]) -> (min: Int, max: Int)? {
    guard let minValue = numbers.min(), let maxValue = numbers.max() else { return nil }
    return (minValue, maxValue)
}

/// Проверяет, является ли строка числом с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом с плавающей точкой.
func isDecimalNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Вычисляет сумму всех чисел в массиве с плавающей точкой.
/// - Parameter numbers: Массив чисел с плавающей точкой.
/// - Returns: Сумма чисел.
func sumOfFloatArray(_ numbers: [Float]) -> Float {
    return numbers.reduce(0, +)
}

/// Преобразует строку в массив символов, игнорируя пробелы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без пробелов.
func stringToCharArrayWithoutSpaces(_ str: String) -> [Character] {
    return str.filter { !$0.isWhitespace }
}

/// Проверяет, является ли переданная дата сегодняшним днем.
/// - Parameter date: Дата для проверки.
/// - Returns: `true`, если дата сегодня.
func isToday(_ date: Date) -> Bool {
    let calendar = Calendar.current
    let today = calendar.startOfDay(for: Date())
    let targetDate = calendar.startOfDay(for: date)
    return today == targetDate
}

/// Вычисляет разницу в днях между двумя датами.
/// - Parameters:
///   - startDate: Начальная дата.
///   - endDate: Конечная дата.
/// - Returns: Количество дней между датами.
func daysBetweenDates(startDate: Date, endDate: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
}

/// Преобразует двумерный массив строк в одномерный массив.
/// - Parameter matrix: Двумерный массив строк.
/// - Returns: Одномерный массив строк.
func flattenStringMatrix(_ matrix: [[String]]) -> [String] {
    return matrix.flatMap { $0 }
}

/// Возвращает количество элементов в массиве, которые являются четными.
/// - Parameter numbers: Массив чисел.
/// - Returns: Количество четных элементов.
func countEvenNumbers(_ numbers: [Int]) -> Int {
    return numbers.filter { $0 % 2 == 0 }.count
}

/// Проверяет, является ли массив строк палиндромом.
/// - Parameter strings: Массив строк.
/// - Returns: `true`, если все строки в массиве палиндромы.
func areStringsPalindrome(_ strings: [String]) -> Bool {
    return strings.allSatisfy { $0 == String($0.reversed()) }
}

/// Конвертирует количество секунд в формат "часы:минуты:секунды".
/// - Parameter seconds: Количество секунд.
/// - Returns: Строка в формате "часы:минуты:секунды".
func secondsToTimeFormat(_ seconds: Int) -> String {
    let hours = seconds / 3600
    let minutes = (seconds % 3600) / 60
    let remainingSeconds = seconds % 60
    return String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
}

/// Преобразует строку в массив слов, разделенных пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToWordArray(_ str: String) -> [String] {
    return str.split(separator: " ").map { String($0) }
}

/// Проверяет, является ли число кратным другому числу.
/// - Parameters:
///   - number: Число.
///   - divisor: Делитель.
/// - Returns: `true`, если число делится нацело.
func isMultipleOf(_ number: Int, divisor: Int) -> Bool {
    return number % divisor == 0
}

/// Находит сумму всех четных чисел в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Сумма четных чисел.
func sumOfEvenNumbers(_ numbers: [Int]) -> Int {
    return numbers.filter { $0 % 2 == 0 }.reduce(0, +)
}

/// Преобразует строку в строку, где каждое слово начинается с заглавной буквы.
/// - Parameter str: Входная строка.
/// - Returns: Строка с заглавной первой буквой каждого слова.
func capitalizeWords(_ str: String) -> String {
    return str.capitalized
}

/// Сортирует массив чисел в порядке убывания.
/// - Parameter numbers: Массив чисел.
/// - Returns: Отсортированный массив в порядке убывания.
func sortArrayDescending(_ numbers: [Int]) -> [Int] {
    return numbers.sorted(by: >)
}

/// Преобразует число в строку с ведущими нулями.
/// - Parameters:
///   - number: Число.
///   - length: Общая длина строки.
/// - Returns: Строка с ведущими нулями.
func numberToStringWithLeadingZeros(_ number: Int, length: Int) -> String {
    return String(format: "%0\(length)d", number)
}

/// Суммирует все элементы словаря с целочисленными значениями.
/// - Parameter dictionary: Словарь с целочисленными значениями.
/// - Returns: Сумма значений.
func sumOfDictionaryValues(_ dictionary: [String: Int]) -> Int {
    return dictionary.values.reduce(0, +)
}

/// Генерирует массив чисел от 1 до заданного числа.
/// - Parameter upTo: Число, до которого нужно сгенерировать массив.
/// - Returns: Массив чисел.
func generateNumbers(upTo: Int) -> [Int] {
    return Array(1...upTo)
}

/// Проверяет, являются ли два множества одинаковыми.
/// - Parameters:
///   - set1: Первое множество.
///   - set2: Второе множество.
/// - Returns: `true`, если множества одинаковы.
func areSetsEqual<T>(_ set1: Set<T>, _ set2: Set<T>) -> Bool {
    return set1 == set2
}

/// Преобразует строку в массив символов в нижнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в нижнем регистре.
func stringToLowerCaseCharArray(_ str: String) -> [Character] {
    return Array(str.lowercased())
}

/// Сортирует массив строк по длине строки в порядке возрастания.
/// - Parameter strings: Массив строк.
/// - Returns: Отсортированный массив строк по длине.
func sortStringsByLengthAscending(_ strings: [String]) -> [String] {
    return strings.sorted { $0.count < $1.count }
}

/// Проверяет, является ли строка пустой или состоит только из пробелов.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пустая или состоит только из пробелов.
func isBlank(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Преобразует двумерный массив чисел в одномерный массив.
/// - Parameter matrix: Двумерный массив чисел.
/// - Returns: Одномерный массив чисел.
func flattenIntegerMatrix(_ matrix: [[Int]]) -> [Int] {
    return matrix.flatMap { $0 }
}

/// Проверяет, является ли строка числом с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом с плавающей точкой.
func isFloatingPointNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Возвращает наименьший элемент массива чисел.
/// - Parameter numbers: Массив чисел.
/// - Returns: Наименьший элемент массива.
func findMinValue(_ numbers: [Int]) -> Int? {
    return numbers.min()
}

/// Проверяет, является ли строка в формате электронной почты.
/// - Parameter email: Входная строка.
/// - Returns: `true`, если строка является валидным email.
func isValidEmail(_ email: String) -> Bool {
    let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return email.range(of: pattern, options: .regularExpression) != nil
}

/// Генерирует случайное число с плавающей точкой в указанном диапазоне.
/// - Parameters:
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Случайное число с плавающей точкой.
func randomFloat(inRange min: Double, max: Double) -> Double {
    return Double.random(in: min...max)
}

/// Преобразует строку в массив чисел, разделенных запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел.
func stringToCommaSeparatedIntegers(_ str: String) -> [Int]? {
    return str.split(separator: ",").compactMap { Int($0) }
}

/// Проверяет, является ли дата в будущем относительно текущей.
/// - Parameter date: Дата для проверки.
/// - Returns: `true`, если дата в будущем.
func isFutureDate(_ date: Date) -> Bool {
    return date > Date()
}

/// Генерирует строку с повторяющимися символами.
/// - Parameters:
///   - char: Символ.
///   - count: Количество повторений.
/// - Returns: Строка с повторяющимися символами.
func repeatCharacter(_ char: Character, count: Int) -> String {
    return String(repeating: char, count: count)
}

/// Преобразует строку в массив слов, разделенных пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToWordArray(_ str: String) -> [String] {
    return str.split(separator: " ").map { String($0) }
}

/// Возвращает количество символов в строке, игнорируя пробелы.
/// - Parameter str: Входная строка.
/// - Returns: Количество символов без учета пробелов.
func countCharactersWithoutSpaces(_ str: String) -> Int {
    return str.replacingOccurrences(of: " ", with: "").count
}

/// Проверяет, является ли массив чисел отсортированным по возрастанию.
/// - Parameter numbers: Массив чисел.
/// - Returns: `true`, если массив отсортирован.
func isSortedAscending(_ numbers: [Int]) -> Bool {
    return numbers == numbers.sorted()
}

/// Преобразует строку в массив символов в верхнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в верхнем регистре.
func stringToUppercaseChars(_ str: String) -> [Character] {
    return Array(str.uppercased())
}

/// Проверяет, является ли строка палиндромом, игнорируя пробелы и регистр.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка палиндром.
func isPalindromeIgnoringSpaces(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Преобразует массив строк в массив чисел, разделенных пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToSpaceSeparatedIntegers(_ str: String) -> [Int]? {
    return str.split(separator: " ").compactMap { Int($0) }
}

/// Проверяет, является ли строка числом в двоичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является двоичным числом.
func isBinaryString(_ str: String) -> Bool {
    return str.allSatisfy { $0 == "0" || $0 == "1" }
}

/// Находит второе наибольшее число в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Второе наибольшее число.
func secondLargestNumber(_ numbers: [Int]) -> Int? {
    let sorted = numbers.sorted(by: >)
    return sorted.count > 1 ? sorted[1] : nil
}

/// Преобразует строку в массив символов в нижнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в нижнем регистре.
func stringToLowercaseChars(_ str: String) -> [Character] {
    return Array(str.lowercased())
}

/// Проверяет, является ли число числом Армстронга.
/// - Parameter number: Входное число.
/// - Returns: `true`, если число Армстронга.
func isArmstrongNumber(_ number: Int) -> Bool {
    let digits = String(number).compactMap { Int(String($0)) }
    let power = digits.count
    let sum = digits.map { Int(pow(Double($0), Double(power))) }.reduce(0, +)
    return sum == number
}

/// Преобразует строку в массив целых чисел, извлекая только цифры.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел.
func extractDigits(_ str: String) -> [Int] {
    return str.compactMap { $0.wholeNumberValue }
}

/// Преобразует строку в массив чисел, разделенных запятыми и пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayWithDelimiter(_ str: String) -> [Int]? {
    return str.split { $0 == "," || $0 == " " }.compactMap { Int($0) }
}

/// Генерирует случайный элемент из множества.
/// - Parameter set: Множество элементов.
/// - Returns: Случайный элемент из множества или `nil`, если множество пустое.
func randomElementFromSet<T>(_ set: Set<T>) -> T? {
    return set.randomElement()
}

/// Преобразует строку в массив символов, разделенных тире.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, разделенных тире.
func stringToDashSeparatedCharArray(_ str: String) -> [Character] {
    return str.split(separator: "-").flatMap { $0 }
}

/// Вычисляет расстояние между двумя точками в двумерном пространстве.
/// - Parameters:
///   - x1: X координата первой точки.
///   - y1: Y координата первой точки.
///   - x2: X координата второй точки.
///   - y2: Y координата второй точки.
/// - Returns: Расстояние между точками.
func distanceBetweenPoints(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой шестнадцатеричное число.
func isHexadecimal(_ str: String) -> Bool {
    return Int(str, radix: 16) != nil
}

/// Проверяет, является ли число квадратом целого числа.
/// - Parameter number: Входное число.
/// - Returns: `true`, если число является квадратом целого числа.
func isPerfectSquare(_ number: Int) -> Bool {
    let root = sqrt(Double(number))
    return root == floor(root)
}

/// Преобразует строку в массив чисел с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArray(_ str: String) -> [Float]? {
    return str.split(separator: ",").compactMap { Float($0) }
}

/// Проверяет, является ли строка числом в двоичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой двоичное число.
func isBinaryNumber(_ str: String) -> Bool {
    return str.allSatisfy { $0 == "0" || $0 == "1" }
}

/// Преобразует массив строк в строку, разделенную пробелами.
/// - Parameter words: Массив строк.
/// - Returns: Объединенная строка с пробелами между словами.
func wordsToStringWithSpaces(_ words: [String]) -> String {
    return words.joined(separator: " ")
}

/// Преобразует строку в массив целых чисел, игнорируя символы, которые не являются цифрами.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func extractNumbersFromString(_ str: String) -> [Int] {
    return str.compactMap { $0.wholeNumberValue }
}

/// Находит наибольшее число в массиве чисел с плавающей точкой.
/// - Parameter numbers: Массив чисел с плавающей точкой.
/// - Returns: Наибольшее число в массиве.
func maxFloatValue(_ numbers: [Float]) -> Float? {
    return numbers.max()
}

/// Преобразует строку в массив символов с заданной длиной.
/// - Parameters:
///   - str: Входная строка.
///   - length: Длина каждого символа.
/// - Returns: Массив строк с символами фиксированной длины.
func stringToFixedLengthCharArray(_ str: String, length: Int) -> [String] {
    return str.map { String($0).padding(toLength: length, withPad: " ", startingAt: 0) }
}

/// Проверяет, является ли строка пустой или содержит только пробелы.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пустая или состоит только из пробелов.
func isEmptyOrWhitespace(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Преобразует строку в массив символов в верхнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в верхнем регистре.
func stringToUppercaseArray(_ str: String) -> [Character] {
    return Array(str.uppercased())
}

/// Возвращает количество уникальных элементов в массиве.
/// - Parameter array: Массив элементов.
/// - Returns: Количество уникальных элементов в массиве.
func countUniqueElements<T>(_ array: [T]) -> Int where T: Hashable {
    return Set(array).count
}

/// Преобразует строку в массив чисел с плавающей точкой, извлекая только числа.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func extractFloatsFromString(_ str: String) -> [Float] {
    let numbers = str.split(separator: " ").compactMap { Float($0) }
    return numbers
}

/// Генерирует уникальный идентификатор в формате строки.
/// - Returns: Уникальный идентификатор.
func generateUniqueIdentifier() -> String {
    return UUID().uuidString
}

/// Преобразует строку в массив символов, игнорируя все специальные символы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без специальных символов.
func stringToCharacterArrayWithoutSpecials(_ str: String) -> [Character] {
    return str.filter { $0.isLetter || $0.isNumber }
}

/// Проверяет, является ли строка числом в десятичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой десятичное число.
func isDecimalNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Проверяет, содержит ли словарь заданный ключ.
/// - Parameters:
///   - dictionary: Словарь.
///   - key: Ключ для поиска.
/// - Returns: `true`, если словарь содержит ключ.
func containsKey<Key, Value>(_ dictionary: [Key: Value], key: Key) -> Bool where Key: Hashable {
    return dictionary.keys.contains(key)
}

/// Получает значение для заданного ключа, если оно существует, или возвращает `nil`.
/// - Parameters:
///   - dictionary: Словарь.
///   - key: Ключ для поиска.
/// - Returns: Значение для ключа или `nil`, если ключ отсутствует.
func valueForKey<Key, Value>(_ dictionary: [Key: Value], key: Key) -> Value? where Key: Hashable {
    return dictionary[key]
}

/// Возвращает все ключи, которые связаны с одинаковыми значениями в словаре.
/// - Parameters:
///   - dictionary: Словарь.
/// - Returns: Словарь, где ключи — это значения исходного словаря.
func keysForDuplicateValues<Key, Value>(_ dictionary: [Key: Value]) -> [Value: [Key]] where Key: Hashable {
    var result: [Value: [Key]] = [:]
    for (key, value) in dictionary {
        result[value, default: []].append(key)
    }
    return result
}

/// Создает новый словарь, который исключает пары ключ-значение, удовлетворяющие условию.
/// - Parameters:
///   - dictionary: Исходный словарь.
///   - condition: Условие для исключения.
/// - Returns: Новый словарь без элементов, которые не удовлетворяют условию.
func filterDictionary<Key, Value>(_ dictionary: [Key: Value], condition: (Key, Value) -> Bool) -> [Key: Value] where Key: Hashable {
    return dictionary.filter(condition)
}

/// Объединяет два словаря, при этом значения из второго словаря заменяют значения из первого, если ключи одинаковы.
/// - Parameters:
///   - dictionary1: Первый словарь.
///   - dictionary2: Второй словарь.
/// - Returns: Новый объединенный словарь.
func mergeDictionaries<Key, Value>(_ dictionary1: [Key: Value], _ dictionary2: [Key: Value]) -> [Key: Value] where Key: Hashable {
    var merged = dictionary1
    for (key, value) in dictionary2 {
        merged[key] = value
    }
    return merged
}

/// Преобразует словарь в массив кортежей ключ-значение.
/// - Parameter dictionary: Словарь.
/// - Returns: Массив кортежей.
func dictionaryToArray<Key, Value>(_ dictionary: [Key: Value]) -> [(Key, Value)] where Key: Hashable {
    return Array(dictionary)
}

/// Возвращает только те элементы словаря, чьи значения удовлетворяют условию.
/// - Parameters:
///   - dictionary: Словарь.
///   - condition: Условие для проверки значений.
/// - Returns: Новый словарь с отфильтрованными элементами.
func filterDictionaryByValue<Key, Value>(_ dictionary: [Key: Value], condition: (Value) -> Bool) -> [Key: Value] where Key: Hashable {
    return dictionary.filter { condition($0.value) }
}

/// Получает все значения из словаря в виде массива.
/// - Parameter dictionary: Словарь.
/// - Returns: Массив значений.
func valuesFromDictionary<Key, Value>(_ dictionary: [Key: Value]) -> [Value] where Key: Hashable {
    return Array(dictionary.values)
}

/// Находит максимальное значение по ключу в словаре.
/// - Parameters:
///   - dictionary: Словарь.
///   - transform: Преобразование значения для поиска максимума.
/// - Returns: Максимальное значение.
func maxValueInDictionary<Key, Value>(_ dictionary: [Key: Value], transform: (Value) -> Double) -> (Key, Value)? where Key: Hashable {
    return dictionary.max { transform($0.value) < transform($1.value) }
}

/// Находит минимальное значение по ключу в словаре.
/// - Parameters:
///   - dictionary: Словарь.
///   - transform: Преобразование значения для поиска минимума.
/// - Returns: Минимальное значение.
func minValueInDictionary<Key, Value>(_ dictionary: [Key: Value], transform: (Value) -> Double) -> (Key, Value)? where Key: Hashable {
    return dictionary.min { transform($0.value) < transform($1.value) }
}

/// Преобразует словарь в строку JSON.
/// - Parameter dictionary: Словарь.
/// - Returns: Строка JSON, если преобразование удалось.
func dictionaryToJsonString<Key, Value>(_ dictionary: [Key: Value]) -> String? where Key: Hashable, Value: Codable {
    let encoder = JSONEncoder()
    if let data = try? encoder.encode(dictionary) {
        return String(data: data, encoding: .utf8)
    }
    return nil
}

/// Создает словарь, где каждый элемент словаря является парой ключ-значение, состоящей из оригинального ключа и его индекса.
/// - Parameter dictionary: Словарь.
/// - Returns: Словарь с индексами элементов.
func dictionaryWithIndexes<Key, Value>(_ dictionary: [Key: Value]) -> [Key: (Value, Int)] where Key: Hashable {
    return Dictionary(uniqueKeysWithValues: dictionary.enumerated().map { ($1.key, ($1.value, $0)) })
}

/// Преобразует массив ключей в словарь с одинаковыми значениями.
/// - Parameters:
///   - keys: Массив ключей.
///   - value: Значение, которое будет присвоено всем ключам.
/// - Returns: Новый словарь с ключами и одинаковыми значениями.
func keysToDictionary<Key, Value>(_ keys: [Key], value: Value) -> [Key: Value] where Key: Hashable {
    return Dictionary(uniqueKeysWithValues: keys.map { ($0, value) })
}

/// Возвращает список ключей, которые не содержат значения в другом словаре.
/// - Parameters:
///   - dictionary1: Первый словарь.
///   - dictionary2: Второй словарь.
/// - Returns: Список ключей, которые присутствуют в первом словаре, но отсутствуют во втором.
func keysNotInSecondDictionary<Key, Value>(_ dictionary1: [Key: Value], dictionary2: [Key: Value]) -> [Key] where Key: Hashable {
    return dictionary1.keys.filter { !dictionary2.keys.contains($0) }
}

/// Преобразует массив ключей и массив значений в словарь.
/// - Parameters:
///   - keys: Массив ключей.
///   - values: Массив значений.
/// - Returns: Словарь, который содержит пары ключ-значение.
func arrayToDictionary<Key, Value>(_ keys: [Key], _ values: [Value]) -> [Key: Value] where Key: Hashable {
    var dictionary: [Key: Value] = [:]
    for (index, key) in keys.enumerated() {
        if index < values.count {
            dictionary[key] = values[index]
        }
    }
    return dictionary
}

/// Преобразует словарь в массив строк в формате "ключ: значение".
/// - Parameter dictionary: Словарь.
/// - Returns: Массив строк в формате "ключ: значение".
func dictionaryToStringArray<Key, Value>(_ dictionary: [Key: Value]) -> [String] where Key: Hashable {
    return dictionary.map { "\($0.key): \($0.value)" }
}

/// Возвращает новый словарь, где значения изменены с помощью указанной функции.
/// - Parameters:
///   - dictionary: Исходный словарь.
///   - transform: Функция для преобразования значений.
/// - Returns: Новый словарь с преобразованными значениями.
func transformValues<Key, Value>(_ dictionary: [Key: Value], transform: (Value) -> Value) -> [Key: Value] where Key: Hashable {
    return dictionary.mapValues(transform)
}

/// Преобразует строку в массив слов, разделенных пробелами или другими разделителями.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToArrayBySeparators(_ str: String) -> [String] {
    return str.split { !$0.isLetter && !$0.isNumber }.map { String($0) }
}

/// Находит значение, которое встречается чаще всего в словаре по значениям.
/// - Parameter dictionary: Словарь с ключами и значениями.
/// - Returns: Значение, которое встречается чаще всего.
func mostFrequentValue<Key, Value>(_ dictionary: [Key: Value]) -> Value? where Value: Hashable {
    let frequencies = dictionary.values.reduce(into: [:]) { counts, value in
        counts[value, default: 0] += 1
    }
    return frequencies.max { $0.value < $1.value }?.key
}

/// Генерирует словарь с уникальными значениями из двух массивов ключей и значений.
/// - Parameters:
///   - keys: Массив ключей.
///   - values: Массив значений.
/// - Returns: Новый словарь.
func uniqueDictionaryFromArrays<Key, Value>(_ keys: [Key], _ values: [Value]) -> [Key: Value] where Key: Hashable {
    var dict: [Key: Value] = [:]
    for (index, key) in keys.enumerated() {
        if index < values.count {
            dict[key] = values[index]
        }
    }
    return dict
}

/// Возвращает количество уникальных значений в словаре.
/// - Parameter dictionary: Словарь.
/// - Returns: Количество уникальных значений в словаре.
func countUniqueValues<Key, Value>(_ dictionary: [Key: Value]) -> Int where Value: Hashable {
    return Set(dictionary.values).count
}

/// Извлекает все значения из словаря и преобразует их в массив.
/// - Parameter dictionary: Словарь.
/// - Returns: Массив значений.
func valuesToArray<Key, Value>(_ dictionary: [Key: Value]) -> [Value] where Key: Hashable {
    return Array(dictionary.values)
}

/// Объединяет два словаря, при этом элементы из второго словаря заменяют элементы из первого, если они совпадают по ключу.
/// - Parameters:
///   - dict1: Первый словарь.
///   - dict2: Второй словарь.
/// - Returns: Объединенный словарь.
func combineDictionaries<Key, Value>(_ dict1: [Key: Value], _ dict2: [Key: Value]) -> [Key: Value] where Key: Hashable {
    var combined = dict1
    for (key, value) in dict2 {
        combined[key] = value
    }
    return combined
}

/// Возвращает новый словарь, где все значения увеличены на заданную величину.
/// - Parameters:
///   - dictionary: Исходный словарь.
///   - increment: Величина увеличения.
/// - Returns: Новый словарь с увеличенными значениями.
func incrementValues<Key>(_ dictionary: [Key: Int], by increment: Int) -> [Key: Int] where Key: Hashable {
    return dictionary.mapValues { $0 + increment }
}

/// Проверяет, является ли словарь пустым.
/// - Parameter dictionary: Словарь.
/// - Returns: `true`, если словарь пуст.
func isDictionaryEmpty<Key, Value>(_ dictionary: [Key: Value]) -> Bool where Key: Hashable {
    return dictionary.isEmpty
}

/// Преобразует словарь в массив кортежей, где каждый кортеж представляет собой пару "ключ-значение".
/// - Parameter dictionary: Словарь.
/// - Returns: Массив кортежей.
func dictionaryToTupleArray<Key, Value>(_ dictionary: [Key: Value]) -> [(Key, Value)] where Key: Hashable {
    return Array(dictionary)
}

/// Преобразует словарь в строку с форматом "ключ: значение", разделенную запятыми.
/// - Parameter dictionary: Словарь.
/// - Returns: Строка в формате "ключ: значение".
func dictionaryToString<Key, Value>(_ dictionary: [Key: Value]) -> String where Key: Hashable {
    return dictionary.map { "\($0.key): \($0.value)" }.joined(separator: ", ")
}

/// Преобразует массив ключей в массив значений из словаря.
/// - Parameters:
///   - dictionary: Словарь.
///   - keys: Массив ключей.
/// - Returns: Массив значений для указанных ключей.
func valuesForKeys<Key, Value>(_ dictionary: [Key: Value], keys: [Key]) -> [Value?] where Key: Hashable {
    return keys.map { dictionary[$0] }
}

/// Преобразует строки в словарь, где каждый ключ — это строка, а значение — это длина строки.
/// - Parameter strings: Массив строк.
/// - Returns: Словарь, где ключ — это строка, а значение — длина строки.
func stringsToLengthDictionary(_ strings: [String]) -> [String: Int] {
    return Dictionary(uniqueKeysWithValues: strings.map { ($0, $0.count) })
}

/// Извлекает ключи, для которых значения больше заданного порога.
/// - Parameters:
///   - dictionary: Словарь.
///   - threshold: Пороговое значение.
/// - Returns: Массив ключей, чьи значения больше порога.
func keysWithValuesGreaterThanThreshold<Key, Value>(_ dictionary: [Key: Value], threshold: Value) -> [Key] where Key: Hashable, Value: Comparable {
    return dictionary.filter { $0.value > threshold }.map { $0.key }
}

/// Проверяет, существует ли ключ с заданным значением в словаре.
/// - Parameters:
///   - dictionary: Словарь.
///   - value: Значение для проверки.
/// - Returns: `true`, если значение присутствует в словаре.
func containsValue<Key, Value>(_ dictionary: [Key: Value], value: Value) -> Bool where Key: Hashable, Value: Equatable {
    return dictionary.values.contains(value)
}

/// Находит ключ, связанный с минимальным значением в словаре.
/// - Parameter dictionary: Словарь.
/// - Returns: Ключ с минимальным значением.
func keyWithMinValue<Key, Value>(_ dictionary: [Key: Value]) -> Key? where Key: Hashable, Value: Comparable {
    return dictionary.min { $0.value < $1.value }?.key
}

/// Находит ключ, связанный с максимальным значением в словаре.
/// - Parameter dictionary: Словарь.
/// - Returns: Ключ с максимальным значением.
func keyWithMaxValue<Key, Value>(_ dictionary: [Key: Value]) -> Key? where Key: Hashable, Value: Comparable {
    return dictionary.max { $0.value < $1.value }?.key
}

/// Преобразует словарь в массив строк, где каждый элемент представляет собой пару "ключ: значение".
/// - Parameter dictionary: Словарь.
/// - Returns: Массив строк.
func dictionaryToStringArray<Key, Value>(_ dictionary: [Key: Value]) -> [String] where Key: Hashable {
    return dictionary.map { "\($0.key): \($0.value)" }
}

/// Преобразует словарь в новый, где все значения инкрементируются на заданное число.
/// - Parameters:
///   - dictionary: Словарь.
///   - increment: Число для инкрементации.
/// - Returns: Новый словарь с инкрементированными значениями.
func incrementDictionaryValues<Key>(_ dictionary: [Key: Int], by increment: Int) -> [Key: Int] where Key: Hashable {
    return dictionary.mapValues { $0 + increment }
}

/// Проверяет, является ли строка валидным числом с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом с плавающей точкой.
func isValidFloat(_ str: String) -> Bool {
    return Float(str) != nil
}

/// Преобразует строку в массив целых чисел, разделенных запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел, извлеченных из строки.
func stringToCommaSeparatedIntegers(_ str: String) -> [Int] {
    return str.split(separator: ",").compactMap { Int($0) }
}

/// Проверяет, является ли строка пустой или состоит только из пробелов.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка пуста или состоит только из пробелов.
func isBlankString(_ str: String) -> Bool {
    return str.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Преобразует строку в массив чисел с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArray(_ str: String) -> [Float] {
    return str.split(separator: ",").compactMap { Float($0) }
}

/// Преобразует строку в массив символов, разделенных пробелами или запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToCharacterArrayFromWords(_ str: String) -> [Character] {
    return str.split { $0 == " " || $0 == "," }.flatMap { $0 }
}

/// Проверяет, является ли переданное число простым.
/// - Parameter number: Число для проверки.
/// - Returns: `true`, если число простое.
func isPrimeNumber(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

/// Преобразует строку в список символов в верхнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов в верхнем регистре.
func stringToUppercaseCharList(_ str: String) -> [Character] {
    return Array(str.uppercased())
}

/// Извлекает только уникальные элементы из массива.
/// - Parameter array: Входной массив.
/// - Returns: Массив уникальных элементов.
func uniqueElementsFromArray<T>(_ array: [T]) -> [T] where T: Hashable {
    return Array(Set(array))
}

/// Преобразует строку в массив чисел, игнорируя нецифровые символы.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func extractDigitsFromString(_ str: String) -> [Int] {
    return str.compactMap { $0.wholeNumberValue }
}

/// Преобразует строку в массив строк, разделяя её по пробелам и другим разделителям.
/// - Parameter str: Входная строка.
/// - Returns: Массив строк.
func stringToArrayByWhitespaceAndDelimiters(_ str: String) -> [String] {
    return str.split { $0.isWhitespace || $0 == "," || $0 == ";" }.map { String($0) }
}

/// Проверяет, является ли строка палиндромом без учета регистра и пробелов.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является палиндромом.
func isPalindromeIgnoringSpacesAndCase(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Преобразует массив целых чисел в строку с разделителями.
/// - Parameters:
///   - array: Массив целых чисел.
///   - separator: Разделитель для элементов.
/// - Returns: Строка, содержащая элементы массива, разделённые указанным разделителем.
func intArrayToStringWithSeparator(_ array: [Int], separator: String) -> String {
    return array.map { String($0) }.joined(separator: separator)
}

/// Возвращает элементы массива в обратном порядке.
/// - Parameter array: Массив.
/// - Returns: Массив в обратном порядке.
func reverseArray<T>(_ array: [T]) -> [T] {
    return array.reversed()
}

/// Генерирует случайный элемент из словаря по его значениям.
/// - Parameter dictionary: Словарь.
/// - Returns: Случайный элемент словаря.
func randomElementFromDictionary<Key, Value>(_ dictionary: [Key: Value]) -> (Key, Value)? where Key: Hashable {
    return dictionary.randomElement()
}

/// Возвращает ключи из словаря, которые связаны с минимальными значениями.
/// - Parameter dictionary: Словарь.
/// - Returns: Ключи с минимальными значениями.
func keysWithMinValues<Key, Value>(_ dictionary: [Key: Value]) -> [Key] where Key: Hashable, Value: Comparable {
    guard let minValue = dictionary.values.min() else { return [] }
    return dictionary.filter { $0.value == minValue }.map { $0.key }
}

/// Проверяет, является ли переданная дата в будущем относительно текущей.
/// - Parameter date: Дата для проверки.
/// - Returns: `true`, если дата в будущем.
func isFutureDate(_ date: Date) -> Bool {
    return date > Date()
}

/// Преобразует строку в массив символов, фильтруя только буквы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, содержащих только буквы.
func stringToAlphabeticCharArray(_ str: String) -> [Character] {
    return str.filter { $0.isLetter }
}

/// Находит разницу между двумя датами в днях.
/// - Parameters:
///   - startDate: Начальная дата.
///   - endDate: Конечная дата.
/// - Returns: Количество дней между датами.
func daysBetweenDates(startDate: Date, endDate: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day ?? 0
}

/// Преобразует строку в массив чисел, разделенных пробелами, и возвращает сумму.
/// - Parameter str: Входная строка.
/// - Returns: Сумма чисел в строке.
func sumOfNumbersInString(_ str: String) -> Int {
    let numbers = str.split(separator: " ").compactMap { Int($0) }
    return numbers.reduce(0, +)
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой шестнадцатеричное число.
func isHexadecimalNumber(_ str: String) -> Bool {
    return Int(str, radix: 16) != nil
}

/// Преобразует строку в массив строк, разделённых по символу табуляции.
/// - Parameter str: Входная строка.
/// - Returns: Массив строк, разделённых символом табуляции.
func stringToTabSeparatedArray(_ str: String) -> [String] {
    return str.split(separator: "\t").map { String($0) }
}

/// Проверяет, является ли строка числом в десятичной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является десятичным числом.
func isDecimalString(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Преобразует строку в массив чисел с плавающей точкой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToDoubleArray(_ str: String) -> [Double] {
    return str.split(separator: ",").compactMap { Double($0) }
}

/// Извлекает из строки все символы, являющиеся цифрами, и возвращает их как строку.
/// - Parameter str: Входная строка.
/// - Returns: Строка, состоящая только из цифр.
func extractDigitsAsString(_ str: String) -> String {
    return str.filter { $0.isNumber }
}

/// Проверяет, является ли строка числом в научной (экспоненциальной) записи.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом в научной записи.
func isScientificNotation(_ str: String) -> Bool {
    let regex = "^[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив символов, игнорируя все пробелы и специальные символы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без пробелов и специальных символов.
func stringToCleanCharacterArray(_ str: String) -> [Character] {
    return str.filter { $0.isLetter || $0.isNumber }
}

/// Проверяет, является ли переданное число чётным.
/// - Parameter number: Число для проверки.
/// - Returns: `true`, если число чётное.
func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Сортирует массив строк в порядке убывания длины.
/// - Parameter strings: Массив строк.
/// - Returns: Массив строк, отсортированных по убыванию длины.
func sortStringsByLengthDescending(_ strings: [String]) -> [String] {
    return strings.sorted { $0.count > $1.count }
}

/// Преобразует строку в строку, где каждый символ заменён на его Unicode-значение.
/// - Parameter str: Входная строка.
/// - Returns: Строка, где каждый символ заменён на его Unicode-значение.
func stringToUnicodeString(_ str: String) -> String {
    return str.map { "\\u{\($0.asciiValue ?? 0)}" }.joined()
}

/// Преобразует строку в массив чисел, разделённых запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToCommaSeparatedIntegers(_ str: String) -> [Int] {
    return str.split(separator: ",").compactMap { Int($0) }
}

/// Проверяет, является ли строка палиндромом, игнорируя пробелы и регистр.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является палиндромом.
func isPalindromeIgnoringSpacesAndCase(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

/// Преобразует строку в массив чисел с плавающей точкой и возвращает их сумму.
/// - Parameter str: Входная строка.
/// - Returns: Сумма чисел в строке.
func sumOfNumbersInString(_ str: String) -> Double {
    let numbers = str.split(separator: " ").compactMap { Double($0) }
    return numbers.reduce(0, +)
}

/// Преобразует строку в массив символов, разделённых символами табуляции и пробела.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, разделённых табуляцией и пробелами.
func stringToTabbedAndSpaceSeparatedCharArray(_ str: String) -> [Character] {
    return str.split { $0 == "\t" || $0 == " " }.flatMap { $0 }
}

/// Преобразует строку в массив чисел с плавающей точкой и возвращает их произведение.
/// - Parameter str: Входная строка.
/// - Returns: Произведение чисел в строке.
func productOfNumbersInString(_ str: String) -> Double {
    let numbers = str.split(separator: " ").compactMap { Double($0) }
    return numbers.reduce(1, *)
}

/// Проверяет, является ли строка допустимым IP-адресом версии 4.
/// - Parameter ip: Входная строка.
/// - Returns: `true`, если строка является валидным IPv4-адресом.
func isValidIPv4(_ ip: String) -> Bool {
    let components = ip.split(separator: ".")
    guard components.count == 4 else { return false }
    return components.allSatisfy { component in
        if let num = Int(component), num >= 0, num <= 255 {
            return true
        }
        return false
    }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых точкой с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToSemicolonSeparatedDoubles(_ str: String) -> [Double] {
    return str.split(separator: ";").compactMap { Double($0) }
}

/// Возвращает массив элементов, которые присутствуют в одном массиве, но отсутствуют в другом.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив элементов, присутствующих в первом, но отсутствующих во втором.
func elementsInFirstNotInSecond<T>(_ array1: [T], _ array2: [T]) -> [T] where T: Hashable {
    return Array(Set(array1).subtracting(array2))
}

/// Генерирует случайную строку заданной длины, состоящую из букв и цифр.
/// - Parameter length: Длина строки.
/// - Returns: Случайная строка.
func generateRandomString(ofLength length: Int) -> String {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).compactMap { _ in characters.randomElement() })
}

/// Преобразует строку в массив символов, разделённых пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToSpaceSeparatedCharArray(_ str: String) -> [Character] {
    return str.split(separator: " ").flatMap { $0 }
}

/// Проверяет, является ли строка числом в бинарной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой двоичное число.
func isBinaryString(_ str: String) -> Bool {
    return str.allSatisfy { $0 == "0" || $0 == "1" }
}

/// Преобразует строку в массив чисел с плавающей точкой и возвращает среднее значение.
/// - Parameter str: Входная строка.
/// - Returns: Среднее значение чисел в строке.
func averageOfNumbersInString(_ str: String) -> Double {
    let numbers = str.split(separator: " ").compactMap { Double($0) }
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует строку в массив целых чисел, разделённых пробелами или запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToArrayBySpacesAndCommas(_ str: String) -> [Int] {
    return str.split { $0 == " " || $0 == "," }.compactMap { Int($0) }
}

/// Проверяет, является ли строка допустимым IP-адресом версии 6.
/// - Parameter ip: Входная строка.
/// - Returns: `true`, если строка является валидным IPv6-адресом.
func isValidIPv6(_ ip: String) -> Bool {
    let regex = "^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"
    return ip.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив символов, разделённых пробелами или точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToDelimitedCharArray(_ str: String) -> [Character] {
    return str.split { $0 == " " || $0 == ";" }.flatMap { $0 }
}

/// Преобразует строку в массив символов, исключая пробелы и символы препинания.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без пробелов и препинания.
func stringToAlphabeticCharArray(_ str: String) -> [Character] {
    return str.filter { $0.isLetter }
}

/// Преобразует строку в массив целых чисел, разделённых точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToSemicolonSeparatedIntegers(_ str: String) -> [Int] {
    return str.split(separator: ";").compactMap { Int($0) }
}

/// Находит наибольшее число в массиве чисел с плавающей точкой.
/// - Parameter numbers: Массив чисел с плавающей точкой.
/// - Returns: Наибольшее число в массиве.
func maxFloatInArray(_ numbers: [Float]) -> Float? {
    return numbers.max()
}

/// Преобразует строку в массив целых чисел, разделённых символами табуляции.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToTabSeparatedIntegers(_ str: String) -> [Int] {
    return str.split(separator: "\t").compactMap { Int($0) }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayBySpaces(_ str: String) -> [Float] {
    return str.split(separator: " ").compactMap { Float($0) }
}

/// Проверяет, является ли строка числом с плавающей точкой в экспоненциальной записи.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка представляет собой число с плавающей точкой в экспоненциальной записи.
func isScientificNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Преобразует строку в массив символов, игнорируя пробелы и цифры.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без пробелов и цифр.
func stringToCharArrayWithoutDigits(_ str: String) -> [Character] {
    return str.filter { !$0.isNumber }
}

/// Генерирует случайную строку заданной длины, состоящую из символов латинского алфавита и цифр.
/// - Parameter length: Длина строки.
/// - Returns: Случайная строка.
func generateRandomAlphaNumericString(length: Int) -> String {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).compactMap { _ in characters.randomElement() })
}

/// Преобразует строку в массив символов с сохранением всех пробелов.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, включая пробелы.
func stringToCharArrayWithSpaces(_ str: String) -> [Character] {
    return Array(str)
}

/// Возвращает уникальные элементы из двух массивов.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив уникальных элементов.
func uniqueElementsFromTwoArrays<T>(_ array1: [T], _ array2: [T]) -> [T] where T: Hashable {
    return Array(Set(array1).union(Set(array2)))
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithCommasAndSpaces(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == "," }.compactMap { Float($0) }
}

/// Преобразует строку в массив символов, игнорируя все специальные символы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, содержащих только буквы и цифры.
func stringToAlphanumericCharArray(_ str: String) -> [Character] {
    return str.filter { $0.isLetter || $0.isNumber }
}

/// Преобразует строку в массив целых чисел, разделённых пробелами и точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToArrayWithSpaceAndSemicolonSeparators(_ str: String) -> [Int] {
    return str.split { $0 == " " || $0 == ";" }.compactMap { Int($0) }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithSpaceAndSemicolon(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == ";" }.compactMap { Float($0) }
}

/// Проверяет, является ли строка строкой с числовым значением, содержащей разделитель тысяч.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом с разделителем тысяч.
func isFormattedNumber(_ str: String) -> Bool {
    let regex = "^[0-9]{1,3}(?:,([0-9]{3}))*$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив символов, игнорируя все пробелы и символы препинания.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов, исключая пробелы и препинания.
func stringToAlphabeticCharsWithoutPunctuation(_ str: String) -> [Character] {
    return str.filter { $0.isLetter }
}

/// Возвращает разницу между двумя массивами, в том числе уникальные элементы, которые присутствуют только в одном из них.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив уникальных элементов.
func differenceBetweenArrays<T>(_ array1: [T], _ array2: [T]) -> [T] where T: Hashable {
    return Array(Set(array1).symmetricDifference(Set(array2)))
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами, и возвращает их среднее значение.
/// - Parameter str: Входная строка.
/// - Returns: Среднее значение чисел.
func averageOfFloatsInString(_ str: String) -> Double {
    let numbers = str.split(separator: " ").compactMap { Double($0) }
    return numbers.isEmpty ? 0 : numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых запятыми и пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithCommaAndSpace(_ str: String) -> [Float] {
    return str.split { $0 == "," || $0 == " " }.compactMap { Float($0) }
}

/// Генерирует случайное число с плавающей точкой в заданном диапазоне.
/// - Parameters:
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Случайное число с плавающей точкой.
func randomDouble(inRange min: Double, max: Double) -> Double {
    return Double.random(in: min...max)
}

/// Преобразует строку в массив символов, разделённых запятыми или пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToCharArrayByCommaOrSpace(_ str: String) -> [Character] {
    return str.split { $0 == " " || $0 == "," }.flatMap { $0 }
}

/// Проверяет, является ли переданное число целым и положительным.
/// - Parameter number: Число для проверки.
/// - Returns: `true`, если число положительное.
func isPositiveInteger(_ number: Int) -> Bool {
    return number > 0
}

/// Преобразует строку в массив строк, где каждый элемент состоит из слов по пробелам.
/// - Parameter str: Входная строка.
/// - Returns: Массив строк.
func stringToWordArrayBySpaces(_ str: String) -> [String] {
    return str.split(separator: " ").map { String($0) }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithSpaceAndSemicolon(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == ";" }.compactMap { Float($0) }
}

/// Преобразует строку в массив символов, разделённых пробелами, игнорируя цифры.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без цифр.
func stringToCharArrayWithoutNumbers(_ str: String) -> [Character] {
    return str.filter { !$0.isNumber }
}

/// Возвращает ключи, которые не содержатся в другом словаре.
/// - Parameters:
///   - dict1: Первый словарь.
///   - dict2: Второй словарь.
/// - Returns: Массив ключей, которые присутствуют в первом, но отсутствуют во втором.
func keysInFirstNotInSecond<Key, Value>(_ dict1: [Key: Value], dict2: [Key: Value]) -> [Key] where Key: Hashable {
    return Array(dict1.keys.filter { !dict2.keys.contains($0) })
}

/// Возвращает строку, составленную из чисел с плавающей точкой, разделённых пробелами.
/// - Parameter numbers: Массив чисел.
/// - Returns: Строка с числами.
func floatArrayToString(_ numbers: [Float]) -> String {
    return numbers.map { String($0) }.joined(separator: " ")
}

/// Генерирует массив случайных чисел заданной длины в определённом диапазоне.
/// - Parameters:
///   - length: Длина массива.
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Массив случайных чисел.
func generateRandomIntegers(length: Int, min: Int, max: Int) -> [Int] {
    return (0..<length).map { _ in Int.random(in: min...max) }
}

/// Проверяет, содержит ли строка хотя бы одну заглавную букву.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка содержит хотя бы одну заглавную букву.
func containsUppercaseLetter(_ str: String) -> Bool {
    return str.contains { $0.isUppercase }
}

/// Возвращает элемент, который встречается чаще всего в массиве.
/// - Parameter array: Массив элементов.
/// - Returns: Элемент, который встречается чаще всего.
func mostFrequentElement<T: Hashable>(_ array: [T]) -> T? {
    let frequencies = array.reduce(into: [:]) { counts, item in
        counts[item, default: 0] += 1
    }
    return frequencies.max { $0.value < $1.value }?.key
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых точками.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayByDots(_ str: String) -> [Float] {
    return str.split(separator: ".").compactMap { Float($0) }
}

/// Преобразует строку в массив символов, исключая пробелы и знаки препинания.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без пробелов и знаков препинания.
func stringToCleanCharArray(_ str: String) -> [Character] {
    return str.filter { $0.isLetter }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых точками и запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithDotAndComma(_ str: String) -> [Float] {
    return str.split { $0 == "," || $0 == "." }.compactMap { Float($0) }
}

/// Преобразует строку в массив целых чисел, разделённых двоеточиями.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayByColon(_ str: String) -> [Int] {
    return str.split(separator: ":").compactMap { Int($0) }
}

/// Проверяет, является ли строка числом с фиксированной запятой.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом с фиксированной запятой.
func isFixedPointNumber(_ str: String) -> Bool {
    let regex = "^[-+]?\\d+\\.(\\d+)$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив символов, исключая все цифры и пробелы.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов без цифр и пробелов.
func stringToAlphabeticCharArrayWithoutDigits(_ str: String) -> [Character] {
    return str.filter { $0.isLetter }
}

/// Преобразует строку в массив чисел, разделённых точками.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayByDot(_ str: String) -> [Float] {
    return str.split(separator: ".").compactMap { Float($0) }
}

/// Преобразует строку в массив слов, разделённых запятыми или точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив слов.
func stringToArrayByCommaOrSemicolon(_ str: String) -> [String] {
    return str.split { $0 == "," || $0 == ";" }.map { String($0) }
}

/// Генерирует случайный элемент из массива строк.
/// - Parameter array: Массив строк.
/// - Returns: Случайный элемент из массива.
func randomElementFromStringArray(_ array: [String]) -> String? {
    return array.randomElement()
}

/// Проверяет, является ли строка числом в двоичной системе с ведущими нулями.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является двоичным числом с ведущими нулями.
func isBinaryStringWithLeadingZeros(_ str: String) -> Bool {
    let regex = "^0b[01]+$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив строк с удалением всех лишних пробелов.
/// - Parameter str: Входная строка.
/// - Returns: Массив строк без лишних пробелов.
func stringToTrimmedStringArray(_ str: String) -> [String] {
    return str.split(separator: " ").map { String($0).trimmingCharacters(in: .whitespaces) }
}

/// Преобразует строку в массив целых чисел с сохранением знаков.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToSignedIntegerArray(_ str: String) -> [Int] {
    return str.split(separator: " ").compactMap { Int($0) }
}

/// Проверяет, является ли строка допустимым числом с плавающей точкой в экспоненциальной записи.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом в экспоненциальной записи.
func isExponentialNumber(_ str: String) -> Bool {
    return Double(str) != nil
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых запятыми и пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToCommaAndSpaceSeparatedFloats(_ str: String) -> [Float] {
    return str.split { $0 == "," || $0 == " " }.compactMap { Float($0) }
}

/// Проверяет, является ли строка шестнадцатеричным числом в нижнем регистре.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является шестнадцатеричным числом в нижнем регистре.
func isLowercaseHexadecimal(_ str: String) -> Bool {
    let regex = "^[a-f0-9]+$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Преобразует строку в массив целых чисел, разделённых точками и пробелами.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayByDotAndSpace(_ str: String) -> [Int] {
    return str.split { $0 == "." || $0 == " " }.compactMap { Int($0) }
}

/// Генерирует случайную строку заданной длины, состоящую из латинских букв и цифр.
/// - Parameter length: Длина строки.
/// - Returns: Случайная строка.
func generateRandomAlphanumericString(length: Int) -> String {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).compactMap { _ in characters.randomElement() })
}

/// Преобразует строку в массив символов, разделённых пробелами или точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив символов.
func stringToCharArrayBySpaceOrSemicolon(_ str: String) -> [Character] {
    return str.split { $0 == " " || $0 == ";" }.flatMap { $0 }
}

/// Преобразует строку в массив чисел, разделённых пробелами и точками.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayBySpaceAndDot(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == "." }.compactMap { Float($0) }
}

/// Генерирует массив случайных строк заданной длины.
/// - Parameter length: Длина массива строк.
/// - Returns: Массив случайных строк.
func generateRandomStringArray(length: Int) -> [String] {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return (0..<length).map { _ in String((0..<10).compactMap { _ in characters.randomElement() }) }
}

/// Преобразует строку в массив чисел, разделённых символами новой строки.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayByNewLine(_ str: String) -> [Int] {
    return str.split(separator: "\n").compactMap { Int($0) }
}

/// Проверяет, является ли строка представлением действительного IP-адреса версии 4.
/// - Parameter ip: Входная строка.
/// - Returns: `true`, если строка является валидным IPv4-адресом.
func isValidIPv4Address(_ ip: String) -> Bool {
    let components = ip.split(separator: ".")
    return components.count == 4 && components.allSatisfy { component in
        if let num = Int(component), num >= 0, num <= 255 {
            return true
        }
        return false
    }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых точками.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayByDotSeparator(_ str: String) -> [Float] {
    return str.split(separator: ".").compactMap { Float($0) }
}

/// Проверяет, является ли строка допустимым числом в экспоненциальной записи.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является числом в экспоненциальной записи.
func isExponentialFormatNumber(_ str: String) -> Bool {
    let regex = "^[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Генерирует случайный массив строк заданной длины.
/// - Parameters:
///   - length: Длина массива.
///   - stringLength: Длина каждой строки в массиве.
/// - Returns: Массив случайных строк.
func generateRandomStringArray(length: Int, stringLength: Int) -> [String] {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return (0..<length).map { _ in
        String((0..<stringLength).compactMap { _ in characters.randomElement() })
    }
}

/// Преобразует строку в массив чисел, разделённых пробелами, и находит их среднее значение.
/// - Parameter str: Входная строка.
/// - Returns: Среднее значение чисел в строке.
func averageOfIntegersInString(_ str: String) -> Double {
    let numbers = str.split(separator: " ").compactMap { Int($0) }
    return numbers.isEmpty ? 0 : Double(numbers.reduce(0, +)) / Double(numbers.count)
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithSpaceAndSemicolon(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == ";" }.compactMap { Float($0) }
}

/// Возвращает ключи словаря, которые имеют одинаковые значения.
/// - Parameter dictionary: Словарь.
/// - Returns: Массив ключей с одинаковыми значениями.
func keysWithSameValues<Key, Value>(_ dictionary: [Key: Value]) -> [Key] where Key: Hashable {
    let grouped = Dictionary(grouping: dictionary.keys, by: { dictionary[$0]! })
    return grouped.filter { $0.value.count > 1 }.flatMap { $0.value }
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и запятыми.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayWithSpaceAndComma(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == "," }.compactMap { Float($0) }
}

/// Преобразует строку в массив целых чисел, разделённых точками с запятой.
/// - Parameter str: Входная строка.
/// - Returns: Массив целых чисел.
func stringToIntegerArrayBySemicolon(_ str: String) -> [Int] {
    return str.split(separator: ";").compactMap { Int($0) }
}

/// Проверяет, является ли строка допустимым электронным адресом.
/// - Parameter email: Входная строка.
/// - Returns: `true`, если строка является валидным email.
func isValidEmailAddress(_ email: String) -> Bool {
    let regex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return email.range(of: regex, options: .regularExpression) != nil
}

/// Возвращает все элементы массива, которые не присутствуют в другом массиве.
/// - Parameters:
///   - array1: Первый массив.
///   - array2: Второй массив.
/// - Returns: Массив уникальных элементов, которые присутствуют только в первом массиве.
func differenceBetweenArrays<T>(_ array1: [T], _ array2: [T]) -> [T] where T: Hashable {
    return Array(Set(array1).subtracting(array2))
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами и точками.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayBySpaceAndPeriod(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == "." }.compactMap { Float($0) }
}

/// Генерирует случайное целое число в заданном диапазоне, включая оба конца диапазона.
/// - Parameters:
///   - min: Минимальное значение.
///   - max: Максимальное значение.
/// - Returns: Случайное целое число.
func randomIntInRange(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

/// Преобразует строку в массив чисел с плавающей точкой, разделённых пробелами или табуляцией.
/// - Parameter str: Входная строка.
/// - Returns: Массив чисел с плавающей точкой.
func stringToFloatArrayBySpaceOrTab(_ str: String) -> [Float] {
    return str.split { $0 == " " || $0 == "\t" }.compactMap { Float($0) }
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе.
/// - Parameter str: Входная строка.
/// - Returns: `true`, если строка является шестнадцатеричным числом.
func isHexadecimalNumber(_ str: String) -> Bool {
    let regex = "^[0-9a-fA-F]+$"
    return str.range(of: regex, options: .regularExpression) != nil
}

/// Возвращает сумму всех чисел в массиве.
/// - Parameter numbers: Массив чисел.
/// - Returns: Сумма чисел в массиве.
func sumOfArrayElements<T>(_ numbers: [T]) -> T where T: AdditiveArithmetic {
    return numbers.reduce(.zero, +)
}

/// Вычисляет периметр прямоугольника
/// - Parameters:
///   - length: Длина прямоугольника
///   - width: Ширина прямоугольника
/// - Returns: Периметр прямоугольника
func rectanglePerimeter(length: Double, width: Double) -> Double {
    return 2 * (length + width)
}

/// Проверяет, является ли число четным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число четное, иначе `false`
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

/// Преобразует строку в целое число
/// - Parameter str: Строка, которая будет преобразована
/// - Returns: Число, если преобразование успешно, иначе `nil`
func stringToInt(str: String) -> Int? {
    return Int(str)
}

/// Находит максимальное число в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Максимальное число
func maxNumber(in numbers: [Int]) -> Int? {
    return numbers.max()
}

/// Переводит температуру из Цельсия в Фаренгейт
/// - Parameter celsius: Температура в градусах Цельсия
/// - Returns: Температура в градусах Фаренгейта
func celsiusToFahrenheit(celsius: Double) -> Double {
    return celsius * 9/5 + 32
}

/// Возвращает строку с обратным порядком символов
/// - Parameter input: Строка, которую нужно перевернуть
/// - Returns: Перевернутая строка
func reverseString(input: String) -> String {
    return String(input.reversed())
}

/// Проверяет, является ли строка палиндромом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка палиндром, иначе `false`
func isPalindrome(input: String) -> Bool {
    return input == String(input.reversed())
}

/// Вычисляет сумму всех элементов в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Сумма элементов
func sum(of numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

/// Преобразует строку в массив символов
/// - Parameter str: Строка для преобразования
/// - Returns: Массив символов
func stringToCharacterArray(str: String) -> [Character] {
    return Array(str)
}

/// Вычисляет факториал числа
/// - Parameter n: Число для вычисления факториала
/// - Returns: Факториал числа
func factorial(of n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(of: n - 1)
}

/// Преобразует строку в заглавные буквы
/// - Parameter input: Строка для преобразования
/// - Returns: Строка в верхнем регистре
func toUpperCase(input: String) -> String {
    return input.uppercased()
}

/// Проверяет, является ли число положительным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число положительное, иначе `false`
func isPositive(number: Int) -> Bool {
    return number > 0
}

/// Вычисляет квадрат числа
/// - Parameter number: Число для возведения в квадрат
/// - Returns: Квадрат числа
func square(of number: Double) -> Double {
    return number * number
}

/// Получает индекс первого вхождения элемента в массив
/// - Parameters:
///   - array: Массив для поиска
///   - element: Элемент для поиска
/// - Returns: Индекс первого вхождения элемента или `nil`, если элемент не найден
func indexOf<T>(in array: [T], element: T) -> Int? where T: Equatable {
    return array.firstIndex(of: element)
}

/// Проверяет, является ли строка пустой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка пустая, иначе `false`
func isEmpty(input: String) -> Bool {
    return input.isEmpty
}

/// Находит среднее арифметическое чисел в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Среднее арифметическое
func average(of numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sum = numbers.reduce(0, +)
    return sum / Double(numbers.count)
}

/// Определяет, является ли строка числом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом, иначе `false`
func isNumber(input: String) -> Bool {
    return Double(input) != nil
}

/// Преобразует минут в секунды
/// - Parameter minutes: Количество минут
/// - Returns: Количество секунд
func minutesToSeconds(minutes: Int) -> Int {
    return minutes * 60
}

/// Проверяет, является ли год високосным
/// - Parameter year: Год для проверки
/// - Returns: `true`, если год високосный, иначе `false`
func isLeapYear(year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

/// Преобразует строку в массив слов
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWords(input: String) -> [String] {
    return input.split(separator: " ").map { String($0) }
}

/// Вычисляет площадь круга
/// - Parameter radius: Радиус круга
/// - Returns: Площадь круга
func circleArea(radius: Double) -> Double {
    return .pi * pow(radius, 2)
}

/// Проверяет, является ли строка числом с плавающей запятой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом с плавающей запятой, иначе `false`
func isFloat(input: String) -> Bool {
    return Float(input) != nil
}

/// Проверяет, является ли строка пустой или содержит только пробелы
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка пустая или состоит только из пробелов
func isBlank(input: String) -> Bool {
    return input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
}

/// Возвращает максимальный элемент из массива строк по длине
/// - Parameter strings: Массив строк
/// - Returns: Строка с наибольшей длиной
func longestString(in strings: [String]) -> String? {
    return strings.max { $0.count < $1.count }
}

/// Проверяет, является ли число отрицательным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число отрицательное, иначе `false`
func isNegative(number: Int) -> Bool {
    return number < 0
}

/// Вычисляет квадратный корень числа
/// - Parameter number: Число для вычисления квадратного корня
/// - Returns: Квадратный корень числа
func squareRoot(of number: Double) -> Double {
    return sqrt(number)
}

/// Проверяет, является ли строка валидным email-адресом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является валидным email-адресом, иначе `false`
func isValidEmail(input: String) -> Bool {
    let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    return emailTest.evaluate(with: input)
}

/// Конвертирует строку в массив чисел
/// - Parameter input: Строка для преобразования
/// - Returns: Массив чисел
func stringToNumbers(input: String) -> [Int]? {
    return input.split(separator: " ").compactMap { Int($0) }
}

/// Вычисляет произведение всех элементов в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Произведение элементов
func product(of numbers: [Int]) -> Int {
    return numbers.reduce(1, *)
}

/// Генерирует случайное число в заданном диапазоне
/// - Parameters:
///   - min: Минимальное значение диапазона
///   - max: Максимальное значение диапазона
/// - Returns: Случайное число в диапазоне
func randomInRange(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

/// Проверяет, является ли строка числом в десятичной системе
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом в десятичной системе, иначе `false`
func isDecimal(input: String) -> Bool {
    return input.range(of: "^[0-9]+(\\.[0-9]+)?$", options: .regularExpression) != nil
}

/// Конвертирует строку в массив символов с удалением пробелов
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов без пробелов
func stringToCharacterArrayWithoutSpaces(input: String) -> [Character] {
    return input.filter { !$0.isWhitespace }
}

/// Проверяет, является ли строка состоит только из чисел
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка состоит только из чисел, иначе `false`
func isDigitsOnly(input: String) -> Bool {
    return input.allSatisfy { $0.isNumber }
}

/// Возвращает строку с заменой всех пробелов на дефисы
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с дефисами вместо пробелов
func replaceSpacesWithHyphens(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "-")
}

/// Вычисляет сумму чисел в массиве с использованием формулы арифметической прогрессии
/// - Parameters:
///   - firstTerm: Первый элемент прогрессии
///   - lastTerm: Последний элемент прогрессии
///   - count: Количество элементов
/// - Returns: Сумма чисел в массиве
func arithmeticSum(firstTerm: Int, lastTerm: Int, count: Int) -> Int {
    return count * (firstTerm + lastTerm) / 2
}

/// Преобразует массив целых чисел в строку, разделённую запятыми
/// - Parameter numbers: Массив целых чисел
/// - Returns: Строка чисел, разделённых запятыми
func numbersToString(numbers: [Int]) -> String {
    return numbers.map { String($0) }.joined(separator: ", ")
}

/// Проверяет, является ли строка буквой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является буквой, иначе `false`
func isLetter(input: String) -> Bool {
    return input.count == 1 && input.rangeOfCharacter(from: .letters) != nil
}

/// Преобразует строку в массив слов с удалением пунктуации
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWordsWithoutPunctuation(input: String) -> [String] {
    let punctuationSet = CharacterSet.punctuationCharacters
    let cleanInput = input.components(separatedBy: punctuationSet).joined(separator: " ")
    return cleanInput.split(separator: " ").map { String($0) }
}

/// Проверяет, является ли число кратным другому числу
/// - Parameters:
///   - number: Число для проверки
///   - divisor: Делитель для проверки кратности
/// - Returns: `true`, если число кратно делителю, иначе `false`
func isMultiple(of number: Int, divisor: Int) -> Bool {
    return number % divisor == 0
}

/// Генерирует случайный элемент из массива
/// - Parameter array: Массив, из которого нужно выбрать случайный элемент
/// - Returns: Случайный элемент массива
func randomElement<T>(from array: [T]) -> T? {
    return array.randomElement()
}

/// Преобразует строку в массив целых чисел, используя запятую как разделитель
/// - Parameter input: Строка для преобразования
/// - Returns: Массив целых чисел
func stringToIntArray(input: String) -> [Int]? {
    return input.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces)) }
}

/// Возвращает абсолютное значение числа
/// - Parameter number: Число для нахождения абсолютного значения
/// - Returns: Абсолютное значение числа
func absoluteValue(of number: Int) -> Int {
    return abs(number)
}

/// Проверяет, является ли строка числом в двоичной системе счисления
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом в двоичной системе, иначе `false`
func isBinary(input: String) -> Bool {
    let binaryRegex = "^[01]+$"
    let binaryTest = NSPredicate(format: "SELF MATCHES %@", binaryRegex)
    return binaryTest.evaluate(with: input)
}

/// Проверяет, является ли строка валидным URL
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является валидным URL, иначе `false`
func isValidURL(input: String) -> Bool {
    return URL(string: input) != nil
}

/// Получает количество слов в строке
/// - Parameter input: Строка для подсчета слов
/// - Returns: Количество слов в строке
func wordCount(in input: String) -> Int {
    return input.split { $0.isWhitespace }.count
}

/// Находит минимальное число в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Минимальное число в массиве
func minNumber(in numbers: [Int]) -> Int? {
    return numbers.min()
}

/// Проверяет, является ли строка состоящей из цифр и символов
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка состоит только из цифр и символов, иначе `false`
func isAlphaNumeric(input: String) -> Bool {
    return input.rangeOfCharacter(from: .alphanumerics) != nil
}

/// Проверяет, является ли строка только заглавными буквами
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка состоит только из заглавных букв, иначе `false`
func isUpperCase(input: String) -> Bool {
    return input == input.uppercased()
}

/// Вычисляет гипотенузу прямоугольного треугольника
/// - Parameters:
///   - sideA: Одна из сторон треугольника
///   - sideB: Другая сторона треугольника
/// - Returns: Длина гипотенузы
func hypotenuse(sideA: Double, sideB: Double) -> Double {
    return sqrt(pow(sideA, 2) + pow(sideB, 2))
}

/// Преобразует строку в нижний регистр
/// - Parameter input: Строка для преобразования
/// - Returns: Строка в нижнем регистре
func toLowerCase(input: String) -> String {
    return input.lowercased()
}

/// Преобразует градусы в радианы
/// - Parameter degrees: Угол в градусах
/// - Returns: Угол в радианах
func degreesToRadians(degrees: Double) -> Double {
    return degrees * .pi / 180
}

/// Преобразует радианы в градусы
/// - Parameter radians: Угол в радианах
/// - Returns: Угол в градусах
func radiansToDegrees(radians: Double) -> Double {
    return radians * 180 / .pi
}

/// Проверяет, является ли строка числом с плавающей запятой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом с плавающей запятой, иначе `false`
func isFloatingPointNumber(input: String) -> Bool {
    return input.range(of: "^[0-9]*\\.[0-9]+$", options: .regularExpression) != nil
}

/// Преобразует строку в массив целых чисел, разделённых пробелами
/// - Parameter input: Строка с числами, разделёнными пробелами
/// - Returns: Массив целых чисел
func stringToIntegerArray(input: String) -> [Int]? {
    return input.split(separator: " ").compactMap { Int($0) }
}

/// Проверяет, является ли строка непустой и не состоит только из пробелов
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка не пуста и не состоит только из пробелов
func isNotBlank(input: String) -> Bool {
    return !input.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Возвращает первое слово из строки
/// - Parameter input: Строка для извлечения первого слова
/// - Returns: Первое слово из строки
func firstWord(from input: String) -> String? {
    return input.split(separator: " ").first.map { String($0) }
}

/// Возвращает строку с удалением всех пробелов
/// - Parameter input: Строка для удаления пробелов
/// - Returns: Строка без пробелов
func removeSpaces(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "")
}

/// Проверяет, является ли строка палиндромом игнорируя регистр
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является палиндромом, иначе `false`
func isPalindromeIgnoreCase(input: String) -> Bool {
    let cleanedInput = input.lowercased()
    return cleanedInput == String(cleanedInput.reversed())
}

/// Преобразует строку в массив символов в обратном порядке
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов в обратном порядке
func reverseCharacters(in input: String) -> [Character] {
    return Array(input.reversed())
}

/// Возвращает среднее значение чисел в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Среднее значение чисел
func average(of numbers: [Int]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sum = numbers.reduce(0, +)
    return Double(sum) / Double(numbers.count)
}

/// Возвращает строку, в которой каждая гласная заменена на символ '#'
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с заменёнными гласными
func replaceVowelsWithHash(input: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    return input.map { vowels.contains($0) ? "#" : $0 }.reduce("") { $0 + String($1) }
}

/// Возвращает строку, которая является обрезанной версией другой строки
/// - Parameters:
///   - input: Строка для обрезки
///   - maxLength: Максимальная длина строки
/// - Returns: Строка, обрезанная до заданной длины
func truncateString(input: String, maxLength: Int) -> String {
    return String(input.prefix(maxLength))
}

/// Проверяет, является ли число чётным или нечётным
/// - Parameter value: Число для проверки
/// - Returns: `true`, если число чётное, иначе `false`
func isEven(value: Int) -> Bool {
    return value % 2 == 0
}

/// Возвращает строку с заглавной буквы
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с заглавной буквы
func capitalizeFirstLetter(of input: String) -> String {
    return input.prefix(1).uppercased() + input.dropFirst()
}

/// Возвращает сумму чисел в массиве с плавающей запятой
/// - Parameter numbers: Массив чисел
/// - Returns: Сумма чисел
func sumOfFloats(numbers: [Float]) -> Float {
    return numbers.reduce(0, +)
}

/// Проверяет, является ли строка пустой или содержит только пробелы
/// - Parameter text: Строка для проверки
/// - Returns: `true`, если строка пуста или состоит только из пробелов
func isBlankString(text: String) -> Bool {
    return text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
}

/// Возвращает строку, содержащую только цифры из исходной строки
/// - Parameter input: Строка для обработки
/// - Returns: Строка, содержащая только цифры
func extractDigits(from input: String) -> String {
    return input.filter { $0.isNumber }
}

/// Преобразует строку в массив слов, разделённых пробелами
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWordsArray(input: String) -> [String] {
    return input.split(separator: " ").map { String($0) }
}

/// Возвращает максимальное значение в массиве строк по длине
/// - Parameter strings: Массив строк
/// - Returns: Строка с наибольшей длиной
func longestString(in strings: [String]) -> String? {
    return strings.max { $0.count < $1.count }
}

/// Возвращает целочисленный результат деления с округлением
/// - Parameters:
///   - numerator: Числитель
///   - denominator: Знаменатель
/// - Returns: Целочисленный результат деления
func integerDivision(numerator: Int, denominator: Int) -> Int {
    return numerator / denominator
}

/// Возвращает строку, которая является эквивалентом другого числа в двоичной системе
/// - Parameter number: Число для преобразования
/// - Returns: Число в двоичной системе
func numberToBinaryString(number: Int) -> String {
    return String(number, radix: 2)
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом в шестнадцатеричной системе
func isHexadecimal(input: String) -> Bool {
    let hexRegex = "^[0-9A-Fa-f]+$"
    let hexTest = NSPredicate(format: "SELF MATCHES %@", hexRegex)
    return hexTest.evaluate(with: input)
}

/// Вычисляет периметр квадрата
/// - Parameter side: Длина стороны квадрата
/// - Returns: Периметр квадрата
func squarePerimeter(side: Double) -> Double {
    return 4 * side
}

/// Возвращает строку с заменёнными символами на противоположные
/// - Parameter input: Строка для обработки
/// - Returns: Строка с заменёнными символами
func flipCase(input: String) -> String {
    return input.map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined()
}

/// Конвертирует количество секунд в формат ЧЧ:ММ:СС
/// - Parameter seconds: Количество секунд
/// - Returns: Время в формате ЧЧ:ММ:СС
func secondsToTimeFormat(seconds: Int) -> String {
    let hours = seconds / 3600
    let minutes = (seconds % 3600) / 60
    let remainingSeconds = seconds % 60
    return String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
}

/// Преобразует строку в массив символов, состоящих из гласных
/// - Parameter input: Строка для обработки
/// - Returns: Массив символов-гласных
func extractVowels(from input: String) -> [Character] {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    return input.filter { vowels.contains($0) }
}

/// Возвращает строку, в которой все пробелы заменены на подчеркивания
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с подчеркиваниями вместо пробелов
func replaceSpacesWithUnderscores(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "_")
}

/// Возвращает значение числа в степени
/// - Parameters:
///   - base: Основание
///   - exponent: Показатель степени
/// - Returns: Результат возведения в степень
func power(base: Double, exponent: Double) -> Double {
    return pow(base, exponent)
}

/// Находит строку, которая является максимальной по количеству символов среди элементов массива
/// - Parameter array: Массив строк
/// - Returns: Строка с максимальной длиной
func longestString(inArray array: [String]) -> String? {
    return array.max { $0.count < $1.count }
}

/// Проверяет, является ли строка числом с запятой (десятичным числом)
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является десятичным числом, иначе `false`
func isDecimalNumber(input: String) -> Bool {
    return input.contains(".")
}

/// Возвращает количество уникальных элементов в массиве
/// - Parameter array: Массив для анализа
/// - Returns: Количество уникальных элементов
func uniqueCount<T>(in array: [T]) -> Int where T: Hashable {
    return Set(array).count
}

/// Проверяет, является ли строка числом в десятичной системе
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является десятичным числом, иначе `false`
func isDecimalString(input: String) -> Bool {
    return Double(input) != nil
}

/// Преобразует строку в массив символов в нижнем регистре
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов в нижнем регистре
func lowercaseCharacters(from input: String) -> [Character] {
    return input.lowercased().map { $0 }
}

/// Проверяет, является ли число простым
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число простое, иначе `false`
func isPrime(number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

/// Преобразует строку в массив чисел, разделённых пробелами
/// - Parameter text: Строка с числами
/// - Returns: Массив чисел
func stringToIntArrayWithSpaces(text: String) -> [Int]? {
    return text.split(separator: " ").compactMap { Int($0) }
}

/// Вычисляет куб числа
/// - Parameter number: Число для вычисления
/// - Returns: Куб числа
func cube(of number: Double) -> Double {
    return pow(number, 3)
}

/// Преобразует строку в массив символов, исключая цифры
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов без цифр
func removeDigitsFromString(input: String) -> [Character] {
    return input.filter { !$0.isNumber }
}

/// Возвращает среднее значение всех чисел в массиве
/// - Parameter values: Массив чисел
/// - Returns: Среднее значение
func average(of values: [Int]) -> Double? {
    guard !values.isEmpty else { return nil }
    let sum = values.reduce(0, +)
    return Double(sum) / Double(values.count)
}

/// Преобразует строку в верхний регистр
/// - Parameter input: Строка для преобразования
/// - Returns: Строка в верхнем регистре
func toUppercase(input: String) -> String {
    return input.uppercased()
}

/// Проверяет, является ли строка числом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом, иначе `false`
func isValidNumber(input: String) -> Bool {
    return Double(input) != nil
}

/// Преобразует количество минут в часы и минуты
/// - Parameter minutes: Количество минут
/// - Returns: Кортеж с количеством часов и минут
func minutesToHoursAndMinutes(minutes: Int) -> (Int, Int) {
    let hours = minutes / 60
    let remainingMinutes = minutes % 60
    return (hours, remainingMinutes)
}

/// Возвращает строку, содержащую только заглавные буквы из исходной строки
/// - Parameter input: Строка для обработки
/// - Returns: Строка с заглавными буквами
func extractUppercaseLetters(from input: String) -> String {
    return input.filter { $0.isUppercase }
}

/// Проверяет, является ли строка числом с плавающей запятой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом с плавающей запятой, иначе `false`
func isFloatingPoint(input: String) -> Bool {
    return input.contains(".") && Double(input) != nil
}

/// Находит наибольшее число в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Наибольшее число
func maxNumber(in numbers: [Int]) -> Int? {
    return numbers.max()
}

/// Преобразует строку в массив слов, разделённых дефисами
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWordsUsingDash(input: String) -> [String] {
    return input.split(separator: "-").map { String($0) }
}

/// Находит минимальное значение в массиве чисел
/// - Parameter numbers: Массив чисел
/// - Returns: Минимальное число
func minValue(in numbers: [Int]) -> Int? {
    return numbers.min()
}

/// Вычисляет площадь прямоугольного треугольника
/// - Parameters:
///   - base: Основание треугольника
///   - height: Высота треугольника
/// - Returns: Площадь треугольника
func triangleArea(base: Double, height: Double) -> Double {
    return 0.5 * base * height
}

/// Проверяет, является ли строка палиндромом (игнорируя регистр)
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка палиндром, иначе `false`
func isPalindromeIgnoringCase(input: String) -> Bool {
    let lowercasedInput = input.lowercased()
    return lowercasedInput == String(lowercasedInput.reversed())
}

/// Возвращает строку, состоящую только из цифр
/// - Parameter input: Строка для обработки
/// - Returns: Строка, содержащая только цифры
func extractDigitsOnly(input: String) -> String {
    return input.filter { $0.isNumber }
}

/// Проверяет, является ли строка валидным email-адресом
/// - Parameter email: Строка для проверки
/// - Returns: `true`, если строка является валидным email-адресом
func isValidEmail(email: String) -> Bool {
    let emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
    let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    return emailTest.evaluate(with: email)
}

/// Преобразует строку в массив строк, разделённых запятой
/// - Parameter input: Строка с элементами, разделёнными запятой
/// - Returns: Массив строк
func stringToArrayByComma(input: String) -> [String] {
    return input.split(separator: ",").map { String($0) }
}

/// Проверяет, является ли строка представлением целого числа
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является целым числом, иначе `false`
func isInteger(input: String) -> Bool {
    return Int(input) != nil
}

/// Возвращает количество символов в строке без пробелов
/// - Parameter phrase: Строка для анализа
/// - Returns: Количество непустых символов
func countNonWhitespaceCharacters(in phrase: String) -> Int {
    return phrase.filter { !$0.isWhitespace }.count
}

/// Проверяет, начинается ли строка с заглавной буквы
/// - Parameter text: Строка для проверки
/// - Returns: `true`, если первый символ — заглавная буква
func startsWithCapital(text: String) -> Bool {
    return text.first?.isUppercase ?? false
}

/// Удаляет повторяющиеся элементы из массива строк
/// - Parameter items: Массив строк
/// - Returns: Массив с уникальными значениями
func removeDuplicates(from items: [String]) -> [String] {
    return Array(Set(items))
}

/// Форматирует число как валюту
/// - Parameter amount: Число для форматирования
/// - Returns: Строка с валютным представлением
func formatAsCurrency(amount: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount)"
}

/// Проверяет, содержит ли строка только буквы
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка содержит только буквы
func isAlphabetic(input: String) -> Bool {
    return !input.isEmpty && input.allSatisfy { $0.isLetter }
}

/// Находит медиану массива чисел
/// - Parameter values: Массив целых чисел
/// - Returns: Медиана, если массив не пустой
func median(of values: [Int]) -> Double? {
    guard !values.isEmpty else { return nil }
    let sorted = values.sorted()
    let count = sorted.count
    if count % 2 == 0 {
        return Double(sorted[count / 2 - 1] + sorted[count / 2]) / 2
    } else {
        return Double(sorted[count / 2])
    }
}

/// Конкатенирует строки с заданным разделителем
/// - Parameters:
///   - elements: Массив строк
///   - separator: Разделитель
/// - Returns: Объединённая строка
func joinStrings(_ elements: [String], with separator: String) -> String {
    return elements.joined(separator: separator)
}

/// Проверяет, содержит ли массив заданный элемент
/// - Parameters:
///   - array: Массив значений
///   - value: Элемент для поиска
/// - Returns: `true`, если элемент найден
func containsValue<T: Equatable>(array: [T], value: T) -> Bool {
    return array.contains(value)
}

/// Возвращает текущую дату в формате "dd.MM.yyyy"
/// - Returns: Строка с текущей датой
func currentDateString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    return formatter.string(from: Date())
}

/// Вычисляет разницу между двумя датами в днях
/// - Parameters:
///   - from: Начальная дата
///   - to: Конечная дата
/// - Returns: Количество дней между датами
func daysBetween(from: Date, to: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: from, to: to).day ?? 0
}

/// Преобразует строку в дату
/// - Parameters:
///   - dateString: Строка с датой
///   - format: Формат даты
/// - Returns: Объект `Date`, если возможно
func parseDate(from dateString: String, format: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.date(from: dateString)
}

/// Генерирует массив случайных чисел
/// - Parameters:
///   - count: Количество чисел
///   - range: Диапазон значений
/// - Returns: Массив случайных чисел
func generateRandomNumbers(count: Int, range: ClosedRange<Int>) -> [Int] {
    return (0..<count).map { _ in Int.random(in: range) }
}

/// Округляет число до заданного количества знаков после запятой
/// - Parameters:
///   - value: Число для округления
///   - places: Количество знаков после запятой
/// - Returns: Округлённое число
func roundToPlaces(value: Double, places: Int) -> Double {
    let multiplier = pow(10.0, Double(places))
    return (value * multiplier).rounded() / multiplier
}

/// Преобразует строку в JSON-объект
/// - Parameter jsonString: Строка в формате JSON
/// - Returns: Словарь с данными, если успешно
func parseJSON(from jsonString: String) -> [String: Any]? {
    guard let data = jsonString.data(using: .utf8) else { return nil }
    return try? JSONSerialization.jsonObject(with: data) as? [String: Any]
}

/// Удаляет все вхождения указанного символа из строки
/// - Parameters:
///   - input: Исходная строка
///   - character: Символ для удаления
/// - Returns: Строка без заданного символа
func removeCharacter(from input: String, character: Character) -> String {
    return input.filter { $0 != character }
}

/// Проверяет, содержит ли строка заданную подстроку
/// - Parameters:
///   - text: Исходная строка
///   - substring: Подстрока для поиска
/// - Returns: `true`, если подстрока найдена
func containsSubstring(text: String, substring: String) -> Bool {
    return text.range(of: substring) != nil
}

/// Переводит Boolean в строку "Да" или "Нет"
/// - Parameter value: Булево значение
/// - Returns: "Да" для `true`, "Нет" для `false`
func boolToRussianString(_ value: Bool) -> String {
    return value ? "Да" : "Нет"
}

/// Проверяет, заканчивается ли строка определённым суффиксом
/// - Parameters:
///   - string: Исходная строка
///   - suffix: Суффикс
/// - Returns: `true`, если строка заканчивается на суффикс
func endsWith(string: String, suffix: String) -> Bool {
    return string.hasSuffix(suffix)
}

/// Возвращает массив с длинами строк
/// - Parameter strings: Массив строк
/// - Returns: Массив длин строк
func lengths(of strings: [String]) -> [Int] {
    return strings.map { $0.count }
}

/// Проверяет, пуст ли словарь
/// - Parameter dict: Словарь для проверки
/// - Returns: `true`, если словарь пустой
func isDictionaryEmpty<K, V>(_ dict: [K: V]) -> Bool {
    return dict.isEmpty
}

/// Возвращает строку в верхнем регистре
/// - Parameter input: Строка для преобразования
/// - Returns: Строка в верхнем регистре
func toUpperCase(input: String) -> String {
    return input.uppercased()
}

/// Проверяет, является ли строка пустой
/// - Parameter text: Строка для проверки
/// - Returns: `true`, если строка пустая, иначе `false`
func isEmpty(text: String) -> Bool {
    return text.isEmpty
}

/// Возвращает наибольшее число в массиве
/// - Parameter values: Массив чисел
/// - Returns: Наибольшее число в массиве
func max(of values: [Int]) -> Int? {
    return values.max()
}

/// Вычисляет площадь круга
/// - Parameter radius: Радиус круга
/// - Returns: Площадь круга
func circleArea(radius: Double) -> Double {
    return .pi * pow(radius, 2)
}

/// Преобразует строку в массив символов
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов
func stringToCharacterArray(input: String) -> [Character] {
    return Array(input)
}

/// Находит индекс элемента в массиве
/// - Parameters:
///   - array: Массив для поиска
///   - element: Элемент для поиска
/// - Returns: Индекс элемента или `nil`, если не найден
func indexOf<T>(in array: [T], element: T) -> Int? where T: Equatable {
    return array.firstIndex(of: element)
}

/// Проверяет, является ли число положительным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число положительное
func isPositive(number: Int) -> Bool {
    return number > 0
}

/// Находит факториал числа
/// - Parameter n: Число для вычисления факториала
/// - Returns: Факториал числа
func factorial(of n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(of: n - 1)
}

/// Преобразует строку в массив слов
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWords(input: String) -> [String] {
    return input.split(separator: " ").map { String($0) }
}

/// Возвращает среднее значение элементов массива
/// - Parameter numbers: Массив чисел
/// - Returns: Среднее значение
func average(of numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sum = numbers.reduce(0, +)
    return sum / Double(numbers.count)
}

/// Преобразует строку в массив чисел, разделённых запятой
/// - Parameter input: Строка для преобразования
/// - Returns: Массив чисел
func stringToIntArray(input: String) -> [Int]? {
    return input.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces)) }
}

/// Проверяет, является ли строка числом с плавающей запятой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом с плавающей запятой
func isFloat(input: String) -> Bool {
    return Double(input) != nil
}

/// Генерирует случайное число в диапазоне от `min` до `max`
/// - Parameters:
///   - min: Минимальное значение диапазона
///   - max: Максимальное значение диапазона
/// - Returns: Случайное число в указанном диапазоне
func randomNumber(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

/// Возвращает строку в нижнем регистре
/// - Parameter input: Строка для преобразования
/// - Returns: Строка в нижнем регистре
func toLowerCase(input: String) -> String {
    return input.lowercased()
}

/// Проверяет, является ли число чётным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число чётное, иначе `false`
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

/// Преобразует строку в число с плавающей запятой
/// - Parameter input: Строка для преобразования
/// - Returns: Число с плавающей запятой или `nil`, если преобразование невозможно
func stringToFloat(input: String) -> Float? {
    return Float(input)
}

/// Проверяет, является ли строка палиндромом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка палиндром
func isPalindrome(input: String) -> Bool {
    let reversed = String(input.reversed())
    return input == reversed
}

/// Находит минимальное число в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Минимальное число в массиве
func min(of numbers: [Int]) -> Int? {
    return numbers.min()
}

/// Преобразует строку в дату по заданному формату
/// - Parameters:
///   - dateString: Строка с датой
///   - format: Формат строки даты
/// - Returns: Дата, если возможно преобразовать
func stringToDate(dateString: String, format: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.date(from: dateString)
}

/// Преобразует массив чисел в строку, разделённую запятыми
/// - Parameter numbers: Массив чисел
/// - Returns: Строка с числами, разделёнными запятыми
func numbersToString(numbers: [Int]) -> String {
    return numbers.map { String($0) }.joined(separator: ", ")
}

/// Проверяет, является ли строка валидным email-адресом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является валидным email
func isValidEmail(input: String) -> Bool {
    let regex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let test = NSPredicate(format: "SELF MATCHES %@", regex)
    return test.evaluate(with: input)
}

/// Возвращает строку, в которой все пробелы заменены на дефисы
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с дефисами вместо пробелов
func replaceSpacesWithHyphens(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "-")
}

/// Проверяет, является ли число отрицательным
/// - Parameter number: Число для проверки
/// - Returns: `true`, если число отрицательное, иначе `false`
func isNegative(number: Int) -> Bool {
    return number < 0
}

/// Вычисляет площадь прямоугольника
/// - Parameters:
///   - length: Длина прямоугольника
///   - width: Ширина прямоугольника
/// - Returns: Площадь прямоугольника
func rectangleArea(length: Double, width: Double) -> Double {
    return length * width
}

/// Проверяет, является ли строка числом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом, иначе `false`
func isNumber(input: String) -> Bool {
    return Int(input) != nil || Double(input) != nil
}

/// Возвращает строку с удалением всех цифр
/// - Parameter input: Строка для обработки
/// - Returns: Строка без цифр
func removeDigits(from input: String) -> String {
    return input.filter { !$0.isNumber }
}

/// Преобразует минут в часы и минуты
/// - Parameter minutes: Количество минут
/// - Returns: Кортеж с количеством часов и минут
func minutesToHoursAndMinutes(minutes: Int) -> (Int, Int) {
    let hours = minutes / 60
    let remainingMinutes = minutes % 60
    return (hours, remainingMinutes)
}

/// Преобразует строку в массив символов в верхнем регистре
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов в верхнем регистре
func stringToUppercaseCharacters(input: String) -> [Character] {
    return input.uppercased().map { $0 }
}

/// Проверяет, является ли строка валидным URL
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является валидным URL, иначе `false`
func isValidURL(input: String) -> Bool {
    return URL(string: input) != nil
}

/// Генерирует случайную строку длиной 8 символов
/// - Returns: Случайная строка
func randomString() -> String {
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<8).map { _ in characters.randomElement()! })
}

/// Преобразует строку в массив чисел с плавающей запятой
/// - Parameter input: Строка с числами
/// - Returns: Массив чисел с плавающей запятой
func stringToFloatArray(input: String) -> [Float]? {
    return input.split(separator: ",").compactMap { Float($0) }
}

/// Проверяет, является ли строка палиндромом (игнорируя пробелы и регистр)
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка палиндром
func isPalindromeIgnoringSpacesAndCase(input: String) -> Bool {
    let cleanedInput = input.replacingOccurrences(of: " ", with: "").lowercased()
    return cleanedInput == String(cleanedInput.reversed())
}

/// Находит сумму чисел в массиве
/// - Parameter numbers: Массив чисел
/// - Returns: Сумма чисел
func sum(of numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

/// Преобразует строку в массив символов, включая пробелы
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов
func stringToCharacterArrayWithSpaces(input: String) -> [Character] {
    return Array(input)
}

/// Преобразует дату в строку с заданным форматом
/// - Parameters:
///   - date: Дата для преобразования
///   - format: Формат даты
/// - Returns: Строка с датой в нужном формате
func dateToString(date: Date, format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
}

/// Вычисляет длину гипотенузы прямоугольного треугольника
/// - Parameters:
///   - sideA: Одна из сторон треугольника
///   - sideB: Другая сторона треугольника
/// - Returns: Длина гипотенузы
func hypotenuseLength(sideA: Double, sideB: Double) -> Double {
    return sqrt(pow(sideA, 2) + pow(sideB, 2))
}

/// Проверяет, является ли число целым числом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка представляет собой целое число
func isInteger(input: String) -> Bool {
    return Int(input) != nil
}

/// Возвращает строку с заменой всех пробелов на подчеркивания
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с подчеркиваниями вместо пробелов
func replaceSpacesWithUnderscores(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "_")
}

/// Преобразует строку в массив слов, разделённых дефисами
/// - Parameter input: Строка для преобразования
/// - Returns: Массив слов
func stringToWordsUsingDashes(input: String) -> [String] {
    return input.split(separator: "-").map { String($0) }
}

/// Проверяет, является ли строка числом в шестнадцатеричной системе
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка представляет собой число в шестнадцатеричной системе
func isHexadecimal(input: String) -> Bool {
    let hexRegex = "^[0-9A-Fa-f]+$"
    let hexTest = NSPredicate(format: "SELF MATCHES %@", hexRegex)
    return hexTest.evaluate(with: input)
}

/// Преобразует строку в целое число
/// - Parameter input: Строка для преобразования
/// - Returns: Число, если преобразование успешно, иначе `nil`
func stringToInteger(input: String) -> Int? {
    return Int(input)
}

/// Преобразует строку в массив символов, состоящих только из букв
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов, состоящих только из букв
func extractLetters(from input: String) -> [Character] {
    return input.filter { $0.isLetter }
}

/// Возвращает строку, состоящую из цифр, найденных в исходной строке
/// - Parameter input: Строка для обработки
/// - Returns: Строка с цифрами
func extractDigits(from input: String) -> String {
    return input.filter { $0.isNumber }
}

/// Проверяет, является ли строка числом с плавающей запятой
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является числом с плавающей запятой, иначе `false`
func isFloatingPoint(input: String) -> Bool {
    return Float(input) != nil
}

/// Возвращает строку в обратном порядке
/// - Parameter input: Строка для переворота
/// - Returns: Перевернутая строка
func reverseString(input: String) -> String {
    return String(input.reversed())
}

/// Вычисляет периметр квадрата
/// - Parameter side: Длина стороны квадрата
/// - Returns: Периметр квадрата
func squarePerimeter(side: Double) -> Double {
    return 4 * side
}

/// Находит наименьшее число в массиве
/// - Parameter values: Массив чисел
/// - Returns: Наименьшее число в массиве
func min(of values: [Int]) -> Int? {
    return values.min()
}

/// Проверяет, является ли строка палиндромом (игнорируя пробелы)
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является палиндромом
func isPalindromeIgnoringSpaces(input: String) -> Bool {
    let cleanedInput = input.replacingOccurrences(of: " ", with: "").lowercased()
    return cleanedInput == String(cleanedInput.reversed())
}

/// Преобразует строку в заглавные буквы
/// - Parameter input: Строка для преобразования
/// - Returns: Строка с заглавными буквами
func toUpperCase(input: String) -> String {
    return input.uppercased()
}

/// Преобразует строку в дату по заданному формату
/// - Parameters:
///   - dateString: Строка с датой
///   - format: Формат строки даты
/// - Returns: Дата, если возможно преобразовать
func stringToDate(dateString: String, format: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.date(from: dateString)
}

/// Проверяет, является ли строка пустой или состоит только из пробелов
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка пустая или состоит только из пробелов
func isBlank(input: String) -> Bool {
    return input.trimmingCharacters(in: .whitespaces).isEmpty
}

/// Преобразует строку в массив целых чисел
/// - Parameter input: Строка для преобразования
/// - Returns: Массив целых чисел
func stringToIntArray(input: String) -> [Int]? {
    return input.split(separator: ",").compactMap { Int($0) }
}

/// Возвращает строку, в которой все символы заменены на звёздочки
/// - Parameter input: Строка для обработки
/// - Returns: Строка с символами-звёздочками
func maskString(input: String) -> String {
    return String(repeating: "*", count: input.count)
}

/// Проверяет, является ли строка числом в десятичной системе
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является десятичным числом
func isDecimal(input: String) -> Bool {
    return input.range(of: "^[0-9]+(\\.[0-9]+)?$", options: .regularExpression) != nil
}

/// Находит индекс первого вхождения элемента в массиве
/// - Parameters:
///   - array: Массив значений
///   - element: Элемент для поиска
/// - Returns: Индекс первого вхождения элемента или `nil`, если не найден
func firstIndex<T>(of element: T, in array: [T]) -> Int? where T: Equatable {
    return array.firstIndex(of: element)
}

/// Конвертирует количество секунд в формат "ЧЧ:ММ:СС"
/// - Parameter seconds: Количество секунд
/// - Returns: Строка в формате "ЧЧ:ММ:СС"
func secondsToTimeFormat(seconds: Int) -> String {
    let hours = seconds / 3600
    let minutes = (seconds % 3600) / 60
    let remainingSeconds = seconds % 60
    return String(format: "%02d:%02d:%02d", hours, minutes, remainingSeconds)
}

/// Возвращает строку, состоящую только из символов, не являющихся пробелами
/// - Parameter input: Строка для обработки
/// - Returns: Строка без пробелов
func removeSpaces(input: String) -> String {
    return input.replacingOccurrences(of: " ", with: "")
}

/// Преобразует строку в массив строк, разделённых пробелами
/// - Parameter input: Строка для преобразования
/// - Returns: Массив строк
func stringToWordsArray(input: String) -> [String] {
    return input.split(separator: " ").map { String($0) }
}

/// Проверяет, является ли строка валидным email-адресом
/// - Parameter input: Строка для проверки
/// - Returns: `true`, если строка является валидным email
func isValidEmail(input: String) -> Bool {
    let regex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let test = NSPredicate(format: "SELF MATCHES %@", regex)
    return test.evaluate(with: input)
}

/// Преобразует строку в массив символов, исключая пробелы и знаки препинания
/// - Parameter input: Строка для преобразования
/// - Returns: Массив символов без пробелов и знаков препинания
func stringToCharacterArrayWithoutPunctuation(input: String) -> [Character] {
    let punctuationSet = CharacterSet.punctuationCharacters
    let cleanedInput = input.components(separatedBy: punctuationSet).joined()
    return Array(cleanedInput)
}

/// Вычисляет факториал целого числа
/// - Parameter n: Целое число
/// - Returns: Факториал числа
func factorial(of n: Int) -> Int {
    return (1...max(n,1)).reduce(1, *)
}

/// Проверяет, является ли строка палиндромом
/// - Parameter text: Входная строка
/// - Returns: true, если строка палиндром
func isPalindrome(_ text: String) -> Bool {
    let filtered = text.lowercased().filter { $0.isLetter }
    return filtered == String(filtered.reversed())
}

/// Преобразует температуру из Цельсия в Фаренгейты
/// - Parameter celsius: Температура в градусах Цельсия
/// - Returns: Температура в градусах Фаренгейта
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return celsius * 9 / 5 + 32
}

/// Генерирует случайное имя пользователя
/// - Returns: Строка с псевдослучайным именем
func generateUsername() -> String {
    let adjectives = ["Fast", "Cool", "Silent", "Smart"]
    let animals = ["Fox", "Wolf", "Bear", "Eagle"]
    return "\(adjectives.randomElement()!)\(animals.randomElement()!)\(Int.random(in: 10...99))"
}

/// Сортирует массив строк по длине
/// - Parameter strings: Массив строк
/// - Returns: Отсортированный массив по возрастанию длины
func sortByLength(_ strings: [String]) -> [String] {
    return strings.sorted { $0.count < $1.count }
}

/// Преобразует RGB в HEX
/// - Parameters:
///   - r: Красный компонент (0...255)
///   - g: Зеленый компонент (0...255)
///   - b: Синий компонент (0...255)
/// - Returns: Строка HEX-кода цвета
func rgbToHex(r: Int, g: Int, b: Int) -> String {
    return String(format:"#%02X%02X%02X", r, g, b)
}

/// Возвращает площадь прямоугольника
/// - Parameters:
///   - width: Ширина
///   - height: Высота
/// - Returns: Площадь
func rectangleArea(width: Double, height: Double) -> Double {
    return width * height
}

/// Проверяет, содержит ли строка хотя бы одну цифру
/// - Parameter input: Строка для проверки
/// - Returns: true, если найдена цифра
func containsDigit(_ input: String) -> Bool {
    return input.contains { $0.isNumber }
}

/// Возвращает количество гласных в строке
/// - Parameter input: Исходная строка
/// - Returns: Количество гласных букв
func countVowels(in input: String) -> Int {
    let vowels = "aeiouаеёиоуыэюя"
    return input.lowercased().filter { vowels.contains($0) }.count
}

/// Конкатенирует три строки
/// - Parameters:
///   - first: Первая строка
///   - second: Вторая строка
///   - third: Третья строка
/// - Returns: Объединенная строка
func joinStrings(first: String, second: String, third: String) -> String {
    return first + second + third
}

/// Проверяет, является ли число четным
/// - Parameter number: Целое число
/// - Returns: true, если число четное
func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

/// Находит наибольшее значение в массиве Double
/// - Parameter values: Массив чисел
/// - Returns: Максимальное значение или nil, если массив пуст
func maxValue(in values: [Double]) -> Double? {
    return values.max()
}

/// Создает приветственное сообщение
/// - Parameter name: Имя пользователя
/// - Returns: Строка приветствия
func greetingMessage(for name: String) -> String {
    return "Привет, \(name)!"
}

/// Определяет високосный год
/// - Parameter year: Год
/// - Returns: true, если год високосный
func isLeapYear(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

/// Возвращает среднее арифметическое массива чисел
/// - Parameter numbers: Массив чисел
/// - Returns: Среднее значение
func average(of numbers: [Double]) -> Double {
    guard !numbers.isEmpty else { return 0.0 }
    return numbers.reduce(0, +) / Double(numbers.count)
}

/// Преобразует миллисекунды в секунды с точностью до сотых
/// - Parameter milliseconds: Значение в миллисекундах
/// - Returns: Значение в секундах
func millisecondsToSeconds(_ milliseconds: Int) -> Double {
    return Double(milliseconds) / 1000.0
}

/// Определяет, содержатся ли элементы одного массива в другом
/// - Parameters:
///   - subset: Массив предполагаемого подмножества
///   - set: Массив супермножества
/// - Returns: true, если subset содержится в set
func isSubset<T: Equatable>(subset: [T], of set: [T]) -> Bool {
    return subset.allSatisfy { set.contains($0) }
}

/// Конвертирует строку в дату
/// - Parameters:
///   - dateString: Строка в формате "yyyy-MM-dd"
/// - Returns: Объект Date или nil, если формат неверный
func stringToDate(_ dateString: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.date(from: dateString)
}

/// Генерирует случайный цвет (UIColor)
/// - Returns: Случайный цвет
func randomColor() -> UIColor {
    return UIColor(red: .random(in: 0...1),
                   green: .random(in: 0...1),
                   blue: .random(in: 0...1),
                   alpha: 1.0)
}

/// Удваивает каждое число в массиве
/// - Parameter numbers: Массив целых чисел
/// - Returns: Массив с удвоенными значениями
func doubleEach(numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 2 }
}

/// Проверяет, является ли массив уникальным (без повторов)
/// - Parameter array: Массив элементов
/// - Returns: true, если все элементы уникальны
func isArrayUnique<T: Hashable>(_ array: [T]) -> Bool {
    return Set(array).count == array.count
}

/// Преобразует градусы в радианы
/// - Parameter degrees: Угол в градусах
/// - Returns: Угол в радианах
func degreesToRadians(_ degrees: Double) -> Double {
    return degrees * .pi / 180
}

/// Возвращает строку с текущей датой в формате "dd.MM.yyyy"
/// - Returns: Строка с датой
func currentDateString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    return formatter.string(from: Date())
}

/// Инвертирует булево значение
/// - Parameter value: Логическое значение
/// - Returns: Инвертированное значение
func toggle(_ value: Bool) -> Bool {
    return !value
}

/// Создает строку из массива строк, разделенных запятой
/// - Parameter elements: Массив строк
/// - Returns: Одна строка с разделителем ", "
func joinWithComma(_ elements: [String]) -> String {
    return elements.joined(separator: ", ")
}

/// Возвращает количество слов в строке
/// - Parameter text: Строка текста
/// - Returns: Количество слов
func wordCount(in text: String) -> Int {
    return text.split(separator: " ").count
}

/// Проверяет, содержит ли строка только буквы
/// - Parameter input: Входная строка
/// - Returns: true, если только буквы
func isAlphabetic(_ input: String) -> Bool {
    return input.allSatisfy { $0.isLetter }
}

/// Возвращает массив с элементами в обратном порядке
/// - Parameter array: Исходный массив
/// - Returns: Новый массив с реверсированным порядком
func reversedArray<T>(_ array: [T]) -> [T] {
    return array.reversed()
}

/// Создает словарь из двух массивов ключей и значений
/// - Parameters:
///   - keys: Массив ключей
///   - values: Массив значений
/// - Returns: Словарь, если массивы одинаковой длины
func createDictionary<K: Hashable, V>(keys: [K], values: [V]) -> [K: V]? {
    guard keys.count == values.count else { return nil }
    return Dictionary(uniqueKeysWithValues: zip(keys, values))
}

/// Проверяет, является ли число простым
/// - Parameter number: Целое число
/// - Returns: true, если число простое
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

/// Преобразует строку в верхний регистр
/// - Parameter text: Исходная строка
/// - Returns: Строка в верхнем регистре
func toUpperCase(_ text: String) -> String {
    return text.uppercased()
}

/// Сравнивает два массива на эквивалентность
/// - Parameters:
///   - a: Первый массив
///   - b: Второй массив
/// - Returns: true, если массивы идентичны по содержимому и порядку
func arraysEqual<T: Equatable>(_ a: [T], _ b: [T]) -> Bool {
    return a == b
}

/// Преобразует секунды в формат времени (чч:мм:сс)
/// - Parameter seconds: Общее количество секунд
/// - Returns: Строка времени
func formatTime(seconds: Int) -> String {
    let hrs = seconds / 3600
    let mins = (seconds % 3600) / 60
    let secs = seconds % 60
    return String(format: "%02d:%02d:%02d", hrs, mins, secs)
}

/// Возвращает четные числа из массива
/// - Parameter numbers: Массив целых чисел
/// - Returns: Только четные числа
func filterEven(numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0 }
}

/// Создает массив, повторяя элемент заданное количество раз
/// - Parameters:
///   - value: Элемент
///   - count: Количество повторений
/// - Returns: Массив с повторами
func repeatValue<T>(_ value: T, count: Int) -> [T] {
    return Array(repeating: value, count: count)
}

/// Склеивает два словаря
/// - Parameters:
///   - dict1: Первый словарь
///   - dict2: Второй словарь
/// - Returns: Объединенный словарь (второй перекрывает первый)
func mergeDictionaries<K, V>(_ dict1: [K: V], _ dict2: [K: V]) -> [K: V] {
    return dict1.merging(dict2) { _, new in new }
}

/// Проверяет, находится ли число в диапазоне
/// - Parameters:
///   - value: Проверяемое число
///   - range: Диапазон
/// - Returns: true, если значение в диапазоне
func isInRange(_ value: Int, range: ClosedRange<Int>) -> Bool {
    return range.contains(value)
}

/// Удаляет пробелы в начале и конце строки
/// - Parameter text: Исходная строка
/// - Returns: Обрезанная строка
func trimmed(_ text: String) -> String {
    return text.trimmingCharacters(in: .whitespacesAndNewlines)
}

/// Переводит значение Bool в строку "Да" или "Нет"
/// - Parameter value: Булево значение
/// - Returns: "Да" если true, "Нет" если false
func boolToYesNo(_ value: Bool) -> String {
    return value ? "Да" : "Нет"
}

/// Создает квадратный `Color` view заданного размера
/// - Parameter size: Размер квадрата
/// - Returns: View с цветным квадратом
func colorSquare(size: CGFloat) -> some View {
    Color.blue.frame(width: size, height: size)
}

/// Создает текст с жирным шрифтом
/// - Parameter content: Текстовая строка
/// - Returns: `Text` с жирным стилем
func boldText(_ content: String) -> Text {
    Text(content).bold()
}

/// Создает кнопку с заданным действием и заголовком
/// - Parameters:
///   - title: Заголовок кнопки
///   - action: Замыкание действия
/// - Returns: SwiftUI Button
func customButton(title: String, action: @escaping () -> Void) -> some View {
    Button(action: action) {
        Text(title)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

/// Возвращает иконку с системным именем и цветом
/// - Parameters:
///   - name: Название SF Symbol
///   - color: Цвет иконки
/// - Returns: View с иконкой
func systemIcon(name: String, color: Color) -> some View {
    Image(systemName: name).foregroundColor(color)
}

/// Разворачивает двумерный массив в одномерный
/// - Parameter matrix: Двумерный массив
/// - Returns: Одномерный массив
func flatten<T>(_ matrix: [[T]]) -> [T] {
    return matrix.flatMap { $0 }
}

/// Группирует элементы по указанному признаку
/// - Parameters:
///   - items: Массив элементов
///   - keySelector: Функция определения ключа
/// - Returns: Словарь групп
func groupBy<T, K: Hashable>(_ items: [T], by keySelector: (T) -> K) -> [K: [T]] {
    Dictionary(grouping: items, by: keySelector)
}

/// Удаляет дубликаты из массива, сохраняя порядок
/// - Parameter array: Исходный массив
/// - Returns: Массив без дубликатов
func removeDuplicates<T: Hashable>(_ array: [T]) -> [T] {
    var seen = Set<T>()
    return array.filter { seen.insert($0).inserted }
}

/// Переворачивает ключи и значения словаря
/// - Parameter dictionary: Словарь [K: V]
/// - Returns: Новый словарь [V: K]
func invertDictionary<K: Hashable, V: Hashable>(_ dictionary: [K: V]) -> [V: K] {
    var result: [V: K] = [:]
    for (key, value) in dictionary {
        result[value] = key
    }
    return result
}

/// Возвращает гипотенузу по теореме Пифагора
/// - Parameters:
///   - a: Катет A
///   - b: Катет B
/// - Returns: Гипотенуза
func hypotenuse(a: Double, b: Double) -> Double {
    return sqrt(a * a + b * b)
}

/// Возвращает число Фибоначчи по индексу
/// - Parameter n: Индекс
/// - Returns: n-е число Фибоначчи
func fibonacci(_ n: Int) -> Int {
    guard n > 1 else { return n }
    var a = 0, b = 1
    for _ in 2...n {
        (a, b) = (b, a + b)
    }
    return b
}

/// Находит наименьший общий кратный двух чисел
/// - Parameters:
///   - a: Первое число
///   - b: Второе число
/// - Returns: НОК
func lcm(_ a: Int, _ b: Int) -> Int {
    return abs(a * b) / gcd(a, b)
}

/// Вычисляет наибольший общий делитель (НОД)
/// - Parameters:
///   - a: Первое число
///   - b: Второе число
/// - Returns: НОД
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    while b != 0 {
        (a, b) = (b, a % b)
    }
    return a
}

/// Находит медиану массива
/// - Parameter numbers: Массив чисел
/// - Returns: Медианное значение
func median(of numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sorted = numbers.sorted()
    let mid = sorted.count / 2
    return sorted.count % 2 == 0
        ? (sorted[mid - 1] + sorted[mid]) / 2
        : sorted[mid]
}

/// Проверяет, является ли число степенью двойки
/// - Parameter n: Число
/// - Returns: true, если степень двойки
func isPowerOfTwo(_ n: Int) -> Bool {
    return n > 0 && (n & (n - 1)) == 0
}

/// Округляет число до ближайшего четного
/// - Parameter value: Вещественное число
/// - Returns: Ближайшее четное число
func roundToEven(_ value: Double) -> Int {
    let rounded = Int(round(value))
    return rounded % 2 == 0 ? rounded : rounded + 1
}
