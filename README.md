Composer Docker-Container
=========================

This repository holds the information required to build a [Docker](http://docker.com) container that runs [Composer](http://getcomposer.org).

Usage
--------------------

1. Install the `pseiffert/composer` container (optional - this step is performed by Docker automatically when running the container):

    ``` sh
    $ docker pull pseiffert/composer
    ```

2. Define an bash alias that runs this container whenever `composer` is invoked on the command line:

	``` sh
	$ echo "alias composer='docker run --rm -it -v $(pwd):/opt/workspace pseiffert/composer'" >> ~/.bashrc
	$ source ~/.bashrc
	```

3. Run composer as always:

	``` sh
	$ composer install
	```

For more information, see my [article on medium.com](https://medium.com/@seiffert/dockerizing-composer-de9f735c6881) about this. 
