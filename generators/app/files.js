module.exports = [
  {
    template: 'config/webpack.common.js.tpl',
    destination: 'config/webpack.common.js',
  },
  {
    template: 'config/webpack.dev.js.tpl',
    destination: 'config/webpack.dev.js',
  },
  {
    template: 'config/webpack.prod.js.tpl',
    destination: 'config/webpack.prod.js',
  },
  {
    template: 'src/App.js.tpl',
    destination: 'src/App.js',
  },
  {
    template: 'src/index.html.tpl',
    destination: 'src/index.html',
  },
  {
    template: 'src/index.js.tpl',
    destination: 'src/index.js',
  },
  {
    template: 'editorconfig.tpl',
    destination: '.editorconfig',
  },
  {
    template: 'eslintrc.tpl',
    destination: '.eslintrc',
  },
  {
    template: 'gitattributes.tpl',
    destination: '.gitattributes',
  },
  {
    template: 'gitignore.tpl',
    destination: '.gitignore',
  },
  {
    template: 'npmrc.tpl',
    destination: '.npmrc',
  },
  {
    template: 'CONTRIBUTING.md.tpl',
    destination: 'CONTRIBUTING.md',
  },
  {
    template: 'LICENSE.tpl',
    destination: 'LICENSE',
  },
  {
    template: 'package.json.tpl',
    destination: 'package.json',
  },
  {
    template: 'README.md.tpl',
    destination: 'README.md',
  },
  {
    template: 'webpack.config.js.tpl',
    destination: 'webpack.config.js',
  },
];
