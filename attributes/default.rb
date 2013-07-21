default[:ack][:symlink_as] = '/usr/local/bin/ack'
default[:ack][:download] = "http://beyondgrep.com/ack-2.04-single-file"

default[:ack][:extensions] = {
  'js'   => %w{json coffee ejs},
  'ruby' => %w{erb rake feature rabl ru},
  'html' => %w{eco jade jsp slim haml vm txt},
  'css'  => %w{styl sass scss less}
}
