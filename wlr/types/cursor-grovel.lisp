(in-package #:wlr/types/cursor)
(pkg-config-cflags "wlroots")
(cc-flags "-DWLR_USE_UNSTABLE")
(include "wlr/types/wlr_cursor.h")

(cstruct cursor "struct wlr_cursor"
	 (:x "x" :type :double)
	 (:y "y" :type :double)
	 (:event-motion "events.motion" :type (:struct wl_signal))
	 (:event-motion-absolute "events.motion_absolute" :type (:struct wl_signal))
	 (:event-button "events.button" :type (:struct wl_signal))
	 (:event-axis "events.axis":type (:struct wl_signal))
	 (:event-touch-up "events.touch_up" :type (:struct wl_signal))
	 (:event-touch-down "events.touch_down" :type (:struct  wl_signal))
	 (:event-touch-motion "events.touch_motion" :type (:struct  wl_signal))
	 (:event-touch-cancel "events.touch_cancel" :type (:struct  wl_signal))
	 (:event-tablet-tool-proximity "events.tablet_tool_proximity" :type (:struct  wl_signal))
	 (:event-tablet-tool-tip "events.tablet_tool_tip" :type (:struct  wl_signal))
	 (:event-tablet-tool-button "events.tablet_tool_button" :type (:struct  wl_signal)))
