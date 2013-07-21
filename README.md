Description
===========

Installs `ack(1)`, a utility for quickly performing recursive searches of directory
trees of text files (such as source code).

Visit http://beyondgrep.com/ for more information

On Debian and Ubuntu, it creates a `/usr/local/bin/ack` symlink so that you don't have to type 'ack-grep'.

Requirements
============

## Platforms:

* Debian
* Ubuntu
* Red Hat/CentOS/Fedora
* ArchLinux
* Gentoo

Attributes
==========

* `node[:ack][:symlink_as]` - What to symlink to /usr/bin/ack-grep. Debian and Ubuntu only. Default is `/usr/local/bin/ack`.
* `node[:ack][:extensions]` - Additional extensions for ack to respect. Default is

```ruby
{
  'js'   => %w{json coffee ejs},
  'ruby' => %w{erb rake feature rabl ru},
  'html' => %w{eco jade jsp slim haml vm txt},
  'css'  => %w{styl sass scss less}
}
```

Credits
=========

Some code was take from Wes Morgan ack-chef project.