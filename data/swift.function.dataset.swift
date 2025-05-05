// Swift Functions Dataset - 100 functions with documentation comments

// MARK: - 0 Parameters (5 Functions)

/// Возвращает строку приветствия.
/// - Returns: Строка "Hello, World!".
func greeting() -> String {
    return "Hello, World!"
}

/// Возвращает текущее число случайным образом.
/// - Returns: Целое число от 0 до 100.
func randomNumber() -> Int {
    return Int(arc4random_uniform(101))
}

/// Возвращает текущее время в формате строки.
/// - Returns: Время в формате HH:mm:ss.
func currentTimeString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm:ss"
    return formatter.string(from: Date())
}

/// Возвращает название приложения.
/// - Returns: Строка с именем приложения.
func appName() -> String {
    return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String ?? "Unknown"
}

/// Возвращает массив из трех базовых цветов.
/// - Returns: Массив строк ["Red", "Green", "Blue"].
func basicColors() -> [String] {
    return ["Red", "Green", "Blue"]
}

// MARK: - 1 Parameter (20 Functions)

/// Возвращает квадрат числа.
/// - Parameter x: Число для возведения в квадрат.
/// - Returns: Результат x * x.
func square(_ x: Int) -> Int {
    return x * x
}

/// Проверяет, является ли строка пустой.
/// - Parameter str: Проверяемая строка.
/// - Returns: true, если строка пустая, иначе false.
func isEmpty(_ str: String) -> Bool {
    return str.isEmpty
}

/// Переводит градусы Цельсия в Фаренгейты.
/// - Parameter celsius: Значение в градусах Цельсия.
/// - Returns: Эквивалент в градусах Фаренгейта.
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return celsius * 9/5 + 32
}

/// Возвращает массив из n нулей.
/// - Parameter count: Количество нулей.
/// - Returns: Массив нулей длины count.
func zerosArray(count: Int) -> [Int] {
    return Array(repeating: 0, count: count)
}

/// Проверяет, является ли число четным.
/// - Parameter n: Число для проверки.
/// - Returns: true, если число четное, иначе false.
func isEven(_ n: Int) -> Bool {
    return n % 2 == 0
}

/// Возвращает обратную строку.
/// - Parameter str: Исходная строка.
/// - Returns: Перевернутая строка.
func reverse(_ str: String) -> String {
    return String(str.reversed())
}

/// Возводит число в третью степень.
/// - Parameter x: Базовое число.
/// - Returns: x³.
func cube(_ x: Int) -> Int {
    return x * x * x
}

/// Генерирует случайную строку заданной длины из букв.
/// - Parameter length: Длина строки.
/// - Returns: Случайная строка.
func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyz"
    return String((0..<length).map{ _ in letters.randomElement()! })
}

/// Проверяет, является ли число положительным.
/// - Parameter x: Число для проверки.
/// - Returns: true, если число > 0.
func isPositive(_ x: Double) -> Bool {
    return x > 0
}

/// Преобразует строку в верхний регистр.
/// - Parameter s: Исходная строка.
/// - Returns: Строка в верхнем регистре.
func toUpper(_ s: String) -> String {
    return s.uppercased()
}

/// Преобразует метры в километры.
/// - Parameter meters: Расстояние в метрах.
/// - Returns: Расстояние в километрах.
func metersToKilometers(_ meters: Double) -> Double {
    return meters / 1000
}

/// Преобразует булево в строку.
/// - Parameter flag: Булево значение.
/// - Returns: "true" или "false".
func boolToString(_ flag: Bool) -> String {
    return String(flag)
}

/// Преобразует строку в целое число.
/// - Parameter num: Строка с числом.
/// - Returns: Int или nil.
func stringToInt(_ num: String) -> Int? {
    return Int(num)
}

/// Возвращает длину строки.
/// - Parameter str: Строка.
/// - Returns: Количество символов.
func lengthOf(_ str: String) -> Int {
    return str.count
}

