/// Проверяет, авторизован ли пользователь на основе токена в UserDefaults.
/// - Returns: true, если токен существует и не истёк.
func isUserLoggedIn() -> Bool {
    guard let token = UserDefaults.standard.string(forKey: "authToken") else { return false }
    // Здесь могла бы быть логика проверки срока действия токена
    return !token.isEmpty
}

/// Формирует приветственное сообщение по времени суток.
/// - Parameter name: Имя пользователя.
/// - Returns: Персонализированное приветствие.
func generateGreetingMessage(for name: String) -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12: return "Доброе утро, \(name)"
    case 12..<18: return "Добрый день, \(name)"
    case 18..<23: return "Добрый вечер, \(name)"
    default: return "Доброй ночи, \(name)"
    }
}

/// Конвертирует сумму в рублях в форматированную строку с валютой.
/// - Parameter amount: Сумма в рублях.
/// - Returns: Строка с символом рубля.
func formatCurrency(_ amount: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencySymbol = "₽"
    formatter.locale = Locale(identifier: "ru_RU")
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount) ₽"
}

/// Отправляет push-уведомление с заданным текстом.
/// - Parameter message: Текст уведомления.
func sendLocalPush(message: String) {
    let content = UNMutableNotificationContent()
    content.body = message
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request)
}

/// Определяет, нужно ли показать onboarding на основе флага в хранилище.
/// - Returns: true, если onboarding ещё не пройден.
func shouldShowOnboarding() -> Bool {
    return !UserDefaults.standard.bool(forKey: "onboardingShown")
}

/// Сохраняет ID последнего просмотренного товара.
/// - Parameter productId: ID товара.
func saveLastViewedProduct(_ productId: String) {
    UserDefaults.standard.set(productId, forKey: "lastViewedProduct")
}

/// Оценивает, следует ли показать пользователю всплывающее предложение.
/// - Returns: true, если пользователь не видел баннер более суток.
func shouldShowPromoBanner() -> Bool {
    let lastShown = UserDefaults.standard.object(forKey: "lastPromoShown") as? Date ?? .distantPast
    return Date().timeIntervalSince(lastShown) > 86400
}

/// Преобразует координаты в строку для отображения на UI.
/// - Parameters:
///   - lat: Широта.
///   - lon: Долгота.
/// - Returns: Строка координат.
func coordinatesToString(lat: Double, lon: Double) -> String {
    return String(format: "📍 %.4f, %.4f", lat, lon)
}

/// Проверяет, заполнены ли все поля профиля пользователя.
/// - Parameter profile: Словарь с данными профиля.
/// - Returns: true, если все обязательные поля не пустые.
func isUserProfileComplete(profile: [String: String]) -> Bool {
    let requiredKeys = ["firstName", "lastName", "email"]
    return requiredKeys.allSatisfy { !(profile[$0]?.isEmpty ?? true) }
}

/// Валидирует номер телефона на соответствие российскому формату.
/// - Parameter phone: Строка номера.
/// - Returns: true, если номер валиден.
func isValidRussianPhoneNumber(_ phone: String) -> Bool {
    let pattern = "^\\+7\\d{10}$"
    return phone.range(of: pattern, options: .regularExpression) != nil
}

/// Преобразует рейтинг (от 0 до 5) в строку с эмодзи-звездами.
/// - Parameter rating: Значение рейтинга.
/// - Returns: Строка из звёзд.
func starsForRating(_ rating: Double) -> String {
    let filledStars = Int(rating)
    let emptyStars = 5 - filledStars
    return String(repeating: "★", count: filledStars) + String(repeating: "☆", count: emptyStars)
}

/// Определяет, есть ли активная интернет-сессия.
/// - Returns: true, если интернет доступен.
func isInternetAvailable() -> Bool {
    // Упрощённо, для примера — реальная реализация требует Reachability
    return true
}

