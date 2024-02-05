FROM wallabag/wallabag:2.6.8

COPY --chown=nobody:nobody data /var/www/wallabag/data
COPY --chown=nobody:nobody images /var/www/wallabag/web/assets/images
