// machine generated, do not edit

using System;

namespace sokol
{
	public static class App
	{
		public const int max_touchpoints = 8;
		public const int max_mousebuttons = 3;
		public const int max_keycodes = 512;
		public const int max_iconimages = 8;

		public enum EventType : int32
		{
			INVALID,
			KEY_DOWN,
			KEY_UP,
			CHAR,
			MOUSE_DOWN,
			MOUSE_UP,
			MOUSE_SCROLL,
			MOUSE_MOVE,
			MOUSE_ENTER,
			MOUSE_LEAVE,
			TOUCHES_BEGAN,
			TOUCHES_MOVED,
			TOUCHES_ENDED,
			TOUCHES_CANCELLED,
			RESIZED,
			ICONIFIED,
			RESTORED,
			FOCUSED,
			UNFOCUSED,
			SUSPENDED,
			RESUMED,
			UPDATE_CURSOR,
			QUIT_REQUESTED,
			CLIPBOARD_PASTED,
			FILES_DROPPED,
			NUM,
		}

		public enum Keycode : int32
		{
			INVALID = 0,
			SPACE = 32,
			APOSTROPHE = 39,
			COMMA = 44,
			MINUS = 45,
			PERIOD = 46,
			SLASH = 47,
			_0 = 48,
			_1 = 49,
			_2 = 50,
			_3 = 51,
			_4 = 52,
			_5 = 53,
			_6 = 54,
			_7 = 55,
			_8 = 56,
			_9 = 57,
			SEMICOLON = 59,
			EQUAL = 61,
			A = 65,
			B = 66,
			C = 67,
			D = 68,
			E = 69,
			F = 70,
			G = 71,
			H = 72,
			I = 73,
			J = 74,
			K = 75,
			L = 76,
			M = 77,
			N = 78,
			O = 79,
			P = 80,
			Q = 81,
			R = 82,
			S = 83,
			T = 84,
			U = 85,
			V = 86,
			W = 87,
			X = 88,
			Y = 89,
			Z = 90,
			LEFT_BRACKET = 91,
			BACKSLASH = 92,
			RIGHT_BRACKET = 93,
			GRAVE_ACCENT = 96,
			WORLD_1 = 161,
			WORLD_2 = 162,
			ESCAPE = 256,
			ENTER = 257,
			TAB = 258,
			BACKSPACE = 259,
			INSERT = 260,
			DELETE = 261,
			RIGHT = 262,
			LEFT = 263,
			DOWN = 264,
			UP = 265,
			PAGE_UP = 266,
			PAGE_DOWN = 267,
			HOME = 268,
			END = 269,
			CAPS_LOCK = 280,
			SCROLL_LOCK = 281,
			NUM_LOCK = 282,
			PRINT_SCREEN = 283,
			PAUSE = 284,
			F1 = 290,
			F2 = 291,
			F3 = 292,
			F4 = 293,
			F5 = 294,
			F6 = 295,
			F7 = 296,
			F8 = 297,
			F9 = 298,
			F10 = 299,
			F11 = 300,
			F12 = 301,
			F13 = 302,
			F14 = 303,
			F15 = 304,
			F16 = 305,
			F17 = 306,
			F18 = 307,
			F19 = 308,
			F20 = 309,
			F21 = 310,
			F22 = 311,
			F23 = 312,
			F24 = 313,
			F25 = 314,
			KP_0 = 320,
			KP_1 = 321,
			KP_2 = 322,
			KP_3 = 323,
			KP_4 = 324,
			KP_5 = 325,
			KP_6 = 326,
			KP_7 = 327,
			KP_8 = 328,
			KP_9 = 329,
			KP_DECIMAL = 330,
			KP_DIVIDE = 331,
			KP_MULTIPLY = 332,
			KP_SUBTRACT = 333,
			KP_ADD = 334,
			KP_ENTER = 335,
			KP_EQUAL = 336,
			LEFT_SHIFT = 340,
			LEFT_CONTROL = 341,
			LEFT_ALT = 342,
			LEFT_SUPER = 343,
			RIGHT_SHIFT = 344,
			RIGHT_CONTROL = 345,
			RIGHT_ALT = 346,
			RIGHT_SUPER = 347,
			MENU = 348,
		}

		[CRepr]
		public struct Touchpoint
		{
			public uint identifier  = 0;
			public float pos_x  = 0.0f;
			public float pos_y  = 0.0f;
			public bool changed  = false;
		}

