From node:7-onbuild

#set maintainer
Label maintainer="qubeena7@gmail.com"

#sey a healhcheck
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://localhost:3000/ || exit 1

#tell docker to expose port 8000
EXPOSE 8000