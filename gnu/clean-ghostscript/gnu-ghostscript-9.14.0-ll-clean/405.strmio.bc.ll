; ModuleID = './strmio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"sfopen: gs_parse_file_name failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"sfopen: not allowed with %device only.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"sfopen: allocation error\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"sfopen: allocation error setting path name into stream.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sfclose(stream)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.stream_s* @sfopen(i8* %path, i8* %mode, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pfn = alloca %struct.gs_parsed_file_name_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %open_file = alloca i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %path, i8** %path.addr, align 8, !tbaa !1
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #4
  %conv = trunc i64 %call to i32
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %4, i32 %conv, %struct.gs_memory_s* %6) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #4
  %conv4 = trunc i64 %call3 to i32
  %call5 = call i32 @errwrite(%struct.gs_memory_s* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %conv4) #5
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %9 = load i8*, i8** %fname, align 8, !tbaa !7
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0)) #4
  %conv10 = trunc i64 %call9 to i32
  %call11 = call i32 @errwrite(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i32 %conv10) #5
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %11 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !9
  %cmp13 = icmp eq %struct.gx_io_device_s* %11, null
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call16 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %12, i32 0) #5
  %iodev17 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  store %struct.gx_io_device_s* %call16, %struct.gx_io_device_s** %iodev17, align 8, !tbaa !9
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %iodev19 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %13 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev19, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %13, i32 0, i32 2
  %open_file20 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 2
  %14 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file20, align 8, !tbaa !10
  store i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %14, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %15 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %cmp21 = icmp eq i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %15, null
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %fname24 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %16 = load i8*, i8** %fname24, align 8, !tbaa !7
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %17 = load i32, i32* %len, align 4, !tbaa !13
  %18 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %iodev25 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %19 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev25, align 8, !tbaa !9
  %iodev26 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev26, align 8, !tbaa !9
  %procs27 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %20, i32 0, i32 2
  %gp_fopen = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs27, i32 0, i32 3
  %21 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %gp_fopen, align 8, !tbaa !14
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call28 = call i32 @file_open_stream(i8* %16, i32 %17, i8* %18, i32 2048, %struct.stream_s** %s, %struct.gx_io_device_s* %19, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %21, %struct.gs_memory_s* %22) #5
  store i32 %call28, i32* %code, align 4, !tbaa !5
  br label %if.end.33

