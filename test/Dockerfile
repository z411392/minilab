FROM busybox
ADD scripts scripts
RUN { \
    main=/scripts/$(ls -t scripts|head -n 1); \
    chmod +x $main; \
    ln -s $main /main; \
    }
CMD /main
