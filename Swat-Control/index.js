'use strict';

var RollingSpider = require('rolling-spider');
var temporal = require('temporal');
var rollingSpider = new RollingSpider();

rollingSpider.connect(function() {
  rollingSpider.setup(function() {
    rollingSpider.startPing();
    rollingSpider.takeOff();
    rollingSpider.up({"speed":100, "steps":20})
    //rollingSpider.land();
  });
});