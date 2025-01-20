# docker-veracode-pipeline-scan

Docker image for Veracode's Pipeline Scan, a tool to evaluate the security of your application directly within a development pipeline (<https://help.veracode.com/reader/tS9CaFwL4_lbIEWWomsJoA/ovfZGgu96UINQxIuTqRDwg>).

This image is built upon my own Docker image for AdoptOpenJDK 8 (<https://github.com/mablanco/docker-adoptopenjdk8-jre-hotspot>), as Veracode's Pipeline Scan needs an older JVM version than those that most modern Linux distros can provide.

## How to use this image

### Show help

```bash
~ docker run --rm mablanco/veracode-pipeline-scan
```

### Show version

```bash
~ docker run --rm mablanco/veracode-pipeline-scan -v
```

### Check a file

```bash
~ docker run --rm -v <folder_to_scan>:/app/src mablanco/veracode-pipeline-scan -f src/<file>
```
