require 'spec_helper'
require_relative '../../lib/fizzbuzz_cli.rb'
require 'stringio'

describe FizzBuzzCLI do
    let(:cli) {FizzBuzzCLI.new}
    let(:input) {"this is a test"}
        context "starting the app" do
            it "starts a command line interface" do
                expect(cli).to receive(:start_up)
                cli.start_up
            end
        end

        context "when using the app it" do
            it "accepts user input" do
                cli.store_input(input)
                expect(cli.input).to eq("this is a test")
            end

            it "outputs an array of numbers" do
                expect(cli.make_fizzbuzz).to include("fizz")
            end

        end


end
