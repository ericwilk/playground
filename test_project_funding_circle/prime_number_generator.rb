class PrimeNumberGenerator

  def initialize(max_primes)
    @max_primes = max_primes
    @all_primes = Array.new
  end

  # This assumes you have tessted previous numbers.
  # This only goes down the list of primes we have so far.
  def prime?(x)
    ! @all_primes.any? {|y| x%y==0}
  end

  def generate_primes
    @all_primes << 2
    # Generate our list of primes
    while @all_primes.length < @max_primes do
      x=3 unless x
      @all_primes << x if prime?(x)
      x=x+1
    end
  end

  def get_primes
    @all_primes
  end

end
