const server = require('./config/server')

server.listen(3000, () => {
  console.log('server running at port 3000')
})