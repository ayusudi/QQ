const Model = require("../models/model")

class Controller {
  static readData(req, res){
    let query = req.body.query
    Model.readDataWithQuery(query, ((err, result) => {
      if (err) {
        res.render('home', {error : err, query, columns : ''})
      } else {
        result.query = req.body.query
        res.render('home', result)
      }
    })
  )}
}

module.exports = Controller