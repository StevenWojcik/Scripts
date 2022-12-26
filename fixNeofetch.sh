#! /bin/bash

cat <<EOF > /home/$USER/.config/neofetch/config.conf

print_info() {
    info title
    info underline

    prin "$(color 12)╭──────────── $(color 10)Software$(color 12) ────────────"
    info "$(color 12)│ $(color 14)OS" distro
    info "$(color 12)│ $(color 14)Kernel" kernel
    info "$(color 12)│ $(color 14)Packages" packages
    info "$(color 12)│ $(color 14)Shell" shell
    info "$(color 12)│ $(color 14)DE" de
    info "$(color 12)│ $(color 14)Terminal" term
    info "$(color 12)│ $(color 14)Local IP" local_ip
    prin "$(color 12)├──────────── $(color 10)Hardware$(color 12) ────────────"
    info "$(color 12)│ $(color 14)Host" model
    info "$(color 12)│ $(color 14)CPU" cpu
    info "$(color 12)│ $(color 14)GPU" gpu
    info "$(color 12)│ $(color 14)Memory" memory
    info "$(color 12)│ $(color 14)Disk" disk
    prin "$(color 12)├───────────── $(color 10)Uptime$(color 12) ─────────────"
    info "$(color 12)│" uptime
    prin "$(color 12)╰──────────────────────────────────"

    info cols

    # Defaults

    # info "OS" distro
    # info "Host" model
    # info "Kernel" kernel
    # info "Uptime" uptime
    # info "Packages" packages
    # info "Shell" shell
    # info "Resolution" resolution
    # info "DE" de
    # info "WM" wm
    # info "WM Theme" wm_theme
    # info "Theme" theme
    # info "Icons" icons
    # info "Terminal" term
    # info "Terminal Font" term_font
    # info "CPU" cpu
    # info "GPU" gpu
    # info "Memory" memory

    # info "GPU Driver" gpu_driver  # Linux/macOS only
    # info "CPU Usage" cpu_usage
    # info "Disk" disk
    # info "Battery" battery
    # info "Font" font
    # info "Song" song
    # [[ "$player" ]] && prin "Music Player" "$player"
    # info "Local IP" local_ip
    # info "Public IP" public_ip
    # info "Users" users
    # info "Locale" locale  # This only works on glibc systems.

    # info cols

}

# To know what these functions mean, go to the Customization Wiki on top

title_fqdn="off"
kernel_shorthand="on"
distro_shorthand="on"
os_arch="off"
uptime_shorthand="off"
memory_percent="off"
memory_unit="mib"
package_managers="on"
shell_path="off"
shell_version="on"
cpu_brand="on"
cpu_speed="on"
cpu_cores="logical"
cpu_temp="off"
gpu_type="all"
refresh_rate="on"
gtk_shorthand="on"
gtk2="on"
gtk3="on"
public_ip_host="http://ident.me"
public_ip_timeout=2
de_version="on"
disk_subtitle="dir"
disk_percent="on"
music_player="auto"
song_format="%artist% - %title%"
mpc_args=()
colors=(distro)
underline_enabled="on"
underline_char="¨"
separator="›"
color_blocks="on"
block_width=3
block_height=1
col_offset="auto"
bar_char_elapsed="-"
bar_char_total="="
bar_border="on"
bar_length=15
bar_color_elapsed="distro"
bar_color_total="distro"
cpu_display="off"
memory_display="off"
battery_display="off"
disk_display="off"
image_source="auto"
ascii_distro="auto"
ascii_bold="on"
image_loop="off"
thumbnail_dir="${XDG_CACHE_HOME:-${HOME}/.cache}/thumbnails/neofetch"
crop_mode="normal"
crop_offset="center"
image_size="auto"
gap=3
yoffset=0
xoffset=0
background_color=
stdout="off" 
EOF 
