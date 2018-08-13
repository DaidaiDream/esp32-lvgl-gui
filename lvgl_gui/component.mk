#
# Main Makefile. This is basically the same as a component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)
#GFXENGINE_DIR := gfxengine

ifndef CONFIG_LVGL_GUI_ENABLE
COMPONENT_ADD_INCLUDEDIRS := 
COMPONENT_SRCDIRS :=
else
LVGLLIB = lvgl

COMPONENT_SRCDIRS += \
    ./include \
    $(LVGLLIB) \
    $(LVGLLIB)/lv_core \
    $(LVGLLIB)/lv_draw \
    $(LVGLLIB)/lv_hal \
    $(LVGLLIB)/lv_misc \
    $(LVGLLIB)/lv_misc/lv_fonts \
    $(LVGLLIB)/lv_objx \
    $(LVGLLIB)/lv_themes \

COMPONENT_ADD_INCLUDEDIRS := . \
    ./include \
    $(LVGLLIB) \
    $(LVGLLIB)/lv_core \
    $(LVGLLIB)/lv_draw \
    $(LVGLLIB)/lv_hal \
    $(LVGLLIB)/lv_misc \
    $(LVGLLIB)/lv_misc/lv_fonts \
    $(LVGLLIB)/lv_objx \
    $(LVGLLIB)/lv_themes \

COMPONENT_PRIV_INCLUDEDIRS +=  . \
    ./include \
    $(LVGLLIB) \
    $(LVGLLIB)/lv_core \
    $(LVGLLIB)/lv_draw \
    $(LVGLLIB)/lv_hal \
    $(LVGLLIB)/lv_misc \
    $(LVGLLIB)/lv_misc/lv_fonts \
    $(LVGLLIB)/lv_objx \
    $(LVGLLIB)/lv_themes \

ifdef CONFIG_LVGL_USE_CUSTOM_DRIVER
COMPONENT_DEPENDS += $(call dequote,$(CONFIG_LVGL_CUSTOM_DRIVER_COMPONENT_NAME))
endif

endif  #CONFIG_LVGL_GUI_ENABLE
