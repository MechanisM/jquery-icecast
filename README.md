Example usage: place web/json.xsl in icecast web direcory.

add jquery-icecast.js to your page and:

$(function(){
$('.mounts').icecast({server:"radio.example.com"});
});

options:
server
stationlogo



# jquery-icecast.js
jquery-icecast.js is a jQuery plugin that offers a simplistic way to show icecast simple stats on your website.

To start using, you to do three basic things:

### 1. Mark Up
    <ul class="mounts"></ul>

### 2. JavaScript
    $(function(){
    $('.mounts').icecast({server:"radio.example.com"});
    });

### 3. json.xsl
    place web/json.xsl into icecast web direcory.

### Options
    server
    stationlogo
    can be customized easily. implemented only basic needs.

### Credits
- Written by [Eugene MechanisM](http://mechanism.name)
- Released under [MIT License](http://www.opensource.org/licenses/mit-license.php)

