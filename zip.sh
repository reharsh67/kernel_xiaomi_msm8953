rm -rf AnyKernel/Image.gz-dtb
echo "Removed old image"
cp /mnt/disks/ion/out/target/product/tissot/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz-dtb AnyKernel
echo "Copied new image"
TANGGAL=$(date +"%Y%m%d-%H")
function zipping() {
    cd AnyKernel || exit 1
    zip -r9 Perf-Kernel-${TANGGAL}.zip *
    #curl https://bashupload.com/Perf-Kernel-${TANGGAL}.zip --data-binary @Perf-Kernel-${TANGGAL}.zip
}
compile
zipping
