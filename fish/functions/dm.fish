function dm
	if count $argv > /dev/null
		switch $argv[1]
			case use
				set -gx DOCKER_TLS_VERIFY "";
				set -gx DOCKER_HOST "";
				set -gx DOCKER_CERT_PATH "";
				set -gx DOCKER_MACHINE_NAME "";
				if [ "Stopped" = (docker-machine status $argv[2]) ]
					docker-machine start $argv[2]
				end
				eval (docker-machine env $argv[2])
			case unuse
				set -gx DOCKER_TLS_VERIFY "";
				set -gx DOCKER_HOST "";
				set -gx DOCKER_CERT_PATH "";
				set -gx DOCKER_MACHINE_NAME "";
			case '*'
				docker-machine $argv
		end
	else
		docker-machine
	end
end
