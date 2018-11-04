{
  "name": "<%= project %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "author": "<%= author %> <<%= email %>> (https://helderberto.com/)",
  "homepage": "https://github.com/<%= github %>/<%= project %>#readme",
  "main": "src/index.js",
  "scripts": {
    "build": "webpack --env=prod",
    "start": "webpack-dev-server --env=dev --hot",
    "coverage": "jest --colors --coverage",
    "coveralls": "yarn run coverage && cat ./coverage/lcov.info | coveralls",
    "jest": "jest --colors --verbose",
    "lint": "eslint src",
    "test": "yarn run lint && yarn jest"
  },
  "husky": {
    "hooks": {
      "pre-commit": "yarn test",
      "pre-push": "yarn test"
    }
  },
  "files": [
    "src"
  ],
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
    "babel-jest": "23.4.2",
    "babel-loader": "7.1.5",
    "babel-plugin-transform-object-rest-spread": "6.26.0",
    "babel-plugin-transform-runtime": "6.23.0",
    "babel-preset-env": "1.7.0",
    "babel-preset-react": "6.24.1",
    "babel-preset-stage-0": "6.24.1",
    "coveralls": "3.0.2",
    "css-loader": "1.0.1",
    "eslint": "^4.19.1",
    "eslint-config-airbnb": "17.0.0",
    "eslint-loader": "2.1.0",
    "eslint-plugin-import": "^2.12.0",
    "eslint-plugin-jsx-a11y": "^6.0.3",
    "eslint-plugin-react": "^7.9.1",
    "file-loader": "2.0.0",
    "html-loader": "0.5.5",
    "html-webpack-plugin": "3.2.0",
    "husky": "1.0.0-rc.13",
    "jest": "23.5.0",
    "mini-css-extract-plugin": "0.4.4",
    "node-sass": "4.10.0",
    "optimize-css-assets-webpack-plugin": "5.0.1",
    "react-hot-loader": "4.3.3",
    "react-test-renderer": "16.4.2",
    "sass-loader": "7.1.0",
    "style-loader": "0.23.1",
    "uglifyjs-webpack-plugin": "2.0.1",
    "webpack": "4.16.1",
    "webpack-cli": "3.1.0",
    "webpack-dev-server": "3.1.4",
    "webpack-merge": "4.1.3"
  },
  "dependencies": {
    "prop-types": "15.6.2",
    "react": "16.4.1",
    "react-dom": "16.4.1",
    "react-helmet": "5.2.0"
  },
  "license": "MIT"
}