if.else:                                          ; preds = %if.end.18
  %23 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %iodev29 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %24 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev29, align 8, !tbaa !9
  %fname30 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %25 = load i8*, i8** %fname30, align 8, !tbaa !7
  %len31 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %26 = load i32, i32* %len31, align 4, !tbaa !13
  %27 = load i8*, i8** %mode.addr, align 8, !tbaa !1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call32 = call i32 %23(%struct.gx_io_device_s* %24, i8* %25, i32 %26, i8* %27, %struct.stream_s** %s, %struct.gs_memory_s* %28) #5
  store i32 %call32, i32* %code, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.23
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %29, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.33
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 13
  store i64 0, i64* %position, align 8, !tbaa !15
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %32 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %call38 = call i64 @strlen(i8* %33) #4
  %conv39 = trunc i64 %call38 to i32
  %call40 = call i32 @ssetfilename(%struct.stream_s* %31, i8* %32, i32 %conv39) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %34, 0
  br i1 %cmp41, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end.37
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call44 = call i32 @sclose(%struct.stream_s* %35) #5
  %36 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %39 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !22
  %41 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %42 = bitcast %struct.stream_s* %41 to i8*
  call void %38(%struct.gs_memory_s* %40, i8* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #5
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call47 = call i64 @strlen(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #4
  %conv48 = trunc i64 %call47 to i32
  %call49 = call i32 @errwrite(%struct.gs_memory_s* %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i32 %conv48) #5
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.37
  %44 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %44, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.43, %if.then.36, %if.then.8, %if.then
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %48) #1
  %49 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %49
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #2

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #2

declare i32 @file_open_stream(i8*, i32, i8*, i32, %struct.stream_s**, %struct.gx_io_device_s*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, %struct.gs_memory_s*) #2

declare i32 @ssetfilename(%struct.stream_s*, i8*, i32) #2

declare i32 @sclose(%struct.stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @sfread(i8* %ptr, i64 %size, i64 %count, %struct.stream_s* %s) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %nread = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !26
  store i64 %count, i64* %count.addr, align 8, !tbaa !26
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %4 = load i64, i64* %size.addr, align 8, !tbaa !26
  %5 = load i64, i64* %count.addr, align 8, !tbaa !26
  %mul = mul i64 %4, %5
  %conv = trunc i64 %mul to i32
  %call = call i32 @sgets(%struct.stream_s* %2, i8* %3, i32 %conv, i32* %nread) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %nread, align 4, !tbaa !5
  %conv1 = zext i32 %6 to i64
  %7 = load i64, i64* %size.addr, align 8, !tbaa !26
  %mul2 = mul i64 %conv1, %7
  %conv3 = trunc i64 %mul2 to i32
  %8 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %conv3
}

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @sfgetc(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !27
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !29
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r4, i32 0, i32 0
  %6 = load i8*, i8** %ptr5, align 8, !tbaa !29
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !29
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_read_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r7, i32 0, i32 0
  %8 = load i8*, i8** %ptr8, align 8, !tbaa !29
  %9 = load i8, i8* %8, align 1, !tbaa !30
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @spgetcc(%struct.stream_s* %10, i32 1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %11, 0
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %12, %cond.true.11 ], [ -1, %cond.false.12 ]
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %cond14
}

declare i32 @spgetcc(%struct.stream_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @sfseek(%struct.stream_s* %s, i64 %offset, i32 %whence) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %newpos = alloca i64, align 8
  %endpos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !26
  store i32 %whence, i32* %whence.addr, align 4, !tbaa !5
  %0 = bitcast i64* %newpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %offset.addr, align 8, !tbaa !26
  store i64 %1, i64* %newpos, align 8, !tbaa !26
  %2 = load i32, i32* %whence.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %3) #5
  %4 = load i64, i64* %newpos, align 8, !tbaa !26
  %add = add nsw i64 %4, %call
  store i64 %add, i64* %newpos, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %whence.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %6 = bitcast i64* %endpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @savailable(%struct.stream_s* %7, i64* %endpos) #5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %8 = load i64, i64* %endpos, align 8, !tbaa !26
  %9 = load i64, i64* %offset.addr, align 8, !tbaa !26
  %sub = sub nsw i64 %8, %9
  store i64 %sub, i64* %newpos, align 8, !tbaa !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %10 = bitcast i64* %endpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %if.end
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 11
  %12 = load i8, i8* %modes, align 1, !tbaa !31
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 4
  %cmp8 = icmp ne i32 %and, 0
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load i64, i64* %newpos, align 8, !tbaa !26
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i64 @stell(%struct.stream_s* %14) #5
  %cmp11 = icmp eq i64 %13, %call10
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.7
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %16 = load i64, i64* %newpos, align 8, !tbaa !26
  %call14 = call i32 @spseek(%struct.stream_s* %15, i64 %16) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.15:                                        ; preds = %lor.lhs.false
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %if.then.13, %cleanup
  %17 = bitcast i64* %newpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i64 @stell(%struct.stream_s*) #2

declare i32 @savailable(%struct.stream_s*, i64*) #2

declare i32 @spseek(%struct.stream_s*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @srewind(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @sfseek(%struct.stream_s* %0, i64 0, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @sftell(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %0) #5
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @sfeof(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 9
  %1 = load i16, i16* %end_status, align 2, !tbaa !32
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, -1
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @sferror(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 9
  %1 = load i16, i16* %end_status, align 2, !tbaa !32
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, -2
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @sfclose(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @sclose(%struct.stream_s* %3) #5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %8 = bitcast %struct.stream_s* %7 to i8*
  call void %5(%struct.gs_memory_s* %6, i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  %9 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind readonly }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 16}
!8 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!9 = !{!8, !2, i64 8}
!10 = !{!11, !2, i64 32}
!11 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !12, i64 16, !2, i64 120}
!12 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!13 = !{!8, !6, i64 24}
!14 = !{!11, !2, i64 40}
!15 = !{!16, !19, i64 176}
!16 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !17, i64 152, !3, i64 154, !3, i64 155, !18, i64 160, !19, i64 176, !20, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !17, i64 264, !17, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !21, i64 312, !6, i64 328, !19, i64 336, !19, i64 344}
!17 = !{!"short", !3, i64 0}
!18 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!19 = !{!"long", !3, i64 0}
!20 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!21 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!22 = !{!16, !2, i64 8}
!23 = !{!24, !2, i64 24}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!19, !19, i64 0}
!27 = !{!28, !2, i64 8}
!28 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!29 = !{!28, !2, i64 0}
!30 = !{!3, !3, i64 0}
!31 = !{!16, !3, i64 155}
!32 = !{!16, !17, i64 152}
