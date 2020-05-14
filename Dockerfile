# getting base image ubuntu
FROM ubuntu
MAINTAINER arivan123 <thavabalanarivan199@gmail.com>
RUN apt-get update &&\
  apt-get -y install sudo &&\
  apt-get -y install acl &&\
  apt-get install bsdmainutils &&\
  apt-get -y install bc
COPY createuser.sh /createuser.sh
COPY permit.sh /permit.sh
COPY autoschedule.sh /autoschedule.sh
COPY attendance.sh /attendance.sh
COPY record.sh /record.sh
COPY final_attendance.sh /final_attendance.sh
COPY nearest.sh /nearest.sh
COPY automation.sh /automation.sh
COPY aliases.sh /aliases.sh
RUN bash aliases.sh 
CMD ["echo","yep you re here"]
