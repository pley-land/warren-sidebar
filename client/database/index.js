const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'pley',
});

// combine into one function with separate query parameters?

const searchInfo = (name, callback) => {
  connection.query(`SELECT * FROM restaurants WHERE name = "${name}"`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });
};

const searchData = (name, db, callback) => {
  connection.query(`SELECT * FROM ${db} WHERE id IN (SELECT id FROM restaurants WHERE name = "${name}")`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });
};

const searchRcmd(price, rating, lat, lng, callback) => {
  // still need to add lat and lng conditions
  connection.query(`SELECT name FROM restaurants WHERE (price = ${price} AND average_rating = ${rating})`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });
}

// helper functions here?

/*Deprecated in favor of searchData


const searchMore = (name, callback) => {
  connection.query(`SELECT * FROM info WHERE id IN (SELECT id FROM restaurants WHERE name = "${name}")`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });
};


const searchHours = (name, callback) => {
  connection.query(`SELECT * FROM hours WHERE id IN (SELECT id FROM restaurants WHERE name = "${name}")`, (err, data) => {
    if (err) {
      callback(err);
    }
    callback(err, data);
    return err || data;
  });  
}
*/
module.exports.searchInfo = searchInfo;
module.exports.searchData = searchData;
module.exports.searchRcmd = searchRcmd;
// module.exports.searchHours = searchHours;

// module.exports.searchMore = searchMore;