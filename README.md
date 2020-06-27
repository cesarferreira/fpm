# fpm

![Pub Version](https://img.shields.io/pub/v/fpm?label=version&style=flat-square)
[![Maintenance](https://img.shields.io/badge/dynamic/json?color=blue&label=maintenance&query=maintenance&url=http://www.pubscore.gq/all?package=fpm&style=flat-square)](https://pub.dev/help#maintenance)
[![Health](https://img.shields.io/badge/dynamic/json?color=blue&label=health&query=health&url=http://www.pubscore.gq/all?package=fpm&style=flat-square)](https://pub.dev/help#health)![Coverage](https://raw.githubusercontent.com/leoafarias/fpm/master/coverage_badge.svg?sanitize=true) [![Github All Contributors](https://img.shields.io/github/all-contributors/leoafarias/fpm?style=flat-square)](https://github.com/cesarferreira/fpm/graphs/contributors) [![MIT Licence](https://img.shields.io/github/license/leoafarias/fpm?style=flat-square&longCache=true)](https://opensource.org/licenses/mit-license.php) [![Awesome Flutter](https://img.shields.io/badge/awesome-flutter-purple?longCache=true&style=flat-square)](https://github.com/Solido/awesome-flutter)

Flutter Package Manager: A simple cli to manage your app packages.

**Features:**

- Lightweight
- Faster than googling

## Install

```bash
> pub global activate fpm
```

## Usage

```bash
# Install the newest version, and apply caret syntax
$ fpm add my-package

# Install a specific version
$ fpm add my-package@^1.0.0
$ fpm add my-package@0.0.4+25
$ fpm add "my-package@>=2.0.0 <3.0.0"

# Install a Git dependency
$ fpm add my-package@git://path/to/repo.git

# Specify a commit or ref
$ fpm add my-package@git://path/to/repo.git#bleeding-edge

# Install a local package
$ fpm add my-package@path:/Users/john/Source/Dart/pkg

# Install multiple packages
$ fpm add my-package my-other-package yet-another-package

# Install to dev_dependencies
$ fpm add --dev http test my-package@git://repo#dev
```
