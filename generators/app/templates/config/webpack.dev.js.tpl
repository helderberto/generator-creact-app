const webpack = require('webpack');
const merge = require('webpack-merge');
const APP_CONFIG = require('./build.config');

const common = require('./webpack.common');

module.exports = merge.smart(common, {
  mode: 'development',
  devtool: 'inline-source-map',
  output: {
    filename: APP_CONFIG.bundleDev,
    publicPath: APP_CONFIG.publicPath,
  },
  devServer: {
    contentBase: APP_CONFIG.dist,
    open: true,
    inline: true,
  },
  module: {
    rules: [
      {
        test: /\.js?$/,
        include: /src/,
        exclude: /node_modules/,
        use: [
          { loader: 'babel-loader' },
          { loader: 'eslint-loader' }
        ],
      }
    ]
  }
});
