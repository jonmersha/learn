# learn

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
create table RefrenceBook(
	id int auto_increment primary key,
    bookName varchar(100),
    bookLanguage int,
    bookLogoPath varchar(200),
    bookPath varchar(200),
    fileFormat varchar(50),
    bookOuthors varchar(500),
    pubYear varchar(15)
);
create table videoRefrence(
	id int auto_increment primary key,
    title varchar(100),
    videoLogoPath varchar(100),
    videoDescription varchar(200),
    videoURL varchar(200),
    isYoutubeVideo boolean
);

create table userViewHistory(
	whachTime datetime,
    userId int,
    bookId int,
    userAction varchar(50),-- //[open watching, closed]
    contenetType varchar(50) -- // [book, video] 
);
