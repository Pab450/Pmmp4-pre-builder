# Pmmp4-pre-builder
Pmmp4-pre-builder allows you to quickly generate a .phar for the version 4.0.0 of PocketMine-MP.
## Prerequisites
To use Pmmp4-pre-builder you need the following packages: 
| package  | version |
|----------|---------|
| svn      | ^1.14   |
| git      | ^2.24.3 |
| composer | ^2.0.7  |
| php      | ^8.0    |
## Options
Pmmp4-pre-builder contains the following 3 options:
| name     | option | description                                                                                                                |
|----------|--------|----------------------------------------------------------------------------------------------------------------------------|
| clear    | -c     | Allows to delete all the elements contained in the directory except Pmmp4-pre-builder.sh and PocketMine-MP.phar files.     |
| download | -d     | Allows you to download all the latest resources needed to perform the latest build for the version 4.0.0 of PocketMine-MP. |
| build    | -b     | Allows you to generate the PocketMine-MP.phar file using the downloaded resources.                                         |
## Usage
- Allows to clear the directory, to download the resources and to build the .phar: 
```shell
./Pmmp4-pre-builder.sh -c -d -b
```
- Allows to download the resources, to build the .phar and to clear the directory:
```shell
./Pmmp4-pre-builder.sh -d -b -c
```
- Allows to download the resources and to build the .phar:
```shell
./Pmmp4-pre-builder.sh -d -b
```
## Contributing
Pull requests are welcome. For changes, please open an issue first to discuss what you would like to change.