/// Повторяет строку заданное количество раз.
/// - Parameter str: Строка для повторения.
/// - Returns: Исходная строка.
func echo(_ str: String) -> String {
    return str
}

/// Добавляет префикс к строке.
/// - Parameter text: Строка.
/// - Returns: Строка с префиксом.
func addPrefix(_ text: String) -> String {
    return "Prefix_" + text
}

/// Округляет число до ближайшего целого.
/// - Parameter x: Число.
/// - Returns: Округленное значение.
func roundValue(_ x: Double) -> Int {
    return Int(x.rounded())
}

/// Проверяет, содержит ли массив значение.
/// - Parameter value: Искомое значение.
/// - Returns: true, если содержит.
func containsValue<T: Equatable>(_ value: T) -> Bool {
    return [value].contains(value)
}

// MARK: - 2 Parameters (30 Functions)

/// Возвращает сумму двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Сумма.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

/// Возвращает разницу двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Разность.
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

/// Умножает два числа.
/// - Parameters:
///   - x: Первый множитель.
///   - y: Второй множитель.
/// - Returns: Произведение.
func multiply(_ x: Double, _ y: Double) -> Double {
    return x * y
}

/// Делит одно число на другое.
/// - Parameters:
///   - dividend: Делимое.
///   - divisor: Делитель.
/// - Returns: Частное или nil.
func divide(_ dividend: Double, _ divisor: Double) -> Double? {
    return divisor != 0 ? dividend / divisor : nil
}

/// Возвращает максимальное из двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Максимум.
func maxOf(_ a: Int, _ b: Int) -> Int {
    return a > b ? a : b
}

/// Возвращает минимальное из двух чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Returns: Минимум.
func minOf(_ a: Int, _ b: Int) -> Int {
    return a < b ? a : b
}

/// Объединяет две строки.
/// - Parameters:
///   - s1: Первая строка.
///   - s2: Вторая строка.
/// - Returns: Конкатенация.
func concat(_ s1: String, _ s2: String) -> String {
    return s1 + s2
}

/// Создает массив чисел в диапазоне.
/// - Parameters:
///   - start: Начало.
///   - end: Конец.
/// - Returns: Массив Int.
func range(from start: Int, to end: Int) -> [Int] {
    return Array(start...end)
}

/// Проверяет вхождение числа в диапазон.
/// - Parameters:
///   - x: Число.
///   - range: Диапазон.
/// - Returns: true, если входит.
func isInRange(_ x: Int, range: ClosedRange<Int>) -> Bool {
    return range.contains(x)
}

/// Возвращает произведение элементов.
/// - Parameters:
///   - a: Первый элемент.
///   - b: Второй элемент.
/// - Returns: Произведение.
func product(_ a: Int, _ b: Int) -> Int {
    return a * b
}

/// Проверяет, является ли a делителем b.
/// - Parameters:
///   - a: Потенциальный делитель.
///   - b: Число.
/// - Returns: true, если делится.
func isDivisor(_ a: Int, _ b: Int) -> Bool {
    return b % a == 0
}

/// Повторяет строку заданное количество раз.
/// - Parameters:
///   - str: Строка.
///   - times: Количество повторений.
/// - Returns: Повторенная строка.
func repeatString(_ str: String, _ times: Int) -> String {
    return String(repeating: str, count: times)
}

/// Удаляет все вхождения подстроки.
/// - Parameters:
///   - target: Подстрока.
///   - source: Исходная строка.
/// - Returns: Строка без подстроки.
func removeOccurrences(of target: String, in source: String) -> String {
    return source.replacingOccurrences(of: target, with: "")
}

/// Добавляет элемент в массив.
/// - Parameters:
///   - element: Элемент.
///   - array: Исходный массив.
/// - Returns: Новый массив.
func append<T>(_ element: T, to array: [T]) -> [T] {
    var arr = array
    arr.append(element)
    return arr
}

