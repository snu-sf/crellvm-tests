; ModuleID = './gsicc_lcms2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsPluginMemHandler = type { %struct._cmsPluginBaseStruct, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct._cmsContext_struct = type opaque
%struct._cms_NAMEDCOLORLIST_struct = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"gscms_get_clrtname\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"gscms_transform_color_buffer\00", align 1
@gs_cms_memhandler = internal global %struct.cmsPluginMemHandler { %struct._cmsPluginBaseStruct { i32 1633906800, i32 2000, i32 1835363656, %struct._cmsPluginBaseStruct* null }, i8* (%struct._cmsContext_struct*, i32)* @gs_lcms2_malloc, void (%struct._cmsContext_struct*, i8*)* @gs_lcms2_free, i8* (%struct._cmsContext_struct*, i8*, i32)* @gs_lcms2_realloc, i8* (%struct._cmsContext_struct*, i32)* null, i8* (%struct._cmsContext_struct*, i32, i32)* null, i8* (%struct._cmsContext_struct*, i8*, i32)* null }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"lcms\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gscms_get_input_channel_count(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  %colorspace = alloca i32, align 4
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i32 @cmsGetColorSpace(i8* %0) #4
  store i32 %call, i32* %colorspace, align 4
  %1 = load i32, i32* %colorspace, align 4
  %call1 = call i32 @cmsChannelsOf(i32 %1) #4
  ret i32 %call1
}

declare i32 @cmsGetColorSpace(i8*) #1

declare i32 @cmsChannelsOf(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gscms_get_output_channel_count(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  %colorspace = alloca i32, align 4
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i32 @cmsGetPCS(i8* %0) #4
  store i32 %call, i32* %colorspace, align 4
  %1 = load i32, i32* %colorspace, align 4
  %call1 = call i32 @cmsChannelsOf(i32 %1) #4
  ret i32 %call1
}

declare i32 @cmsGetPCS(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gscms_get_numberclrtnames(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  %lcms_names = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i8* @cmsReadTag(i8* %0, i32 1668051572) #4
  %1 = bitcast i8* %call to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %1, %struct._cms_NAMEDCOLORLIST_struct** %lcms_names, align 8
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %lcms_names, align 8
  %call1 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %2) #4
  ret i32 %call1
}

declare i8* @cmsReadTag(i8*, i32) #1

declare i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct*) #1

