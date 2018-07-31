'use strict';
const Generator = require('yeoman-generator');
const yosay = require('yosay');
const chalk = require('chalk');

const files = require('./files');

module.exports = class extends Generator {
  initializing() {
    this.log(yosay(`Welcome to the 🔩 ${chalk.red('generator-creact-app')} generator!`));
    this.log();
    this.log('Made with ❤️ by Helder Burato Berto');
    this.log();
  }

  prompting() {
    const done = this.async();

    const prompts = [
      {
        type: 'input',
        name: 'github',
        message: `What's is your GitHub profile?`,
        default: 'helderburato',
      },
      {
        type: 'input',
        name: 'project',
        message: `What's your project name?`,
        default: 'reactjs-app',
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

    const { project, description, github } = this.props;

    const templates = {
      project,
      description,
      github,
      year: new Date().getFullYear()
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

    this.installDependencies();
  }

  end() {
    this.log();
    this.log(yosay('🚀 Congratulations! Your app has been generated.'));
    this.log();
  }
}
