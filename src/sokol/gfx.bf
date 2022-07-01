// machine generated, do not edit

using System;

namespace sokol
{
	public static class Gfx
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
		public struct Buffer
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Image
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Shader
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Pipeline
		{
			public uint32 id  = 0;
		}

		[CRepr]
		public struct Pass
		{
			public uint32 id  = 0;
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
		public const int invalid_id = 0;
		public const int num_shader_stages = 2;
		public const int num_inflight_frames = 2;
		public const int max_color_attachments = 4;
		public const int max_shaderstage_buffers = 8;
		public const int max_shaderstage_images = 12;
		public const int max_shaderstage_ubs = 4;
		public const int max_ub_members = 16;
		public const int max_vertex_attributes = 16;
		public const int max_mipmaps = 16;
		public const int max_texturearray_layers = 128;

		[CRepr]
		public struct Color
		{
			public float r  = 0.0f;
			public float g  = 0.0f;
			public float b  = 0.0f;
			public float a  = 0.0f;
		}

		public enum Backend : int32
		{
			GLCORE33,
			GLES2,
			GLES3,
			D3D11,
			METAL_IOS,
			METAL_MACOS,
			METAL_SIMULATOR,
			WGPU,
			DUMMY,
		}

		public enum PixelFormat : int32
		{
			DEFAULT,
			NONE,
			R8,
			R8SN,
			R8UI,
			R8SI,
			R16,
			R16SN,
			R16UI,
			R16SI,
			R16F,
			RG8,
			RG8SN,
			RG8UI,
			RG8SI,
			R32UI,
			R32SI,
			R32F,
			RG16,
			RG16SN,
			RG16UI,
			RG16SI,
			RG16F,
			RGBA8,
			RGBA8SN,
			RGBA8UI,
			RGBA8SI,
			BGRA8,
			RGB10A2,
			RG11B10F,
			RG32UI,
			RG32SI,
			RG32F,
			RGBA16,
			RGBA16SN,
			RGBA16UI,
			RGBA16SI,
			RGBA16F,
			RGBA32UI,
			RGBA32SI,
			RGBA32F,
			DEPTH,
			DEPTH_STENCIL,
			BC1_RGBA,
			BC2_RGBA,
			BC3_RGBA,
			BC4_R,
			BC4_RSN,
			BC5_RG,
			BC5_RGSN,
			BC6H_RGBF,
			BC6H_RGBUF,
			BC7_RGBA,
			PVRTC_RGB_2BPP,
			PVRTC_RGB_4BPP,
			PVRTC_RGBA_2BPP,
			PVRTC_RGBA_4BPP,
			ETC2_RGB8,
			ETC2_RGB8A1,
			ETC2_RGBA8,
			ETC2_RG11,
			ETC2_RG11SN,
			NUM,
		}

		[CRepr]
		public struct PixelformatInfo
		{
			public bool sample  = false;
			public bool filter  = false;
			public bool render  = false;
			public bool blend  = false;
			public bool msaa  = false;
			public bool depth  = false;
			public uint32[3] __pad = default;
		}

		[CRepr]
		public struct Features
		{
			public bool instancing  = false;
			public bool origin_top_left  = false;
			public bool multiple_render_targets  = false;
			public bool msaa_render_targets  = false;
			public bool imagetype_3d  = false;
			public bool imagetype_array  = false;
			public bool image_clamp_to_border  = false;
			public bool mrt_independent_blend_state  = false;
			public bool mrt_independent_write_mask  = false;
			public uint32[3] __pad = default;
		}

		[CRepr]
		public struct Limits
		{
			public int32 max_image_size_2d  = 0;
			public int32 max_image_size_cube  = 0;
			public int32 max_image_size_3d  = 0;
			public int32 max_image_size_array  = 0;
			public int32 max_image_array_layers  = 0;
			public int32 max_vertex_attrs  = 0;
			public int32 gl_max_vertex_uniform_vectors  = 0;
		}

		public enum ResourceState : int32
		{
			INITIAL,
			ALLOC,
			VALID,
			FAILED,
			INVALID,
		}

