function FindProxyForURL(url, host) {
  // All requests should go to their specified
  // destination by default
  var proxy_setting = "DIRECT"

  if (host.match(new RegExp("^local\.|\.local$"))) {
		var port = 80;
		var matches;
		
		if (matches = url.match(/:\/\/.+?:(\d+)/)) {
			port = matches[1];
		}
		
    proxy_setting = "PROXY localhost:" + port;
  }
  
  return proxy_setting
}