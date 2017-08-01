#FROM registry.atlas.b2w:5000/b2wdigital/superset-b2w:superset-configured
FROM registry.atlas.b2w:5000/b2wdigital/superset-b2w:base

ADD . /opt/superset

ENV PYTHONIOENCODING=UTF-8

RUN chmod -R a+rx /opt/superset
RUN /opt/superset/superset-install-0.17.4.sh

ENTRYPOINT /opt/superset/superset.run

