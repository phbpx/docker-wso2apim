# docker-wso2apim

Docker image to install and run WSO2 API Manager version 1.9.1.

## Usage
To run the WSO2 API Manager:
```sh
$ git clone https://github.com/phbortolotti/docker-wso2apim.git
$ cd docker-wso2apim
$ docker build . -t wso2apim
$ docker run --rm --name apim -p 9443:9443 -p 9736:9736 -p 8243:8243 -p 8280:8280 -p 10397:10397 -p 7711:7711 wso2apim
```

To access the web UI:
* Admin console: https://localhost:9443/carbon
* Publisher console: https://localhost:9443/publisher
* API store: https://localhost:9443/store

## License
Refer to the [LICENSE](LICENSE) file. WSO2 license can be found [here](http://wso2.com/licenses).
