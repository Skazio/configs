# Extensions pack

Extensions pack allow to easily manage extensions base on your coding environment, framework, language, etc.

## How to create extensions

First run

```bash
npm i -g yo code
```

Then

```bash
yo code
```

Answer the prompted questions.

## How to Bundle extensions pack

First run

```bash
npm i -g vsce
```

Then make sure to be in the folder of your extension pack and run

```bash
vsce package
```

## How to ship

You only need to ship the `*.vsix` file
