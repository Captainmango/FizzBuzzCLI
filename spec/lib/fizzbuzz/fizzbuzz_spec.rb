require 'spec_helper'
require_relative '../../../lib/fizzbuzz/fizzbuzz.rb'
require_relative '../../../lib/fizzbuzz/fizzbuzz.rb'

describe FizzBuzz do
    let(:fizzbuzz_cli) {FizzBuzzCLI.new}
        let(:new_array) {fizzbuzz_cli.make_fizzbuzz}
            it "generates a list of numbers" do
                fizzbuzz_cli.rand_list_of_nums
            end

            it "contains fizz elements" do
                expect(new_array.include?("fizz")).to eq(true)
            end

            it "contains buzz elements" do
                expect(new_array.include?("buzz")).to eq(true)
            end

            it "contains fizzbuzz elements" do
                expect(new_array.include?("fizzbuzz")).to eq(true)
            end

end