enum DayOfWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekday
    case holiday
}

func determineDayType(_ day: DayOfWeek) -> DayType {
    switch day {
    case .saturday, .sunday:
        return .weekend
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        return .weekday
    }
}

func printDayType(_ day: DayOfWeek) {
    let dayType = determineDayType(day)
    switch dayType {
    case .weekday:
        print("\(day) is a weekday.")
    case .weekend:
        print("\(day) is a weekend day.")
    }
}

// Example usage
let today = DayOfWeek.monday
printDayType(today) // Output: "monday is a weekday."
