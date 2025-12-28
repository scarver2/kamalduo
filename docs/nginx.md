# [NGINX](https://nginx.org) Reverse Proxy

TODO: Add NGINX documentation

```nginx
server {
    listen 80;
    server_name site.com;
    location / {
        proxy_pass http://localhost:9292;
    }
}
```

```bash
scp site.conf root@server:/etc/nginx/sites-available/site.conf
ssh root@server
ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
nginx -t
systemctl reload nginx
```