		public enum Usage : int32
		{
			DEFAULT,
			IMMUTABLE,
			DYNAMIC,
			STREAM,
			NUM,
		}

		public enum BufferType : int32
		{
			DEFAULT,
			VERTEXBUFFER,
			INDEXBUFFER,
			NUM,
		}

		public enum IndexType : int32
		{
			DEFAULT,
			NONE,
			UINT16,
			UINT32,
			NUM,
		}

		public enum ImageType : int32
		{
			DEFAULT,
			_2D,
			CUBE,
			_3D,
			ARRAY,
			NUM,
		}

		public enum SamplerType : int32
		{
			DEFAULT,
			FLOAT,
			SINT,
			UINT,
		}

		public enum CubeFace : int32
		{
			POS_X,
			NEG_X,
			POS_Y,
			NEG_Y,
			POS_Z,
			NEG_Z,
			NUM,
		}

		public enum ShaderStage : int32
		{
			VS,
			FS,
		}

		public enum PrimitiveType : int32
		{
			DEFAULT,
			POINTS,
			LINES,
			LINE_STRIP,
			TRIANGLES,
			TRIANGLE_STRIP,
			NUM,
		}

		public enum Filter : int32
		{
			DEFAULT,
			NEAREST,
			LINEAR,
			NEAREST_MIPMAP_NEAREST,
			NEAREST_MIPMAP_LINEAR,
			LINEAR_MIPMAP_NEAREST,
			LINEAR_MIPMAP_LINEAR,
			NUM,
		}

		public enum Wrap : int32
		{
			DEFAULT,
			REPEAT,
			CLAMP_TO_EDGE,
			CLAMP_TO_BORDER,
			MIRRORED_REPEAT,
			NUM,
		}

		public enum BorderColor : int32
		{
			DEFAULT,
			TRANSPARENT_BLACK,
			OPAQUE_BLACK,
			OPAQUE_WHITE,
			NUM,
		}

		public enum VertexFormat : int32
		{
			INVALID,
			FLOAT,
			FLOAT2,
			FLOAT3,
			FLOAT4,
			BYTE4,
			BYTE4N,
			UBYTE4,
			UBYTE4N,
			SHORT2,
			SHORT2N,
			USHORT2N,
			SHORT4,
			SHORT4N,
			USHORT4N,
			UINT10_N2,
			NUM,
		}

		public enum VertexStep : int32
		{
			DEFAULT,
			PER_VERTEX,
			PER_INSTANCE,
			NUM,
		}

		public enum UniformType : int32
		{
			INVALID,
			FLOAT,
			FLOAT2,
			FLOAT3,
			FLOAT4,
			INT,
			INT2,
			INT3,
			INT4,
			MAT4,
			NUM,
		}

		public enum UniformLayout : int32
		{
			DEFAULT,
			NATIVE,
			STD140,
			NUM,
		}

		public enum CullMode : int32
		{
			DEFAULT,
			NONE,
			FRONT,
			BACK,
			NUM,
		}

		public enum FaceWinding : int32
		{
			DEFAULT,
			CCW,
			CW,
			NUM,
		}

		public enum CompareFunc : int32
		{
			DEFAULT,
			NEVER,
			LESS,
			EQUAL,
			LESS_EQUAL,
			GREATER,
			NOT_EQUAL,
			GREATER_EQUAL,
			ALWAYS,
			NUM,
		}

		public enum StencilOp : int32
		{
			DEFAULT,
			KEEP,
			ZERO,
			REPLACE,
			INCR_CLAMP,
			DECR_CLAMP,
			INVERT,
			INCR_WRAP,
			DECR_WRAP,
			NUM,
		}

		public enum BlendFactor : int32
		{
			DEFAULT,
			ZERO,
			ONE,
			SRC_COLOR,
			ONE_MINUS_SRC_COLOR,
			SRC_ALPHA,
			ONE_MINUS_SRC_ALPHA,
			DST_COLOR,
			ONE_MINUS_DST_COLOR,
			DST_ALPHA,
			ONE_MINUS_DST_ALPHA,
			SRC_ALPHA_SATURATED,
			BLEND_COLOR,
			ONE_MINUS_BLEND_COLOR,
			BLEND_ALPHA,
			ONE_MINUS_BLEND_ALPHA,
			NUM,
		}

