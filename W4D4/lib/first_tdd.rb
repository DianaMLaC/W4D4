class Array

    def my_uniq
        new_arr = []
        self.each do |ele|
            new_arr << ele if !new_arr.include?(ele)
        end
        new_arr

    end

    def two_sum
        pairs = []
        self.each_with_index do |ele1, i|
            self.each_with_index do |ele2, j|
                pairs << [i, j] if ele1 + ele2 == 0 && i < j
            end
        end
        pairs
    end

    def my_transpose
        transposed = []
        self.length.times do |idx|
            col = []
            self.each {|row| col << row[idx]}
            transposed << col; end
        transposed
    end

    # [8, 10, 0, 1, 6, 4, 2, 9, 5, 1, 4, 5, 8, 11]
    def stock_picker
        highest, na = 0, []
        self.each_with_index do |x, i|
            self.each_with_index do |y, j|
                if i < j && x - y < highest
                    highest = x-y; na << [i,j]
                end
            end
        end
        na[-1]
    end
end

# p [1,2,1,3,3].my_uniq
# p [-1,0,2,-2,1].two_sum?

# p [[0,1,2],[3,4,5],[6,7,8]].my_transpose
# p [8, 10, 0, 1, 6, 4, 2, 9, 5, 1, 4, 5, 8, 11].stock_picker

# class TowerHanoi 

#    attr_reader :towers, :rings

#     def initalize
#         @towers = Array.new(3){Array.new(3)}
        
#     end

#     def move
#         self.each do |row, i|
#             row.each do |j|
#                 if self[i].pop < row.last || row.empty?
#                     self [i + 1] << self[i]
#                 else self[i].pop < self[i + 2].last || self[i + 2].empty?
#                     self [i + 2] << self[i]


                    
#     end

# def tower_of_hanoi
#     board = [[1,2,3], [], []]
#     board.each do |stack, i|
#         stack.each do |el, j|
#             if stack.empty? || el > itts(stack) 
#                 stack[i] << el
#                 next
#             end
#         end
#     end            
# end

# def itts (arr)
#     h = 0
#     arr.each {|i| h = i if i > h
#     h
# end



    


end