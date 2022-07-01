// machine generated, do not edit

using System;

namespace sokol
{
	public static class Gl
	{

		[CRepr]
		public struct Pipeline
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Context
		{
			public uint32 id  = 0;
		}

		public enum Error : int32
		{
			ERROR = 0,
			VERTICES_FULL,
			UNIFORMS_FULL,
			COMMANDS_FULL,
			STACK_OVERFLOW,
			STACK_UNDERFLOW,
			NO_CONTEXT,
		}

		[CRepr]
		public struct ContextDesc
		{
			public int32 max_vertices  = 0;
			public int32 max_commands  = 0;
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
			public int32 max_vertices  = 0;
			public int32 max_commands  = 0;
			public int32 context_pool_size  = 0;
			public int32 pipeline_pool_size  = 0;
			public Gfx.PixelFormat color_format = .DEFAULT;
			public Gfx.PixelFormat depth_format = .DEFAULT;
			public int32 sample_count  = 0;
			public Gfx.FaceWinding face_winding = .DEFAULT;
			public Allocator allocator = .();
		}

		[LinkName("sgl_setup")]
		public static extern void setup(Desc* desc);

		[LinkName("sgl_shutdown")]
		public static extern void shutdown();

		[LinkName("sgl_rad")]
		public static extern float asRadians(float deg);

		[LinkName("sgl_deg")]
		public static extern float asDegrees(float rad);

		[LinkName("sgl_error")]
		public static extern Error getError();

		[LinkName("sgl_context_error")]
		public static extern Error contextError(Context ctx);

		[LinkName("sgl_make_context")]
		public static extern Context makeContext(ContextDesc* desc);

		[LinkName("sgl_destroy_context")]
		public static extern void destroyContext(Context ctx);

		[LinkName("sgl_set_context")]
		public static extern void setContext(Context ctx);

		[LinkName("sgl_get_context")]
		public static extern Context getContext();

		[LinkName("sgl_default_context")]
		public static extern Context defaultContext();

		[LinkName("sgl_make_pipeline")]
		public static extern Pipeline makePipeline(Gfx.PipelineDesc* desc);

		[LinkName("sgl_context_make_pipeline")]
		public static extern Pipeline contextMakePipeline(Context ctx, Gfx.PipelineDesc* desc);

		[LinkName("sgl_destroy_pipeline")]
		public static extern void destroyPipeline(Pipeline pip);

		[LinkName("sgl_defaults")]
		public static extern void defaults();

		[LinkName("sgl_viewport")]
		public static extern void viewport(int32 x, int32 y, int32 w, int32 h, bool origin_top_left);

		[LinkName("sgl_viewportf")]
		public static extern void viewportf(float x, float y, float w, float h, bool origin_top_left);

		[LinkName("sgl_scissor_rect")]
		public static extern void scissorRect(int32 x, int32 y, int32 w, int32 h, bool origin_top_left);

		[LinkName("sgl_scissor_rectf")]
		public static extern void scissorRectf(float x, float y, float w, float h, bool origin_top_left);

		[LinkName("sgl_enable_texture")]
		public static extern void enableTexture();

		[LinkName("sgl_disable_texture")]
		public static extern void disableTexture();

		[LinkName("sgl_texture")]
		public static extern void texture(Gfx.Image img);

		[LinkName("sgl_load_default_pipeline")]
		public static extern void loadDefaultPipeline();

		[LinkName("sgl_load_pipeline")]
		public static extern void loadPipeline(Pipeline pip);

		[LinkName("sgl_push_pipeline")]
		public static extern void pushPipeline();

		[LinkName("sgl_pop_pipeline")]
		public static extern void popPipeline();

		[LinkName("sgl_matrix_mode_modelview")]
		public static extern void matrixModeModelview();

		[LinkName("sgl_matrix_mode_projection")]
		public static extern void matrixModeProjection();

		[LinkName("sgl_matrix_mode_texture")]
		public static extern void matrixModeTexture();

		[LinkName("sgl_load_identity")]
		public static extern void loadIdentity();

		[LinkName("sgl_load_matrix")]
		public static extern void loadMatrix(float* m);

		[LinkName("sgl_load_transpose_matrix")]
		public static extern void loadTransposeMatrix(float* m);

		[LinkName("sgl_mult_matrix")]
		public static extern void multMatrix(float* m);

		[LinkName("sgl_mult_transpose_matrix")]
		public static extern void multTransposeMatrix(float* m);

		[LinkName("sgl_rotate")]
		public static extern void rotate(float angle_rad, float x, float y, float z);

		[LinkName("sgl_scale")]
		public static extern void scale(float x, float y, float z);

		[LinkName("sgl_translate")]
		public static extern void translate(float x, float y, float z);

		[LinkName("sgl_frustum")]
		public static extern void frustum(float l, float r, float b, float t, float n, float f);

		[LinkName("sgl_ortho")]
		public static extern void ortho(float l, float r, float b, float t, float n, float f);

		[LinkName("sgl_perspective")]
		public static extern void perspective(float fov_y, float aspect, float z_near, float z_far);

