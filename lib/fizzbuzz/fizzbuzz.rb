require'pry'

class FizzBuzz 
    def rand_list_of_nums
        random_num = rand(20..50)
        return [*1..random_num]
    end

    def check_fizzbuzz(n)
        if (n % 3 == 0 && n % 5 == 0) 
            return "fizzbuzz" 
        end
        if (n % 5 == 0) 
            return "buzz" 
        end
        if (n % 3 == 0) 
            return "fizz" 
        end
        return n.to_s
    end


    def make_fizzbuzz
        array = self.rand_list_of_nums
        array.map {|n| self.check_fizzbuzz(n)}
    end

end

fizzbuzz = FizzBuzz.new
fizzbuzz.make_fizzbuzz