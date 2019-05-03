var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      var queryString = 'select * from messages';
      db.query(queryString, (err, results) => {
        if (err) {
          throw err;
        } else {
          callback(null, results);
        }
      })
    }, // a function which produces all the messages
    post: function () {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

