const axios = require('axios')
const http = require('http')
const express = require('express')
const app = express()
const port = 3000
const fs = require('fs')
const options = {
  hostname: 'localhost',
  port: 5000,
  path: '/fetch',
  method: 'GET'
}

app.use(express.json())
let abc;
let jsn = http.request(options, res => {
  console.log()

  res.on('data', d => {
   abc= d;
	  process.stdout.write(d)
  })
})

jsn.on('error', error => {
  console.error(error)
})

app.get('/myapp/', function(req, res){
	axios.get("http://localhost:5000/fetch").then(xyz => { res.json(xyz.data) } )

});
jsn.end()


app.listen(port, () => {
    console.log()
  });
