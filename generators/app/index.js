const Generator = require('yeoman-generator');
const yosay = require('yosay');
const chalk = require('chalk');

const files = require('./files');

module.exports = class extends Generator {
  initializing() {
    this.log(yosay(`Welcome to the \n🔩 ${chalk.red('generator-creact-app')} generator!`));
    this.log();
    this.log('Made with ❤️  by Helder Burato Berto');
    this.log();
  }

  prompting() {
    const done = this.async();

    const prompts = [
      {
        type: 'input',
        name: 'author',
        message: `Author's name?`,
        default: 'Helder Burato Berto',
      },
      {
        type: 'input',
        name: 'email',
        message: `Author's e-mail?`,
        default: 'helder.burato@gmail.com',
      },
      {
        type: 'input',
        name: 'github',
        message: `What's is your GitHub profile?`,
        default: 'hrberto',
      },
      {
        type: 'input',
        name: 'project',
        message: `What's your project name?`,
        default: 'react-app',
      },
      {
        type: 'input',
        name: 'description',
        message: `What's your project description?`,
        default: 'A simple ReactJS app.',
      },
    ];

    this.prompt(prompts).then((props) => {
      this.props = props;
      done();
    });
  }

  writing() {
    this.log();
    this.log('💫 Generating ReactJS App...');
    this.log();

    const {
      author,
      email,
      project,
      description,
      github,
    } = this.props;

    const templates = {
      author,
      email,
      project,
      description,
      github,
      year: new Date().getFullYear(),
    };

    files.forEach((file) => {
      this.fs.copyTpl(
        this.templatePath(file.template),
        this.destinationPath(file.destination),
        templates,
      );
    });
  }

  install() {
    this.log();
    this.log('📦 Installing dependencies...');
    this.log();

    // Install dependencies using Yarn (https://yarnpkg.com/en/)
    this.installDependencies({
      npm: false,
      bower: false,
      yarn: true,
    });
  }

  end() {
    this.log();
    this.log(yosay('🚀 Congratulations! \n Your app has been generated.'));
    this.log();
  }
};
