# Add many articles

## Dependencies
```bash
pip install wallabag-client
```

## Login
```bash
wallabag list
```

## Add articles

```bash
cat article-urls.txt | xargs -n1 wallabag add 
```
