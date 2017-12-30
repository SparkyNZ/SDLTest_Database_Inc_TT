ROOT_PATH   := $(call my-dir)

include $(ROOT_PATH)/SQLite/SQLite.mk
include $(ROOT_PATH)/TinyXML/TinyXML.mk
include $(ROOT_PATH)/Database/Database.mk
include $(ROOT_PATH)/src/Startup.mk
