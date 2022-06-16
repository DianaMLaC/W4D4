require 'rspec'
require 'first_tdd'



describe Array do


    describe "#my_uniq" do
    it "takes in an array" do
        expect([1,1,2,3,3].my_uniq).to eq([1,2,3])
    end
    end

    describe "#two_sum" do
    it "return positions of pairs of numbers that add to zero" do
        expect([-1,0,2,-2,1].two_sum).to eq([[0, 4], [2, 3]])
    end
    end

    describe "#my_transpose" do
    it "return positions of pairs of numbers that add to zero" do
        expect([[0,1,2],[3,4,5],[6,7,8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
    end

    describe "#stock_picker" do
    it "return index of days with most profit" do
        expect([8, 10, 0, 1, 6, 4, 2, 9, 5, 1, 4, 5, 8, 11].stock_picker).to eq([2,13])
    end
    end

    describe "#tower_of_hanoi" do
    end
end
