var express = require('express');
var router = express.Router();
var RollingSpider = require("rolling-spider");
var rollingSpider = new RollingSpider();
var temporal = require('temporal');

// NEW CODE BELOW HERE
router.get('/', function (req, res, next) {
    res.render('index', {title: 'Express'});
});

// NEW CODE BELOW HERE
router.post('/go', function (req, res, next) {
    console.log('starting hack');
    rollingSpider.connect(function () {
        rollingSpider.setup(function () {
            rollingSpider.flatTrim();
            rollingSpider.startPing();
            rollingSpider.flatTrim();
            rollingSpider.takeOff();
            res.status(200);
            res.send('Good!');
        });
    });
});
router.post('/forward', function (req, res, next) {
    rollingSpider.forward({steps: 12});
    res.send(200);

});

router.post('/backward', function (req, res, next) {
    rollingSpider.backward({steps: 12});
    res.send(200);
});

router.post('/land', function (req, res, next) {
    rollingSpider.land();
    res.send(200);
});

router.get('/strength', function (req, res, next) {
    rollingSpider.signalStrength(function (strength) {
        res.send(strength);
    })
});
module.exports = router;
