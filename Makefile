all:
	git config --add --global url."git@github.com:".insteadOf https://github.com
	go mod download
	go mod tidy -compat=1.17
	mkdir -p bin
	rm -f bin/*
	go build -o bin ./...