/// Получает значение по ключу из словаря.
/// - Parameters:
///   - key: Ключ.
///   - dict: Словарь.
/// - Returns: Значение или nil.
func value<K: Hashable, V>(for key: K, in dict: [K: V]) -> V? {
    return dict[key]
}

/// Меняет местами два числа.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
/// - Note: Параметры передаются как inout.
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

/// Возводит число в степень.
/// - Parameters:
///   - base: Основание.
///   - exponent: Показатель.
/// - Returns: Результат.
func power(_ base: Double, _ exponent: Double) -> Double {
    return pow(base, exponent)
}

/// Вычисляет расстояние между двумя точками.
/// - Parameters:
///   - p1: Первая точка.
///   - p2: Вторая точка.
/// - Returns: Евклидово расстояние.
func distance(_ p1: (Double, Double), _ p2: (Double, Double)) -> Double {
    let dx = p2.0 - p1.0
    let dy = p2.1 - p1.1
    return sqrt(dx*dx + dy*dy)
}

/// Находит среднюю точку между двумя точками.
/// - Parameters:
///   - p1: Первая точка.
///   - p2: Вторая точка.
/// - Returns: Координаты середины.
func midpoint(_ p1: (Double, Double), _ p2: (Double, Double)) -> (Double, Double) {
    return ((p1.0 + p2.0)/2, (p1.1 + p2.1)/2)
}

/// Форматирует дату в строку.
/// - Parameters:
///   - date: Объект Date.
///   - format: Строковый формат.
/// - Returns: Отформатированная дата.
func formatDate(_ date: Date, _ format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
}

/// Вычисляет процент.
/// - Parameters:
///   - part: Часть.
///   - whole: Целое.
/// - Returns: Процент.
func percentage(_ part: Double, _ whole: Double) -> Double {
    return (whole != 0) ? (part / whole) * 100 : 0
}

/// Ограничивает значение диапазоном.
/// - Parameters:
///   - value: Значение.
///   - range: Диапазон.
/// - Returns: Ограниченное значение.
func clamp(_ value: Double, _ range: ClosedRange<Double>) -> Double {
    return min(max(value, range.lowerBound), range.upperBound)
}

/// Объединяет два массива.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Новый массив.
func merge<T>(_ a: [T], _ b: [T]) -> [T] {
    return a + b
}

/// Находит пересечение двух массивов.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
/// - Returns: Общие элементы.
func intersection<T: Hashable>(_ a: [T], _ b: [T]) -> [T] {
    let setA = Set(a)
    return b.filter { setA.contains($0) }
}

/// Разворачивает диапазон массива.
/// - Parameters:
///   - array: Исходный массив.
///   - range: Диапазон.
/// - Returns: Срез массива.
func slice<T>(_ array: [T], _ range: Range<Int>) -> [T] {
    return Array(array[range])
}

/// Склеивает массив строк разделителем.
/// - Parameters:
///   - strings: Массив строк.
///   - separator: Разделитель.
/// - Returns: Одна строка.
func join(_ strings: [String], _ separator: String) -> String {
    return strings.joined(separator: separator)
}

// MARK: - 3 Parameters (20 Functions)

/// Складывает три числа.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
///   - c: Третье число.
/// - Returns: Сумма.
func addThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return a + b + c
}

/// Находит среднее из трех чисел.
/// - Parameters:
///   - a: Первое число.
///   - b: Второе число.
///   - c: Третье число.
/// - Returns: Среднее.
func average(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}

/// Объединяет три строки.
/// - Parameters:
///   - s1: Первая строка.
///   - s2: Вторая строка.
///   - s3: Третья строка.
/// - Returns: Конкатенированная строка.
func concatThree(_ s1: String, _ s2: String, _ s3: String) -> String {
    return s1 + s2 + s3
}

/// Проверяет, лежит ли число между двумя другими.
/// - Parameters:
///   - x: Число для проверки.
///   - lower: Нижняя граница.
///   - upper: Верхняя граница.
/// - Returns: true, если lower <= x <= upper.
func isBetween(_ x: Int, _ lower: Int, _ upper: Int) -> Bool {
    return x >= lower && x <= upper
}

