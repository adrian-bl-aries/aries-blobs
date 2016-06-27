#!/bin/sh

SB="vendor/sony/shinano-common/proprietary"

echo "PRODUCT_COPY_FILES += \\"
(
  cd proprietary ;
  find * -type f | sort | awk '{print "    '$SB'/" $1 ":" $1 " \\" }'
)
echo
