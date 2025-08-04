{ config, pkgs, ... }:

let
  script = pkgs.writeShellScript "battery-notify" ''
    while true; do
      BAT=$(cat /sys/class/power_supply/BAT0/capacity)
      if [ "$BAT" -le 15 ]; then
        ${pkgs.libnotify}/bin/notify-send "Low Battery" "Battery is at $BAT%"
      fi
      sleep 300
    done
  '';
in {
  systemd.user.services.battery-notify = {
    description = "Battery Low Notification Service";
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${script}";
      Restart = "always";
    };
  };
}
