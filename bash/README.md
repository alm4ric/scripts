

### Version information in HTTP(S) response headers
#### With colors

HTTP
```bash
for i in `cat urls.txt`; do printf "\n%b" "\e[1;34mhttp://$i\e[0m\n"; curl -m 1 -sIX GET "http://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```

HTTPS
```bash
for i in `cat urls.txt`; do printf "\n%b" "\e[1;34mhttps://$i\e[0m\n"; curl -m 1 -sIX GET "https://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```

#### Without colors

HTTP
```bash
for i in `cat urls.txt`; do printf "\nhttp://$i\n"; curl -m 1 -sIX GET "http://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```

HTTPS
```bash
for i in `cat urls.txt`; do printf "\nhttps://$i\n"; curl -m 1 -sIX GET "https://$i" | grep -iE 'host|server|powered|-asp|version|generator'; done
```