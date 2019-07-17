class Queue    
    def initialize
        @arr = []
    end

    def enqueue(el)
        @arr << el
        el.dup
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr.first
    end
end