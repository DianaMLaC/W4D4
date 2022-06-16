class TowerOfHanoi

    attr_reader :tower1, :tower2, :tower3
    def initialize
        @tower1, @tower2, @tower3 = [5,4,3,2,1], [], []
    end


    def move
        begin
            p tower1; p tower2; p tower3

            puts "Choose a tower to remove a ring (1, 2, or 3):"
            towerNumber = gets.chomp.to_i
            if towerNumber == 1
                rmTower = @tower1
            elsif towerNumber == 2
                rmTower = @tower2
            elsif towerNumber == 3
                rmTower = @tower3
            else
                puts "Choose tower 1, 2, or 3."; raise
            end
            
            if rmTower.empty?
                puts "Choose another one" ;raise
            else
                ring = rmTower.pop
            end
        rescue; retry
        end

        puts "Choose a tower to add the ring (1, 2, or 3):"
        newTowerNum = gets.chomp.to_i
        if newTowerNum == 1
            newTower = @tower1
        elsif newTowerNum == 2
            newTower = @tower2
        elsif newTowerNum == 3
            newTower = @tower3
        end
        newTower.unshift(ring)
    end

    def won?
        towers = [tower1, tower2, tower3]
        towers.each {|i| return true if i == [1, 2, 3, 4, 5] && i != tower1}
        false
    end

    def run ; until self.won?; self.move; end
        
        puts "You win. Congrats!"
        puts "Tower 1: #{@tower1}"
        puts "Tower 2: #{@tower2}"
        puts "Tower 3: #{@tower3}"
    end
end

t = TowerOfHanoi.new
t.run