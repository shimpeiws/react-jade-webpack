gulp       = require 'gulp'
coffee     = require 'gulp-coffee'
requireDir = require 'require-dir'
path       = require 'path'

requireDir './gulp/tasks', { recurse: true }

gulp.task 'watch', ->
  gulp.watch [config.js.src], ['webpack']

gulp.task 'default', ->
  gulp.run ['webpack']
