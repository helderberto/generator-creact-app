const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = function(config) {
  const devMode = config.env !== 'prod';

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
          test: /\.(png|jpe?g|gif|svg)$/,
          use: [{
            loader: 'file-loader?limit=100000',
            options: {
              name: devMode ? '[name].[ext]' : '[name].[ext]?[hash]'
            }
          }]
        },
        {
          test: /\.(sa|sc|c)ss$/,
          use: [
            devMode ? 'style-loader' : MiniCssExtractPlugin.loader,
            'css-loader',
            'sass-loader',
          ],
        },
      ]
    },
    plugins: [
      new HtmlWebpackPlugin({
        template: config.indexHtml,
        favicon: `${config.src}/assets/images/favicon.ico`
      }),
      new MiniCssExtractPlugin({
        filename: devMode ? 'bundle.css' : 'bundle.[hash].css',
      }),
    ]
  };
};
