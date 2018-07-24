const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'pley',
});

const searchInfo = (name, callback) => {
  connection.query(`SELECT * FROM restaurants WHERE name = "${name}"`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });
};

const searchHours = (name, callback) => {
  connection.query(`SELECT * FROM hours WHERE id = (SELECT id FROM restaurants WHERE name = "${name}")`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });  
}

module.exports.searchInfo = searchInfo;
module.exports.searchHours = searchHours;