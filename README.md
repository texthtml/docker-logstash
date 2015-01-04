# Docker Logstash

Logstash container version 1.4.2 for Docker

## Usage

`docker run --link elasticsearch:es texthtml/logstash`

## Configuration

THis is the default logstash configuration. It listens for syslog input and output it to the linked elasticsearch container.

```
input {
    syslog { }
}
output {
    elasticsearch {
        host => es
    }
}
```

If you want to provide your own configuration, just mount it on `/opt/logstash.conf`:

`docker run -v config/logstash.conf:logstash.conf --link elasticsearch:es texthtml/logstash`
