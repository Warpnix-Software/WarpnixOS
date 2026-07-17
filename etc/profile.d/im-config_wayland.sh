# to be placed in /etc/profile.d/im-config_wayland.sh
IMLAUNCH=/usr/bin/im-launch
IM_CONFIG_ENTRY="profile"
export IM_CONFIG_ENTRY
. /usr/share/im-config/initializer
# # This sets the IM variables on Wayland only when im-config is installed
# if false && [ -x "$IMLAUNCH" ] && [ "$XDG_SESSION_TYPE" = 'wayland' ]; then
#     # If already tweaked, keep hands off :-)
#     # If im-config is removed but not purged, keep hands off :-)
#     if [ -z "$XMODIFIERS" ] &&
#         [ -z "$GTK_IM_MODULE" ] &&
#         [ -z "$QT_IM_MODULE" ] &&
#         [ -z "$CLUTTER_IM_MODULE" ] &&
#         [ -z "$SDL_IM_MODULE" ]; then
#         # if freash, set environments
#         logger_info "  Set environment variables (all empty strings)"
#         IM_CONFIG_PHASE=1
#         . /usr/share/im-config/im-config_setting
#     else
#         logger_info "  Skip setting environment variables (non-empty strings)"
#     fi
# else
#     logger_debug "  Skip setting environment variables (autostart script disabled)"
# fi
# logger_debug "  EXIT @profile IM_CONFIG_ENTRY='$IM_CONFIG_ENTRY'"