/// Сравнивает дату доставки с текущей датой и возвращает статус.
/// - Parameter deliveryDate: Дата доставки.
/// - Returns: Статус строки: "Сегодня", "Завтра", "Позже".
func deliveryStatus(for deliveryDate: Date) -> String {
    let calendar = Calendar.current
    if calendar.isDateInToday(deliveryDate) {
        return "Сегодня"
    } else if calendar.isDateInTomorrow(deliveryDate) {
        return "Завтра"
    } else {
        return "Позже"
    }
}

/// Преобразует список тегов в одну строку с хештегами.
/// - Parameter tags: Список тегов.
/// - Returns: Строка с хештегами.
func hashtags(from tags: [String]) -> String {
    return tags.map { "#\($0.lowercased())" }.joined(separator: " ")
}

/// Сохраняет текущую позицию скролла в списке товаров.
/// - Parameter offset: Значение смещения.
func saveScrollOffset(_ offset: Double) {
    UserDefaults.standard.set(offset, forKey: "productListScrollOffset")
}

/// Проверяет, находится ли пользователь в зоне доставки (по координатам).
/// - Parameters:
///   - lat: Широта.
///   - lon: Долгота.
/// - Returns: true, если координаты входят в радиус.
func isWithinDeliveryZone(lat: Double, lon: Double) -> Bool {
    let center = (lat: 55.75, lon: 37.61) // Москва
    let radiusKm = 30.0
    let distance = sqrt(pow(center.lat - lat, 2) + pow(center.lon - lon, 2)) * 111
    return distance < radiusKm
}

/// Генерирует URL для deeplink с заданным идентификатором товара.
/// - Parameter productId: Идентификатор.
/// - Returns: URL для перехода.
func generateProductDeeplink(productId: String) -> URL? {
    return URL(string: "myapp://product/\(productId)")
}

/// Проверяет, просмотрел ли пользователь новое сообщение поддержки.
/// - Parameter lastViewedId: Последний просмотренный ID.
/// - Parameter newMessageId: ID нового сообщения.
/// - Returns: true, если есть новое сообщение.
func hasNewSupportMessage(lastViewedId: String, newMessageId: String) -> Bool {
    return lastViewedId != newMessageId
}

/// Вычисляет процент прогресса цели (например, накоплений).
/// - Parameters:
///   - current: Текущее значение.
///   - target: Целевая сумма.
/// - Returns: Процент от 0 до 100.
func progressPercentage(current: Double, target: Double) -> Int {
    guard target > 0 else { return 0 }
    return min(Int((current / target) * 100), 100)
}

/// Проверяет, авторизован ли пользователь на основе токена в UserDefaults.
/// - Returns: true, если токен существует и не истёк.
func isUserLoggedIn() -> Bool {
    guard let token = UserDefaults.standard.string(forKey: "authToken") else { return false }
    // Здесь могла бы быть логика проверки срока действия токена
    return !token.isEmpty
}

/// Формирует приветственное сообщение по времени суток.
/// - Parameter name: Имя пользователя.
/// - Returns: Персонализированное приветствие.
func generateGreetingMessage(for name: String) -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12: return "Доброе утро, \(name)"
    case 12..<18: return "Добрый день, \(name)"
    case 18..<23: return "Добрый вечер, \(name)"
    default: return "Доброй ночи, \(name)"
    }
}

/// Конвертирует сумму в рублях в форматированную строку с валютой.
/// - Parameter amount: Сумма в рублях.
/// - Returns: Строка с символом рубля.
func formatCurrency(_ amount: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencySymbol = "₽"
    formatter.locale = Locale(identifier: "ru_RU")
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount) ₽"
}

/// Отправляет push-уведомление с заданным текстом.
/// - Parameter message: Текст уведомления.
func sendLocalPush(message: String) {
    let content = UNMutableNotificationContent()
    content.body = message
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request)
}

/// Определяет, нужно ли показать onboarding на основе флага в хранилище.
/// - Returns: true, если onboarding ещё не пройден.
func shouldShowOnboarding() -> Bool {
    return !UserDefaults.standard.bool(forKey: "onboardingShown")
}

/// Сохраняет ID последнего просмотренного товара.
/// - Parameter productId: ID товара.
func saveLastViewedProduct(_ productId: String) {
    UserDefaults.standard.set(productId, forKey: "lastViewedProduct")
}

