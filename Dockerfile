docker run -d -p 3001:3000 --name semaphore_ansible \
--restart unless-stopped -v /home/debian/portainer/semaphore/etc:/etc/semaphore \
-v /home/debian/portainer/semaphore/lib:/var/lib/semaphore \
-e SEMAPHORE_DB_DIALECT=bolt -e SEMAPHORE_ADMIN=admin -e SEMAPHORE_ADMIN_PASSWORD=changeme -e SEMAPHORE_ADMIN_NAME=Admin \
-e SEMAPHORE_ADMIN_EMAIL=admin@localhost -e SEMAPHORE_ACCESS_KEY_ENCRYPTION=gs72mPntFATGJs2df93hlkafkgbdkfjb semaphoreui/semaphore:latest
