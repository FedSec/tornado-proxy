# tornado-proxy

tornado-proxy is an HTTP / HTTPS proxy server based on tornado and supports python2 and python3.


This program is modified on the basis of owtf-proxy and integrates two different ways of owtf-proxy and tornado-proxy support for HTTPS.
Refer to the interception and processing of requests and responses in proxy2

## Characteristic

* Support transparent proxy for HTTPS requests and dynamic forged certificates to intercept traffic
* High performance
* Customize the processing of requests and responses
* Configurable proxy server for this proxy server

## Dependencies

* pyopenssl
* tornado
* pycurl

`pip install -r requirements.txt`

pycurl installation reference https://wfuzz.readthedocs.io/en/latest/user/installation.html

Install on macOS

```
brew install openssl
brew install curl-openssl
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
PYCURL_SSL_LIBRARY=openssl LDFLAGS="-L/usr/local/opt/openssl/lib" CPPFLAGS="-I/usr/local/opt/openssl/include" pip install --no-cache-dir pycurl
```

You need to install `libssl-dev` and `libcurl4-openssl-dev` under ubuntu

## Enable HTTPS interception

Intercepting HTTPS traffic requires generating a private key and CA certificate first. Add the generated CA certificate to the browser's trust zone.

`$ ./setup_https_intercept.sh`

Deleting the generated certificate and private key file does not intercept HTTPS traffic.

## Custom function

There are three methods in `ProxyHandler` which can be used to modify or save request and response information.

* request_handler: Called before the proxy server sends a request to the web server
* response_handler: Called before the proxy server returns a response to the client
* save_handler: Called after the client gets the response


## References

https://github.com/tunnelshade/owtf-proxy

https://github.com/senko/tornado-proxy

https://github.com/inaz2/proxy2
