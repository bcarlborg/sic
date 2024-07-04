# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Initialize Variables
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# For now, sic is intended to be compiled with clang
# TODO: eventually I'd like to make this be configurable by an end user by
#       checking if the user has defined a CC environment variable
SIC_CC=clang

# The directory of our source files
SIC_SRC_DIR=src

# SIC_EXECUTABLE_NAME is the name of the program's main binary
SIC_EXECUTABLE_NAME=sic
SIC_EXECUTABLE_PATH=$(SIC_SRC_DIR)/$(SIC_EXECUTABLE_NAME)

# SIC_OBJ represents the list of all object files in src/
# every .c file in src/ should have a corresponding .o file in this variable
SIC_OBJ_NAMES=main.o
SIC_OBJ_PATHS=$(addprefix $(SIC_SRC_DIR)/,$(SIC_OBJ_NAMES))


# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Make recipes
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


all: $(SIC_EXECUTABLE_PATH)

$(SIC_EXECUTABLE_PATH): $(SIC_OBJ_PATHS)
	$(LD) -o $@ $^

%.o: %.c 
	$(CC) -o $@ -c $^

clean:
	rm -rf $(SIC_EXECUTABLE_PATH) $(SIC_SRC_DIR)/*.o
