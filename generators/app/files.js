module.exports = [
  { template: 'config/build.config.js.template', destination: 'config/build.config.js' },
  { template: 'config/webpack.common.js.template', destination: 'config/webpack.common.js' },
  { template: 'config/webpack.dev.js.template', destination: 'config/webpack.dev.js' },
  { template: 'config/webpack.prod.js.template', destination: 'config/webpack.prod.js' },
  { template: 'src/App.js.template', destination: 'src/App.js' },
  { template: 'src/index.html.template', destination: 'src/index.html' },
  { template: 'src/index.js.template', destination: 'src/index.js' },
  { template: 'editorconfig.template', destination: '.editorconfig' },
  { template: 'eslintrc.template', destination: '.eslintrc' },
  { template: 'gitattributes.template', destination: '.gitattributes' },
  { template: 'gitignore.template', destination: '.gitignore' },
  { template: 'npmrc.template', destination: '.npmrc' },
  { template: 'CONTRIBUTING.md.template', destination: 'CONTRIBUTING.md' },
  { template: 'LICENSE.template', destination: 'LICENSE' },
  { template: 'package.json.template', destination: 'package.json' },
  { template: 'README.md.template', destination: 'README.md' },
  { template: 'webpack.config.js.template', destination: 'webpack.config.js' }
];
