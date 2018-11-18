# GitHub issue [hollodotme/fast-cgi-client/25](hollodotme/fast-cgi-client/#25)

Run the following commands to verify that the code is working:

```bash
git clone https://github.com/hollodotme/github-issues
cd github-issues/fast-cgi-client/25
docker run -it --rm -v `pwd`:/var/www php:7.0.23-fpm /var/www/run.sh
```

If the last command prints "OK" (the output of the `worker.php` script), the code is working as expected.