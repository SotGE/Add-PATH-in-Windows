
<!---
    Product: Add path in Windows
    Version: 1.0
-->
<!---
    Developer: SotGE
    Author: Maksim E. Sorokin
    Site: https://sotge.ru
-->
<!---
    GitHub: https://github.com/SotGE/Add-path-in-Windows
    LICENSE: https://github.com/SotGE/Add-PATH-in-Windows/blob/master/LICENSE
-->

[home-url]: <https://github.com/SotGE/Add-PATH-in-Windows> (Home)

[code-of-conduct-url]: <./CODE_OF_CONDUCT.md> (CODE_OF_CONDUCT)
[contributing-url]: <./CONTRIBUTING.md> (CONTRIBUTING)
[license-url]: <./LICENSE> (LICENSE)
[readme-url]: <./README.md> (README)
[readme-ru-url]: <./README_RU.md> (README_RU)
[release-notes-url]: <./RELEASE_NOTES.md> (RELEASE_NOTES)

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

[logo-img]: <./.gitimg/LOGO.png> (LOGO)

### **<p align="center">[README English »][home-url]</p>**

****

<br/>

##### <p align="center">[![LOGO][logo-img]][home-url]</p>

<br/>

# <p align="center">[Add PATH in Windows v1.0 by SotGE][home-url]</p>

##### <p align="center">[![Contributors][contributors-shield]][contributors-url] &nbsp; [![Forks][forks-shield]][forks-url] &nbsp; [![Stargazers][stars-shield]][stars-url] &nbsp; [![Issues][issues-shield]][issues-url] &nbsp; [![License][license-shield]][license-url]</p>

<br/>

## Описание

Добавление директории в переменную среды PATH в Windows из файла TXT построчно.

<br/>

## Документация

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

<br/>

## Системные требования

Windows

<br/>

## Примечания к выпуску

Можно найти в [примечаниях к выпуску][release-notes-url]

<br/>

## Контакты

Сайт: <https://sotge.ru/>

Электронная почта: <sotge@hotmail.com>

Facebook: [@SotGEGDS](https://www.facebook.com/sotgegds "https://www.facebook.com/sotgegds")

VK: [@SotGE](https://vk.com/sotge "https://vk.com/sotge")

Twitter: [@SotGE](https://twitter.com/sotge "https://twitter.com/sotge")

Telegram: [@SotGE](https://t.me/sotge "https://t.me/sotge")

<br/>

## Содействие

Читайте ниже, чтобы узнать, как вы можете принять участие в улучшении проекта

Дополнительные сведения смотрите в разделе [кодекс поведения][code-of-conduct-url]


Пожалуйста, перейдите на страницу [поддержки][contributing-url].

Спасибо вам, [соавторы][contributors-url]!

<br/>

## Лицензия

Код проекта доступен под лицензией Apache License 2.0

Дополнительные сведения смотрите в разделе [лицензионное соглашение][license-url]

<br/>

##### <p align="center">[Contributors][contributors-url] &middot; [Forks][forks-url] &middot; [Stars][stars-url] &middot; [Issues][issues-url] &middot; [License][license-url]</p>
