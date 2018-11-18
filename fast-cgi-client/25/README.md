# GitHub issue [hollodotme/fast-cgi-client/25](https://github.com/hollodotme/fast-cgi-client/issues/25)

Run the following commands to verify that the code is working:

```bash
git clone https://github.com/hollodotme/github-issues
cd github-issues/fast-cgi-client/25
docker run -it --rm -v `pwd`:/var/www php:7.0.23-fpm /var/www/run.sh
```

After the run you should see an output like this at the end:

```
Request sent, got ID: 54691
Request sent, got ID: 6786
Now check logfile worker.log
Responses:

Logged to worker.log
Logged to worker.log
```

And the contents of worker.log should be:

```

RUNNING
RUNNING

```