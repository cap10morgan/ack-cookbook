case platform
when "debian","ubuntu"
  default[:ack][:symlink_as] = '/usr/local/bin/ack'
end

default[:ack][:extensions] = {
  'js'   => %w{json coffee ejs},
  'ruby' => %w{erb rake feature},
  'html' => %w{eco jade jsp slim vm txt},
  'css'  => %w{styl sass scss}
}
