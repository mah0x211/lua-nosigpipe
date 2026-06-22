pcall(require, 'luacov')
local testcase = require('testcase')
local assert = require('assert')
local nosigpipe = require('nosigpipe')

function testcase.returns_boolean_on_load()
    assert.equal(type(nosigpipe), 'boolean')
end

function testcase.idempotent_on_re_require()
    local ok = nosigpipe
    package.loaded['nosigpipe'] = nil
    local again = require('nosigpipe')
    assert.equal(again, ok)
end
