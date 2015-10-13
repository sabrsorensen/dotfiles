 #!/bin/bash

 assignProxy(){
   for envar (http_proxy ftp_proxy https_proxy all_proxy rsync_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY RSYNC_PROXY);
   do
     export $envar=$1;
   done
   for envar (no_proxy NO_PROXY);
   do
      export $envar=$2;
   done
 }

 clrProxy(){
   assignProxy "" # This is what 'unset' does.
 }

 myProxy(){
   proxy_value="http://web-proxy.boi.hpecorp.net:8080"
   no_proxy_value="localhost,127.0.0.1"
   assignProxy $proxy_value $no_proxy_value
 }
