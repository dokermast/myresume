
var http = require ('http').Server();
var io = require('socket.io')(http);
var Redis = require('ioredis');

var redis = new Redis();
redis.subscribe('new-action');
redis.on('message', function(channel, message){
    console.log('Message received: ' + message);
    console.log('Channel: ' + channel );
    message = JSON.parse(message);
    io.emit(chennel + ':' +  message.event, message.data);
});

http.listen(3000, function() {
    console.log('Listening on port: 3000');
});
