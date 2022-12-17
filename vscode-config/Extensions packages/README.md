# Extensions packs

Extensions packs allow to easily manage extensions based on your coding environment, framework, language, etc.

## How to create an extensions pack

First run

```bash
npm i -g yo code
```

Then

```bash
yo code
```

Answer the prompted questions.

## How to bundle an extensions pack

First run

```bash
npm i -g vsce
```

Then make sure to be in the folder of your extension pack and run

```bash
vsce package
```

## How to ship an extensions pack

You only need to ship the `*.vsix` file
