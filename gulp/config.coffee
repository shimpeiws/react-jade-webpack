gulp    = require 'gulp'
webpack = require 'webpack'
path    = require 'path'

publicPath = './public'
srcPath    = './src'

files =
  js: srcPath + '/js/**/*.js'

dest =
  js: publicPath + '/js'

module.exports =

  # 入力
  file: files

  # 出力先
  dest: dest

  # webpackのビルド
  webpack:
    entry: srcPath + '/js/main.js'
    output:
      filename: 'app.js'
    module:
      loaders: [
        { test: /\.json$/, loader: path.join(__dirname, '../node_modules/json-loader') },
        { test: /\.jade$/, loader: path.join(__dirname, '../node_modules/react-jade-loader') },
        { test: /\.js$/, loader: path.join(__dirname, '../node_modules/babel-loader') }
      ]
    resolve:
      extensions: ['', '.js', '.jade']
      root: [path.join(__dirname)]
      modulesDirectories: ['node_modules']
    plugins: [
      new webpack.ProvidePlugin
        $: 'jquery'
        _: 'lodash'
        React: 'react'
    ]
