#!/usr/bin/env bash

# Copyright 2021 Hewlett Packard Enterprise Development LP

PIT_ASSETS=(
    http://car.dev.cray.com/artifactory/csm/MTL/sle15_sp2_ncn/x86_64/release/shasta-1.4/casmpet-team/cray-pre-install-toolkit-sle15sp2.x86_64-1.4.9-20210306091533-g1e67449.iso
    http://car.dev.cray.com/artifactory/csm/MTL/sle15_sp2_ncn/x86_64/release/shasta-1.4/casmpet-team/cray-pre-install-toolkit-sle15sp2.x86_64-1.4.9-20210306091533-g1e67449.packages
    http://car.dev.cray.com/artifactory/csm/MTL/sle15_sp2_ncn/x86_64/release/shasta-1.4/casmpet-team/cray-pre-install-toolkit-sle15sp2.x86_64-1.4.9-20210306091533-g1e67449.verified
)

KUBERNETES_ASSETS=(
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/kubernetes/0.0.52-3/kubernetes-0.0.52-3.squashfs
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/kubernetes/0.0.52-3/5.3.18-24.49-default-0.0.52-3.kernel
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/kubernetes/0.0.52-3/initrd.img-0.0.52-3.xz
)

STORAGE_CEPH_ASSETS=(
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/storage-ceph/0.0.43-3/storage-ceph-0.0.43-3.squashfs
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/storage-ceph/0.0.43-3/5.3.18-24.49-default-0.0.43-3.kernel
    https://arti.dev.cray.com/artifactory/node-images-unstable-local/shasta/storage-ceph/0.0.43-3/initrd.img-0.0.43-3.xz
)

set -exo pipefail

# Verify assets exist
for url in "${PIT_ASSETS[@]}"; do curl -sfSLI "$url"; done
for url in "${KUBERNETES_ASSETS[@]}"; do curl -sfSLI "$url"; done
for url in "${STORAGE_CEPH_ASSETS[@]}"; do curl -sfSLI "$url"; done
