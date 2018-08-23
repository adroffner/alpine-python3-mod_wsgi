Docker Image: Alpine Linux - Python 3 and Apache with MOD WSGI
=============================================================

Create a new docker image based on the Docker Hub **python:3.6.6-alpine**.
This image adds the Apache2 **httpd** server and **mod_wsgi**.

Python WSGI Applications
------------------------

This image may be used to build **Python WSGI applications**, such as **Django servers**.
Use **Python**, **Django**, or even **Flask** to make a Webserver.

Limitations and mod_wsgi-express
--------------------------------

**alpine linux** will beuild regular **mod_wsgi.so** and serve **hello.wsgi**.
However, the python installer **mod_wsgi-express** make invalid code.

Programmers may use **alpine linux** to make standard **VirtualHost** WSGI applications.
The **start-server** command is not available.
