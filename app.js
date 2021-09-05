const express = require("express");
const Controller = require("./controllers/controller");
const app = express()
const port = process.env.PORT || 3000;

app.set("view engine", "ejs")
app.use( express.static( "public" ));
app.use(express.urlencoded({extended : true}))

app.get("/", (req, res) =>  res.render("home", {columns : null, query : '', error : ''}))
app.post("/", Controller.readData)

app.listen(port, () => {
  console.log('Aplikasi berjalan')
})