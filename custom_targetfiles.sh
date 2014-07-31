#/bin/bash

echo "in $0"

OUT_DIR=out/merged_target_files/

cp prebuilt/OTA/bin/updater $OUT_DIR/OTA/bin/updater

cp -r prebuilt/SYSTEM/ $OUT_DIR/

cat $OUT_DIR/SYSTEM/build.prop | sed -e "s/ro\.version\.type=.*/ro\.version\.type=2/" > $OUT_DIR/SYSTEM/build.prop.new
mv $OUT_DIR/SYSTEM/build.prop.new $OUT_DIR/SYSTEM/build.prop

#echo "ro.baidu.romer=静娴之霸王别姬" >> $OUT_DIR/SYSTEM/build.prop

#./../../tools/releasetools/ota_from_target_files -k ../../tools/security/testkey -i out/target-files-.zip out/target-files.zip out/-ota-.zip
