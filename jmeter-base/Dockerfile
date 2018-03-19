# Use Ubuntu
FROM ubuntu
MAINTAINER Loc Mai (original: TestAutomationGuru)

# Install wger & JRE
RUN apt-get clean && \
	apt-get update && \
	apt-get -qy install \
				wget \
				default-jre-headless \
				telnet \
				iputils-ping \
				unzip

ARG JMETER_VERSION="3.3"

# Install jmeter
RUN   mkdir /jmeter \
      && cd /jmeter/ \
      && wget --no-check-certificate https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-3.3.tgz \
      && tar -xzf apache-jmeter-${JMETER_VERSION}.tgz \
      && rm apache-jmeter-${JMETER_VERSION}.tgz \
	  && mkdir /jmeter-plugins \
	  && cd /jmeter-plugins/ \
	  && wget --no-check-certificate https://jmeter-plugins.org/downloads/file/JMeterPlugins-ExtrasLibs-1.4.0.zip \
	  && unzip -o JMeterPlugins-ExtrasLibs-1.4.0.zip -d /jmeter/apache-jmeter-${JMETER_VERSION}/

# Set Jmeter Home
ENV JMETER_HOME /jmeter/apache-jmeter-${JMETER_VERSION}/

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
