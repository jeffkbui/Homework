require "set"

class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def value 
        @value
    end

    def neighbors
        @neighbors
    end

    def add_neighbor(node)
        self.neighbors << node
    end
end

def bfs(starting_node, target_value)
    queue = [self] 
    visited = Set.new()

    while queue.length > 0
        node = queue.shift
        unless visited.include?(node)
            return node.value if node.value == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end
    return nil
end
