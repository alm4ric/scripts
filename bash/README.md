Version information in HTTP response headers
```
for i in `cat urls.txt`; do printf "\n%b" "\e[1;34m$i\e[0m\n"; curl -m 1 -sIX GET "http://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```

Version information in HTTPS response headers
```
for i in `cat urls.txt`; do printf "\n%b" "\e[1;34m$i\e[0m\n"; curl -m 1 -sIX GET "https://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```
