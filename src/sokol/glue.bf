using System;

namespace sokol
{
	class Glue
	{
		public static Gfx.ContextDesc context()
		{
			Gfx.ContextDesc r = .{
				color_format = App.colorFormat(),
				depth_format = App.depthFormat(),
				sample_count = App.sampleCount(),
				gl = .{
				    force_gles2 = App.gles2(),
				},
				metal = .{
				    device = App.metalGetDevice(),
				    renderpass_descriptor_cb = (function void*())App.metalGetRenderpassDescriptor(),
				    drawable_cb = (function void*())App.metalGetDrawable(),
				},
				d3d11 = .{
				    device = App.d3d11GetDevice(),
				    device_context = App.d3d11GetDeviceContext(),
				    render_target_view_cb = (function void*())App.d3d11GetRenderTargetView(),
				    depth_stencil_view_cb = (function void*())App.d3d11GetDepthStencilView(),
				},
				wgpu = .{
				    device = App.wgpuGetDevice(),
				    render_view_cb = (function void*())App.wgpuGetRenderView(),
				    resolve_view_cb = (function void*())App.wgpuGetResolveView(),
				    depth_stencil_view_cb = (function void*())App.wgpuGetDepthStencilView()
				}
			};
			return r;
		}
	}
}
