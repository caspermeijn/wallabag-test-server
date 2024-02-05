# Generate article URLs

Download articles from blogs.gnome.org:

```bash
wget \
     --recursive \
    --level=2 \
    --timestamping \
    --reject .png,.js,.css,.webm,.gif,.jpg,.jpeg \
    --no-parent \
    --wait=1 \
         https://blogs.gnome.org/uraeus/
```

Put valid article URL into a text file:

```bash
find blogs.gnome.org/ -type d | grep -P '\d{4}\/\d{2}\/\d{2}\/[^\/]*$' | sed -e 's#^#https://#' | sed -e 's%$%/%' > article-urls.txt
```


