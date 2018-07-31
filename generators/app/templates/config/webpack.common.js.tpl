const HtmlWebpackPlugin = require('html-webpack-plugin');
const APP_CONFIG = require('./build.config');

module.exports = {
  entry: APP_CONFIG.indexJs,
  output: {
    path: APP_CONFIG.dist,
  },
  module: {
    rules: [
      {
        test: /\.js?$/,
        exclude: /node_modules/,
        include: /src/,
        loader: 'babel-loader',
        options: {
          presets: [
            "react",
            "env",
            "stage-0"
          ]
        }
      },
      {
        test: /\.html$/,
        use: 'html-loader'
      },
      {
        test: /\.(gif|jpg|png|svg|ico)$/,
        use: 'image-webpack-loader'
      }
    ]
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: APP_CONFIG.indexHtml
    })
  ]
};
