# ledman - A LED manager ;)
Extremely simple project to control a LED connected to an Arduino via web page

## Prerequisites
- Configure serial port in [app.rb](https://github.com/favrik/ledman/blob/master/app.rb#L39)
- On linux, you have to add the user that runs the web server to the `dialout` group. Instructions may vary per distro (here's for [Ubuntu](http://askubuntu.com/questions/58119/changing-permissions-on-serial-port)).

## How to run

### Web
1. Git clone this repository
2. Change to the project direcotry (e.g. `cd ledman`)
3. `bundle install`
4. `bundle exec rackup`

### Arduino
The sketch is inside the `arduino` directory. By default it uses pin 9.  Just make the necessary adjustments and upload it. Here's an example diagram using pin 13: <img src="http://www.ladyada.net/images/arduino/led13bb.jpg" /> 

## Roadmap
- [x] Initial commit
- [ ] Extract serial port to be configurable
- [ ] Add simple rest API
- [ ] Add simple mobile UI with AJAX like features

## Contributing
Pull requests welcome!
