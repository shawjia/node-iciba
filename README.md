# iciba [![Build Status](https://secure.travis-ci.org/shawjia/node-iciba.png?branch=master)](http://travis-ci.org/shawjia/node-iciba)

ICIBA SDK

## Getting Started
[ICIBA API DOC](http://web.iciba.com/partner/api01.shtml)

Install the module with: `npm install iciba`


```coffeescript
Iciba  = require '../lib/iciba'

APIKEY = 'C231706B1BCAAE8D3CEB0E70B5AF138A'
iciba  = new Iciba APIKEY

word  = 'apple'
iciba.get word, (err, res) ->
  return console.warn err if err
  console.dir res
```

The return object would like this:
```
{
    word: 'apple',
    spells: [{
        text: '[\'æpl]',
        mp3: 'http://res.iciba.com/resource/amp3/oxford/0/44/29/44297283b5e4b5b0a991213897f0b14a.mp3'
    }, {
        text: '[ˈæpəl]',
        mp3: 'http://res.iciba.com/resource/amp3/1/0/1f/38/1f3870be274f6c49b3e31a0c6728957f.mp3'
    }],
    examples: [{
        en: 'I have an Apple iMac, and an Apple i Phone with around 122 apps.',
        cn: '我有一台苹果公司(Apple)的iMac,还有一台iPhone,上面装了大约122个应用软件。'
    }, {
        en: 'Apple\'s continued glory eats away at me like a maggot at my core.',
        cn: '苹果(Apple)一直以来的荣耀，就像蛆虫一样啃噬着我的心。'
    }, {
        en: 'Management Style: At Apple, Jobs is a mercurial micromanager -- some say nanomanager.',
        cn: '管理风格：在APPLE公司，乔伯斯是一位机智善变的微软经理。'
    }, {
        en: 'Normally, when you plug Macs together, they communicate by using a built-in scheme called Apple Talk.',
        cn: '当你将Mac连在一起时，它们常常是通过所谓的内部协议Apple-Talk来进行通讯的。'
    }, {
        en: 'Apple positioned it as the machine for the Internet, where compatibility questions are no big deal.',
        cn: 'APPLE电脑定位于因特网，因为在因特网上兼容性并不是一个较大的难题。'
    }],
    translations: [{
        type: 'n.',
        desc: '苹果，苹果树；苹果属植物的果实（如野生酸苹果、沙果）；[美国口语]棒球；苹果公司，原称苹果电脑公司；'
    }]
}
```

## Documentation
_(Coming soon)_

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
_(Nothing yet)_

## License
Copyright (c) 2013 shawjia
Licensed under the MIT license.
