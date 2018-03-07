const http = require('http')
const https = require('https')
const bl = require('bl')

https.get(process.argv[2], function(response) {
    response.pipe(bl(function(err, data) {
        if (err) {
            return console.error(err)
        }
        data = data.toString()
        console.log(data.length)
        console.log(data)
    }))
})