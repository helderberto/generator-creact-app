{
  "parser": "babel-eslint",
  "extends": "airbnb",
  "env": {
    "browser": true
  },
  "parserOptions": {
    "ecmaVersion": 6,
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "rules": {
    "global-require": "off",
    "max-len": "off",
    "no-console": "off",
    "no-shadow": "off",
    "import/prefer-default-export": ["warn"],

    // Disallow or Enforce Dangling Commas
    // No trailing commas
    // http://eslint.org/docs/rules/comma-dangle
    "comma-dangle": ["error", "never"],

    // Require Function Expressions to have a Name
    // Disable rule. We’re not using function expressions anyway.
    // http://eslint.org/docs/rules/func-names
    "func-names": "off",
    // Enforce consistent linebreak style
    // Disable rule since Git for Windows converts CRLF to LF automatically
    // http://eslint.org/docs/rules/linebreak-style
    "linebreak-style": "off",

    // React / JSX
    // -----------

    // Restrict file extensions that may contain JSX
    // Disable rule since we’re using JSX in .js files
    // https://github.com/yannickcr/eslint-plugin-react/blob/master/docs/rules/jsx-filename-extension.md
    "react/jsx-filename-extension": "off",

    // The following rules overwrite the AirBnB rules for React:
    // https://github.com/airbnb/javascript/blob/master/packages/eslint-config-airbnb/rules/react.js

    // Enforce label tags have htmlFor attribute.
    // Disable rule to allow a surrounding label: <label><input /></label>
    // https://github.com/evcohen/eslint-plugin-jsx-a11y/blob/master/docs/rules/label-has-for.md
    "jsx-a11y/label-has-for": "off",

    // Enforce quote style for JSX attributes
    // <p title="foo">, not <p title="foo">
    // https://github.com/yannickcr/eslint-plugin-react/blob/master/docs/rules/jsx-quotes.md
    "jsx-quotes": ["error", "prefer-single"],

    "react/jsx-one-expression-per-line": "off",

    // Validate closing bracket location in JSX
    // On the same line of the the last prop:
    // <Foo prop1="value"
    //   prop2="value"/>
    // https://github.com/yannickcr/eslint-plugin-react/blob/master/docs/rules/jsx-closing-bracket-location.md
    "react/jsx-closing-bracket-location": ["error", "after-props"],

    // Enforce stateless React Components to be written as a pure function
    // Disable rule because React TestUtils only work well with normal components
    // https://github.com/yannickcr/eslint-plugin-react/blob/master/docs/rules/prefer-stateless-function.md
    "react/prefer-stateless-function": "off",

    "react/prop-types": "off"
  }
}
