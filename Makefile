COMPILER = crystal
COMPILER_FLAGS = --release --verbose --progress -O3
EXECUTABLE = rspm
PROGRAM_FILE = ./src/rspm.cr

all: $(EXECUTABLE)

$(EXECUTABLE): $(PROGRAM_FILE)
	$(COMPILER) build $(PROGRAM_FILE) $(COMPILER_FLAGS)

clean:
	rm -f $(EXECUTABLE)

run: $(EXECUTABLE)
	./$(EXECUTABLE)
