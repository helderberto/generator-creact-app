{
  "name": "<%= project %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "author": "Helder Burato Berto <helder.burato@gmail.com> (https://helderburato.com.br/)",
  "homepage": "https://github.com/helderburato/<%= project %>#readme",
  "main": "src/index.js",
  "files": ["src"],
  "scripts": {
    "build": "webpack --env=prod",
    "start": "webpack-dev-server --env=dev --hot",
    "lint": "eslint src"
  },
  "husky": {
    "hooks": {
      "pre-commit": "yarn run lint",
      "pre-push": "yarn run lint"
    }
  },
  "keywords": [
    "react",
    "reactjs",
    "lib",
    "component",
    "webpack",
    "web-app",
    "application",
    "app"
  ],
  "repository": {
    "type": "git",
    "url": "git+https://github.com/helderburato/<%= project %>.git"
  },
  "bugs": {
    "url": "https://github.com/helderburato/<%= project %>/issues"
  },
  "devDependencies": {},
  "dependencies": {},
  "license": "MIT"
}
