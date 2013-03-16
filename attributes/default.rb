default[:ack][:symlink_as] = '/usr/local/bin/ack'
default[:ack][:download] = "http://betterthangrep.com/ack-standalone"

default[:ack][:extensions] = {
  'js'   => %w{json coffee ejs},
  'ruby' => %w{erb rake feature},
  'html' => %w{eco jade jsp slim vm txt},
  'css'  => %w{styl sass scss}
}
