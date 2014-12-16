load "#{File::dirname __FILE__}/multiplication_table_generator.rb"
load "#{File::dirname __FILE__}/prime_number_generator.rb"
require 'timeout'

class RSpecPrimeNumberGenerator

  describe "10 unique primes by default" do

    it "should generate 10 unique primes" do
      gen = PrimeNumberGenerator.new(10)
      gen.generate_primes
      primes = gen.get_primes
      primes.length.should == 10
      primes.each {|p|
        (2..p-1).each {|idx|
          (p%idx).ceil.to_i.should_not == 0 if !primes.member?(idx)
          (p%idx).floor.to_i.should_not == 0 if !primes.member?(idx)
        }
      }
    end

  end

   describe "50 unique primes" do

    it "should generate 50 unique primes in less than 30 seconds" do
      timeout(30){
        @gen = PrimeNumberGenerator.new(50)
        @gen.generate_primes
        primes = @gen.get_primes
        primes.length.should == 50
        primes.each {|p|
          (2..p).each {|idx|
            (p%idx).ceil.to_i.should_not == 0 if !primes.member?(idx)
            (p%idx).floor.to_i.should_not == 0 if !primes.member?(idx)
          }
        }
      }
    end

  end

  describe "first element in primes" do

    it "should generate 10 primes starting with 2" do
      @gen = PrimeNumberGenerator.new(10)
      @gen.generate_primes
      primes = @gen.get_primes
      primes.length.should == 10
      primes[0].should == 2
    end

  end

end
