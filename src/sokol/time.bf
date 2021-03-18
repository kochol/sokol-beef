// machine generated, do not edit

using System;

namespace sokol
{
	public static class Time
	{

		[LinkName("stm_setup")]
		public static extern void setup();

		[LinkName("stm_now")]
		public static extern uint64 now();

		[LinkName("stm_diff")]
		public static extern uint64 diff(uint64 new_ticks, uint64 old_ticks);

		[LinkName("stm_since")]
		public static extern uint64 since(uint64 start_ticks);

		[LinkName("stm_laptime")]
		public static extern uint64 laptime(uint64* last_time);

		[LinkName("stm_round_to_common_refresh_rate")]
		public static extern uint64 roundToCommonRefreshRate(uint64 frame_ticks);

		[LinkName("stm_sec")]
		public static extern double sec(uint64 ticks);

		[LinkName("stm_ms")]
		public static extern double ms(uint64 ticks);

		[LinkName("stm_us")]
		public static extern double us(uint64 ticks);

		[LinkName("stm_ns")]
		public static extern double ns(uint64 ticks);
	}
}
