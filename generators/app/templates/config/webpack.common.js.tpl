const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = function(config) {
  return {
    entry: config.indexJs,
    output: {
      path: config.dist,
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
        template: config.indexHtml
      })
    ]
  };
};
