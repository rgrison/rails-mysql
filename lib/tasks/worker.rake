namespace :test do
  task :work => :environment do
    loop do
	  File.open("/tmp/log_test", "a") { |file| file.puts("hello VERSION 2") }
  	  sleep(10)
  	end
  end
end
