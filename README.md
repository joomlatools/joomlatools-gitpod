[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/joomlatools/joomlatools-gitpod)
# Joomlatools Gitpod
A super simple way to test out different versions Joomla, straight from the browser.

### What is Joomlatools Gitpod?

## Requirements

* Chrome or Firefox

## Installation

1. Install the [Gitpod Chrome or Firefox](https://www.gitpod.io/docs/browser-extension/) extension and click the `Gitpod`button.
2. Go to http://gitpod.io#https://github.com/joomlatools/joomlatools-gitpod

## Documentation

You can find all the documentation for Gitpod IDE (Theia) here: https://www.gitpod.io/docs/ide/

## Forking 

Please feel free to fork this repository, in the [normal manner](https://help.github.com/en/github/getting-started-with-github/fork-a-repo#fork-an-example-repository). 

## Configuring

We've also made great efforts to make this repository configurable to your needs.

`.gitpod/config.sh` is where you are able to configure how this repository will operate.

* By providing a `joomla` variable (valid version number), this specific version will be downloaded and installed. The default with no `joomla` variable means the latest Joomla! version will be installed 
* By providing a `repo` variable you can even install custom Joomla! instance. The repo variable should point to an existing Joomla github repo and use the https protocol. 
Further if you create `.gitpod/install.sql` dump you can even migrate a supporting database for this custom Joomla! site 
* By providing a `composer` variable you can specify which composer packages you would like added to the default Joomla! site

For specific instructions how to test Joomla 4 beta [please check the wiki.](https://github.com/joomlatools/joomlatools-gitpod/wiki)

## Contributing

Joomlatools Pages is an open source, community-driven project. Contributions are welcome from everyone. 
We have [contributing guidelines](CONTRIBUTING.md) to help you get started.

## Contributors

See the list of [contributors](https://github.com/joomlatools/joomlatools-gitpod/contributors).

## License

Joomlatools Gitpod is open-source software licensed under the [GPLv3 license](LICENSE.txt).

## Community

Keep track of development and community news.

* Follow [@joomlatoolsdev on Twitter](https://twitter.com/joomlatoolsdev)
* Join [joomlatools/dev on Gitter](http://gitter.im/joomlatools/dev)
* Read the [Joomlatools Developer Blog](https://www.joomlatools.com/developer/blog/)
* Subscribe to the [Joomlatools Developer Newsletter](https://www.joomlatools.com/developer/newsletter/)
