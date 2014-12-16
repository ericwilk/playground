class MultiplicationTableGenerator

  def initialize(header_row,first_column)
    throw("Columns and header length must be equal") if header_row.length != first_column.length
    @table=Array.new
    @table[0]=header_row
    @first_column=first_column
  end

  def fill_row(r)
    
  end

  def get_table
    (1..@first_column.length-1).each {|x|
      @table[x]=Array.new unless @table[x]
      @table[0].length.times {|i|
        # Check to see if we have the rth prime number
        if i==0
          @table[x]<<@first_column[x]
        else
          @table[x]<<@table[x][0]*@first_column[i]
        end
      }
    }
    @table
  end

  def pretty_print_table
    (0..9).each {|i|
      (0..9).each {|j| printf "#{@table[i][j]}\t"}
      printf "\n"
    }
  end

end
