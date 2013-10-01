restify = require 'restify'
r = require 'rethinkdb'

server = restify.createServer
	name: 'rest-server'

# enable parsing of form-data in requests
server.use restify.bodyParser()

server.get '/say/:msg', (req, res, next) ->
	res.send('you said ' + req.params.msg)

	next()

server.listen(5000)