		public enum Mousebutton : int32
		{
			LEFT = 0,
			RIGHT = 1,
			MIDDLE = 2,
			INVALID = 256,
		}
		public const int modifier_shift = 1;
		public const int modifier_ctrl = 2;
		public const int modifier_alt = 4;
		public const int modifier_super = 8;
		public const int modifier_lmb = 256;
		public const int modifier_rmb = 512;
		public const int modifier_mmb = 1024;

		[CRepr]
		public struct Event
		{
			public uint64 frame_count  = 0;
			public EventType type = .INVALID;
			public Keycode key_code = .INVALID;
			public uint32 char_code  = 0;
			public bool key_repeat  = false;
			public uint32 modifiers  = 0;
			public Mousebutton mouse_button = .LEFT;
			public float mouse_x  = 0.0f;
			public float mouse_y  = 0.0f;
			public float mouse_dx  = 0.0f;
			public float mouse_dy  = 0.0f;
			public float scroll_x  = 0.0f;
			public float scroll_y  = 0.0f;
			public int32 num_touches  = 0;
			public Touchpoint[8] touches = .();
			public int32 window_width  = 0;
			public int32 window_height  = 0;
			public int32 framebuffer_width  = 0;
			public int32 framebuffer_height  = 0;
		}

		[CRepr]
		public struct Range
		{
			public void* ptr = null;
			public uint size  = 0;
		}

		[CRepr]
		public struct ImageDesc
		{
			public int32 width  = 0;
			public int32 height  = 0;
			public Range pixels = .();
		}

		[CRepr]
		public struct IconDesc
		{
			public bool sokol_default  = false;
			public ImageDesc[8] images = .();
		}

		[CRepr]
		public struct Allocator
		{
			public function void*(uint, void*) alloc = null;
			public function void(void*, void*) free = null;
			public void* user_data = null;
		}

		[CRepr]
		public struct Desc
		{
			public function void() init_cb = null;
			public function void() frame_cb = null;
			public function void() cleanup_cb = null;
			public function void(Event*) event_cb = null;
			public function void(char8*) fail_cb = null;
			public void* user_data = null;
			public function void(void*) init_userdata_cb = null;
			public function void(void*) frame_userdata_cb = null;
			public function void(void*) cleanup_userdata_cb = null;
			public function void(Event*, void*) event_userdata_cb = null;
			public function void(char8*, void*) fail_userdata_cb = null;
			public int32 width  = 0;
			public int32 height  = 0;
			public int32 sample_count  = 0;
			public int32 swap_interval  = 0;
			public bool high_dpi  = false;
			public bool fullscreen  = false;
			public bool alpha  = false;
			public char8* window_title = null;
			public bool user_cursor  = false;
			public bool enable_clipboard  = false;
			public int32 clipboard_size  = 0;
			public bool enable_dragndrop  = false;
			public int32 max_dropped_files  = 0;
			public int32 max_dropped_file_path_length  = 0;
			public IconDesc icon = .();
			public Allocator allocator = .();
			public bool gl_force_gles2  = false;
			public int32 gl_major_version  = 0;
			public int32 gl_minor_version  = 0;
			public bool win32_console_utf8  = false;
			public bool win32_console_create  = false;
			public bool win32_console_attach  = false;
			public char8* html5_canvas_name = null;
			public bool html5_canvas_resize  = false;
			public bool html5_preserve_drawing_buffer  = false;
			public bool html5_premultiplied_alpha  = false;
			public bool html5_ask_leave_site  = false;
			public bool ios_keyboard_resizes_canvas  = false;
		}

		public enum Html5FetchError : int32
		{
			FETCH_ERROR_NO_ERROR,
			FETCH_ERROR_BUFFER_TOO_SMALL,
			FETCH_ERROR_OTHER,
		}

		[CRepr]
		public struct Html5FetchResponse
		{
			public bool succeeded  = false;
			public Html5FetchError error_code = .FETCH_ERROR_NO_ERROR;
			public int32 file_index  = 0;
			public uint32 fetched_size  = 0;
			public void* buffer_ptr = null;
			public uint32 buffer_size  = 0;
			public void* user_data = null;
		}

		[CRepr]
		public struct Html5FetchRequest
		{
			public int32 dropped_file_index  = 0;
			public function void(Html5FetchResponse*) callback = null;
			public void* buffer_ptr = null;
			public uint32 buffer_size  = 0;
			public void* user_data = null;
		}

		[LinkName("sapp_isvalid")]
		public static extern bool isvalid();

		[LinkName("sapp_width")]
		public static extern int32 width();

		[LinkName("sapp_widthf")]
		public static extern float widthf();

		[LinkName("sapp_height")]
		public static extern int32 height();

		[LinkName("sapp_heightf")]
		public static extern float heightf();

		[LinkName("sapp_color_format")]
		public static extern int32 colorFormat();

