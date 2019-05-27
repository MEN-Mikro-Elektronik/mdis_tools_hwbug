OBJ 	= hwbug

MEN_LIN_DIR=/opt/menlinux

HWBUG_DIR=$(MEN_LIN_DIR)/TOOLS/HWBUG

FILES	= hwbug.o linux.o change.o display.o history.o strsave.c line_args.o

MAK_SWITCH = -DLINUX\
              -DMAC_IO_MAPPED_EN\

CC=gcc

CFLAGS	= -g -s $(MAK_SWITCH)

WARN_LEVEL := -Wall -Wno-format -Wno-strict-aliasing
%.o : $(CC) $(CFLAGS) -c $< -o $@

$(OBJ):	$(FILES) 
	echo Compiling $@
	$(CC) $(WARN_LEVEL) \
		$(FILES)  \
		-g -o $@

clean: clean_hwbug

clean_hwbug:
	rm -rf $(HWBUG_DIR)/*.o $(HWBUG_DIR)/hwbug
