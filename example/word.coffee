
Iciba  = require '../lib/iciba'

APIKEY = 'C231706B1BCAAE8D3CEB0E70B5AF138A'
iciba  = new Iciba APIKEY

word  = 'apple'
iciba.get word, (err, res) ->
  return console.warn err if err
  console.dir res
