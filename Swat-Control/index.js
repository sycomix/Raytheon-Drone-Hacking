var RollingSpider = require("rolling-spider");
var rollingSpider = new RollingSpider();

// NEW CODE BELOW HERE

rollingSpider.connect(function() {
    rollingSpider.setup(function() {
        rollingSpider.startPing();
    });
});