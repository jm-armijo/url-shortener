class Base62
    BASE = 62
    MAP = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".freeze

    def self.encode(number)
        return "0" if number == 0
        return nil if number < 0

        response = MAP[number % BASE]
        reminder = number / BASE

        return response if reminder == 0
        Base62.encode(number/BASE) + response
    end
end
