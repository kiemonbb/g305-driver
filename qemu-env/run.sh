qemu-system-x86_64 -enable-kvm -cpu host -smp 4 -m 4G \
    -drive file=arch.qcow2,if=virtio \
    -nic user,hostfwd=tcp::2222-:22 \
    -virtfs local,path=$(pwd)/..,mount_tag=share,security_model=none \
    -device qemu-xhci,id=xhci \
    -device usb-host,bus=xhci.0,vendorid=0x046d,productid=0xc53f \
    -display none \
    -monitor stdio
