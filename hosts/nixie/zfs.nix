{ config, pkgs, ... }:

{ boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "eeaf5664";
  boot.kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.initrd.supportedFilesystems = [ "zfs" ];
  boot.loader.grub.extraPrepareConfig = ''

    mkdir -p /boot/efi
    mount /boot/efi
  '';
  services.zfs.autoScrub.enable = true;
  services.zfs.trim.enable = true;
  boot.kernelParams = [ "nohibernate" ];
  users.users.root.initialHashedPassword = "$6$9MBXWuOODAt9fRB5$hJj3WLOh.juo5cJ6QgRdnbQwwY2nSj3F.F8GuSo/8izkMzNFSGxFEDQBmnoWasmdsNJm3xqvtCunV5.BQ30uN1";
}
