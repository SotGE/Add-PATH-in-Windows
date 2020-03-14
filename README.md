
[home-url]: <https://github.com/SotGE/Add-PATH-in-Windows> (Home)
[readme-ru-url]: <./README_RU.md> (README_RU)
[code-of-conduct-url]: <./CODE_OF_CONDUCT.md> (CODE_OF_CONDUCT)
[license-url]: <./LICENSE> (LICENSE)

[contributors-url]: <https://github.com/SotGE/Add-PATH-in-Windows/graphs/contributors> (Contributors)
[forks-url]: <https://github.com/SotGE/Add-PATH-in-Windows/network/members> (Forks)
[stars-url]: <https://github.com/SotGE/Add-PATH-in-Windows/stargazers> (Stars)
[issues-url]: <https://github.com/SotGE/Add-PATH-in-Windows/issues> (Issues)
[license-url]: <https://github.com/SotGE/Add-PATH-in-Windows/blob/master/LICENSE> (License)

[contributors-shield]: <https://img.shields.io/github/contributors/SotGE/Add-PATH-in-Windows.svg?style=flat-square> (Contributors)
[forks-shield]: <https://img.shields.io/github/forks/SotGE/Add-PATH-in-Windows.svg?style=flat-square> (Forks)
[stars-shield]: <https://img.shields.io/github/stars/SotGE/Add-PATH-in-Windows.svg?style=flat-square> (Stars)
[issues-shield]: <https://img.shields.io/github/issues/SotGE/Add-PATH-in-Windows.svg?style=flat-square> (Issues)
[license-shield]: <https://img.shields.io/github/license/SotGE/Add-PATH-in-Windows.svg?style=flat-square> (License)

[logo-img]: <./Images/logo.png> (Logo)

<br/>

## <p align="center"><strong>[README Russian »][readme-ru-url]</strong></p>

<br/>

##### <p align="center">[![Logo][logo-img]][home-url]</p>

<br/>

# <p align="center">[Add PATH in Windows v1.0 by SotGE][home-url]</p>

##### <p align="center">[![Contributors][contributors-shield]][contributors-url] &nbsp; [![Forks][forks-shield]][forks-url] &nbsp; [![Stargazers][stars-shield]][stars-url] &nbsp; [![Issues][issues-shield]][issues-url] &nbsp; [![License][license-shield]][license-url]</p>

<br/>

### `Russian`
Добавить пути в Windows переменные среды PATH построчно из файла TXT.

### `English`
Add paths to Windows environment variables PATH line by line from the TXT file.

<br/>

## Documentation

### `Russian`

Построчно записать пути для переменной среды в файл (**Path.txt**).

> <br/>
>
> **SystemAdd.cmd**
>
> * Запуск от имени администратора (SystemAdd.cmd).
> * Добавить все пути из файла (Path.txt) в системные переменные.
> * Создается бекап (Backup/SystemAdd.txt) системные переменные.
>
> <br/>
>
> **SystemToUser.cmd**
>
> * Запуск от имени администратора (SystemToUser.cmd).
> * Перенос всех путей из системные переменные в переменные среды пользователя.
> * Создается бекап (Backup/SystemToUser.txt) переменные среды пользователя.
>
> <br/>
>
> **SystemBackup.cmd**
>
> * Запуск от имени администратора (SystemBackup.cmd).
> * Создается бекап (Backup/SystemBackup.txt) системные переменные.
>
> <br/>
>
> **SystemDelete.cmd**
>
> * Запуск от имени администратора (SystemDelete.cmd).
> * Удалить все пути из файла (Path.txt) в системные переменные.
> * Создается бекап (Backup/SystemDelete.txt) системные переменные.
>
> <br/>
>
> **UserAdd.cmd**
>
> * Запуск от имени администратора (UserAdd.cmd).
> * Добавить все пути из файла (Path.txt) в переменные среды пользователя.
> * Создается бекап (Backup/UserAdd.txt) переменные среды пользователя.
>
> <br/>
>
> **UserToSystem.cmd**
>
> * Запуск от имени администратора (UserToSystem.cmd).
> * Перенос всех путей из переменные среды пользователя в системные переменные.
> * Создается бекап (Backup/UserToSystem.txt) системные переменные.
>
> <br/>
>
> **UserBackup.cmd**
>
> * Запуск от имени администратора (UserBackup.cmd).
> * Создается бекап (Backup/UserBackup.txt) переменные среды пользователя.
>
> <br/>
>
> **UserDelete.cmd**
>
> * Запуск от имени администратора (UserDelete.cmd).
> * Удалить все пути из файла (Path.txt) в переменные среды пользователя.
> * Создается бекап (Backup/UserDelete.txt) переменные среды пользователя.
>
> <br/>
>
> **AddSystemUser.cmd**
>
> * Запуск от имени администратора (AddSystemUser.cmd).
> * Добавить все пути из файла (Path.txt) в системные переменные и переменные среды пользователя.
> * Создается бекап (Backup/AddSystem.txt) системные переменные.
> * Создается бекап (Backup/AddUser.txt) переменные среды пользователя.
>
> <br/>
>
> **BackupSystemUser.cmd**
>
> * Запуск от имени администратора (BackupSystemUser.cmd).
> * Создается бекап (Backup/BackupSystem.txt) системные переменные.
> * Создается бекап (Backup/BackupUser.txt) переменные среды пользователя.
>
> <br/>
>
> **DeleteSystemUser.cmd**
>
> * Запуск от имени администратора (DeleteSystemUser.cmd).
> * Удалить все пути из файла (Path.txt) в системные переменные и переменные среды пользователя.
> * Создается бекап (Backup/DeleteSystem.txt) системные переменные.
> * Создается бекап (Backup/DeleteUser.txt) переменные среды пользователя.
>
> <br/>

