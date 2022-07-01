// machine generated, do not edit

using System;

namespace sokol
{
	public static class Shape
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
		public struct Range
		{
			public void* ptr = null;
			public uint size  = 0;
		}

		[CRepr]
		public struct Mat4
		{
			public float[4][4] m = default;
		}

		[CRepr]
		public struct Vertex
		{
			public float x  = 0.0f;
			public float y  = 0.0f;
			public float z  = 0.0f;
			public uint32 normal  = 0;
			public uint16 u  = 0;
			public uint16 v  = 0;
			public uint32 color  = 0;
		}

		[CRepr]
		public struct ElementRange
		{
			public int32 base_element  = 0;
			public int32 num_elements  = 0;
			public uint32[3] __pad = default;
		}

		[CRepr]
		public struct SizesItem
		{
			public uint32 num  = 0;
			public uint32 size  = 0;
			public uint32[3] __pad = default;
		}

		[CRepr]
		public struct Sizes
		{
			public SizesItem vertices = .();
			public SizesItem indices = .();
		}

		[CRepr]
		public struct BufferItem
		{
			public Range buffer = .();
			public uint data_size  = 0;
			public uint shape_offset  = 0;
		}

		[CRepr]
		public struct Buffer
		{
			public bool valid  = false;
			public BufferItem vertices = .();
			public BufferItem indices = .();
		}

		[CRepr]
		public struct Plane
		{
			public float width  = 0.0f;
			public float depth  = 0.0f;
			public uint16 tiles  = 0;
			public uint32 color  = 0;
			public bool random_colors  = false;
			public bool merge  = false;
			public Mat4 transform = .();
		}

		[CRepr]
		public struct Box
		{
			public float width  = 0.0f;
			public float height  = 0.0f;
			public float depth  = 0.0f;
			public uint16 tiles  = 0;
			public uint32 color  = 0;
			public bool random_colors  = false;
			public bool merge  = false;
			public Mat4 transform = .();
		}

		[CRepr]
		public struct Sphere
		{
			public float radius  = 0.0f;
			public uint16 slices  = 0;
			public uint16 stacks  = 0;
			public uint32 color  = 0;
			public bool random_colors  = false;
			public bool merge  = false;
			public Mat4 transform = .();
		}

		[CRepr]
		public struct Cylinder
		{
			public float radius  = 0.0f;
			public float height  = 0.0f;
			public uint16 slices  = 0;
			public uint16 stacks  = 0;
			public uint32 color  = 0;
			public bool random_colors  = false;
			public bool merge  = false;
			public Mat4 transform = .();
		}

		[CRepr]
		public struct Torus
		{
			public float radius  = 0.0f;
			public float ring_radius  = 0.0f;
			public uint16 sides  = 0;
			public uint16 rings  = 0;
			public uint32 color  = 0;
			public bool random_colors  = false;
			public bool merge  = false;
			public Mat4 transform = .();
		}

		[LinkName("sshape_build_plane")]
		public static extern Buffer buildPlane(Buffer* buf, Plane* _params);

		[LinkName("sshape_build_box")]
		public static extern Buffer buildBox(Buffer* buf, Box* _params);

		[LinkName("sshape_build_sphere")]
		public static extern Buffer buildSphere(Buffer* buf, Sphere* _params);

		[LinkName("sshape_build_cylinder")]
		public static extern Buffer buildCylinder(Buffer* buf, Cylinder* _params);

		[LinkName("sshape_build_torus")]
		public static extern Buffer buildTorus(Buffer* buf, Torus* _params);

		[LinkName("sshape_plane_sizes")]
		public static extern Sizes planeSizes(uint32 tiles);

		[LinkName("sshape_box_sizes")]
		public static extern Sizes boxSizes(uint32 tiles);

		[LinkName("sshape_sphere_sizes")]
		public static extern Sizes sphereSizes(uint32 slices, uint32 stacks);

		[LinkName("sshape_cylinder_sizes")]
		public static extern Sizes cylinderSizes(uint32 slices, uint32 stacks);

		[LinkName("sshape_torus_sizes")]
		public static extern Sizes torusSizes(uint32 sides, uint32 rings);

		[LinkName("sshape_element_range")]
		public static extern ElementRange elementRange(Buffer* buf);

		[LinkName("sshape_vertex_buffer_desc")]
		public static extern Gfx.BufferDesc vertexBufferDesc(Buffer* buf);

		[LinkName("sshape_index_buffer_desc")]
		public static extern Gfx.BufferDesc indexBufferDesc(Buffer* buf);

		[LinkName("sshape_buffer_layout_desc")]
		public static extern Gfx.BufferLayoutDesc bufferLayoutDesc();

		[LinkName("sshape_position_attr_desc")]
		public static extern Gfx.VertexAttrDesc positionAttrDesc();

		[LinkName("sshape_normal_attr_desc")]
		public static extern Gfx.VertexAttrDesc normalAttrDesc();

		[LinkName("sshape_texcoord_attr_desc")]
		public static extern Gfx.VertexAttrDesc texcoordAttrDesc();

		[LinkName("sshape_color_attr_desc")]
		public static extern Gfx.VertexAttrDesc colorAttrDesc();

		[LinkName("sshape_color_4f")]
		public static extern uint32 color4f(float r, float g, float b, float a);

		[LinkName("sshape_color_3f")]
		public static extern uint32 color3f(float r, float g, float b);

		[LinkName("sshape_color_4b")]
		public static extern uint32 color4b(uint8 r, uint8 g, uint8 b, uint8 a);

		[LinkName("sshape_color_3b")]
		public static extern uint32 color3b(uint8 r, uint8 g, uint8 b);

		[LinkName("sshape_mat4")]
		public static extern Mat4 mat4(float* m);

		[LinkName("sshape_mat4_transpose")]
		public static extern Mat4 mat4Transpose(float* m);
	}
}
