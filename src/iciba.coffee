
request       = require 'request'
{parseString} = require 'xml2js'
pkg           = require '../package.json'


class Iciba
  constructor: (@key) ->
    @version = pkg.version

Iciba::get = (word, fn) ->
  url = "http://dict-co.iciba.com/api/dictionary.php?w=#{word}&key=#{@key}"
  request.get url, (err, res, xml) ->
    return fn 'API request fail' if err

    parseString xml, (err, res) ->
      return fn 'XML parse fail' if err

      {dict} = res

      result =
        word        : word
        spells      : []
        examples    : []
        translations: []

      # spells
      for spell, index in (dict?.ps or [])
        result.spells.push
          text: "[#{spell}]"
          mp3: dict.pron[index]

      # examples
      for example in (dict?.sent or [])
        result.examples.push
          en: example.orig[0].trim()
          cn: example.trans[0].trim()

      # translations
      for type, index in (dict?.pos or [])
        result.translations.push
          type: type
          desc: dict.acceptation[index].trim()

      fn null, result

module.exports = Iciba