### `English`

Write the paths for the environment variable line by line to a file (**Path.txt**).

> <br/>
>
> **SystemAdd.cmd**
>
> * Run as administrator (SystemAdd.cmd).
> * Add all paths from the file (Path.txt) to system variables.
> * Creates a backup (Backup/SystemAdd.txt) system variables.
>
> <br/>
>
> **SystemToUser.cmd**
>
> * Run as administrator (SystemToUser.cmd).
> * The transfer of all the paths of system variables in the user environment variables.
> * Creates a backup (Backup/SystemToUser.txt) user environment variables.
>
> <br/>
>
> **SystemBackup.cmd**
>
> * Run as administrator (SystemBackup.cmd).
> * Creates a backup (Backup/SystemBackup.txt) system variables.
>
> <br/>
>
> **SystemDelete.cmd**
>
> * Run as administrator (SystemDelete.cmd).
> * Delete all paths from the file (Path.txt) to system variables.
> * Creates a backup (Backup/SystemDelete.txt) system variables.
>
> <br/>
>
> **UserAdd.cmd**
>
> * Run as administrator (UserAdd.cmd).
> * Add all paths from the file (Path.txt) to user environment variables.
> * Creates a backup (Backup/UserAdd.txt) user environment variables.
>
> <br/>
>
> **UserToSystem.cmd**
>
> * Run as administrator (UserToSystem.cmd).
> * The transfer of all the paths of user environment variables in the system variables.
> * Creates a backup (Backup/UserToSystem.txt) system variables.
>
> <br/>
>
> **UserBackup.cmd**
>
> * Run as administrator (UserBackup.cmd).
> * Creates a backup (Backup/UserBackup.txt) user environment variables.
>
> <br/>
>
> **UserDelete.cmd**
>
> * Run as administrator (UserDelete.cmd).
> * Delete all paths from the file (Path.txt) to user environment variables.
> * Creates a backup (Backup/UserDelete.txt) user environment variables.
>
> <br/>
>
> **AddSystemUser.cmd**
>
> * Run as administrator (AddSystemUser.cmd).
> * Add all paths from the file (Path.txt) to system variables and user environment variables.
> * Creates a backup (Backup/AddSystem.txt) system variables.
> * Creates a backup (Backup/AddUser.txt) user environment variables.
>
> <br/>
>
> **BackupSystemUser.cmd**
>
> * Run as administrator (BackupSystemUser.cmd).
> * Creates a backup (Backup/BackupSystem.txt) system variables.
> * Creates a backup (Backup/BackupUser.txt) user environment variables.
>
> <br/>
>
> **DeleteSystemUser.cmd**
>
> * Run as administrator (DeleteSystemUser.cmd).
> * Delete all paths from the file (Path.txt) to system variables and user environment variables.
> * Creates a backup (Backup/DeleteSystem.txt) system variables.
> * Creates a backup (Backup/DeleteUser.txt) user environment variables.
>
> <br/>

<br/>

## System requirements

Windows

<br/>

## Contributing

Read below to learn how you can take part in improving project

For more information, see [code of conduct][code-of-conduct-url]

Thank you, [contributors][contributors-url]!

<br/>

## License

Project code is available under the Apache License 2.0

For more information, see [license agreement][license-url]

<br/>

## About

Site: [sotge.ru](https://sotge.ru  "SotGE")

E-Mail: <sotge@hotmail.com>

Facebook: [@SotGEGDS](https://www.facebook.com/sotgegds)

VK: [@SotGE](https://vk.com/sotge)

Twitter: [@SotGE](https://twitter.com/sotge)

Telegram: [@SotGE](https://t.me/sotge)

<br/>

##### <p align="center">[Contributors][contributors-url] &middot; [Forks][forks-url] &middot; [Stars][stars-url] &middot; [Issues][issues-url] &middot; [License][license-url]</p>

<br/>
