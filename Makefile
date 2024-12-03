all:
	cd srcs && sudo docker compose up --build

down:
	cd srcs && sudo docker compose down

prune:
	cd srcs && sudo docker system prune -af

remove_volumes:
	sudo rm -rf /home/aolde-mo/data/wp_vol/* /home/aolde-mo/data/mdb_vol/*

fclean: down prune remove_volumes
	