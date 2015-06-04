puts %x( printenv \n )
%x( curl --data "{"ready":true}" #{ENV['CONTAINER_NOTIFY_URL']} )
