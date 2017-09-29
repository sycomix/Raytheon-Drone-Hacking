var express = require('express');
var router = express.Router();
var RollingSpider = require("rolling-spider");
var rollingSpider = new RollingSpider();

// NEW CODE BELOW HERE
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

// NEW CODE BELOW HERE
router.post('/go', function(req, res, next) {
    rollingSpider.connect(function() {
        rollingSpider.setup(function() {
            rollingSpider.startPing();
            rollingSpider.takeOff();
            rollingSpider.forward({steps: 12});
        });
    });
});
module.exports = router;
