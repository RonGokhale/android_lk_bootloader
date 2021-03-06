LOCAL_DIR := $(GET_LOCAL_DIR)

INCLUDES += -I$(LOCAL_DIR)/include -I$(LK_TOP_DIR)/platform/msm_shared

PLATFORM := mdm9x25

MEMBASE          := 0x01E00000
MEMSIZE          := 0x00100000 # 1MB
SCRATCH_ADDR     := 0x00200000

DEFINES += NO_KEYPAD_DRIVER=1

MODULES += \
	dev/keys \
	lib/ptable

DEFINES += \
	MEMBASE=$(MEMBASE) \
	SCRATCH_ADDR=$(SCRATCH_ADDR)

OBJS += \
	$(LOCAL_DIR)/init.o
