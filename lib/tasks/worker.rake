namespace :test do
  task :work => :environment do
    loop do
  	  puts "I'm working VERSION 2"
  	  sleep(5)
  	end
  end
end
