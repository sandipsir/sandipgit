#!/bin/bash
tee /root/userapi/test.js<<EOF
const http = require('http')
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

EOF
