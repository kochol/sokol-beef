// machine generated, do not edit

using System;

namespace sokol
{
	public static class Audio
	{

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
			public int32 sample_rate  = 0;
			public int32 num_channels  = 0;
			public int32 buffer_frames  = 0;
			public int32 packet_frames  = 0;
			public int32 num_packets  = 0;
			public function void(float*, int32, int32) stream_cb = null;
			public function void(float*, int32, int32, void*) stream_userdata_cb = null;
			public void* user_data = null;
			public Allocator allocator = .();
		}

		[LinkName("saudio_setup")]
		public static extern void setup(Desc* desc);

		[LinkName("saudio_shutdown")]
		public static extern void shutdown();

		[LinkName("saudio_isvalid")]
		public static extern bool isvalid();

		[LinkName("saudio_userdata")]
		public static extern void* userdata();

		[LinkName("saudio_query_desc")]
		public static extern Desc queryDesc();

		[LinkName("saudio_sample_rate")]
		public static extern int32 sampleRate();

		[LinkName("saudio_buffer_frames")]
		public static extern int32 bufferFrames();

		[LinkName("saudio_channels")]
		public static extern int32 channels();

		[LinkName("saudio_suspended")]
		public static extern bool suspended();

		[LinkName("saudio_expect")]
		public static extern int32 expect();

		[LinkName("saudio_push")]
		public static extern int32 push(float* frames, int32 num_frames);
	}
}
