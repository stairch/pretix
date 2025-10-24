FROM pretix/standalone:stable
USER root
RUN pip3 install pretix-passbook
USER pretixuser
RUN cd /pretix/src && make production