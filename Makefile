copyCert:
	mkdir tmp 2>/dev/null && docker cp elk-playground-es01-1:/usr/share/elasticsearch/config/certs/ca/ca.crt ./tmp/.
checkCert:
	curl --cacert ./tmp/ca.crt -u elastic:password https://localhost:9200