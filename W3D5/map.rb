class Map
    def initialize
        @arr = []
    end

    def set(key, value)
        if @arr.all? { |keys| keys[0] != key }
            @arr << [key, value]
        else
            return false
        end
    end

    def get(key)
        @arr.each do |keys|
            if keys[0] == key
                return keys
            end
        end
        return false
    end

    def delete(key)
        @arr.each do |element|
            if element[0] == key
                @arr.delete(element)
                return true
            end
        end
        return false
    end

    def show
        @arr
    end
end