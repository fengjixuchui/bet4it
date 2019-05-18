CC = gcc
CFLAGS = -fstack-protector-all -Wall -fPIE -pie -Wl,-z,relro -Wl,-z,now -no-pie
TARGET = main

all: $(TARGET) 

$(TARGET): $(TARGET).c
		$(CC) $(TARGET).c  -o $(TARGET) $(CFLAGS)

clean:
		$(RM) $(TARGET)
	
release:
		$(CC) $(TARGET).c -o $(TARGET) $(CFLAGS) && strip $(TARGET)
