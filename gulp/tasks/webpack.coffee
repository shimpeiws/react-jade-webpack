gulp    = require 'gulp'
coffee  = require 'gulp-coffee'
plumber = require 'gulp-plumber'
webpack = require 'gulp-webpack'
config  = require './../config'

# compile to js using webpack
gulp.task 'webpack', ->
  gulp.src config.webpack.entry
    .pipe plumber()
    .pipe webpack config.webpack
    .pipe gulp.dest config.dest.js
