const pool = require("../config/connection")

class Model {
  static validation(query){
    let arrayQuery = query.split(";")
    // console.log(arrayQuery, '<<<')
    if (arrayQuery.length > 1 && arrayQuery[1].length > 0) {
      return "Input one query select please!"
    }
    let checkStr = arrayQuery[0].slice(0, 7).toLowerCase()
    if(checkStr !== 'select '){
      return "Input one query select please!"
    }
  }
  static readDataWithQuery(query, cb){
    let errMessage = Model.validation(query)
    if (errMessage) {
      cb(errMessage)
      return;
    }
    pool.query(query, (err, res) => {
      if (err) {
        cb(err.message)
      } else {
        let data = res.rows 
        let columns 
        if (data.length) {
          columns = Object.keys(data[0])
        }
        if (!columns.length) {
          cb("Sepertinya query kamu salah, coba lagi yaa")
        } else {
          cb(null, {data, columns, error : ''})
        }
      }
    })
  }
}

module.exports = Model