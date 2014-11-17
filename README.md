behat-bootstrap
===============

A bootstrap project ready to use behat,create a src folder,where to put the source code,
in the composer.json add

```json
"autoload": {
  "psr-0": {"namespace\\": "src/"}
}
```

install using composer:
```bash
$>curl -sS https://getcomposer.org/installer | php
$>php composer.phar install
```

to run behat:

```bash
$>bin/behat
```
