require "redis"
require "sinatra"

set :bind, '0.0.0.0'

$redis = Redis.new(:host => "dans-redis-db")
$ip = ENV["MY_POD_IP"]

get "/hey" do
	"Yes?"
end

get "/" do
	@pods = $redis.keys("pod_*")
	load_keys = $redis.keys("load_*")
	@stats = {}
	load_keys.each do |key|
		@stats[key] = $redis.get(key)
	end
	erb :index
end

get "/applyload" do
	$redis.incr("load_#{$ip}")
	$redis.expire("load_#{$ip}", 10)
end

get "/healthz" do
	$redis.set("pod_#{$ip}", DateTime.now, ex: 10)
end

get "/keys" do
	"#{$redis.keys("*")}"
end