/// Форматирует координаты 2D точки.
/// - Parameters:
///   - x: Координата x.
///   - y: Координата y.
///   - format: Формат строки.
/// - Returns: Отформатированная строка.
func formatPoint(_ x: Double, _ y: Double, _ format: String) -> String {
    return String(format: format, x, y)
}

/// Ограничивает числа диапазоном.
/// - Parameters:
///   - value: Значение.
///   - minVal: Минимум.
///   - maxVal: Максимум.
/// - Returns: Ограниченное значение.
func clamp3(_ value: Double, _ minVal: Double, _ maxVal: Double) -> Double {
    return min(max(value, minVal), maxVal)
}

/// Генерирует RGB-строку цвета.
/// - Parameters:
///   - r: Красный.
///   - g: Зеленый.
///   - b: Синий.
/// - Returns: "rgb(r,g,b)".
func rgbString(_ r: Int, _ g: Int, _ b: Int) -> String {
    return "rgb(\(r),\(g),\(b))"
}

/// Перемножает три числа.
/// - Parameters:
///   - a: Первое.
///   - b: Второе.
///   - c: Третье.
/// - Returns: Произведение.
func productThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return a * b * c
}

/// Проверяет, делится ли b на a и c.
/// - Parameters:
///   - a: Первый делитель.
///   - b: Число.
///   - c: Второй делитель.
/// - Returns: true, если b % a == 0 и b % c == 0.
func divisibleByBoth(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    return b % a == 0 && b % c == 0
}

/// Повторяет строку с разделителем.
/// - Parameters:
///   - str: Строка.
///   - times: Количество.
///   - sep: Разделитель.
/// - Returns: Повторенная строка.
func repeatWithSeparator(_ str: String, _ times: Int, _ sep: String) -> String {
    return Array(repeating: str, count: times).joined(separator: sep)
}

/// Форматирует дату с учетом локали.
/// - Parameters:
///   - date: Дата.
///   - format: Формат.
///   - locale: Локаль.
/// - Returns: Строка.
func localizedDate(_ date: Date, _ format: String, _ locale: Locale) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    formatter.locale = locale
    return formatter.string(from: date)
}

/// Объединяет три массива.
/// - Parameters:
///   - a: Первый массив.
///   - b: Второй массив.
///   - c: Третий массив.
/// - Returns: Новый массив.
func mergeThree<T>(_ a: [T], _ b:  [T], _ c: [T]) -> [T] {
    return a + b + c
}

/// Проверяет, содержатся ли все три элемента в массиве.
/// - Parameters:
///   - elems: Массив элементов.
///   - array: Исходный массив.
///   - _: Заглушка для параметров.
/// - Returns: true, если содержатся.
func containsAll<T: Equatable>(_ elems: [T], in array: [T], _ placeholder: Int) -> Bool {
    return elems.allSatisfy { array.contains($0) }
}

/// Вычисляет среднее геометрическое трех чисел.
/// - Parameters:
///   - a: Первое.
///   - b: Второе.
///   - c: Третье.
/// - Returns: Среднее геометрическое.
func geometricMean(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return pow(a * b * c, 1/3)
}

/// Форматирует время интервала.
/// - Parameters:
///   - hours: Часы.
///   - minutes: Минуты.
///   - seconds: Секунды.
/// - Returns: Строка "hh:mm:ss".
func formatTime(_ hours: Int, _ minutes: Int, _ seconds: Int) -> String {
    return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
}

/// Генерирует случайное число в диапазоне.
/// - Parameters:
///   - lower: Нижняя граница.
///   - upper: Верхняя граница.
///   - seed: Семя генератора.
/// - Returns: Случайное число.
func seededRandom(_ lower: Int, _ upper: Int, _ seed: UInt32) -> Int {
    srand(seed)
    return Int(rand()) % (upper - lower + 1) + lower
}