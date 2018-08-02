{
  "name": "<%= project %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "author": "<%= author %> <<%= email %>> (https://helderburato.com.br/)",
  "homepage": "https://github.com/<%= github %>/<%= project %>#readme",
  "main": "src/index.js",
  "files": ["src"],
  "scripts": {
    "build": "webpack --env=prod",
    "start": "webpack-dev-server --env=dev --hot",
    "lint": "eslint src",
    "precommit": "yarn run lint",
    "prepush": "yarn run lint"
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
    "url": "git+https://github.com/<%= github %>/<%= project %>.git"
  },
  "bugs": {
    "url": "https://github.com/<%= github %>/<%= project %>/issues"
  },
  "devDependencies": {
    "babel-core": "6.26.3",
    "babel-eslint": "8.2.6",
    "babel-loader": "7.1.5",
    "babel-preset-env": "1.7.0",
    "babel-preset-react": "6.24.1",
    "babel-preset-stage-0": "6.24.1",
    "eslint": "^4.19.1",
    "eslint-config-airbnb": "17.0.0",
    "eslint-loader": "2.1.0",
    "eslint-plugin-import": "^2.12.0",
    "eslint-plugin-jsx-a11y": "^6.0.3",
    "eslint-plugin-react": "^7.9.1",
    "html-loader": "0.5.5",
    "html-webpack-plugin": "3.2.0",
    "husky": "0.14.3",
    "react-hot-loader": "4.3.3",
    "webpack": "4.16.1",
    "webpack-cli": "3.1.0",
    "webpack-dev-server": "3.1.4",
    "webpack-merge": "4.1.3"
  },
  "dependencies": {
    "prop-types": "15.6.2",
    "react": "16.4.1",
    "react-dom": "16.4.1"
  },
  "license": "MIT"
}
