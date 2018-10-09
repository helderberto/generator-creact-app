const assert = require('yeoman-assert');
const helpers = require('yeoman-test');
const path = require('path');

const APP_PATH = path.join(__dirname, '..', 'generators', 'app');
const FILES = require(path.join(APP_PATH, 'files'));

describe('Generator ReactJS App Tests', () => {
  beforeAll((done) => {
    helpers
      .run(APP_PATH)
      .withPrompts({
        author: 'Helder Burato Berto',
        email: 'helder.burato@gmail.com',
        github: 'hrberto',
        project: 'react-app',
        description: 'An new ReactJS App.',
      })
      .on('end', done);
  });

  it('should create new react app', (done) => {
    FILES.forEach((file) => {
      assert.file(file.destination);
    });
    done();
  });
});
