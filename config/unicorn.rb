# (Ref.: https://devcenter.heroku.com/articles/rails-unicorn#config
# https://github.com/heroku/ruby-rails-unicorn-sample/blob/master/config/unicorn.rb)

worker_processes Integer(ENV['WEB_CONCURRENCY'] || 3)
timeout Integer(ENV['WEB_TIMEOUT'] || 15)
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) &&
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing.
    Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) &&
   ActiveRecord::Base.establish_connection
end