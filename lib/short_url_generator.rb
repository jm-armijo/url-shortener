require "base62"

class ShortUrlGenerator
    def self.generate(base_url, id)
        if id < 0
            return nil
        end

        "#{base_url}/#{Base62.encode(id)}"
    end
end
