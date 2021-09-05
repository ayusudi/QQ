const { Pool } = require("pg")

const pool = new Pool({
  database : "QQ",
  host : "localhost",
  connectionTimeoutMillis : 2000,
  idleTimeoutMillis : 3000, 
  max : 100,
  user : "ayusudi",
  password : "postgres"
})

// const pool = new Pool({
//   connectionString : process.env.DATABASE_URL,
//   ssl: {
//     require: true,
//     rejectUnauthorized: false
//   }
// })

module.exports = pool;