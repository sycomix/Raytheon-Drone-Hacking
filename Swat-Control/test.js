'use strict';

var RollingSpider = require('rolling-spider');
var temporal = require('temporal');
var rollingSpider = new RollingSpider();

rollingSpider.connect(function() {
  rollingSpider.setup(function() {
    rollingSpider.flatTrim();
    rollingSpider.startPing();
    rollingSpider.flatTrim();

    temporal.queue([
      {
        delay: 5000,
        task: function () {
          rollingSpider.takeOff();
          rollingSpider.flatTrim();
        }
      },
      {
        delay: 3000,
        task: function () {
          rollingSpider.forward({steps: 12});
        }
      },
      {
        delay: 5000,
        task: function () {
          rollingSpider.land();
        }
      },
      {
        delay: 5000,
        task: function () {
          temporal.clear();
          process.exit(0);
        }
      }
    ]);
  });
});

