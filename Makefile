test:
	prove -lv t/*.t

cover:
	docker build -t jig:local .
	docker run --rm -i -v $$PWD/coverage:/root/cover_db/ jig:local
