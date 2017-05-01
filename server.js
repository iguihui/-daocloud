var request = require('request');
var PORT = 80;
//重启DaoCloud
app.get('/http/daocloud/restart/:appid/:token',function(req, res){
    var appid = req.params.appid;
    var token = req.params.token;
    request({
        method: 'POST',
        url:"https://openapi.daocloud.io/v1/apps/"+ appid +"/actions/restart",
        headers: {"Authorization": token}}, 
        function (error, response, body) {
            if(error)
                res.send(error);
            else
                res.send(body);
    });
 
app.listen(PORT);
