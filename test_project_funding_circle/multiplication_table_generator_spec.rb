load "#{File::dirname __FILE__}/multiplication_table_generator.rb"
load "#{File::dirname __FILE__}/prime_number_generator.rb"

class RSpecMultiplicationTableGenerator

  describe "#Validation" do

    it "throws exception if header and columns different length" do
      first_row = [1,2,3,4,5]
      first_col = [5,6,7]
      expect {
        MultiplicationTableGenerator.new(first_row,first_col)
      }.to raise_error
    end

  end

  describe "#Generates" do

    before do
      first_row = [1,2,3,4,5]
      first_col = [1,2,3,4,5]
      @gen = MultiplicationTableGenerator.new(first_row,first_col)
    end

    it "creates a table with the proper number of elements per row" do
      table = @gen.get_table
      x = 0
      table.each {|row|
        row.length.should == 5
        x=x+1
      }
      x.should == 5
    end

    it "adds cells that multiply acording to header and first col" do
      table = @gen.get_table
      table[2].should == [3,6,9,12,15]
    end

  end

end
