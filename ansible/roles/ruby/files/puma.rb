environment 'production'
daemonize true
pidfile '/home/isucon/webapp/ruby/tmp/puma.pid'
state_path '/home/isucon/webapp/ruby/tmp/puma.state'
stdout_redirect '/home/isucon/webapp/ruby/logs/stdout', '/home/isucon/webapp/ruby/logs/stderr'
threads 16, 16
bind 'unix:///home/isucon/ruby/tmp/puma.sock'
workers 3
worker_timeout 60
preload_app!
