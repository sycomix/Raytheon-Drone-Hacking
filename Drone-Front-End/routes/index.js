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
            res.end();
        });
    });
});
router.post('/forward', function (req, res, next) {
    rollingSpider.forward({steps: 12});
    res.send('All Good');
    res.end();
});

router.post('/backward', function (req, res, next) {
    rollingSpider.backward({steps: 12});
    res.send('All Good');
    res.end();
});

router.post('/land', function (req, res, next) {
    rollingSpider.land();
    res.send('All Good');
    res.end();
});

router.post('/backflip', function (req, res, next) {
    rollingSpider.backFlip();
    res.send('All Good');
    res.end();
});

router.post('/emergency', function (req, res, next) {
    rollingSpider.emergancy();
    res.send('All Good');
    res.end();
});

router.post('/right', function (req, res, next) {
    rollingSpider.right({steps: 12})
    res.send('All Good');
    res.end();
});

router.post('/left', function (req, res, next) {
    rollingSpider.left({steps: 12})
    res.send('All Good');
    res.end();
});


router.get('/strength', function (req, res, next) {
    rollingSpider.signalStrength(function (strength) {
        res.send(strength);
    })
});
module.exports = router;
