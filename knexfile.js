module.exports = {
  client: 'mysql',
  connection: {
    host: '127.0.0.1',
    user: 'root',
    password: '',
    database: 'escolar'
  },
  migrations: {
    directory: __dirname + '/src/migrations'
  }
};
