const Generator = require('yeoman-generator');

const files = require('./files');

module.exports = class extends Generator {
  initializing() {
    this.log('🔩 ReactJS App Generator');
    this.log('Made with ❤️ by Helder Burato Berto');
    this.log();
  }

  prompting() {
    const done = this.async();

    const prompts = [
      {
        type: 'input',
        name: 'github',
        message: `What's your GitHub profile?`,
        default: 'helderburato'
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
    this.log('💫 Generating App...');
    this.log();

    const { project, description } = this.props;

    const templates = {
      project,
      description,
      year: new Date().getFullYear()
    };

    files.map((file) => {
      this.fs.copyTpl(
        this.templatePath(file.template),
        this.templatePath(file.destination),
        templates
      );
    });

    this.fs.extendJSON(this.destinationPath('./package.json'));
  }

  install() {
    this.log();
    this.log('📦 Installing dependencies...');
    this.log();

    this.npmInstall();
  }

  end() {
    this.log();
    this.log('🌟 Congratulations! Your app has been generated.');
    this.log(`🚀 Let's code a nice things.`);
    this.log();
  }
}