/// Оценивает, следует ли показать пользователю всплывающее предложение.
/// - Returns: true, если пользователь не видел баннер более суток.
func shouldShowPromoBanner() -> Bool {
    let lastShown = UserDefaults.standard.object(forKey: "lastPromoShown") as? Date ?? .distantPast
    return Date().timeIntervalSince(lastShown) > 86400
}

/// Преобразует координаты в строку для отображения на UI.
/// - Parameters:
///   - lat: Широта.
///   - lon: Долгота.
/// - Returns: Строка координат.
func coordinatesToString(lat: Double, lon: Double) -> String {
    return String(format: "📍 %.4f, %.4f", lat, lon)
}

/// Проверяет, заполнены ли все поля профиля пользователя.
/// - Parameter profile: Словарь с данными профиля.
/// - Returns: true, если все обязательные поля не пустые.
func isUserProfileComplete(profile: [String: String]) -> Bool {
    let requiredKeys = ["firstName", "lastName", "email"]
    return requiredKeys.allSatisfy { !(profile[$0]?.isEmpty ?? true) }
}

/// Валидирует номер телефона на соответствие российскому формату.
/// - Parameter phone: Строка номера.
/// - Returns: true, если номер валиден.
func isValidRussianPhoneNumber(_ phone: String) -> Bool {
    let pattern = "^\\+7\\d{10}$"
    return phone.range(of: pattern, options: .regularExpression) != nil
}

/// Преобразует рейтинг (от 0 до 5) в строку с эмодзи-звездами.
/// - Parameter rating: Значение рейтинга.
/// - Returns: Строка из звёзд.
func starsForRating(_ rating: Double) -> String {
    let filledStars = Int(rating)
    let emptyStars = 5 - filledStars
    return String(repeating: "★", count: filledStars) + String(repeating: "☆", count: emptyStars)
}

/// Определяет, есть ли активная интернет-сессия.
/// - Returns: true, если интернет доступен.
func isInternetAvailable() -> Bool {
    // Упрощённо, для примера — реальная реализация требует Reachability
    return true
}

/// Сравнивает дату доставки с текущей датой и возвращает статус.
/// - Parameter deliveryDate: Дата доставки.
/// - Returns: Статус строки: "Сегодня", "Завтра", "Позже".
func deliveryStatus(for deliveryDate: Date) -> String {
    let calendar = Calendar.current
    if calendar.isDateInToday(deliveryDate) {
        return "Сегодня"
    } else if calendar.isDateInTomorrow(deliveryDate) {
        return "Завтра"
    } else {
        return "Позже"
    }
}

/// Преобразует список тегов в одну строку с хештегами.
/// - Parameter tags: Список тегов.
/// - Returns: Строка с хештегами.
func hashtags(from tags: [String]) -> String {
    return tags.map { "#\($0.lowercased())" }.joined(separator: " ")
}

/// Сохраняет текущую позицию скролла в списке товаров.
/// - Parameter offset: Значение смещения.
func saveScrollOffset(_ offset: Double) {
    UserDefaults.standard.set(offset, forKey: "productListScrollOffset")
}

/// Проверяет, находится ли пользователь в зоне доставки (по координатам).
/// - Parameters:
///   - lat: Широта.
///   - lon: Долгота.
/// - Returns: true, если координаты входят в радиус.
func isWithinDeliveryZone(lat: Double, lon: Double) -> Bool {
    let center = (lat: 55.75, lon: 37.61) // Москва
    let radiusKm = 30.0
    let distance = sqrt(pow(center.lat - lat, 2) + pow(center.lon - lon, 2)) * 111
    return distance < radiusKm
}

/// Генерирует URL для deeplink с заданным идентификатором товара.
/// - Parameter productId: Идентификатор.
/// - Returns: URL для перехода.
func generateProductDeeplink(productId: String) -> URL? {
    return URL(string: "myapp://product/\(productId)")
}

