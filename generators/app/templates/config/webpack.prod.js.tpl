const APP_CONFIG = require('./build.config');
const merge = require('webpack-merge');

const common = require('./webpack.common');

module.exports = merge.smart(common, {
  mode: 'production',
  devtool: 'eval',
  output: {
    filename: APP_CONFIG.bundleProd
  }
});
