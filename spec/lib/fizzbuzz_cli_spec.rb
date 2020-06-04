require 'spec_helper'
require_relative '../../lib/fizzbuzz_cli.rb'

describe FizzBuzzCLI do
    let(:cli) {FizzBuzzCLI.new}
        let(:input) {"this is a test"}
        context "starting the app" do
            it "starts a command line interface" do
                expect(cli.start_up).to eq("Welcome to The FizzBuzz Calculator!!!")
            end
        end

        context "when using the app" do
            it "accepts user input" do
                cli.start_up
                expect(cli).to receive(:get_input).with("this is a test")
            end

            it "outputs an array of numbers" do
                expect(cli.make_fizzbuzz).to include("fizz")
            end

            it "does not accept letters" do
                
            end
        end


end