/// Проверяет, просмотрел ли пользователь новое сообщение поддержки.
/// - Parameter lastViewedId: Последний просмотренный ID.
/// - Parameter newMessageId: ID нового сообщения.
/// - Returns: true, если есть новое сообщение.
func hasNewSupportMessage(lastViewedId: String, newMessageId: String) -> Bool {
    return lastViewedId != newMessageId
}

/// Вычисляет процент прогресса цели (например, накоплений).
/// - Parameters:
///   - current: Текущее значение.
///   - target: Целевая сумма.
/// - Returns: Процент от 0 до 100.
func progressPercentage(current: Double, target: Double) -> Int {
    guard target > 0 else { return 0 }
    return min(Int((current / target) * 100), 100)
}

/// Возвращает ссылку на Terms & Conditions в зависимости от локали.
/// - Returns: URL страницы условий использования.
func termsAndConditionsURL() -> URL? {
    let locale = Locale.current.languageCode ?? "en"
    return URL(string: "https://example.com/terms_\(locale).html")
}

/// Проверяет, наступило ли время запланированного события.
/// - Parameter date: Дата события.
/// - Returns: true, если событие уже началось.
func isEventStarted(at date: Date) -> Bool {
    return Date() >= date
}

/// Сохраняет выбранную пользователем тему оформления.
/// - Parameter theme: Название темы.
func saveUserTheme(_ theme: String) {
    UserDefaults.standard.set(theme, forKey: "appTheme")
}

/// Получает текущую тему оформления.
/// - Returns: Название темы или nil.
func getUserTheme() -> String? {
    return UserDefaults.standard.string(forKey: "appTheme")
}

/// Очищает сохранённые данные пользователя при выходе из аккаунта.
func clearUserSession() {
    let keys = ["authToken", "userProfile", "lastViewedProduct"]
    keys.forEach { UserDefaults.standard.removeObject(forKey: $0) }
}

/// Формирует строку обратной связи с информацией об устройстве.
/// - Returns: Текст обратной связи.
func generateFeedbackTemplate() -> String {
    let systemVersion = UIDevice.current.systemVersion
    let model = UIDevice.current.model
    return "Устройство: \(model)\nВерсия iOS: \(systemVersion)\nВаш отзыв: "
}

/// Проверяет, достиг ли пользователь лимита бесплатных действий.
/// - Parameter count: Текущее количество действий.
/// - Returns: true, если лимит достигнут.
func hasReachedFreeLimit(count: Int) -> Bool {
    let limit = 5
    return count >= limit
}

/// Формирует строку даты для истории заказов.
/// - Parameter date: Дата.
/// - Returns: Строка формата "dd MMM yyyy".
func formatOrderDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd MMM yyyy"
    return formatter.string(from: date)
}

/// Вычисляет количество дней между двумя датами.
/// - Parameters:
///   - from: Начальная дата.
///   - to: Конечная дата.
/// - Returns: Количество дней.
func daysBetween(_ from: Date, _ to: Date) -> Int {
    return Calendar.current.dateComponents([.day], from: from, to: to).day ?? 0
}

/// Сохраняет ID последнего просмотренного баннера.
/// - Parameter id: Идентификатор баннера.
func saveLastSeenBannerId(_ id: String) {
    UserDefaults.standard.set(id, forKey: "lastSeenBannerId")
}

/// Проверяет, следует ли обновить кешированные данные.
/// - Parameter lastUpdate: Дата последнего обновления.
/// - Returns: true, если прошло больше 6 часов.
func shouldRefreshCache(since lastUpdate: Date) -> Bool {
    return Date().timeIntervalSince(lastUpdate) > 6 * 3600
}

/// Проверяет, авторизован ли пользователь на основе токена в UserDefaults.
/// - Returns: true, если токен существует и не истёк.
func isUserLoggedIn() -> Bool {
    guard let token = UserDefaults.standard.string(forKey: "authToken") else { return false }
    // Здесь могла бы быть логика проверки срока действия токена
    return !token.isEmpty
}

... [весь существующий код остаётся без изменений] ...

