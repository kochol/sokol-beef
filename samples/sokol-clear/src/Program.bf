using System;
using sokol;

namespace sokol_clear
{
	class Program
	{
		static Gfx.Desc _desc = .();
		static Gfx.PassAction _pass = .();

		static void OnInit()
		{
			_desc.context = Glue.sgcontext();
			Gfx.setup(&_desc);
			_pass.colors[0] = .{ action = .CLEAR, value = .{ r=1, g=1, b=0, a=1 } };
		}

		static void OnFrame()
		{
			let g = _pass.colors[0].value.g + 0.0001f;
			_pass.colors[0].value.g = g > 1.0f ? 0.0f : g;
			Gfx.beginDefaultPass(&_pass, App.width(), App.height());
			Gfx.endPass();
			Gfx.commit();
		}

		static void OnEvent(App.Event* _event)
		{

		}

		static void OnCleanUp()
		{
			Gfx.shutdown();
		}

		static void OnFail(char8* msg)
		{
			Console.WriteLine(msg);
		}

		public static int Main(String[] args)
		{
			App.Desc desc = .();
			desc.init_cb = => OnInit;
			desc.frame_cb = => OnFrame;
			desc.event_cb = => OnEvent;
			desc.cleanup_cb = => OnCleanUp;
			desc.fail_cb = => OnFail;
			desc.window_title = "Beef-Clear";
			App.run(&desc);

			return 0;
		}
	}
}