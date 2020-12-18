all:
	docker build ./ -t postgres11.service
	docker volume create postgres11.service.data
	cp ./postgres11 /etc/systemd/system/postgres11.service
	chmod 664 /etc/systemd/system/postgres11.service
	systemctl enable postgres11.service
	systemctl restart postgres11.service