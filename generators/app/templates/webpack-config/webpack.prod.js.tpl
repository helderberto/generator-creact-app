const merge = require('webpack-merge');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');

module.exports = function(config) {
  const common = require('./webpack.common')(config);

  return merge.smart(common, {
    mode: 'production',
    devtool: false,
    output: {
      filename: config.bundleProd
    },
    optimization: {
      minimizer: [
        new UglifyJsPlugin({
          cache: true,
          parallel: true,
          sourceMap: true
        }),
        new OptimizeCSSAssetsPlugin()
      ]
    },
  });
};
