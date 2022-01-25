#!/bin/bash
tee /root/test.js<<EOF
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

const req = http.request(options, res => {
  console.log()

  res.on('data', d => {
    process.stdout.write(d)
  })
})

req.on('error', error => {
  console.error(error)
})

req.end()

app.listen(port, () => {
    console.log(`app listening at http://localhost:${port}`)
  });
EOF
