threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
bind "unix:///tmp/puma.sock"
# Logging
stdout_redirect "log/puma.stdout.log", "log/puma.stderr.log", true
# Set master PID and state locations
pidfile "/tmp/puma.pid"
state_path "/tmp/puma.state"
activate_control_app
plugin :tmp_restart
