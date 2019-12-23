OUT_DIR=bin
build: clean
    @mkdir -p $(OUT_DIR)
        @crystal build --release -o $(OUT_DIR)/app src/randomISBN.cr
clean:
    rm $(OUT_DIR)/app