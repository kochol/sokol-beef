// machine generated, do not edit

using System;

namespace sokol
{
	public static class Debugtext
	{
		// helper function to convert "anything" to a Range struct
		public static Range asRange<T>(Span<T> span)
		{
			Range range = Range {
				ptr = span.Ptr,
				size = (uint32)(span.Length * strideof(T))
			};

			return range;
		}


		[CRepr]
		public struct Context
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Range
		{
			public void* ptr = null;
			public uint size  = 0;
		}

		[CRepr]
		public struct FontDesc
		{
			public Range data = .();
			public uint8 first_char  = 0;
			public uint8 last_char  = 0;
		}

		[CRepr]
		public struct ContextDesc
		{
			public int32 char_buf_size  = 0;
			public float canvas_width  = 0.0f;
			public float canvas_height  = 0.0f;
			public int32 tab_width  = 0;
			public Gfx.PixelFormat color_format = .DEFAULT;
			public Gfx.PixelFormat depth_format = .DEFAULT;
			public int32 sample_count  = 0;
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
			public int32 context_pool_size  = 0;
			public int32 printf_buf_size  = 0;
			public FontDesc[8] fonts = .();
			public ContextDesc context = .();
			public Allocator allocator = .();
		}

		[LinkName("sdtx_setup")]
		public static extern void setup(Desc* desc);

		[LinkName("sdtx_shutdown")]
		public static extern void shutdown();

		[LinkName("sdtx_font_kc853")]
		public static extern FontDesc fontKc853();

		[LinkName("sdtx_font_kc854")]
		public static extern FontDesc fontKc854();

		[LinkName("sdtx_font_z1013")]
		public static extern FontDesc fontZ1013();

		[LinkName("sdtx_font_cpc")]
		public static extern FontDesc fontCpc();

		[LinkName("sdtx_font_c64")]
		public static extern FontDesc fontC64();

		[LinkName("sdtx_font_oric")]
		public static extern FontDesc fontOric();

		[LinkName("sdtx_make_context")]
		public static extern Context makeContext(ContextDesc* desc);

		[LinkName("sdtx_destroy_context")]
		public static extern void destroyContext(Context ctx);

		[LinkName("sdtx_set_context")]
		public static extern void setContext(Context ctx);

		[LinkName("sdtx_get_context")]
		public static extern Context getContext();

		[LinkName("sdtx_default_context")]
		public static extern Context defaultContext();

		[LinkName("sdtx_draw")]
		public static extern void draw();

		[LinkName("sdtx_font")]
		public static extern void font(int32 font_index);

		[LinkName("sdtx_canvas")]
		public static extern void canvas(float w, float h);

		[LinkName("sdtx_origin")]
		public static extern void origin(float x, float y);

		[LinkName("sdtx_home")]
		public static extern void home();

		[LinkName("sdtx_pos")]
		public static extern void pos(float x, float y);

		[LinkName("sdtx_pos_x")]
		public static extern void posX(float x);

		[LinkName("sdtx_pos_y")]
		public static extern void posY(float y);

		[LinkName("sdtx_move")]
		public static extern void move(float dx, float dy);

		[LinkName("sdtx_move_x")]
		public static extern void moveX(float dx);

		[LinkName("sdtx_move_y")]
		public static extern void moveY(float dy);

		[LinkName("sdtx_crlf")]
		public static extern void crlf();

		[LinkName("sdtx_color3b")]
		public static extern void color3b(uint8 r, uint8 g, uint8 b);

		[LinkName("sdtx_color3f")]
		public static extern void color3f(float r, float g, float b);

		[LinkName("sdtx_color4b")]
		public static extern void color4b(uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sdtx_color4f")]
		public static extern void color4f(float r, float g, float b, float a);

		[LinkName("sdtx_color1i")]
		public static extern void color1i(uint32 rgba);

		[LinkName("sdtx_putc")]
		public static extern void putc(char8 c);

		[LinkName("sdtx_puts")]
		public static extern void puts(char8* str);

		[LinkName("sdtx_putr")]
		public static extern void putr(char8* str, int32 len);
	}
}
