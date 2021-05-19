[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/joomlatools/joomlatools-gitpod)

-------

English version (En):

-------


# Joomlatools Gitpod

### What is Joomlatools Gitpod

Joomlatools Gitpod is a super simple way to test out different versions Joomla, straight from the browser.It offers a complete Integrated Development Environment and in this instance we have:

- A online cloud source editor [Theia](https://theia-ide.org/)
- A LAMP server (Linux, Apache, MySQL, PHP)
- A preconfigured Joomla site
- The actual IDE is provided by [Gitpod](https://www.gitpod.io/) we've just extended their great work to showcase Joomla.

### Why Joomlatools Gitpod?

Testing Joomla should be easy. Instead of going through the manual setups, cloning the Joomla repo, setting up a local or remote hosting environment, installing Joomla, etc, you just click a button to start a ready-to-code dev environment in your browser. You can now code, review, or just try out Joomla. Once you are done you simply close the tab.

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


-------

Version française (Fr):

-------

# Joomlatools Gitpod

### Qu'est-ce-que Joomlatools Gitpod

Joomlatools Gitpod est une façon super simple de tester des versions de Joomla! différentes directement dans votre navigateur.Cela comprends un enviroment de developpement intégré complet et contient dans son instance ce qui suit:

- Un éditeur de code en ligne (dans le cloud) [VSCode](https://code.visualstudio.com/) 
- Une LAMP stack (Linux, Apache, MySQL, PHP)
- Un site Joomla! préconfiguré (admin/admin, manager/manager, user/user)
- L'IDE est fournit par [Gitpod](https://www.gitpod.io/) nous n'avons fait que nous baser sur leur fabuleux travail pour mettre en avant Joomla!

### Pourquoi Joomlatools Gitpod?

Tester Joomla! devrait être facile. Au lieu de galérer avec des configurations manuelles, cloner le dépot de Joomla, préparer un environnement en local ou distant, installer Joomla! etc, vous cliquez sur un seul bouton pour démarrer un environnement de developpement prêt à l'emploi directement dans votre navigateur.
Vous pouvez maintenant coder, vérifier le code des autres, ou essayer Joomla!. Une fois terminé, vous pouvez simplement fermet l'onglet.

## Pré-requis

* Chrome or Firefox

## Installation

1. Installez l'extension [Gitpod Chrome or Firefox](https://www.gitpod.io/docs/browser-extension/) et cliquez sur le bouton `Gitpod.
2. Allez sur  http://gitpod.io#https://github.com/joomlatools/joomlatools-gitpod

## Documentation

Vous pouvez trouver toute la documentation pour IDE Gitpod (VSCode) ici: https://www.gitpod.io/docs/ide/

## Forking 

Vous pouvez sans souci forker ce dépot [normalement](https://help.github.com/en/github/getting-started-with-github/fork-a-repo#fork-an-example-repository). 

## Configuration

Nous avons aussi fait des efforts importants pour rendre ce dépot configurable vous même selon os souhaits.

`.gitpod/config.sh` ce fichier vous permet de configurer le comportement de ce dépot.

* En définissant la variable `joomla`  (vnuméro de version valide), cette version spécifique sera téléchargée et installée. Par défaut sans la variable `joomla` cela veut dire que la dernière version de Joomla! sera installée 
* En définissant la variable `repo` vous pouvez même installer une instance personnalisée de Joomla!. La variable repo devrait pointer sur un dépot existant contentant Joomla et utiliser le protocole https. 
De plus, si vous créer un fichier `.gitpod/install.sql` vous pouvez même migrer une base de donnée supportée pour cette instance personnalisée de Joomla! 
* En définissant la variable `composer` vous pouvez definir quels packages composer vous voulez installer sur le site Joomla! par défaut.

Pour les instructions spécifiques à Joomla! 4 beta [veuillez vous référer au wiki.](https://github.com/joomlatools/joomlatools-gitpod/wiki)

## Contribution

Joomlatools Pages is an open source, community-driven project. Contributions are welcome from everyone. 
We have [contributing guidelines](CONTRIBUTING.md) to help you get started.

## Contributeurs

See the list of [contributors](https://github.com/joomlatools/joomlatools-gitpod/contributors).

## Licence

Joomlatools Gitpod is open-source software licensed under the [GPLv3 license](LICENSE.txt).

## Communauté

Keep track of development and community news.

* Follow [@joomlatoolsdev on Twitter](https://twitter.com/joomlatoolsdev)
* Join [joomlatools/dev on Gitter](http://gitter.im/joomlatools/dev)
* Read the [Joomlatools Developer Blog](https://www.joomlatools.com/developer/blog/)
* Subscribe to the [Joomlatools Developer Newsletter](https://www.joomlatools.com/developer/newsletter/)



