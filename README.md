MBFaker
=====
This library is a port of Ruby's Faker library that generates fake data.  

You can use it for taking real-looking test data, screenshots and populate
your database during development.

Languages
----------
It works with original language files in yaml with small modifications.

Default language is English. You can change it with setLanguage method

    [[MBFaker sharedFaker] setLanguage:@"en"];

Usage
-----
    #import "MBFaker.h"
    
        ...
            
    NSString* name  = [MBFakerName name];
    NSString* email = [MBFakerInternet freeEmail];

Customization
------------

Since you may want to make addresses and other types of data look different
depending on where in the world you are (US postal codes vs. UK postal codes,
for example), Faker uses the I18n gem to store strings (like state names) and
formats (US postal codes are NNNNN while UK postal codes are AAN NAA),
allowing you to get different formats by switching locales.  Just set
Faker::Config.locale to the locale you want, and Faker will take care of the
rest.

Contributing
------------
If you'd like to contribute code or formats/data for another locale, fork
the project at [github](https://github.com/bananita/mbfaker), make your changes,
then send a pull request.

License
-------
This code is free to use under the terms of the MIT license.