		[LinkName("sapp_depth_format")]
		public static extern int32 depthFormat();

		[LinkName("sapp_sample_count")]
		public static extern int32 sampleCount();

		[LinkName("sapp_high_dpi")]
		public static extern bool highDpi();

		[LinkName("sapp_dpi_scale")]
		public static extern float dpiScale();

		[LinkName("sapp_show_keyboard")]
		public static extern void showKeyboard(bool show);

		[LinkName("sapp_keyboard_shown")]
		public static extern bool keyboardShown();

		[LinkName("sapp_is_fullscreen")]
		public static extern bool isFullscreen();

		[LinkName("sapp_toggle_fullscreen")]
		public static extern void toggleFullscreen();

		[LinkName("sapp_show_mouse")]
		public static extern void showMouse(bool show);

		[LinkName("sapp_mouse_shown")]
		public static extern bool mouseShown();

		[LinkName("sapp_lock_mouse")]
		public static extern void lockMouse(bool lock);

		[LinkName("sapp_mouse_locked")]
		public static extern bool mouseLocked();

		[LinkName("sapp_userdata")]
		public static extern void* userdata();

		[LinkName("sapp_query_desc")]
		public static extern Desc queryDesc();

		[LinkName("sapp_request_quit")]
		public static extern void requestQuit();

		[LinkName("sapp_cancel_quit")]
		public static extern void cancelQuit();

		[LinkName("sapp_quit")]
		public static extern void quit();

		[LinkName("sapp_consume_event")]
		public static extern void consumeEvent();

		[LinkName("sapp_frame_count")]
		public static extern uint64 frameCount();

		[LinkName("sapp_frame_duration")]
		public static extern double frameDuration();

		[LinkName("sapp_set_clipboard_string")]
		public static extern void setClipboardString(char8* str);

		[LinkName("sapp_get_clipboard_string")]
		public static extern char8* getClipboardString();

		[LinkName("sapp_set_window_title")]
		public static extern void setWindowTitle(char8* str);

		[LinkName("sapp_set_icon")]
		public static extern void setIcon(IconDesc* icon_desc);

		[LinkName("sapp_get_num_dropped_files")]
		public static extern int32 getNumDroppedFiles();

		[LinkName("sapp_get_dropped_file_path")]
		public static extern char8* getDroppedFilePath(int32 index);

		[LinkName("sapp_run")]
		public static extern void run(Desc* desc);

		[LinkName("sapp_gles2")]
		public static extern bool gles2();

		[LinkName("sapp_html5_ask_leave_site")]
		public static extern void html5AskLeaveSite(bool ask);

		[LinkName("sapp_html5_get_dropped_file_size")]
		public static extern uint32 html5GetDroppedFileSize(int32 index);

		[LinkName("sapp_html5_fetch_dropped_file")]
		public static extern void html5FetchDroppedFile(Html5FetchRequest* request);

		[LinkName("sapp_metal_get_device")]
		public static extern void* metalGetDevice();

		[LinkName("sapp_metal_get_renderpass_descriptor")]
		public static extern void* metalGetRenderpassDescriptor();

		[LinkName("sapp_metal_get_drawable")]
		public static extern void* metalGetDrawable();

		[LinkName("sapp_macos_get_window")]
		public static extern void* macosGetWindow();

		[LinkName("sapp_ios_get_window")]
		public static extern void* iosGetWindow();

		[LinkName("sapp_d3d11_get_device")]
		public static extern void* d3d11GetDevice();

		[LinkName("sapp_d3d11_get_device_context")]
		public static extern void* d3d11GetDeviceContext();

		[LinkName("sapp_d3d11_get_swap_chain")]
		public static extern void* d3d11GetSwapChain();

		[LinkName("sapp_d3d11_get_render_target_view")]
		public static extern void* d3d11GetRenderTargetView();

		[LinkName("sapp_d3d11_get_depth_stencil_view")]
		public static extern void* d3d11GetDepthStencilView();

		[LinkName("sapp_win32_get_hwnd")]
		public static extern void* win32GetHwnd();

		[LinkName("sapp_wgpu_get_device")]
		public static extern void* wgpuGetDevice();

		[LinkName("sapp_wgpu_get_render_view")]
		public static extern void* wgpuGetRenderView();

		[LinkName("sapp_wgpu_get_resolve_view")]
		public static extern void* wgpuGetResolveView();

		[LinkName("sapp_wgpu_get_depth_stencil_view")]
		public static extern void* wgpuGetDepthStencilView();

		[LinkName("sapp_android_get_native_activity")]
		public static extern void* androidGetNativeActivity();
	}
}
