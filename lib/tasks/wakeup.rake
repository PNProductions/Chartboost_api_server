# https://coderwall.com/p/u0x3nw
desc 'Pings PING_URL to keep a dyno alive'
task :wakeup do
  require 'net/http'
  if ENV['PING_URL']
    message = "Pinging #{ENV['PING_URL']}..."
    puts "\e[33m#{message}\e[0m"
    uri = URI(ENV['PING_URL'])
    response = Net::HTTP.get_response(uri)
    puts "\e[32mDone!\e[0m"
    puts "Response: #{response.body}"
  else
    raise 'PING_URL is not set!'
  end
end
