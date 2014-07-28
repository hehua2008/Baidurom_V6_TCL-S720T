
import common
import edify_generator

def RemoveDeviceAssert(info):
    edify = info.script
    edify.AppendExtra("""ui_print("Complete by hehua2008...");
ui_print("...bbs.tclmobile.com.cn...");""")
    for i in xrange(len(edify.script)):
        if "ro.product" in edify.script[i]:
          edify.script[i] = """ui_print("****************************");
ui_print("*         TCL S720T        *");
ui_print("*         BaiduROM         *");
ui_print("*         14.06.12         *");
ui_print("*        by hehua2008      *");
ui_print("*   bbs.tclmobile.com.cn   *");
ui_print("****************************");"""
    return

def AddArgsForFormatSystem(info):
    edify = info.script
    for i in xrange(len(edify.script)):
      if "format(" in edify.script[i] and "mmcblk0p5" in edify.script[i]:
        edify.script[i] = 'format("ext4", "EMMC", "/dev/block/mmcblk0p5", "0", "/system");'
    return

def WriteRecoveryImage(info):
    edify = info.script
    for i in xrange(len(edify.script)):
      if "write_raw_image(" in edify.script[i]:
        edify.script[i] = 'package_extract_file("recovery.img", "/dev/recovery");'
    return

def RemoveRecoveryImage(info):
    edify = info.script
    for i in xrange(len(edify.script)):
      if "recovery" in edify.script[i]:
        edify.script[i] = 'ui_print("Remove update recovery script written automatically by Baidu");'
    return

def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    AddArgsForFormatSystem(info)
    RemoveRecoveryImage(info)
#    WriteRecoveryImage(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveRecoveryImage(info)
#    WriteRecoveryImage(info)

