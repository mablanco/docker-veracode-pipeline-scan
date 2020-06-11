FROM mablanco/adoptopenjdk8-hotspot:latest
RUN apt-get update && \
    apt-get -yq install unzip && \
    wget -q https://downloads.veracode.com/securityscan/pipeline-scan-LATEST.zip && \
    unzip pipeline-scan-LATEST.zip && \
    rm pipeline-scan-LATEST.zip && \
    apt-get -yq --purge remove unzip && \
    apt-get -yq autoremove && \
    apt-get clean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}
CMD ["java", "-jar", "pipeline-scan.jar"]
