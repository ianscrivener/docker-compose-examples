docker run -d \
	--rm \
	--name influxdb \
	-p 8086:8086 \
	-v $PWD/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
	v influxdb_vol:/var/lib/influxdb \
	-e INFLUXDB_DB=telegraf \
	-e INFLUXDB_ADMIN_USER=admin \
	-e INFLUXDB_ADMIN_PASSWORD=supersecretpassword \   
	influxdb::1.5.4-alpine \
	influxdb -config /etc/influxdb/influxdb.conf       