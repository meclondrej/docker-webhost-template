# A template for webhosting with docker

As you probably read from the title, this repo serves as a template for any kinds of webhosting.
It has PHP, MySQL and Adminer preconfigured.
Fork it, clone it, do what your heart desires.
Just start it and you're good!

## Requirements

For running this template, you will need actually nothing more than docker and internet connection. That's it.

## Configuration

Some parts require manual editing.
Those are:
- Changing the db password in docker-compose.yml
- Adding your own .htaccess
- Installing your own PHP modules

## Running the docker compose

It is important to know that the folders ```htdocs/```, ```assets/``` and ```database/``` are not created, so you need to create them manually. Next, put your html documents in the ```htdocs/``` folder and your assets (images, css, videos, etc.) into the ```assets/``` folder. You don't have to do anything with the ```database/``` folder.

Now run ```docker compose up``` in your linux shell, set up your database in Adminer and you're good to go.

### PHP Modules

To install PHP modules, you must edit the Dockerfile.
The default Dockerfile looks something like this:

```
FROM php:apache
RUN docker-php-ext-install mysqli
```

If you need to add more modules, simply create more lines with ```RUN docker-php-ext-install ``` and put your module name after that.
