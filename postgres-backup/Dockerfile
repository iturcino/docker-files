FROM postgres:9.3

MAINTAINER Ivan Turcinovic <ivan.turcinovic@inovatrend.com>

# Add script for creating tomcat admin user and starting tomcat
ADD pg_backup_rotated.sh /pg_backup_rotated.sh
RUN chmod +x /pg_backup_rotated.sh
