FROM scratch
ADD base.tar.xz /
ADD ccs.tar.xz /
ADD obsd-extra.tar.xz /
ADD jq.1.7.i86pc.64bit.Copacabana.0.4.tar.xz /

RUN for i in *.tar; do tar -xvf $i -C /; done;
RUN rm *.tar

RUN ln -s /usr/ccs/lib/libgcc_s.so /usr/lib/libgcc_s.so
RUN ln -s /usr/ccs/lib/libgcc_s.so.1 /usr/lib/libgcc_s.so.1