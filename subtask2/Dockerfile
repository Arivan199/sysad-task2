# getting base image ubuntu
FROM ubuntu
MAINTAINER arivan123 <thavabalanarivan199@gmail.com>
RUN apt-get update &&\
  apt-get -y install sudo &&\
  apt-get -y install acl &&\
  apt-get install bsdmainutils &&\
  apt-get install curl &&\
  apt-get -y install bc
COPY createuser.sh /createuser.sh
RUN bash createuser.sh
COPY permit.sh /permit.sh
RUN bash permit.sh
COPY autoschedule.sh /autoschedule.sh
RUN bash autoschedule.sh
COPY attendance.sh /attendance.sh
RUN bash attendance.sh
COPY record.sh /record.sh
RUN bash record.sh
COPY final_attendance.sh /final_attendance.sh
RUN bash final_attendance.sh
COPY nearest.sh /nearest.sh
RUN bash nearest.sh
COPY automation.sh /automation.sh
COPY aliases.sh /aliases.sh
RUN bash aliases.sh 
CMD ["echo","finished"]
