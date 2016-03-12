namespace :test do
  task :work => :environment do
    loop do
  	  puts "I'm working; and TEST env var is: #{ENV['TEST']}"
  	  sleep(5)
  	end
  end
end
