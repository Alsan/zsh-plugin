alias service-list='sudo service --status-all'

function service-start() {
	sudo service $1 start
}

function service-status() {
	sudo service $1 status
}

function service-stop() {
	sudo service $1 stop
}

function service-enable() {
	sudo systemctl enable $1.service
}

function service-disable() {
	sudo systemctl disable $1.service
}
