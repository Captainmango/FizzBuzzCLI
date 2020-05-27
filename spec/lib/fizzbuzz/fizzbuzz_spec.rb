require 'spec_helper'
require_relative '../../lib/fizzbuzz/fizzbuzz'

describe FizzBuzz do
    let(:fizzbuzz) {FizzBuzz.new}
        let(:new_array) {fizzbuzz.make_fizzbuzz}
            it "generates a list of numbers" do
                fizzbuzz.rand_list_of_nums
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