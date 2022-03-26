#!/system/bin/sh
# This script is needed to automatically set device props.

load_spes()
{
    resetprop "ro.product.model" "2201117TG"
    resetprop "ro.product.vendor.model" "2201117TG"
    resetprop "ro.product.name" "spes"
    resetprop "ro.build.product" "spes"
    resetprop "ro.product.device" "spes"
    resetprop "ro.product.system.device" "spes"
    resetprop "ro.product.vendor.device" "spes"
    resetprop "ro.vendor.product.device" "spes"
}

load_spesn()
{
    resetprop "ro.product.model" "2201117TY"
    resetprop "ro.product.vendor.model" "2201117TY"
    resetprop "ro.product.name" "spesn"
    resetprop "ro.build.product" "spesn"
    resetprop "ro.product.device" "spesn"
    resetprop "ro.product.system.device" "spesn"
    resetprop "ro.product.vendor.device" "spesn"
    resetprop "ro.vendor.product.device" "spesn"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_spes
        ;;
    "EUROPE")
        load_spesn
        ;;
    *)
        load_spes
        ;;
esac

exit 0
