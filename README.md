ASP.NET 5 hello-world Docker image
=================

Quick start image derived from official docker image and contains some "ready-to-go" sauce.

## How to run

```
$ docker run -d -i -p 5000:5000 muojp/hellovnext-docker:latest
$ curl http://localhost:5000/
Hello World
```

this will fetch everything needed and start embedded web server.

Then, opening http://localhost:5000/ will show you the "Hello World" page.

## Some playing scenarios

### Start a container with bash to view and modify sample application code.

```
$ docker run -i -t -p 5000:5000 muojp/hellovnext-docker:latest /bin/bash -i
root@a376f9311b4c:~/helloworld/src/helloworldweb# pwd
/root/helloworld/src/helloworldweb
root@a376f9311b4c:~/helloworld/src/helloworldweb# cat Startup.cs 
using System;
using System.Net.WebSockets;
using System.Threading.Tasks;
...
        app.Run(async context =>
        {
            var payload = "Hello World";
            context.Response.ContentLength = payload.Length;
            await context.Response.WriteAsync(payload);
        });
...
root@2008d85428cc:~/helloworld/src/helloworldweb# apt-get install vim
root@2008d85428cc:~/helloworld/src/helloworldweb# vim Startup.cs 
```

Change the file as you like, and then 

```
root@2008d85428cc:~/helloworld/src/helloworldweb# k web
```

to launch web server. Then, execute `Ctrl+p Ctrl+q` to detach from the container.


```
$ curl http://localhost:5000/
Hello World!!!!
```

### Launch 'KestrelHTTPServer' instead of default Web server

```
$ docker run -d -i -t -p 5000:5000 muojp/hellovnext-docker:latest k kestrel
```

## LICENSE

MIT