		public enum BlendOp : int32
		{
			DEFAULT,
			ADD,
			SUBTRACT,
			REVERSE_SUBTRACT,
			NUM,
		}

		public enum ColorMask : int32
		{
			DEFAULT = 0,
			NONE = 16,
			R = 1,
			G = 2,
			RG = 3,
			B = 4,
			RB = 5,
			GB = 6,
			RGB = 7,
			A = 8,
			RA = 9,
			GA = 10,
			RGA = 11,
			BA = 12,
			RBA = 13,
			GBA = 14,
			RGBA = 15,
		}

		public enum Action : int32
		{
			DEFAULT,
			CLEAR,
			LOAD,
			DONTCARE,
			NUM,
		}

		[CRepr]
		public struct ColorAttachmentAction
		{
			public Action action = .DEFAULT;
			public Color value = .();
		}

		[CRepr]
		public struct DepthAttachmentAction
		{
			public Action action = .DEFAULT;
			public float value  = 0.0f;
		}

		[CRepr]
		public struct StencilAttachmentAction
		{
			public Action action = .DEFAULT;
			public uint8 value  = 0;
		}

		[CRepr]
		public struct PassAction
		{
			public uint32 _start_canary  = 0;
			public ColorAttachmentAction[4] colors = .();
			public DepthAttachmentAction depth = .();
			public StencilAttachmentAction stencil = .();
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct Bindings
		{
			public uint32 _start_canary  = 0;
			public Buffer[8] vertex_buffers = .();
			public int32[8] vertex_buffer_offsets = default;
			public Buffer index_buffer = .();
			public int32 index_buffer_offset  = 0;
			public Image[12] vs_images = .();
			public Image[12] fs_images = .();
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct BufferDesc
		{
			public uint32 _start_canary  = 0;
			public uint size  = 0;
			public BufferType type = .DEFAULT;
			public Usage usage = .DEFAULT;
			public Range data = .();
			public char8* label = null;
			public uint32[2] gl_buffers = default;
			public void* [2] mtl_buffers = default;
			public void* d3d11_buffer = null;
			public void* wgpu_buffer = null;
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct ImageData
		{
			public Range[6][16] subimage = default;
		}

		[CRepr]
		public struct ImageDesc
		{
			public uint32 _start_canary  = 0;
			public ImageType type = .DEFAULT;
			public bool render_target  = false;
			public int32 width  = 0;
			public int32 height  = 0;
			public int32 num_slices  = 0;
			public int32 num_mipmaps  = 0;
			public Usage usage = .DEFAULT;
			public PixelFormat pixel_format = .DEFAULT;
			public int32 sample_count  = 0;
			public Filter min_filter = .DEFAULT;
			public Filter mag_filter = .DEFAULT;
			public Wrap wrap_u = .DEFAULT;
			public Wrap wrap_v = .DEFAULT;
			public Wrap wrap_w = .DEFAULT;
			public BorderColor border_color = .DEFAULT;
			public uint32 max_anisotropy  = 0;
			public float min_lod  = 0.0f;
			public float max_lod  = 0.0f;
			public ImageData data = .();
			public char8* label = null;
			public uint32[2] gl_textures = default;
			public uint32 gl_texture_target  = 0;
			public void* [2] mtl_textures = default;
			public void* d3d11_texture = null;
			public void* d3d11_shader_resource_view = null;
			public void* wgpu_texture = null;
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct ShaderAttrDesc
		{
			public char8* name = null;
			public char8* sem_name = null;
			public int32 sem_index  = 0;
		}

		[CRepr]
		public struct ShaderUniformDesc
		{
			public char8* name = null;
			public UniformType type = .INVALID;
			public int32 array_count  = 0;
		}

		[CRepr]
		public struct ShaderUniformBlockDesc
		{
			public uint size  = 0;
			public UniformLayout layout = .DEFAULT;
			public ShaderUniformDesc[16] uniforms = .();
		}

		[CRepr]
		public struct ShaderImageDesc
		{
			public char8* name = null;
			public ImageType image_type = .DEFAULT;
			public SamplerType sampler_type = .DEFAULT;
		}

		[CRepr]
		public struct ShaderStageDesc
		{
			public char8* source = null;
			public Range bytecode = .();
			public char8* entry = null;
			public char8* d3d11_target = null;
			public ShaderUniformBlockDesc[4] uniform_blocks = .();
			public ShaderImageDesc[12] images = .();
		}

		[CRepr]
		public struct ShaderDesc
		{
			public uint32 _start_canary  = 0;
			public ShaderAttrDesc[16] attrs = .();
			public ShaderStageDesc vs = .();
			public ShaderStageDesc fs = .();
			public char8* label = null;
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct BufferLayoutDesc
		{
			public int32 stride  = 0;
			public VertexStep step_func = .DEFAULT;
			public int32 step_rate  = 0;
			public uint32[2] __pad = default;
		}

		[CRepr]
		public struct VertexAttrDesc
		{
			public int32 buffer_index  = 0;
			public int32 offset  = 0;
			public VertexFormat format = .INVALID;
			public uint32[2] __pad = default;
		}

		[CRepr]
		public struct LayoutDesc
		{
			public BufferLayoutDesc[8] buffers = .();
			public VertexAttrDesc[16] attrs = .();
		}

		[CRepr]
		public struct StencilFaceState
		{
			public CompareFunc compare = .DEFAULT;
			public StencilOp fail_op = .DEFAULT;
			public StencilOp depth_fail_op = .DEFAULT;
			public StencilOp pass_op = .DEFAULT;
		}

		[CRepr]
		public struct StencilState
		{
			public bool enabled  = false;
			public StencilFaceState front = .();
			public StencilFaceState back = .();
			public uint8 read_mask  = 0;
			public uint8 write_mask  = 0;
			public uint8 Ref  = 0;
		}

		[CRepr]
		public struct DepthState
		{
			public PixelFormat pixel_format = .DEFAULT;
			public CompareFunc compare = .DEFAULT;
			public bool write_enabled  = false;
			public float bias  = 0.0f;
			public float bias_slope_scale  = 0.0f;
			public float bias_clamp  = 0.0f;
		}

		[CRepr]
		public struct BlendState
		{
			public bool enabled  = false;
			public BlendFactor src_factor_rgb = .DEFAULT;
			public BlendFactor dst_factor_rgb = .DEFAULT;
			public BlendOp op_rgb = .DEFAULT;
			public BlendFactor src_factor_alpha = .DEFAULT;
			public BlendFactor dst_factor_alpha = .DEFAULT;
			public BlendOp op_alpha = .DEFAULT;
		}

		[CRepr]
		public struct ColorState
		{
			public PixelFormat pixel_format = .DEFAULT;
			public ColorMask write_mask = .DEFAULT;
			public BlendState blend = .();
		}

		[CRepr]
		public struct PipelineDesc
		{
			public uint32 _start_canary  = 0;
			public Shader shader = .();
			public LayoutDesc layout = .();
			public DepthState depth = .();
			public StencilState stencil = .();
			public int32 color_count  = 0;
			public ColorState[4] colors = .();
			public PrimitiveType primitive_type = .DEFAULT;
			public IndexType index_type = .DEFAULT;
			public CullMode cull_mode = .DEFAULT;
			public FaceWinding face_winding = .DEFAULT;
			public int32 sample_count  = 0;
			public Color blend_color = .();
			public bool alpha_to_coverage_enabled  = false;
			public char8* label = null;
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct PassAttachmentDesc
		{
			public Image image = .();
			public int32 mip_level  = 0;
			public int32 slice  = 0;
		}

		[CRepr]
		public struct PassDesc
		{
			public uint32 _start_canary  = 0;
			public PassAttachmentDesc[4] color_attachments = .();
			public PassAttachmentDesc depth_stencil_attachment = .();
			public char8* label = null;
			public uint32 _end_canary  = 0;
		}

		[CRepr]
		public struct TraceHooks
		{
			public void* user_data = null;
			public function void(void*) reset_state_cache = null;
			public function void(BufferDesc*, Buffer, void*) make_buffer = null;
			public function void(ImageDesc*, Image, void*) make_image = null;
			public function void(ShaderDesc*, Shader, void*) make_shader = null;
			public function void(PipelineDesc*, Pipeline, void*) make_pipeline = null;
			public function void(PassDesc*, Pass, void*) make_pass = null;
			public function void(Buffer, void*) destroy_buffer = null;
			public function void(Image, void*) destroy_image = null;
			public function void(Shader, void*) destroy_shader = null;
			public function void(Pipeline, void*) destroy_pipeline = null;
			public function void(Pass, void*) destroy_pass = null;
			public function void(Buffer, Range*, void*) update_buffer = null;
			public function void(Image, ImageData*, void*) update_image = null;
			public function void(Buffer, Range*, int32, void*) append_buffer = null;
			public function void(PassAction*, int32, int32, void*) begin_default_pass = null;
			public function void(Pass, PassAction*, void*) begin_pass = null;
			public function void(int32, int32, int32, int32, bool, void*) apply_viewport = null;
			public function void(int32, int32, int32, int32, bool, void*) apply_scissor_rect = null;
			public function void(Pipeline, void*) apply_pipeline = null;
			public function void(Bindings*, void*) apply_bindings = null;
			public function void(ShaderStage, int32, Range*, void*) apply_uniforms = null;
			public function void(int32, int32, int32, void*) draw = null;
			public function void(void*) end_pass = null;
			public function void(void*) commit = null;
			public function void(Buffer, void*) alloc_buffer = null;
			public function void(Image, void*) alloc_image = null;
			public function void(Shader, void*) alloc_shader = null;
			public function void(Pipeline, void*) alloc_pipeline = null;
			public function void(Pass, void*) alloc_pass = null;
			public function void(Buffer, void*) dealloc_buffer = null;
			public function void(Image, void*) dealloc_image = null;
			public function void(Shader, void*) dealloc_shader = null;
			public function void(Pipeline, void*) dealloc_pipeline = null;
			public function void(Pass, void*) dealloc_pass = null;
			public function void(Buffer, BufferDesc*, void*) init_buffer = null;
			public function void(Image, ImageDesc*, void*) init_image = null;
			public function void(Shader, ShaderDesc*, void*) init_shader = null;
			public function void(Pipeline, PipelineDesc*, void*) init_pipeline = null;
			public function void(Pass, PassDesc*, void*) init_pass = null;
			public function void(Buffer, void*) uninit_buffer = null;
			public function void(Image, void*) uninit_image = null;
			public function void(Shader, void*) uninit_shader = null;
			public function void(Pipeline, void*) uninit_pipeline = null;
			public function void(Pass, void*) uninit_pass = null;
			public function void(Buffer, void*) fail_buffer = null;
			public function void(Image, void*) fail_image = null;
			public function void(Shader, void*) fail_shader = null;
			public function void(Pipeline, void*) fail_pipeline = null;
			public function void(Pass, void*) fail_pass = null;
			public function void(char8*, void*) push_debug_group = null;
			public function void(void*) pop_debug_group = null;
			public function void(void*) err_buffer_pool_exhausted = null;
			public function void(void*) err_image_pool_exhausted = null;
			public function void(void*) err_shader_pool_exhausted = null;
			public function void(void*) err_pipeline_pool_exhausted = null;
			public function void(void*) err_pass_pool_exhausted = null;
			public function void(void*) err_context_mismatch = null;
			public function void(void*) err_pass_invalid = null;
			public function void(void*) err_draw_invalid = null;
			public function void(void*) err_bindings_invalid = null;
		}

		[CRepr]
		public struct SlotInfo
		{
			public ResourceState state = .INITIAL;
			public uint32 res_id  = 0;
			public uint32 ctx_id  = 0;
		}

		[CRepr]
		public struct BufferInfo
		{
			public SlotInfo slot = .();
			public uint32 update_frame_index  = 0;
			public uint32 append_frame_index  = 0;
			public int32 append_pos  = 0;
			public bool append_overflow  = false;
			public int32 num_slots  = 0;
			public int32 active_slot  = 0;
		}

		[CRepr]
		public struct ImageInfo
		{
			public SlotInfo slot = .();
			public uint32 upd_frame_index  = 0;
			public int32 num_slots  = 0;
			public int32 active_slot  = 0;
			public int32 width  = 0;
			public int32 height  = 0;
		}

		[CRepr]
		public struct ShaderInfo
		{
			public SlotInfo slot = .();
		}

		[CRepr]
		public struct PipelineInfo
		{
			public SlotInfo slot = .();
		}

		[CRepr]
		public struct PassInfo
		{
			public SlotInfo slot = .();
		}

		[CRepr]
		public struct GlContextDesc
		{
			public bool force_gles2  = false;
		}

		[CRepr]
		public struct MetalContextDesc
		{
			public void* device = null;
			public function void*() renderpass_descriptor_cb = null;
			public function void*(void*) renderpass_descriptor_userdata_cb = null;
			public function void*() drawable_cb = null;
			public function void*(void*) drawable_userdata_cb = null;
			public void* user_data = null;
		}

		[CRepr]
		public struct D3d11ContextDesc
		{
			public void* device = null;
			public void* device_context = null;
			public function void*() render_target_view_cb = null;
			public function void*(void*) render_target_view_userdata_cb = null;
			public function void*() depth_stencil_view_cb = null;
			public function void*(void*) depth_stencil_view_userdata_cb = null;
			public void* user_data = null;
		}

		[CRepr]
		public struct WgpuContextDesc
		{
			public void* device = null;
			public function void*() render_view_cb = null;
			public function void*(void*) render_view_userdata_cb = null;
			public function void*() resolve_view_cb = null;
			public function void*(void*) resolve_view_userdata_cb = null;
			public function void*() depth_stencil_view_cb = null;
			public function void*(void*) depth_stencil_view_userdata_cb = null;
			public void* user_data = null;
		}

		[CRepr]
		public struct ContextDesc
		{
			public int32 color_format  = 0;
			public int32 depth_format  = 0;
			public int32 sample_count  = 0;
			public GlContextDesc gl = .();
			public MetalContextDesc metal = .();
			public D3d11ContextDesc d3d11 = .();
			public WgpuContextDesc wgpu = .();
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
			public uint32 _start_canary  = 0;
			public int32 buffer_pool_size  = 0;
			public int32 image_pool_size  = 0;
			public int32 shader_pool_size  = 0;
			public int32 pipeline_pool_size  = 0;
			public int32 pass_pool_size  = 0;
			public int32 context_pool_size  = 0;
			public int32 uniform_buffer_size  = 0;
			public int32 staging_buffer_size  = 0;
			public int32 sampler_cache_size  = 0;
			public Allocator allocator = .();
			public ContextDesc context = .();
			public uint32 _end_canary  = 0;
		}

		[LinkName("sg_setup")]
		public static extern void setup(Desc* desc);

		[LinkName("sg_shutdown")]
		public static extern void shutdown();

		[LinkName("sg_isvalid")]
		public static extern bool isvalid();

		[LinkName("sg_reset_state_cache")]
		public static extern void resetStateCache();

		[LinkName("sg_push_debug_group")]
		public static extern void pushDebugGroup(char8* name);

		[LinkName("sg_pop_debug_group")]
		public static extern void popDebugGroup();

		[LinkName("sg_make_buffer")]
		public static extern Buffer makeBuffer(BufferDesc* desc);

		[LinkName("sg_make_image")]
		public static extern Image makeImage(ImageDesc* desc);

		[LinkName("sg_make_shader")]
		public static extern Shader makeShader(ShaderDesc* desc);

		[LinkName("sg_make_pipeline")]
		public static extern Pipeline makePipeline(PipelineDesc* desc);

		[LinkName("sg_make_pass")]
		public static extern Pass makePass(PassDesc* desc);

		[LinkName("sg_destroy_buffer")]
		public static extern void destroyBuffer(Buffer buf);

		[LinkName("sg_destroy_image")]
		public static extern void destroyImage(Image img);

		[LinkName("sg_destroy_shader")]
		public static extern void destroyShader(Shader shd);

		[LinkName("sg_destroy_pipeline")]
		public static extern void destroyPipeline(Pipeline pip);

		[LinkName("sg_destroy_pass")]
		public static extern void destroyPass(Pass pass);

		[LinkName("sg_update_buffer")]
		public static extern void updateBuffer(Buffer buf, Range* data);

		[LinkName("sg_update_image")]
		public static extern void updateImage(Image img, ImageData* data);

		[LinkName("sg_append_buffer")]
		public static extern int32 appendBuffer(Buffer buf, Range* data);

		[LinkName("sg_query_buffer_overflow")]
		public static extern bool queryBufferOverflow(Buffer buf);

		[LinkName("sg_begin_default_pass")]
		public static extern void beginDefaultPass(PassAction* pass_action, int32 width, int32 height);

		[LinkName("sg_begin_default_passf")]
		public static extern void beginDefaultPassf(PassAction* pass_action, float width, float height);

		[LinkName("sg_begin_pass")]
		public static extern void beginPass(Pass pass, PassAction* pass_action);

		[LinkName("sg_apply_viewport")]
		public static extern void applyViewport(int32 x, int32 y, int32 width, int32 height, bool origin_top_left);

		[LinkName("sg_apply_viewportf")]
		public static extern void applyViewportf(float x, float y, float width, float height, bool origin_top_left);

		[LinkName("sg_apply_scissor_rect")]
		public static extern void applyScissorRect(int32 x, int32 y, int32 width, int32 height, bool origin_top_left);

		[LinkName("sg_apply_scissor_rectf")]
		public static extern void applyScissorRectf(float x, float y, float width, float height, bool origin_top_left);

		[LinkName("sg_apply_pipeline")]
		public static extern void applyPipeline(Pipeline pip);

		[LinkName("sg_apply_bindings")]
		public static extern void applyBindings(Bindings* bindings);

		[LinkName("sg_apply_uniforms")]
		public static extern void applyUniforms(ShaderStage stage, int32 ub_index, Range* data);

		[LinkName("sg_draw")]
		public static extern void draw(int32 base_element, int32 num_elements, int32 num_instances);

		[LinkName("sg_end_pass")]
		public static extern void endPass();

		[LinkName("sg_commit")]
		public static extern void commit();

		[LinkName("sg_query_desc")]
		public static extern Desc queryDesc();

		[LinkName("sg_query_backend")]
		public static extern Backend queryBackend();

		[LinkName("sg_query_features")]
		public static extern Features queryFeatures();

		[LinkName("sg_query_limits")]
		public static extern Limits queryLimits();

		[LinkName("sg_query_pixelformat")]
		public static extern PixelformatInfo queryPixelformat(PixelFormat fmt);

		[LinkName("sg_query_buffer_state")]
		public static extern ResourceState queryBufferState(Buffer buf);

		[LinkName("sg_query_image_state")]
		public static extern ResourceState queryImageState(Image img);

		[LinkName("sg_query_shader_state")]
		public static extern ResourceState queryShaderState(Shader shd);

		[LinkName("sg_query_pipeline_state")]
		public static extern ResourceState queryPipelineState(Pipeline pip);

		[LinkName("sg_query_pass_state")]
		public static extern ResourceState queryPassState(Pass pass);

		[LinkName("sg_query_buffer_info")]
		public static extern BufferInfo queryBufferInfo(Buffer buf);

		[LinkName("sg_query_image_info")]
		public static extern ImageInfo queryImageInfo(Image img);

		[LinkName("sg_query_shader_info")]
		public static extern ShaderInfo queryShaderInfo(Shader shd);

		[LinkName("sg_query_pipeline_info")]
		public static extern PipelineInfo queryPipelineInfo(Pipeline pip);

		[LinkName("sg_query_pass_info")]
		public static extern PassInfo queryPassInfo(Pass pass);

		[LinkName("sg_query_buffer_defaults")]
		public static extern BufferDesc queryBufferDefaults(BufferDesc* desc);

		[LinkName("sg_query_image_defaults")]
		public static extern ImageDesc queryImageDefaults(ImageDesc* desc);

		[LinkName("sg_query_shader_defaults")]
		public static extern ShaderDesc queryShaderDefaults(ShaderDesc* desc);

		[LinkName("sg_query_pipeline_defaults")]
		public static extern PipelineDesc queryPipelineDefaults(PipelineDesc* desc);

		[LinkName("sg_query_pass_defaults")]
		public static extern PassDesc queryPassDefaults(PassDesc* desc);

		[LinkName("sg_alloc_buffer")]
		public static extern Buffer allocBuffer();

		[LinkName("sg_alloc_image")]
		public static extern Image allocImage();

		[LinkName("sg_alloc_shader")]
		public static extern Shader allocShader();

		[LinkName("sg_alloc_pipeline")]
		public static extern Pipeline allocPipeline();

		[LinkName("sg_alloc_pass")]
		public static extern Pass allocPass();

		[LinkName("sg_dealloc_buffer")]
		public static extern void deallocBuffer(Buffer buf_id);

		[LinkName("sg_dealloc_image")]
		public static extern void deallocImage(Image img_id);

		[LinkName("sg_dealloc_shader")]
		public static extern void deallocShader(Shader shd_id);

		[LinkName("sg_dealloc_pipeline")]
		public static extern void deallocPipeline(Pipeline pip_id);

		[LinkName("sg_dealloc_pass")]
		public static extern void deallocPass(Pass pass_id);

		[LinkName("sg_init_buffer")]
		public static extern void initBuffer(Buffer buf_id, BufferDesc* desc);

		[LinkName("sg_init_image")]
		public static extern void initImage(Image img_id, ImageDesc* desc);

		[LinkName("sg_init_shader")]
		public static extern void initShader(Shader shd_id, ShaderDesc* desc);

		[LinkName("sg_init_pipeline")]
		public static extern void initPipeline(Pipeline pip_id, PipelineDesc* desc);

		[LinkName("sg_init_pass")]
		public static extern void initPass(Pass pass_id, PassDesc* desc);

		[LinkName("sg_uninit_buffer")]
		public static extern bool uninitBuffer(Buffer buf_id);

		[LinkName("sg_uninit_image")]
		public static extern bool uninitImage(Image img_id);

		[LinkName("sg_uninit_shader")]
		public static extern bool uninitShader(Shader shd_id);

		[LinkName("sg_uninit_pipeline")]
		public static extern bool uninitPipeline(Pipeline pip_id);

		[LinkName("sg_uninit_pass")]
		public static extern bool uninitPass(Pass pass_id);

		[LinkName("sg_fail_buffer")]
		public static extern void failBuffer(Buffer buf_id);

		[LinkName("sg_fail_image")]
		public static extern void failImage(Image img_id);

		[LinkName("sg_fail_shader")]
		public static extern void failShader(Shader shd_id);

		[LinkName("sg_fail_pipeline")]
		public static extern void failPipeline(Pipeline pip_id);

		[LinkName("sg_fail_pass")]
		public static extern void failPass(Pass pass_id);

		[LinkName("sg_setup_context")]
		public static extern Context setupContext();

		[LinkName("sg_activate_context")]
		public static extern void activateContext(Context ctx_id);

		[LinkName("sg_discard_context")]
		public static extern void discardContext(Context ctx_id);

		[LinkName("sg_d3d11_device")]
		public static extern void* d3d11Device();

		[LinkName("sg_mtl_device")]
		public static extern void* mtlDevice();

		[LinkName("sg_mtl_render_command_encoder")]
		public static extern void* mtlRenderCommandEncoder();
	}
}