		[LinkName("sgl_lookat")]
		public static extern void lookat(float eye_x, float eye_y, float eye_z, float center_x, float center_y, float center_z, float up_x, float up_y, float up_z);

		[LinkName("sgl_push_matrix")]
		public static extern void pushMatrix();

		[LinkName("sgl_pop_matrix")]
		public static extern void popMatrix();

		[LinkName("sgl_t2f")]
		public static extern void t2f(float u, float v);

		[LinkName("sgl_c3f")]
		public static extern void c3f(float r, float g, float b);

		[LinkName("sgl_c4f")]
		public static extern void c4f(float r, float g, float b, float a);

		[LinkName("sgl_c3b")]
		public static extern void c3b(uint8 r, uint8 g, uint8 b);

		[LinkName("sgl_c4b")]
		public static extern void c4b(uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sgl_c1i")]
		public static extern void c1i(uint32 rgba);

		[LinkName("sgl_point_size")]
		public static extern void pointSize(float s);

		[LinkName("sgl_begin_points")]
		public static extern void beginPoints();

		[LinkName("sgl_begin_lines")]
		public static extern void beginLines();

		[LinkName("sgl_begin_line_strip")]
		public static extern void beginLineStrip();

		[LinkName("sgl_begin_triangles")]
		public static extern void beginTriangles();

		[LinkName("sgl_begin_triangle_strip")]
		public static extern void beginTriangleStrip();

		[LinkName("sgl_begin_quads")]
		public static extern void beginQuads();

		[LinkName("sgl_v2f")]
		public static extern void v2f(float x, float y);

		[LinkName("sgl_v3f")]
		public static extern void v3f(float x, float y, float z);

		[LinkName("sgl_v2f_t2f")]
		public static extern void v2fT2f(float x, float y, float u, float v);

		[LinkName("sgl_v3f_t2f")]
		public static extern void v3fT2f(float x, float y, float z, float u, float v);

		[LinkName("sgl_v2f_c3f")]
		public static extern void v2fC3f(float x, float y, float r, float g, float b);

		[LinkName("sgl_v2f_c3b")]
		public static extern void v2fC3b(float x, float y, uint8 r, uint8 g, uint8 b);

		[LinkName("sgl_v2f_c4f")]
		public static extern void v2fC4f(float x, float y, float r, float g, float b, float a);

		[LinkName("sgl_v2f_c4b")]
		public static extern void v2fC4b(float x, float y, uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sgl_v2f_c1i")]
		public static extern void v2fC1i(float x, float y, uint32 rgba);

		[LinkName("sgl_v3f_c3f")]
		public static extern void v3fC3f(float x, float y, float z, float r, float g, float b);

		[LinkName("sgl_v3f_c3b")]
		public static extern void v3fC3b(float x, float y, float z, uint8 r, uint8 g, uint8 b);

		[LinkName("sgl_v3f_c4f")]
		public static extern void v3fC4f(float x, float y, float z, float r, float g, float b, float a);

		[LinkName("sgl_v3f_c4b")]
		public static extern void v3fC4b(float x, float y, float z, uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sgl_v3f_c1i")]
		public static extern void v3fC1i(float x, float y, float z, uint32 rgba);

		[LinkName("sgl_v2f_t2f_c3f")]
		public static extern void v2fT2fC3f(float x, float y, float u, float v, float r, float g, float b);

		[LinkName("sgl_v2f_t2f_c3b")]
		public static extern void v2fT2fC3b(float x, float y, float u, float v, uint8 r, uint8 g, uint8 b);

		[LinkName("sgl_v2f_t2f_c4f")]
		public static extern void v2fT2fC4f(float x, float y, float u, float v, float r, float g, float b, float a);

		[LinkName("sgl_v2f_t2f_c4b")]
		public static extern void v2fT2fC4b(float x, float y, float u, float v, uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sgl_v2f_t2f_c1i")]
		public static extern void v2fT2fC1i(float x, float y, float u, float v, uint32 rgba);

		[LinkName("sgl_v3f_t2f_c3f")]
		public static extern void v3fT2fC3f(float x, float y, float z, float u, float v, float r, float g, float b);

		[LinkName("sgl_v3f_t2f_c3b")]
		public static extern void v3fT2fC3b(float x, float y, float z, float u, float v, uint8 r, uint8 g, uint8 b);

		[LinkName("sgl_v3f_t2f_c4f")]
		public static extern void v3fT2fC4f(float x, float y, float z, float u, float v, float r, float g, float b, float a);

		[LinkName("sgl_v3f_t2f_c4b")]
		public static extern void v3fT2fC4b(float x, float y, float z, float u, float v, uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sgl_v3f_t2f_c1i")]
		public static extern void v3fT2fC1i(float x, float y, float z, float u, float v, uint32 rgba);

		[LinkName("sgl_end")]
		public static extern void end();

		[LinkName("sgl_draw")]
		public static extern void draw();

		[LinkName("sgl_context_draw")]
		public static extern void contextDraw(Context ctx);
	}
}
