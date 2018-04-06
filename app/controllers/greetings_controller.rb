class GreetingsController < ApplicationController
  
  caches_page :hello

  def hello
  	@message = "I'm a Rails 4.0.0 Application"

  	ball = Ball.create(:dimples => Random.rand(1000))
  	@balls = "Created a golf ball with #{ball.dimples} dimples!"

  	@rails_stack_path = ENV['RAILS_STACK_PATH']

	@environment_string = environment_as_a_string
  end

  def show
  	@ball = Ball.first  	

  	@rails_stack_path = ENV['RAILS_STACK_PATH']

	@environment_string = environment_as_a_string
  end

  private

  def environment_as_a_string
	  return ENV.map do |key, value|
		  "#{key} = #{value}"
	  end.join("\n")
  end
end
