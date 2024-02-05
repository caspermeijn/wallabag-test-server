# Wallabag test server
Easily start a local test server with predefined user accounts. Useful for testing clients during development without the possibility of collateral damage. All changes are discarded when stopping the test server

## Build
```bash
docker build -t wallabag-test-server .
```

## Run
```bash
docker run -it -p 8081:80 -e "SYMFONY__ENV__DOMAIN_NAME=http://localhost:8081" wallabag-test-server
```

## Login
|               | Login information |
| ------------- | ------------- |
| Hostname      | `http://localhost:8081`                                |
| Client ID     | `1_4jqabas2iayo4socc0w8g8goswogk4wogckkg808gsg8gkcs0k` |
| Client secret | `43nevxu3occg84gsgw84s0cs80wgks4oos8kks4ccgswc4o448`   |
| Username      | `wallabag`                                             |
| Password      | `wallabag`                                             |

|               | Login information                                      |
| ------------- | -------------                                          |
| Hostname      | `http://localhost:8081`                                |
| Client ID     | `2_evv3zc1wd28g0k8skw8w0w8k80ks4g80k0ckowcck084cks8o`  |
| Client secret | `np7q0yljxyoo8ckcsk8sosgo84o88448wgsg44ogg4okwocko`    |
| Username      | `large`                                                |
| Password      | `large`                                                |

## Start in write mode
- Make sure write permissions are set on the data directory: `chmod a+w -R data/ images/`
- Start wallabag:
```bash
docker run -it -v $PWD/data:/var/www/wallabag/data -v $PWD/images:/var/www/wallabag/web/assets/images -p 8081:80 -e "SYMFONY__ENV__DOMAIN_NAME=http://localhost:8081" wallabag-test-server
```
- Rebuild image (see above)

### Migrate to a new version

- Edit version in `Dockerfile`
- Build image (see above)
- Make sure write permissions are set on the data directory: `chmod a+w -R data/ images/`
- Run migration script:
```bash
docker run -it -v $PWD/data:/var/www/wallabag/data -v $PWD/images:/var/www/wallabag/web/assets/images -p 8081:80 -e "SYMFONY__ENV__DOMAIN_NAME=http://localhost:8081" wallabag-test-server migrate
```
- Rebuild image (see above)
