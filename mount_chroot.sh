#!/bin/bash

chroot_mounts=(
    ["proc"]="proc:/home/ec2-user/packer-amazon-chroot/proc"
    ["sysfs"]="sysfs:/home/ec2-user/packer-amazon-chroot/sys"
    ["bind"]="/dev:/home/ec2-user/packer-amazon-chroot/dev"
)

for fs_type in "${!chroot_mounts[@]}"; do
    src_dest=(${chroot_mounts[$fs_type]//:/ })
    sudo mount -t $fs_type -o ${src_dest[0]} ${src_dest[1]}
done