; Function Attrs: nounwind uwtable
define i8* @gscms_get_clrtname(i8* %profile, i32 %colorcount, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i8*, align 8
  %profile.addr = alloca i8*, align 8
  %colorcount.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %lcms_names = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %name = alloca [256 x i8], align 16
  %buf = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %profile, i8** %profile.addr, align 8
  store i32 %colorcount, i32* %colorcount.addr, align 4
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i8* @cmsReadTag(i8* %0, i32 1668051572) #4
  %1 = bitcast i8* %call to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %1, %struct._cms_NAMEDCOLORLIST_struct** %lcms_names, align 8
  %2 = load i32, i32* %colorcount.addr, align 4
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %lcms_names, align 8
  %call1 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %3) #4
  %cmp = icmp uge i32 %2, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %lcms_names, align 8
  %5 = load i32, i32* %colorcount.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call2 = call i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct* %4, i32 %5, i8* %arraydecay, i8* null, i8* null, i16* null, i16* null) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #5
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %length, align 4
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %9 = load i32, i32* %length, align 4
  %add = add nsw i32 %9, 1
  %call8 = call i8* %7(%struct.gs_memory_s* %8, i32 %add, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call8, i8** %buf, align 8
  %10 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.5
  %11 = load i8*, i8** %buf, align 8
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call11 = call i8* @strcpy(i8* %11, i8* %arraydecay10) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.5
  %12 = load i8*, i8** %buf, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.4, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct*, i32, i8*, i8*, i8*, i16*, i16*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gscms_is_device_link(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i32 @cmsGetDeviceClass(i8* %0) #4
  %cmp = icmp eq i32 %call, 1818848875
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @cmsGetDeviceClass(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gscms_is_input(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i32 @cmsGetDeviceClass(i8* %0) #4
  %cmp = icmp eq i32 %call, 1935896178
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gscms_get_profile_data_space(i8* %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca i8*, align 8
  %colorspace = alloca i32, align 4
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  %call = call i32 @cmsGetColorSpace(i8* %0) #4
  store i32 %call, i32* %colorspace, align 4
  %1 = load i32, i32* %colorspace, align 4
  switch i32 %1, label %sw.default [
    i32 1482250784, label %sw.bb
    i32 1281450528, label %sw.bb.1
    i32 1380401696, label %sw.bb.2
    i32 1196573017, label %sw.bb.3
    i32 1129142603, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i8* @gscms_get_profile_handle_mem(%struct.gs_memory_s* %mem, i8* %buffer, i32 %input_size) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %input_size.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %input_size, i32* %input_size.addr, align 4
  call void @cmsSetLogErrorHandler(void (%struct._cmsContext_struct*, i32, i8*)* @gscms_error) #4
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8
  %1 = bitcast %struct.gs_memory_s* %0 to %struct._cmsContext_struct*
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i32, i32* %input_size.addr, align 4
  %call = call i8* @cmsOpenProfileFromMemTHR(%struct._cmsContext_struct* %1, i8* %2, i32 %3) #4
  ret i8* %call
}

declare void @cmsSetLogErrorHandler(void (%struct._cmsContext_struct*, i32, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gscms_error(%struct._cmsContext_struct* %ContextID, i32 %error_code, i8* %error_text) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %error_code.addr = alloca i32, align 4
  %error_text.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8
  store i32 %error_code, i32* %error_code.addr, align 4
  store i8* %error_text, i8** %error_text.addr, align 8
  ret void
}

declare i8* @cmsOpenProfileFromMemTHR(%struct._cmsContext_struct*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gscms_get_profile_handle_file(%struct.gs_memory_s* %mem, i8* %filename) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8
  %1 = bitcast %struct.gs_memory_s* %0 to %struct._cmsContext_struct*
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @cmsOpenProfileFromFileTHR(%struct._cmsContext_struct* %1, i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  ret i8* %call
}

declare i8* @cmsOpenProfileFromFileTHR(%struct._cmsContext_struct*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gscms_transform_color_buffer(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %inputbuffer, i8* %outputbuffer) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %output_buff_desc.addr = alloca %struct.gsicc_bufferdesc_s*, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %outputbuffer.addr = alloca i8*, align 8
  %hTransform = alloca i8*, align 8
  %dwInputFormat = alloca i32, align 4
  %dwOutputFormat = alloca i32, align 4
  %num_src_lcms = alloca i32, align 4
  %num_des_lcms = alloca i32, align 4
  %planar = alloca i32, align 4
  %numbytes = alloca i32, align 4
  %big_endian = alloca i32, align 4
  %hasalpha = alloca i32, align 4
  %k = alloca i32, align 4
  %inputpos = alloca i8*, align 8
  %outputpos = alloca i8*, align 8
  %temp_des = alloca i8*, align 8
  %temp_src = alloca i8*, align 8
  %source_size = alloca i32, align 4
  %des_size = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %src_cm = alloca i8*, align 8
  %src_buff = alloca i8*, align 8
  %des_cm = alloca i8*, align 8
  %des_buff = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8
  store %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  store %struct.gsicc_bufferdesc_s* %output_buff_desc, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %link_handle, align 8
  store i8* %1, i8** %hTransform, align 8
  %2 = load i8*, i8** %hTransform, align 8
  %call = call i32 @cmsGetTransformInputFormat(i8* %2) #4
  %shr = lshr i32 %call, 16
  %and = and i32 %shr, 31
  %shl = shl i32 %and, 16
  store i32 %shl, i32* %dwInputFormat, align 4
  %3 = load i8*, i8** %hTransform, align 8
  %call1 = call i32 @cmsGetTransformOutputFormat(i8* %3) #4
  %shr2 = lshr i32 %call1, 16
  %and3 = and i32 %shr2, 31
  %shl4 = shl i32 %and3, 16
  store i32 %shl4, i32* %dwOutputFormat, align 4
  %4 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %is_planar = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %4, i32 0, i32 5
  %5 = load i32, i32* %is_planar, align 4
  store i32 %5, i32* %planar, align 4
  %6 = load i32, i32* %dwInputFormat, align 4
  %7 = load i32, i32* %planar, align 4
  %shl5 = shl i32 %7, 12
  %or = or i32 %6, %shl5
  store i32 %or, i32* %dwInputFormat, align 4
  %8 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %is_planar6 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %8, i32 0, i32 5
  %9 = load i32, i32* %is_planar6, align 4
  store i32 %9, i32* %planar, align 4
  %10 = load i32, i32* %dwOutputFormat, align 4
  %11 = load i32, i32* %planar, align 4
  %shl7 = shl i32 %11, 12
  %or8 = or i32 %10, %shl7
  store i32 %or8, i32* %dwOutputFormat, align 4
  %12 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %bytes_per_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %12, i32 0, i32 1
  %13 = load i8, i8* %bytes_per_chan, align 1
  %conv = zext i8 %13 to i32
  store i32 %conv, i32* %numbytes, align 4
  %14 = load i32, i32* %numbytes, align 4
  %cmp = icmp sgt i32 %14, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %numbytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %dwInputFormat, align 4
  %16 = load i32, i32* %numbytes, align 4
  %or10 = or i32 %15, %16
  store i32 %or10, i32* %dwInputFormat, align 4
  %17 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %bytes_per_chan11 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %17, i32 0, i32 1
  %18 = load i8, i8* %bytes_per_chan11, align 1
  %conv12 = zext i8 %18 to i32
  store i32 %conv12, i32* %numbytes, align 4
  %19 = load i32, i32* %numbytes, align 4
  %cmp13 = icmp sgt i32 %19, 2
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %numbytes, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %20 = load i32, i32* %dwOutputFormat, align 4
  %21 = load i32, i32* %numbytes, align 4
  %or17 = or i32 %20, %21
  store i32 %or17, i32* %dwOutputFormat, align 4
  %22 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %little_endian = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %22, i32 0, i32 4
  %23 = load i32, i32* %little_endian, align 4
  %tobool = icmp ne i32 %23, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %big_endian, align 4
  %24 = load i32, i32* %dwInputFormat, align 4
  %25 = load i32, i32* %big_endian, align 4
  %shl18 = shl i32 %25, 11
  %or19 = or i32 %24, %shl18
  store i32 %or19, i32* %dwInputFormat, align 4
  %26 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %little_endian20 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %26, i32 0, i32 4
  %27 = load i32, i32* %little_endian20, align 4
  %tobool21 = icmp ne i32 %27, 0
  %lnot22 = xor i1 %tobool21, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  store i32 %lnot.ext23, i32* %big_endian, align 4
  %28 = load i32, i32* %dwOutputFormat, align 4
  %29 = load i32, i32* %big_endian, align 4
  %shl24 = shl i32 %29, 11
  %or25 = or i32 %28, %shl24
  store i32 %or25, i32* %dwOutputFormat, align 4
  %30 = load i8*, i8** %hTransform, align 8
  %call26 = call i32 @cmsGetTransformInputFormat(i8* %30) #4
  %shr27 = lshr i32 %call26, 3
  %and28 = and i32 %shr27, 15
  store i32 %and28, i32* %num_src_lcms, align 4
  %31 = load i8*, i8** %hTransform, align 8
  %call29 = call i32 @cmsGetTransformOutputFormat(i8* %31) #4
  %shr30 = lshr i32 %call29, 3
  %and31 = and i32 %shr30, 15
  store i32 %and31, i32* %num_des_lcms, align 4
  %32 = load i32, i32* %num_src_lcms, align 4
  %33 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_chan = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %33, i32 0, i32 0
  %34 = load i8, i8* %num_chan, align 1
  %conv32 = zext i8 %34 to i32
  %cmp33 = icmp ne i32 %32, %conv32
  br i1 %cmp33, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %35 = load i32, i32* %num_des_lcms, align 4
  %36 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %num_chan35 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %36, i32 0, i32 0
  %37 = load i8, i8* %num_chan35, align 1
  %conv36 = zext i8 %37 to i32
  %cmp37 = icmp ne i32 %35, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.16
  br label %if.end.162

if.end.40:                                        ; preds = %lor.lhs.false
  %38 = load i32, i32* %dwInputFormat, align 4
  %39 = load i32, i32* %num_src_lcms, align 4
  %shl41 = shl i32 %39, 3
  %or42 = or i32 %38, %shl41
  store i32 %or42, i32* %dwInputFormat, align 4
  %40 = load i32, i32* %dwOutputFormat, align 4
  %41 = load i32, i32* %num_des_lcms, align 4
  %shl43 = shl i32 %41, 3
  %or44 = or i32 %40, %shl43
  store i32 %or44, i32* %dwOutputFormat, align 4
  %42 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %has_alpha = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %42, i32 0, i32 2
  %43 = load i32, i32* %has_alpha, align 4
  store i32 %43, i32* %hasalpha, align 4
  %44 = load i32, i32* %dwInputFormat, align 4
  %45 = load i32, i32* %hasalpha, align 4
  %shl45 = shl i32 %45, 7
  %or46 = or i32 %44, %shl45
  store i32 %or46, i32* %dwInputFormat, align 4
  %46 = load i32, i32* %dwOutputFormat, align 4
  %47 = load i32, i32* %hasalpha, align 4
  %shl47 = shl i32 %47, 7
  %or48 = or i32 %46, %shl47
  store i32 %or48, i32* %dwOutputFormat, align 4
  %48 = load i8*, i8** %hTransform, align 8
  %49 = load i32, i32* %dwInputFormat, align 4
  %50 = load i32, i32* %dwOutputFormat, align 4
  %call49 = call i32 @cmsChangeBuffersFormat(i8* %48, i32 %49, i32 %50) #4
  %51 = load i8*, i8** %inputbuffer.addr, align 8
  store i8* %51, i8** %inputpos, align 8
  %52 = load i8*, i8** %outputbuffer.addr, align 8
  store i8* %52, i8** %outputpos, align 8
  %53 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %is_planar50 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %53, i32 0, i32 5
  %54 = load i32, i32* %is_planar50, align 4
  %tobool51 = icmp ne i32 %54, 0
  br i1 %tobool51, label %if.then.52, label %if.else.146

if.then.52:                                       ; preds = %if.end.40
  %55 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_rows = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %55, i32 0, i32 8
  %56 = load i32, i32* %num_rows, align 4
  %57 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %pixels_per_row = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %57, i32 0, i32 9
  %58 = load i32, i32* %pixels_per_row, align 4
  %mul = mul nsw i32 %56, %58
  %59 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %plane_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %59, i32 0, i32 6
  %60 = load i32, i32* %plane_stride, align 4
  %cmp53 = icmp eq i32 %mul, %60
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.52
  %61 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %num_rows55 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %61, i32 0, i32 8
  %62 = load i32, i32* %num_rows55, align 4
  %63 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %pixels_per_row56 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %63, i32 0, i32 9
  %64 = load i32, i32* %pixels_per_row56, align 4
  %mul57 = mul nsw i32 %62, %64
  %65 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %plane_stride58 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %65, i32 0, i32 6
  %66 = load i32, i32* %plane_stride58, align 4
  %cmp59 = icmp eq i32 %mul57, %66
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %land.lhs.true
  %67 = load i8*, i8** %hTransform, align 8
  %68 = load i8*, i8** %inputpos, align 8
  %69 = load i8*, i8** %outputpos, align 8
  %70 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %plane_stride62 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %70, i32 0, i32 6
  %71 = load i32, i32* %plane_stride62, align 4
  call void @cmsDoTransform(i8* %67, i8* %68, i8* %69, i32 %71) #4
  br label %if.end.145

if.else:                                          ; preds = %land.lhs.true, %if.then.52
  %72 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %bytes_per_chan63 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %72, i32 0, i32 1
  %73 = load i8, i8* %bytes_per_chan63, align 1
  %conv64 = zext i8 %73 to i32
  %74 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %pixels_per_row65 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %74, i32 0, i32 9
  %75 = load i32, i32* %pixels_per_row65, align 4
  %mul66 = mul nsw i32 %conv64, %75
  store i32 %mul66, i32* %source_size, align 4
  %76 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %bytes_per_chan67 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %76, i32 0, i32 1
  %77 = load i8, i8* %bytes_per_chan67, align 1
  %conv68 = zext i8 %77 to i32
  %78 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %pixels_per_row69 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %78, i32 0, i32 9
  %79 = load i32, i32* %pixels_per_row69, align 4
  %mul70 = mul nsw i32 %conv68, %79
  store i32 %mul70, i32* %des_size, align 4
  %80 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %80, i32 0, i32 3
  %81 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8
  %memory = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %83 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8
  %84 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache71 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %84, i32 0, i32 3
  %85 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache71, align 8
  %memory72 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8
  %87 = load i32, i32* %source_size, align 4
  %88 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_chan73 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %88, i32 0, i32 0
  %89 = load i8, i8* %num_chan73, align 1
  %conv74 = zext i8 %89 to i32
  %mul75 = mul nsw i32 %87, %conv74
  %call76 = call i8* %83(%struct.gs_memory_s* %86, i32 %mul75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call76, i8** %temp_src, align 8
  %90 = load i8*, i8** %temp_src, align 8
  %cmp77 = icmp eq i8* %90, null
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else
  br label %if.end.162

if.end.80:                                        ; preds = %if.else
  %91 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache81 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %91, i32 0, i32 3
  %92 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache81, align 8
  %memory82 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %92, i32 0, i32 3
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory82, align 8
  %procs83 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 1
  %alloc_bytes84 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs83, i32 0, i32 7
  %94 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes84, align 8
  %95 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache85 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %95, i32 0, i32 3
  %96 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache85, align 8
  %memory86 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory86, align 8
  %98 = load i32, i32* %des_size, align 4
  %99 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %num_chan87 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %99, i32 0, i32 0
  %100 = load i8, i8* %num_chan87, align 1
  %conv88 = zext i8 %100 to i32
  %mul89 = mul nsw i32 %98, %conv88
  %call90 = call i8* %94(%struct.gs_memory_s* %97, i32 %mul89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call90, i8** %temp_des, align 8
  %101 = load i8*, i8** %temp_des, align 8
  %cmp91 = icmp eq i8* %101, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.80
  br label %if.end.162

if.end.94:                                        ; preds = %if.end.80
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.94
  %102 = load i32, i32* %y, align 4
  %103 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_rows95 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %103, i32 0, i32 8
  %104 = load i32, i32* %num_rows95, align 4
  %cmp96 = icmp slt i32 %102, %104
  br i1 %cmp96, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  %105 = load i8*, i8** %temp_src, align 8
  store i8* %105, i8** %src_cm, align 8
  %106 = load i8*, i8** %inputpos, align 8
  store i8* %106, i8** %src_buff, align 8
  %107 = load i8*, i8** %temp_des, align 8
  store i8* %107, i8** %des_cm, align 8
  %108 = load i8*, i8** %outputpos, align 8
  store i8* %108, i8** %des_buff, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc, %for.body
  %109 = load i32, i32* %i, align 4
  %110 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_chan99 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %110, i32 0, i32 0
  %111 = load i8, i8* %num_chan99, align 1
  %conv100 = zext i8 %111 to i32
  %cmp101 = icmp slt i32 %109, %conv100
  br i1 %cmp101, label %for.body.103, label %for.end

for.body.103:                                     ; preds = %for.cond.98
  %112 = load i8*, i8** %src_cm, align 8
  %113 = load i8*, i8** %src_buff, align 8
  %114 = load i32, i32* %source_size, align 4
  %conv104 = sext i32 %114 to i64
  %call105 = call i8* @memcpy(i8* %112, i8* %113, i64 %conv104) #6
  %115 = load i32, i32* %source_size, align 4
  %116 = load i8*, i8** %src_cm, align 8
  %idx.ext = sext i32 %115 to i64
  %add.ptr = getelementptr inbounds i8, i8* %116, i64 %idx.ext
  store i8* %add.ptr, i8** %src_cm, align 8
  %117 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %plane_stride106 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %117, i32 0, i32 6
  %118 = load i32, i32* %plane_stride106, align 4
  %119 = load i8*, i8** %src_buff, align 8
  %idx.ext107 = sext i32 %118 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %119, i64 %idx.ext107
  store i8* %add.ptr108, i8** %src_buff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.103
  %120 = load i32, i32* %i, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.98

for.end:                                          ; preds = %for.cond.98
  %121 = load i8*, i8** %hTransform, align 8
  %122 = load i8*, i8** %temp_src, align 8
  %123 = load i8*, i8** %temp_des, align 8
  %124 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %pixels_per_row109 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %124, i32 0, i32 9
  %125 = load i32, i32* %pixels_per_row109, align 4
  call void @cmsDoTransform(i8* %121, i8* %122, i8* %123, i32 %125) #4
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.123, %for.end
  %126 = load i32, i32* %i, align 4
  %127 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %num_chan111 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %127, i32 0, i32 0
  %128 = load i8, i8* %num_chan111, align 1
  %conv112 = zext i8 %128 to i32
  %cmp113 = icmp slt i32 %126, %conv112
  br i1 %cmp113, label %for.body.115, label %for.end.125

for.body.115:                                     ; preds = %for.cond.110
  %129 = load i8*, i8** %des_buff, align 8
  %130 = load i8*, i8** %des_cm, align 8
  %131 = load i32, i32* %des_size, align 4
  %conv116 = sext i32 %131 to i64
  %call117 = call i8* @memcpy(i8* %129, i8* %130, i64 %conv116) #6
  %132 = load i32, i32* %des_size, align 4
  %133 = load i8*, i8** %des_cm, align 8
  %idx.ext118 = sext i32 %132 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %133, i64 %idx.ext118
  store i8* %add.ptr119, i8** %des_cm, align 8
  %134 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %plane_stride120 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %134, i32 0, i32 6
  %135 = load i32, i32* %plane_stride120, align 4
  %136 = load i8*, i8** %des_buff, align 8
  %idx.ext121 = sext i32 %135 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %136, i64 %idx.ext121
  store i8* %add.ptr122, i8** %des_buff, align 8
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.115
  %137 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %137, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.110

for.end.125:                                      ; preds = %for.cond.110
  %138 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %row_stride = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %138, i32 0, i32 7
  %139 = load i32, i32* %row_stride, align 4
  %140 = load i8*, i8** %inputpos, align 8
  %idx.ext126 = sext i32 %139 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %140, i64 %idx.ext126
  store i8* %add.ptr127, i8** %inputpos, align 8
  %141 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %row_stride128 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %141, i32 0, i32 7
  %142 = load i32, i32* %row_stride128, align 4
  %143 = load i8*, i8** %outputpos, align 8
  %idx.ext129 = sext i32 %142 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %143, i64 %idx.ext129
  store i8* %add.ptr130, i8** %outputpos, align 8
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.125
  %144 = load i32, i32* %y, align 4
  %inc132 = add nsw i32 %144, 1
  store i32 %inc132, i32* %y, align 4
  br label %for.cond

for.end.133:                                      ; preds = %for.cond
  %145 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache134 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %145, i32 0, i32 3
  %146 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache134, align 8
  %memory135 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8
  %procs136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs136, i32 0, i32 2
  %148 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8
  %149 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache137 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %149, i32 0, i32 3
  %150 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache137, align 8
  %memory138 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8
  %152 = load i8*, i8** %temp_src, align 8
  call void %148(%struct.gs_memory_s* %151, i8* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #4
  %153 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache139 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %153, i32 0, i32 3
  %154 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache139, align 8
  %memory140 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory140, align 8
  %procs141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %free_object142 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs141, i32 0, i32 2
  %156 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object142, align 8
  %157 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %icc_link_cache143 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %157, i32 0, i32 3
  %158 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache143, align 8
  %memory144 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory144, align 8
  %160 = load i8*, i8** %temp_des, align 8
  call void %156(%struct.gs_memory_s* %159, i8* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.133, %if.then.61
  br label %if.end.162

if.else.146:                                      ; preds = %if.end.40
  store i32 0, i32* %k, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.159, %if.else.146
  %161 = load i32, i32* %k, align 4
  %162 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %num_rows148 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %162, i32 0, i32 8
  %163 = load i32, i32* %num_rows148, align 4
  %cmp149 = icmp slt i32 %161, %163
  br i1 %cmp149, label %for.body.151, label %for.end.161

for.body.151:                                     ; preds = %for.cond.147
  %164 = load i8*, i8** %hTransform, align 8
  %165 = load i8*, i8** %inputpos, align 8
  %166 = load i8*, i8** %outputpos, align 8
  %167 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %pixels_per_row152 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %167, i32 0, i32 9
  %168 = load i32, i32* %pixels_per_row152, align 4
  call void @cmsDoTransform(i8* %164, i8* %165, i8* %166, i32 %168) #4
  %169 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %input_buff_desc.addr, align 8
  %row_stride153 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %169, i32 0, i32 7
  %170 = load i32, i32* %row_stride153, align 4
  %171 = load i8*, i8** %inputpos, align 8
  %idx.ext154 = sext i32 %170 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %171, i64 %idx.ext154
  store i8* %add.ptr155, i8** %inputpos, align 8
  %172 = load %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s** %output_buff_desc.addr, align 8
  %row_stride156 = getelementptr inbounds %struct.gsicc_bufferdesc_s, %struct.gsicc_bufferdesc_s* %172, i32 0, i32 7
  %173 = load i32, i32* %row_stride156, align 4
  %174 = load i8*, i8** %outputpos, align 8
  %idx.ext157 = sext i32 %173 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %174, i64 %idx.ext157
  store i8* %add.ptr158, i8** %outputpos, align 8
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.151
  %175 = load i32, i32* %k, align 4
  %inc160 = add nsw i32 %175, 1
  store i32 %inc160, i32* %k, align 4
  br label %for.cond.147

for.end.161:                                      ; preds = %for.cond.147
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.39, %if.then.79, %if.then.93, %for.end.161, %if.end.145
  ret void
}

declare i32 @cmsGetTransformInputFormat(i8*) #1

declare i32 @cmsGetTransformOutputFormat(i8*) #1

declare i32 @cmsChangeBuffersFormat(i8*, i32, i32) #1

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @gscms_transform_color(%struct.gx_device_s* %dev, %struct.gsicc_link_s* %icclink, i8* %inputcolor, i8* %outputcolor, i32 %num_bytes) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %inputcolor.addr = alloca i8*, align 8
  %outputcolor.addr = alloca i8*, align 8
  %num_bytes.addr = alloca i32, align 4
  %hTransform = alloca i8*, align 8
  %dwInputFormat = alloca i32, align 4
  %dwOutputFormat = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8
  store i8* %inputcolor, i8** %inputcolor.addr, align 8
  store i8* %outputcolor, i8** %outputcolor.addr, align 8
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %link_handle, align 8
  store i8* %1, i8** %hTransform, align 8
  %2 = load i32, i32* %num_bytes.addr, align 4
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %num_bytes.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %hTransform, align 8
  %call = call i32 @cmsGetTransformInputFormat(i8* %3) #4
  store i32 %call, i32* %dwInputFormat, align 4
  %4 = load i8*, i8** %hTransform, align 8
  %call1 = call i32 @cmsGetTransformOutputFormat(i8* %4) #4
  store i32 %call1, i32* %dwOutputFormat, align 4
  %5 = load i32, i32* %dwInputFormat, align 4
  %and = and i32 %5, -8
  %6 = load i32, i32* %num_bytes.addr, align 4
  %or = or i32 %and, %6
  store i32 %or, i32* %dwInputFormat, align 4
  %7 = load i32, i32* %dwOutputFormat, align 4
  %and2 = and i32 %7, -8
  %8 = load i32, i32* %num_bytes.addr, align 4
  %or3 = or i32 %and2, %8
  store i32 %or3, i32* %dwOutputFormat, align 4
  %9 = load i8*, i8** %hTransform, align 8
  %10 = load i32, i32* %dwInputFormat, align 4
  %11 = load i32, i32* %dwOutputFormat, align 4
  %call4 = call i32 @cmsChangeBuffersFormat(i8* %9, i32 %10, i32 %11) #4
  %12 = load i8*, i8** %hTransform, align 8
  %13 = load i8*, i8** %inputcolor.addr, align 8
  %14 = load i8*, i8** %outputcolor.addr, align 8
  call void @cmsDoTransform(i8* %12, i8* %13, i8* %14, i32 1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gscms_avoid_white_fix_flag() #0 {
entry:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define void @gscms_get_link_dim(i8* %link, i32* %num_inputs, i32* %num_outputs) #0 {
entry:
  %link.addr = alloca i8*, align 8
  %num_inputs.addr = alloca i32*, align 8
  %num_outputs.addr = alloca i32*, align 8
  store i8* %link, i8** %link.addr, align 8
  store i32* %num_inputs, i32** %num_inputs.addr, align 8
  store i32* %num_outputs, i32** %num_outputs.addr, align 8
  %0 = load i8*, i8** %link.addr, align 8
  %call = call i32 @cmsGetTransformInputFormat(i8* %0) #4
  %shr = lshr i32 %call, 3
  %and = and i32 %shr, 15
  %1 = load i32*, i32** %num_inputs.addr, align 8
  store i32 %and, i32* %1, align 4
  %2 = load i8*, i8** %link.addr, align 8
  %call1 = call i32 @cmsGetTransformOutputFormat(i8* %2) #4
  %shr2 = lshr i32 %call1, 3
  %and3 = and i32 %shr2, 15
  %3 = load i32*, i32** %num_outputs.addr, align 8
  store i32 %and3, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gscms_get_link(i8* %lcms_srchandle, i8* %lcms_deshandle, %struct.gsicc_rendering_param_s* %rendering_params, i32 %cmm_flags, %struct.gs_memory_s* %memory) #0 {
entry:
  %lcms_srchandle.addr = alloca i8*, align 8
  %lcms_deshandle.addr = alloca i8*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %cmm_flags.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %src_data_type = alloca i32, align 4
  %des_data_type = alloca i32, align 4
  %src_color_space = alloca i32, align 4
  %des_color_space = alloca i32, align 4
  %src_nChannels = alloca i32, align 4
  %des_nChannels = alloca i32, align 4
  %lcms_src_color_space = alloca i32, align 4
  %lcms_des_color_space = alloca i32, align 4
  %flag = alloca i32, align 4
  store i8* %lcms_srchandle, i8** %lcms_srchandle.addr, align 8
  store i8* %lcms_deshandle, i8** %lcms_deshandle.addr, align 8
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  store i32 %cmm_flags, i32* %cmm_flags.addr, align 4
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  %0 = load i8*, i8** %lcms_srchandle.addr, align 8
  %call = call i32 @cmsGetColorSpace(i8* %0) #4
  store i32 %call, i32* %src_color_space, align 4
  %1 = load i32, i32* %src_color_space, align 4
  %call1 = call i32 @_cmsLCMScolorSpace(i32 %1) #4
  store i32 %call1, i32* %lcms_src_color_space, align 4
  %2 = load i32, i32* %lcms_src_color_space, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %lcms_src_color_space, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %src_color_space, align 4
  %call2 = call i32 @cmsChannelsOf(i32 %3) #4
  store i32 %call2, i32* %src_nChannels, align 4
  %4 = load i32, i32* %lcms_src_color_space, align 4
  %shl = shl i32 %4, 16
  %5 = load i32, i32* %src_nChannels, align 4
  %shl3 = shl i32 %5, 3
  %or = or i32 %shl, %shl3
  %or4 = or i32 %or, 2
  store i32 %or4, i32* %src_data_type, align 4
  %6 = load i8*, i8** %lcms_deshandle.addr, align 8
  %cmp5 = icmp ne i8* %6, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %7 = load i8*, i8** %lcms_deshandle.addr, align 8
  %call7 = call i32 @cmsGetColorSpace(i8* %7) #4
  store i32 %call7, i32* %des_color_space, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %8 = load i8*, i8** %lcms_deshandle.addr, align 8
  %call8 = call i32 @cmsGetPCS(i8* %8) #4
  store i32 %call8, i32* %des_color_space, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %9 = load i32, i32* %des_color_space, align 4
  %call10 = call i32 @_cmsLCMScolorSpace(i32 %9) #4
  store i32 %call10, i32* %lcms_des_color_space, align 4
  %10 = load i32, i32* %lcms_des_color_space, align 4
  %cmp11 = icmp slt i32 %10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %lcms_des_color_space, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %11 = load i32, i32* %des_color_space, align 4
  %call14 = call i32 @cmsChannelsOf(i32 %11) #4
  store i32 %call14, i32* %des_nChannels, align 4
  %12 = load i32, i32* %lcms_des_color_space, align 4
  %shl15 = shl i32 %12, 16
  %13 = load i32, i32* %des_nChannels, align 4
  %shl16 = shl i32 %13, 3
  %or17 = or i32 %shl15, %shl16
  %or18 = or i32 %or17, 2
  store i32 %or18, i32* %des_data_type, align 4
  store i32 1024, i32* %flag, align 4
  %14 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %14, i32 0, i32 1
  %15 = load i32, i32* %black_point_comp, align 4
  %cmp19 = icmp eq i32 %15, 1
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %16 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp20 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %16, i32 0, i32 1
  %17 = load i32, i32* %black_point_comp20, align 4
  %cmp21 = icmp eq i32 %17, 5
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.13
  %18 = load i32, i32* %flag, align 4
  %or23 = or i32 %18, 8192
  store i32 %or23, i32* %flag, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false
  %19 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %19, i32 0, i32 2
  %20 = load i32, i32* %preserve_black, align 4
  %cmp25 = icmp eq i32 %20, 1
  br i1 %cmp25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.end.24
  %21 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %21, i32 0, i32 0
  %22 = load i32, i32* %rendering_intent, align 4
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.then.26
  %23 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent27 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %23, i32 0, i32 0
  store i32 10, i32* %rendering_intent27, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.26
  %24 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent29 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %24, i32 0, i32 0
  store i32 11, i32* %rendering_intent29, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.26
  %25 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent31 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %25, i32 0, i32 0
  store i32 12, i32* %rendering_intent31, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.30, %sw.bb.28, %sw.bb
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog, %if.end.24
  %26 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %preserve_black33 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %26, i32 0, i32 2
  %27 = load i32, i32* %preserve_black33, align 4
  %cmp34 = icmp eq i32 %27, 2
  br i1 %cmp34, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %if.end.32
  %28 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent36 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %28, i32 0, i32 0
  %29 = load i32, i32* %rendering_intent36, align 4
  switch i32 %29, label %sw.default.43 [
    i32 0, label %sw.bb.37
    i32 1, label %sw.bb.39
    i32 2, label %sw.bb.41
  ]

sw.bb.37:                                         ; preds = %if.then.35
  %30 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent38 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %30, i32 0, i32 0
  store i32 13, i32* %rendering_intent38, align 4
  br label %sw.epilog.44

sw.bb.39:                                         ; preds = %if.then.35
  %31 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent40 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %31, i32 0, i32 0
  store i32 14, i32* %rendering_intent40, align 4
  br label %sw.epilog.44

sw.bb.41:                                         ; preds = %if.then.35
  %32 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent42 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %32, i32 0, i32 0
  store i32 15, i32* %rendering_intent42, align 4
  br label %sw.epilog.44

sw.default.43:                                    ; preds = %if.then.35
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.default.43, %sw.bb.41, %sw.bb.39, %sw.bb.37
  br label %if.end.45

if.end.45:                                        ; preds = %sw.epilog.44, %if.end.32
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %34 = bitcast %struct.gs_memory_s* %33 to %struct._cmsContext_struct*
  %35 = load i8*, i8** %lcms_srchandle.addr, align 8
  %36 = load i32, i32* %src_data_type, align 4
  %37 = load i8*, i8** %lcms_deshandle.addr, align 8
  %38 = load i32, i32* %des_data_type, align 4
  %39 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent46 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %39, i32 0, i32 0
  %40 = load i32, i32* %rendering_intent46, align 4
  %41 = load i32, i32* %flag, align 4
  %42 = load i32, i32* %cmm_flags.addr, align 4
  %or47 = or i32 %41, %42
  %call48 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %34, i8* %35, i32 %36, i8* %37, i32 %38, i32 %40, i32 %or47) #4
  ret i8* %call48
}

declare i32 @_cmsLCMScolorSpace(i32) #1

declare i8* @cmsCreateTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gscms_get_link_proof_devlink(i8* %lcms_srchandle, i8* %lcms_proofhandle, i8* %lcms_deshandle, i8* %lcms_devlinkhandle, %struct.gsicc_rendering_param_s* %rendering_params, i32 %src_dev_link, i32 %cmm_flags, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i8*, align 8
  %lcms_srchandle.addr = alloca i8*, align 8
  %lcms_proofhandle.addr = alloca i8*, align 8
  %lcms_deshandle.addr = alloca i8*, align 8
  %lcms_devlinkhandle.addr = alloca i8*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %src_dev_link.addr = alloca i32, align 4
  %cmm_flags.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %src_data_type = alloca i32, align 4
  %des_data_type = alloca i32, align 4
  %src_color_space = alloca i32, align 4
  %des_color_space = alloca i32, align 4
  %src_nChannels = alloca i32, align 4
  %des_nChannels = alloca i32, align 4
  %lcms_src_color_space = alloca i32, align 4
  %lcms_des_color_space = alloca i32, align 4
  %hProfiles = alloca [5 x i8*], align 16
  %nProfiles = alloca i32, align 4
  %flag = alloca i32, align 4
  %src_to_proof = alloca i8*, align 8
  %temptransform = alloca i8*, align 8
  store i8* %lcms_srchandle, i8** %lcms_srchandle.addr, align 8
  store i8* %lcms_proofhandle, i8** %lcms_proofhandle.addr, align 8
  store i8* %lcms_deshandle, i8** %lcms_deshandle.addr, align 8
  store i8* %lcms_devlinkhandle, i8** %lcms_devlinkhandle.addr, align 8
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  store i32 %src_dev_link, i32* %src_dev_link.addr, align 4
  store i32 %cmm_flags, i32* %cmm_flags.addr, align 4
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  store i32 0, i32* %nProfiles, align 4
  %0 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %1, i32 0, i32 0
  %2 = load i32, i32* %rendering_intent, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %land.lhs.true.2, label %if.else.56

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %src_dev_link.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else.56, label %if.then

if.then:                                          ; preds = %land.lhs.true.2
  %4 = load i8*, i8** %lcms_srchandle.addr, align 8
  %5 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %6 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %7 = load i32, i32* %cmm_flags.addr, align 4
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %call = call i8* @gscms_get_link(i8* %4, i8* %5, %struct.gsicc_rendering_param_s* %6, i32 %7, %struct.gs_memory_s* %8) #4
  store i8* %call, i8** %temptransform, align 8
  store i32 1024, i32* %flag, align 4
  %9 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %9, i32 0, i32 1
  %10 = load i32, i32* %black_point_comp, align 4
  %cmp3 = icmp eq i32 %10, 1
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp4 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %11, i32 0, i32 1
  %12 = load i32, i32* %black_point_comp4, align 4
  %cmp5 = icmp eq i32 %12, 5
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  %13 = load i32, i32* %flag, align 4
  %or = or i32 %13, 8192
  store i32 %or, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %lor.lhs.false
  %14 = load i8*, i8** %temptransform, align 8
  %15 = load i32, i32* %flag, align 4
  %call7 = call i8* @cmsTransform2DeviceLink(i8* %14, double 3.400000e+00, i32 %15) #4
  store i8* %call7, i8** %src_to_proof, align 8
  %16 = load i8*, i8** %temptransform, align 8
  call void @cmsDeleteTransform(i8* %16) #4
  %17 = load i8*, i8** %src_to_proof, align 8
  %call8 = call i32 @cmsGetColorSpace(i8* %17) #4
  store i32 %call8, i32* %src_color_space, align 4
  %18 = load i32, i32* %src_color_space, align 4
  %call9 = call i32 @_cmsLCMScolorSpace(i32 %18) #4
  store i32 %call9, i32* %lcms_src_color_space, align 4
  %19 = load i32, i32* %lcms_src_color_space, align 4
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %lcms_src_color_space, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %20 = load i32, i32* %src_color_space, align 4
  %call13 = call i32 @cmsChannelsOf(i32 %20) #4
  store i32 %call13, i32* %src_nChannels, align 4
  %21 = load i32, i32* %lcms_src_color_space, align 4
  %shl = shl i32 %21, 16
  %22 = load i32, i32* %src_nChannels, align 4
  %shl14 = shl i32 %22, 3
  %or15 = or i32 %shl, %shl14
  %or16 = or i32 %or15, 2
  store i32 %or16, i32* %src_data_type, align 4
  %23 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %cmp17 = icmp eq i8* %23, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.12
  %24 = load i8*, i8** %lcms_deshandle.addr, align 8
  %call19 = call i32 @cmsGetColorSpace(i8* %24) #4
  store i32 %call19, i32* %des_color_space, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end.12
  %25 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %call20 = call i32 @cmsGetPCS(i8* %25) #4
  store i32 %call20, i32* %des_color_space, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  %26 = load i32, i32* %des_color_space, align 4
  %call22 = call i32 @_cmsLCMScolorSpace(i32 %26) #4
  store i32 %call22, i32* %lcms_des_color_space, align 4
  %27 = load i32, i32* %lcms_des_color_space, align 4
  %cmp23 = icmp slt i32 %27, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %lcms_des_color_space, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  %28 = load i32, i32* %des_color_space, align 4
  %call26 = call i32 @cmsChannelsOf(i32 %28) #4
  store i32 %call26, i32* %des_nChannels, align 4
  %29 = load i32, i32* %lcms_des_color_space, align 4
  %shl27 = shl i32 %29, 16
  %30 = load i32, i32* %des_nChannels, align 4
  %shl28 = shl i32 %30, 3
  %or29 = or i32 %shl27, %shl28
  %or30 = or i32 %or29, 2
  store i32 %or30, i32* %des_data_type, align 4
  %31 = load i8*, i8** %src_to_proof, align 8
  %32 = load i32, i32* %nProfiles, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %nProfiles, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom
  store i8* %31, i8** %arrayidx, align 8
  %33 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %34 = load i32, i32* %nProfiles, align 4
  %inc31 = add nsw i32 %34, 1
  store i32 %inc31, i32* %nProfiles, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom32
  store i8* %33, i8** %arrayidx33, align 8
  %35 = load i8*, i8** %lcms_deshandle.addr, align 8
  %cmp34 = icmp ne i8* %35, null
  br i1 %cmp34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.25
  %36 = load i8*, i8** %lcms_deshandle.addr, align 8
  %37 = load i32, i32* %nProfiles, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* %nProfiles, align 4
  %idxprom37 = sext i32 %37 to i64
  %arrayidx38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom37
  store i8* %36, i8** %arrayidx38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.25
  %38 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %cmp40 = icmp ne i8* %38, null
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.39
  %39 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %40 = load i32, i32* %nProfiles, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %nProfiles, align 4
  %idxprom43 = sext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom43
  store i8* %39, i8** %arrayidx44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.39
  store i32 1024, i32* %flag, align 4
  %41 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp46 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %41, i32 0, i32 1
  %42 = load i32, i32* %black_point_comp46, align 4
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end.45
  %43 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp49 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %43, i32 0, i32 1
  %44 = load i32, i32* %black_point_comp49, align 4
  %cmp50 = icmp eq i32 %44, 5
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %lor.lhs.false.48, %if.end.45
  %45 = load i32, i32* %flag, align 4
  %or52 = or i32 %45, 8192
  store i32 %or52, i32* %flag, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %lor.lhs.false.48
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %47 = bitcast %struct.gs_memory_s* %46 to %struct._cmsContext_struct*
  %arraydecay = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i32 0
  %48 = load i32, i32* %nProfiles, align 4
  %49 = load i32, i32* %src_data_type, align 4
  %50 = load i32, i32* %des_data_type, align 4
  %51 = load i32, i32* %flag, align 4
  %call54 = call i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %47, i8** %arraydecay, i32 %48, i32 %49, i32 %50, i32 1, i32 %51) #4
  store i8* %call54, i8** %temptransform, align 8
  %52 = load i8*, i8** %src_to_proof, align 8
  %call55 = call i32 @cmsCloseProfile(i8* %52) #4
  %53 = load i8*, i8** %temptransform, align 8
  store i8* %53, i8** %retval
  br label %return

if.else.56:                                       ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %54 = load i8*, i8** %lcms_srchandle.addr, align 8
  %call57 = call i32 @cmsGetColorSpace(i8* %54) #4
  store i32 %call57, i32* %src_color_space, align 4
  %55 = load i32, i32* %src_color_space, align 4
  %call58 = call i32 @_cmsLCMScolorSpace(i32 %55) #4
  store i32 %call58, i32* %lcms_src_color_space, align 4
  %56 = load i32, i32* %lcms_src_color_space, align 4
  %cmp59 = icmp slt i32 %56, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.56
  store i32 0, i32* %lcms_src_color_space, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.56
  %57 = load i32, i32* %src_color_space, align 4
  %call62 = call i32 @cmsChannelsOf(i32 %57) #4
  store i32 %call62, i32* %src_nChannels, align 4
  %58 = load i32, i32* %lcms_src_color_space, align 4
  %shl63 = shl i32 %58, 16
  %59 = load i32, i32* %src_nChannels, align 4
  %shl64 = shl i32 %59, 3
  %or65 = or i32 %shl63, %shl64
  %or66 = or i32 %or65, 2
  store i32 %or66, i32* %src_data_type, align 4
  %60 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %cmp67 = icmp eq i8* %60, null
  br i1 %cmp67, label %if.then.68, label %if.else.75

if.then.68:                                       ; preds = %if.end.61
  %61 = load i32, i32* %src_dev_link.addr, align 4
  %tobool69 = icmp ne i32 %61, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.then.68
  %62 = load i8*, i8** %lcms_srchandle.addr, align 8
  %call71 = call i32 @cmsGetPCS(i8* %62) #4
  store i32 %call71, i32* %des_color_space, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %if.then.68
  %63 = load i8*, i8** %lcms_deshandle.addr, align 8
  %call73 = call i32 @cmsGetColorSpace(i8* %63) #4
  store i32 %call73, i32* %des_color_space, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.70
  br label %if.end.77

if.else.75:                                       ; preds = %if.end.61
  %64 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %call76 = call i32 @cmsGetPCS(i8* %64) #4
  store i32 %call76, i32* %des_color_space, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.end.74
  %65 = load i32, i32* %des_color_space, align 4
  %call78 = call i32 @_cmsLCMScolorSpace(i32 %65) #4
  store i32 %call78, i32* %lcms_des_color_space, align 4
  %66 = load i32, i32* %lcms_des_color_space, align 4
  %cmp79 = icmp slt i32 %66, 0
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  store i32 0, i32* %lcms_des_color_space, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.77
  %67 = load i32, i32* %des_color_space, align 4
  %call82 = call i32 @cmsChannelsOf(i32 %67) #4
  store i32 %call82, i32* %des_nChannels, align 4
  %68 = load i32, i32* %lcms_des_color_space, align 4
  %shl83 = shl i32 %68, 16
  %69 = load i32, i32* %des_nChannels, align 4
  %shl84 = shl i32 %69, 3
  %or85 = or i32 %shl83, %shl84
  %or86 = or i32 %or85, 2
  store i32 %or86, i32* %des_data_type, align 4
  %70 = load i8*, i8** %lcms_srchandle.addr, align 8
  %71 = load i32, i32* %nProfiles, align 4
  %inc87 = add nsw i32 %71, 1
  store i32 %inc87, i32* %nProfiles, align 4
  %idxprom88 = sext i32 %71 to i64
  %arrayidx89 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom88
  store i8* %70, i8** %arrayidx89, align 8
  %72 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %cmp90 = icmp ne i8* %72, null
  br i1 %cmp90, label %land.lhs.true.91, label %if.end.100

land.lhs.true.91:                                 ; preds = %if.end.81
  %73 = load i32, i32* %src_dev_link.addr, align 4
  %tobool92 = icmp ne i32 %73, 0
  br i1 %tobool92, label %if.end.100, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.91
  %74 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %75 = load i32, i32* %nProfiles, align 4
  %inc94 = add nsw i32 %75, 1
  store i32 %inc94, i32* %nProfiles, align 4
  %idxprom95 = sext i32 %75 to i64
  %arrayidx96 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom95
  store i8* %74, i8** %arrayidx96, align 8
  %76 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %77 = load i32, i32* %nProfiles, align 4
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, i32* %nProfiles, align 4
  %idxprom98 = sext i32 %77 to i64
  %arrayidx99 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom98
  store i8* %76, i8** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.93, %land.lhs.true.91, %if.end.81
  %78 = load i8*, i8** %lcms_deshandle.addr, align 8
  %cmp101 = icmp ne i8* %78, null
  br i1 %cmp101, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %if.end.100
  %79 = load i8*, i8** %lcms_deshandle.addr, align 8
  %80 = load i32, i32* %nProfiles, align 4
  %inc103 = add nsw i32 %80, 1
  store i32 %inc103, i32* %nProfiles, align 4
  %idxprom104 = sext i32 %80 to i64
  %arrayidx105 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom104
  store i8* %79, i8** %arrayidx105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %if.end.100
  %81 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %cmp107 = icmp ne i8* %81, null
  br i1 %cmp107, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.end.106
  %82 = load i8*, i8** %lcms_devlinkhandle.addr, align 8
  %83 = load i32, i32* %nProfiles, align 4
  %inc109 = add nsw i32 %83, 1
  store i32 %inc109, i32* %nProfiles, align 4
  %idxprom110 = sext i32 %83 to i64
  %arrayidx111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i64 %idxprom110
  store i8* %82, i8** %arrayidx111, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.108, %if.end.106
  store i32 1024, i32* %flag, align 4
  %84 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp113 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %84, i32 0, i32 1
  %85 = load i32, i32* %black_point_comp113, align 4
  %cmp114 = icmp eq i32 %85, 1
  br i1 %cmp114, label %if.then.118, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.end.112
  %86 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %black_point_comp116 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %86, i32 0, i32 1
  %87 = load i32, i32* %black_point_comp116, align 4
  %cmp117 = icmp eq i32 %87, 5
  br i1 %cmp117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %lor.lhs.false.115, %if.end.112
  %88 = load i32, i32* %flag, align 4
  %or119 = or i32 %88, 8192
  store i32 %or119, i32* %flag, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %lor.lhs.false.115
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %90 = bitcast %struct.gs_memory_s* %89 to %struct._cmsContext_struct*
  %arraydecay121 = getelementptr inbounds [5 x i8*], [5 x i8*]* %hProfiles, i32 0, i32 0
  %91 = load i32, i32* %nProfiles, align 4
  %92 = load i32, i32* %src_data_type, align 4
  %93 = load i32, i32* %des_data_type, align 4
  %94 = load %struct.gsicc_rendering_param_s*, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  %rendering_intent122 = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %94, i32 0, i32 0
  %95 = load i32, i32* %rendering_intent122, align 4
  %96 = load i32, i32* %flag, align 4
  %call123 = call i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %90, i8** %arraydecay121, i32 %91, i32 %92, i32 %93, i32 %95, i32 %96) #4
  store i8* %call123, i8** %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.end.53
  %97 = load i8*, i8** %retval
  ret i8* %97
}

declare i8* @cmsTransform2DeviceLink(i8*, double, i32) #1

declare void @cmsDeleteTransform(i8*) #1

declare i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct*, i8**, i32, i32, i32, i32, i32) #1

declare i32 @cmsCloseProfile(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gscms_create(%struct.gs_memory_s* %memory) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  call void @cmsSetLogErrorHandler(void (%struct._cmsContext_struct*, i32, i8*)* @gscms_error) #4
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %1 = bitcast %struct.gs_memory_s* %0 to %struct._cmsContext_struct*
  %call = call i32 @cmsPluginTHR(%struct._cmsContext_struct* %1, i8* bitcast (%struct.cmsPluginMemHandler* @gs_cms_memhandler to i8*)) #4
  ret i32 0
}

declare i32 @cmsPluginTHR(%struct._cmsContext_struct*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gscms_destroy(%struct.gs_memory_s* %memory) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @gscms_release_link(%struct.gsicc_link_s* %icclink) #0 {
entry:
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %link_handle, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle1 = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %link_handle1, align 8
  call void @cmsDeleteTransform(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gscms_release_profile(i8* %profile) #0 {
entry:
  %profile.addr = alloca i8*, align 8
  %profile_handle = alloca i8*, align 8
  store i8* %profile, i8** %profile.addr, align 8
  %0 = load i8*, i8** %profile.addr, align 8
  store i8* %0, i8** %profile_handle, align 8
  %1 = load i8*, i8** %profile_handle, align 8
  %call = call i32 @cmsCloseProfile(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gscms_transform_named_color(%struct.gsicc_link_s* %icclink, float %tint_value, i8* %ColorName, i16* %device_values) #0 {
entry:
  %retval = alloca i32, align 4
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %tint_value.addr = alloca float, align 4
  %ColorName.addr = alloca i8*, align 8
  %device_values.addr = alloca i16*, align 8
  %hTransform = alloca i8*, align 8
  %deviceptr = alloca i16*, align 8
  %index = alloca i32, align 4
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8
  store float %tint_value, float* %tint_value.addr, align 4
  store i8* %ColorName, i8** %ColorName.addr, align 8
  store i16* %device_values, i16** %device_values.addr, align 8
  %0 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %link_handle, align 8
  store i8* %1, i8** %hTransform, align 8
  %2 = load i16*, i16** %device_values.addr, align 8
  store i16* %2, i16** %deviceptr, align 8
  %3 = load i8*, i8** %hTransform, align 8
  %4 = bitcast i8* %3 to %struct._cms_NAMEDCOLORLIST_struct*
  %5 = load i8*, i8** %ColorName.addr, align 8
  %call = call i32 @cmsNamedColorIndex(%struct._cms_NAMEDCOLORLIST_struct* %4, i8* %5) #4
  store i32 %call, i32* %index, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %hTransform, align 8
  %7 = bitcast i32* %index to i8*
  %8 = load i16*, i16** %deviceptr, align 8
  %9 = bitcast i16* %8 to i8*
  call void @cmsDoTransform(i8* %6, i8* %7, i8* %9, i32 1) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @cmsNamedColorIndex(%struct._cms_NAMEDCOLORLIST_struct*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gscms_get_name2device_link(%struct.gsicc_link_s* %icclink, i8* %lcms_srchandle, i8* %lcms_deshandle, i8* %lcms_proofhandle, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %memory) #0 {
entry:
  %icclink.addr = alloca %struct.gsicc_link_s*, align 8
  %lcms_srchandle.addr = alloca i8*, align 8
  %lcms_deshandle.addr = alloca i8*, align 8
  %lcms_proofhandle.addr = alloca i8*, align 8
  %rendering_params.addr = alloca %struct.gsicc_rendering_param_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %hTransform = alloca i8*, align 8
  %dwOutputFormat = alloca i32, align 4
  %lcms_proof_flag = alloca i32, align 4
  %number_colors = alloca i32, align 4
  store %struct.gsicc_link_s* %icclink, %struct.gsicc_link_s** %icclink.addr, align 8
  store i8* %lcms_srchandle, i8** %lcms_srchandle.addr, align 8
  store i8* %lcms_deshandle, i8** %lcms_deshandle.addr, align 8
  store i8* %lcms_proofhandle, i8** %lcms_proofhandle.addr, align 8
  store %struct.gsicc_rendering_param_s* %rendering_params, %struct.gsicc_rendering_param_s** %rendering_params.addr, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8
  %0 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 20480, i32* %lcms_proof_flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %lcms_proof_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8
  %2 = bitcast %struct.gs_memory_s* %1 to %struct._cmsContext_struct*
  %3 = load i8*, i8** %lcms_srchandle.addr, align 8
  %4 = load i8*, i8** %lcms_deshandle.addr, align 8
  %5 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %6 = load i32, i32* %lcms_proof_flag, align 4
  %call = call i8* @cmsCreateProofingTransformTHR(%struct._cmsContext_struct* %2, i8* %3, i32 10, i8* %4, i32 393249, i8* %5, i32 0, i32 3, i32 %6) #4
  store i8* %call, i8** %hTransform, align 8
  %7 = load i8*, i8** %hTransform, align 8
  %call1 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8* %7) #4
  %call2 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %call1) #4
  store i32 %call2, i32* %number_colors, align 4
  %8 = load i32, i32* %number_colors, align 4
  %shl = shl i32 %8, 3
  %conv = sext i32 %shl to i64
  %or = or i64 %conv, 2
  %conv3 = trunc i64 %or to i32
  store i32 %conv3, i32* %dwOutputFormat, align 4
  %9 = load i8*, i8** %hTransform, align 8
  %10 = load i32, i32* %dwOutputFormat, align 4
  %call4 = call i32 @cmsChangeBuffersFormat(i8* %9, i32 10, i32 %10) #4
  %11 = load i8*, i8** %hTransform, align 8
  %12 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icclink.addr, align 8
  %link_handle = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %12, i32 0, i32 0
  store i8* %11, i8** %link_handle, align 8
  %13 = load i8*, i8** %lcms_srchandle.addr, align 8
  %call5 = call i32 @cmsCloseProfile(i8* %13) #4
  %14 = load i8*, i8** %lcms_deshandle.addr, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %15 = load i8*, i8** %lcms_deshandle.addr, align 8
  %call7 = call i32 @cmsCloseProfile(i8* %15) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %16 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %17 = load i8*, i8** %lcms_proofhandle.addr, align 8
  %call11 = call i32 @cmsCloseProfile(i8* %17) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  ret void
}

declare i8* @cmsCreateProofingTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i8*, i32, i32, i32) #1

declare %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gs_lcms2_malloc(%struct._cmsContext_struct* %id, i32 %size) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8
  %1 = bitcast %struct._cmsContext_struct* %0 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %1, %struct.gs_memory_s** %mem, align 8
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %5 = load i32, i32* %size.addr, align 4
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal void @gs_lcms2_free(%struct._cmsContext_struct* %id, i8* %ptr) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8
  %1 = bitcast %struct._cmsContext_struct* %0 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %1, %struct.gs_memory_s** %mem, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  call void %4(%struct.gs_memory_s* %5, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_lcms2_realloc(%struct._cmsContext_struct* %id, i8* %ptr, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %ptr2 = alloca i8*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8
  %1 = bitcast %struct._cmsContext_struct* %0 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %1, %struct.gs_memory_s** %mem, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8
  %4 = load i32, i32* %size.addr, align 4
  %call = call i8* @gs_lcms2_malloc(%struct._cmsContext_struct* %3, i32 %4) #4
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  call void @gs_lcms2_free(%struct._cmsContext_struct* %6, i8* %7) #4
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 1
  %9 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = load i32, i32* %size.addr, align 4
  %call4 = call i8* %9(%struct.gs_memory_s* %10, i8* %11, i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call4, i8** %ptr2, align 8
  %13 = load i8*, i8** %ptr2, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
