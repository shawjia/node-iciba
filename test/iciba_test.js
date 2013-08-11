'use strict';

var
  Iciba  = require('../lib/iciba.js'),
  APIKEY = 'C231706B1BCAAE8D3CEB0E70B5AF138A',
  iciba  = new Iciba(APIKEY);


/*
  ======== A Handy Little Nodeunit Reference ========
  https://github.com/caolan/nodeunit

  Test methods:
    test.expect(numAssertions)
    test.done()
  Test assertions:
    test.ok(value, [message])
    test.equal(actual, expected, [message])
    test.notEqual(actual, expected, [message])
    test.deepEqual(actual, expected, [message])
    test.notDeepEqual(actual, expected, [message])
    test.strictEqual(actual, expected, [message])
    test.notStrictEqual(actual, expected, [message])
    test.throws(block, [error], [message])
    test.doesNotThrow(block, [error], [message])
    test.ifError(value)
*/

exports['awesome'] = {
  setUp: function(done) {
    // setup here
    done();
  },
  'no args': function(test) {
    test.expect(2);
    iciba.get('apple', function(err, res){
      test.equal(err, null, 'should be no error');
      test.notEqual(res, null, 'should return sth.');
      test.done();
    });
  },
};
