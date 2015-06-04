if !#{ENV['CONTAINER_NOTIFY_URL']}.is_empty?
	puts %x( printenv \n )
	%x( curl --data "{"ready":true}" #{ENV['CONTAINER_NOTIFY_URL']} )
end
