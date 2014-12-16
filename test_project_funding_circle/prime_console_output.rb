load "#{File::dirname __FILE__}/multiplication_table_generator.rb"
load "#{File::dirname __FILE__}/prime_number_generator.rb"

class PrimeConsoleOutput

  prime_gen=PrimeNumberGenerator.new
  primes=prime_gen.get_primes
  mult_gen=MultiplicationTableGenerator.new(primes,primes)
  table=mult_gen.get_table
  mult_gen.pretty_print_table

end
