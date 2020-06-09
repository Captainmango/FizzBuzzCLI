require 'pry'

class FizzBuzzCLI
    attr_accessor :input
    include FizzBuzz

    def initialize
        @input = ""
    end

    def start_up
        puts "Welcome to The FizzBuzz Calculator!!!"
        sleep(2)
        get_input
    end

    def get_input
        puts "enter a command or type help"
        store_input
        menu
    end

    def store_input(input = gets.chomp.downcase)
        @input = input
    end

    def menu
        case @input
        when "fizzbuzz"
            puts ran_fizzbuzz_array
        when "help"
            puts "this is where the list of available options will go"
        when "calculator"
            puts "starting up the calculator"
            sleep(2)
        else
            puts "not a valid option"
            get_input
        end
        go_again
    end

    def go_again
        puts "Do you want to do something else? (Y/N)"
        store_input
        case @input
        when "y"
            get_input
        when "n"
            puts "Thanks for using the calculator. Shutting down."
            
        else
            go_again
        end
        
    end

    def ran_fizzbuzz_array
        return make_fizzbuzz()
    end

end