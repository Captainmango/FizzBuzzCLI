desc "Start the app"
task :start do
    Dir.chdir("./bin") {ruby "fizzbuzzStart.rb"}
end

desc "get the environemt loaded"
task :environment do
    require_relative './cfg/environment'
end

desc "Start a console"
task :console => :environment do
    Pry.start
end
