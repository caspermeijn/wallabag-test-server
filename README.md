# Wallabag test server
Easily a local test server with predefined user accounts. Useful for testing clients during development without the possibility of collateral damage. All changes are discarded when stopping the test server

## Build
```bash
docker build -t wallabag-test-server .
```

## Run
```bash
docker run -it -p 8081:80 -e "SYMFONY__ENV__DOMAIN_NAME=http://localhost:8081" wallabag-test-server
```

## Login
Hostname: `http://localhost:8081`
Client ID: `1_4jqabas2iayo4socc0w8g8goswogk4wogckkg808gsg8gkcs0k`
Client secret: `43nevxu3occg84gsgw84s0cs80wgks4oos8kks4ccgswc4o448`
Username: `wallabag`
Password: `wallabag`

## Start in write mode
```bash
docker run -it -v $PWD/data:/var/www/wallabag/data -v $PWD/images:/var/www/wallabag/web/assets/images -p 8081:80 -e "SYMFONY__ENV__DOMAIN_NAME=http://localhost:8081" wallabag/wallabag
```