#!/bin/bash
# Init a Typescript project for VSCode with airbnb-ts linting and Jest testing. Open it in VSCode
# Require ESLint extention installed on VSCode

mkdir "$1" 
cd "$1"
npm init -y
cat > package.json <<EOF
{
  "name": "$1",
  "version": "1.0.0",
  "description": "",
  "main": "src/main.ts",
  "scripts": {
    "test": "jest"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
EOF

npm i -D  typescript \
          ts-node \
          eslint \
          @typescript-eslint/parser \
          @typescript-eslint/eslint-plugin \
          eslint-config-airbnb-typescript \
          eslint-plugin-jsx-a11y \
          eslint-plugin-react \
          eslint-plugin-import \
          eslint-plugin-react-hooks \
          jest \
          ts-jest \
          @types/jest \
          eslint-plugin-jest

npx ts-jest config:init
./node_modules/.bin/tsc --init

touch .eslintrc.js
cat > .eslintrc.js <<EOF
module.exports = {
    root: true,
    parser: '@typescript-eslint/parser',
    plugins: [
      '@typescript-eslint',
    ],
    extends: [
      'airbnb-typescript',"plugin:jest/all"
    ],
    parserOptions: {
      project: './tsconfig.json',
    },
    ignorePatterns: ['.eslintrc.js']
  };
EOF

mkdir src
code .