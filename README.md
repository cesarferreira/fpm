# Flutter Package Manager

<!-- ![Pub Version](https://img.shields.io/pub/v/fpm?label=version&style=flat-square)
[![Maintenance](https://img.shields.io/badge/dynamic/json?color=blue&label=maintenance&query=maintenance&url=http://www.pubscore.gq/all?package=fpm&style=flat-square)](https://pub.dev/help#maintenance)
[![Health](https://img.shields.io/badge/dynamic/json?color=blue&label=health&query=health&url=http://www.pubscore.gq/all?package=fpm&style=flat-square)](https://pub.dev/help#health)![Coverage](https://raw.githubusercontent.com/leoafarias/fpm/master/coverage_badge.svg?sanitize=true) [![Github All Contributors](https://img.shields.io/github/all-contributors/leoafarias/fpm?style=flat-square)](https://github.com/cesarferreira/fpm/graphs/contributors) [![MIT Licence](https://img.shields.io/github/license/leoafarias/fpm?style=flat-square&longCache=true)](https://opensource.org/licenses/mit-license.php) [![Awesome Flutter](https://img.shields.io/badge/awesome-flutter-purple?longCache=true&style=flat-square)](https://github.com/Solido/awesome-flutter) -->

> Flutter Package Manager, powerfull package management via CLI, add/search/top/favorite packages!

<img src="extras/verbose.png" width="100%">

<!-- **Features:**

- Lightweight
- Faster than googling -->

## Install

```bash
> pub global activate fpm
```

## Usage

Without verbose

<img src="extras/slim.png" width="100%">


```bash
$ fpm top
$ fpm favorites
$ fpm search html
$ fpm search html --verbose
```


```bash
# Install a specific version
$ fpm add http

# Install to dev_dependencies
$ fpm add --dev http
```



```bash
❯ fpm --help     
Flutter Version Management: A cli to manage Flutter packages.

Usage: fpm <command> [arguments]

Global options:
-h, --help       Print this usage information.
    --verbose    Print verbose output.

Available commands:
  add         Add package SDK Version
  favorites   List of the flutter favorite packages
  search      Search dart packages
  top         List the top used dart packages

Run "fpm help <command>" for more information about a command.
```