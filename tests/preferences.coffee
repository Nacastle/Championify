path = require 'path'
should = require('chai').should()

preferences = null

describe 'lib/preferences.coffee', ->
  before ->
    preferences = require '../lib/preferences'

  describe 'directory', ->
    it 'should return the preferences directory depending on the platform', ->
      if process.platform == 'darwin'
        pref_dir = path.join(process.env.HOME, 'Library/Application Support/Championify/')
      else
        pref_dir = path.join(process.env.APPDATA, 'Championify')
      preferences.directory().should.equal(pref_dir)