/// Проверяет, является ли пользователь новым (на основе даты регистрации).
/// - Parameter registrationDate: Дата регистрации пользователя.
/// - Returns: true, если пользователь зарегистрирован менее 7 дней назад.
func isNewUser(registrationDate: Date) -> Bool {
    return Date().timeIntervalSince(registrationDate) < 7 * 86400
}

/// Получает количество запусков приложения.
/// - Returns: Количество запусков.
func getAppLaunchCount() -> Int {
    return UserDefaults.standard.integer(forKey: "launchCount")
}

/// Увеличивает счётчик запусков приложения.
func incrementAppLaunchCount() {
    let count = getAppLaunchCount() + 1
    UserDefaults.standard.set(count, forKey: "launchCount")
}

/// Проверяет, доступен ли Face ID на устройстве.
/// - Returns: true, если Face ID доступен.
func isFaceIDAvailable() -> Bool {
    let context = LAContext()
    var error: NSError?
    return context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) && context.biometryType == .faceID
}

/// Получает имя месяца на русском по номеру.
/// - Parameter month: Номер месяца от 1 до 12.
/// - Returns: Название месяца.
func monthName(for month: Int) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ru_RU")
    return formatter.monthSymbols[safe: month - 1] ?? ""
}

/// Формирует URL для запроса истории заказов пользователя.
/// - Parameter userId: Идентификатор пользователя.
/// - Returns: URL с параметром userId.
func ordersHistoryURL(for userId: String) -> URL? {
    return URL(string: "https://api.example.com/orders?user=\(userId)")
}

/// Получает текущее значение параметра "darkMode".
/// - Returns: true, если включена тёмная тема.
func isDarkModeEnabled() -> Bool {
    return UserDefaults.standard.bool(forKey: "darkMode")
}

/// Проверяет, есть ли доступ к геолокации.
/// - Returns: true, если доступ разрешён.
func isLocationAccessGranted() -> Bool {
    return CLLocationManager.authorizationStatus() == .authorizedWhenInUse || CLLocationManager.authorizationStatus() == .authorizedAlways
}

/// Преобразует секунды в строку формата "мм:сс".
/// - Parameter seconds: Количество секунд.
/// - Returns: Форматированная строка.
func formatTime(seconds: Int) -> String {
    return String(format: "%02d:%02d", seconds / 60, seconds % 60)
}

/// Проверяет, достигнуто ли максимальное количество попыток ввода PIN-кода.
/// - Parameter attempts: Количество попыток.
/// - Returns: true, если лимит превышен.
func isPinAttemptsLimitExceeded(_ attempts: Int) -> Bool {
    return attempts >= 3
}

/// Генерирует строку статуса доставки по текущему этапу.
/// - Parameter status: Текущий статус.
/// - Returns: Строковое описание.
func deliveryStatusText(for status: String) -> String {
    switch status {
    case "pending": return "Ожидает обработки"
    case "shipped": return "Отправлено"
    case "delivered": return "Доставлено"
    default: return "Неизвестно"
    }
}

/// Удаляет все элементы UserDefaults для сброса приложения.
func resetAppData() {
    if let appDomain = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
    }
}

/// Проверяет, работает ли сервер API.
/// - Parameter completion: Замыкание с результатом доступности.
func pingServer(completion: @escaping (Bool) -> Void) {
    let url = URL(string: "https://api.example.com/ping")!
    URLSession.shared.dataTask(with: url) { _, response, error in
        let httpResponse = response as? HTTPURLResponse
        completion(httpResponse?.statusCode == 200 && error == nil)
    }.resume()
}

/// Сохраняет предпочитаемый язык пользователя.
/// - Parameter languageCode: Код языка (например, "ru", "en").
func savePreferredLanguage(_ languageCode: String) {
    UserDefaults.standard.set(languageCode, forKey: "preferredLanguage")
}

/// Получает предпочитаемый язык пользователя.
/// - Returns: Код языка или "ru" по умолчанию.
func getPreferredLanguage() -> String {
    return UserDefaults.standard.string(forKey: "preferredLanguage") ?? "ru"
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
