	.text
	.file	"gimppalette-load.bc"
	.globl	gimp_palette_load
	.align	16, 0x90
	.type	gimp_palette_load,@function
gimp_palette_load:                      # @gimp_palette_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$1440, %rsp             # imm = 0x5A0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.2
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.10
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_15:                               # %if.end.12
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.13
	movabsq	$.L.str.4, %rsi
	movl	$0, -1100(%rbp)
	movl	$0, -1096(%rbp)
	movl	$0, -1092(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -1088(%rbp)
	cmpq	$0, -1088(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.16
	movq	-32(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	-1132(%rbp), %esi       # 4-byte Reload
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	movq	-1152(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_18:                               # %if.end.22
	movl	$1024, %esi             # imm = 0x400
	leaq	-1072(%rbp), %rdi
	movl	$1, -1104(%rbp)
	movq	-1088(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.25
	movq	-32(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1104(%rbp), %r9d
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movl	-1164(%rbp), %esi       # 4-byte Reload
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	jmp	.LBB0_66
.LBB0_20:                               # %if.end.30
	movabsq	$.L.str.7, %rsi
	leaq	-1072(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.34
	movq	-32(%rbp), %rdi
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movl	-1196(%rbp), %esi       # 4-byte Reload
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB0_66
.LBB0_22:                               # %if.end.39
	callq	gimp_palette_get_type
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$1024, %esi             # imm = 0x400
	leaq	-1072(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movl	-1104(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -1104(%rbp)
	movq	-1088(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.45
	movq	-32(%rbp), %rdi
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1104(%rbp), %r9d
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movl	-1228(%rbp), %esi       # 4-byte Reload
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_24:                               # %if.end.50
	movabsq	$.L.str.11, %rsi
	leaq	-1072(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_35
# BB#25:                                # %if.then.54
	leaq	-1072(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movabsq	$.L.str.12, %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	-1264(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -1112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	movl	$1024, %esi             # imm = 0x400
	leaq	-1072(%rbp), %rdi
	movl	-1104(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -1104(%rbp)
	movq	-1088(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_27
# BB#26:                                # %if.then.67
	movq	-32(%rbp), %rdi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1104(%rbp), %r9d
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movl	-1284(%rbp), %esi       # 4-byte Reload
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_27:                               # %if.end.72
	movabsq	$.L.str.13, %rsi
	leaq	-1072(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_34
# BB#28:                                # %if.then.76
	leaq	-1072(%rbp), %rax
	addq	$9, %rax
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -1116(%rbp)
	cmpl	$0, -1116(%rbp)
	jl	.LBB0_30
# BB#29:                                # %lor.lhs.false.83
	cmpl	$256, -1116(%rbp)       # imm = 0x100
	jle	.LBB0_31
.LBB0_30:                               # %if.then.85
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-1104(%rbp), %edx
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$0, -1116(%rbp)
.LBB0_31:                               # %if.end.88
	movq	-40(%rbp), %rdi
	movl	-1116(%rbp), %esi
	callq	gimp_palette_set_columns
	movl	$1024, %esi             # imm = 0x400
	leaq	-1072(%rbp), %rdi
	movl	-1104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1104(%rbp)
	movq	-1088(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_33
# BB#32:                                # %if.then.93
	movq	-32(%rbp), %rdi
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1324(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1104(%rbp), %r9d
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movl	-1324(%rbp), %esi       # 4-byte Reload
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_33:                               # %if.end.98
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.99
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.100
	movq	-40(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	g_filename_display_basename
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
.LBB0_36:                               # %if.end.104
	jmp	.LBB0_37
.LBB0_37:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1088(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB0_38
	jmp	.LBB0_65
.LBB0_38:                               # %while.body
                                        #   in Loop: Header=BB0_37 Depth=1
	movsbl	-1072(%rbp), %eax
	cmpl	$35, %eax
	je	.LBB0_60
# BB#39:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_37 Depth=1
	movsbl	-1072(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB0_60
# BB#40:                                # %if.then.113
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.15, %rsi
	leaq	-1072(%rbp), %rdi
	callq	strtok
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	je	.LBB0_42
# BB#41:                                # %if.then.117
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-1080(%rbp), %rdi
	callq	atoi
	movl	%eax, -1092(%rbp)
	jmp	.LBB0_43
.LBB0_42:                               # %if.else.119
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-1104(%rbp), %edx
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB0_43:                               # %if.end.122
                                        #   in Loop: Header=BB0_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	callq	strtok
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.125
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-1080(%rbp), %rdi
	callq	atoi
	movl	%eax, -1096(%rbp)
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.127
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-1104(%rbp), %edx
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB0_46:                               # %if.end.130
                                        #   in Loop: Header=BB0_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.15, %rsi
	callq	strtok
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	je	.LBB0_48
# BB#47:                                # %if.then.133
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-1080(%rbp), %rdi
	callq	atoi
	movl	%eax, -1100(%rbp)
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.135
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-1104(%rbp), %edx
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB0_49:                               # %if.end.138
                                        #   in Loop: Header=BB0_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.19, %rsi
	callq	strtok
	movq	%rax, -1080(%rbp)
	cmpl	$0, -1092(%rbp)
	jl	.LBB0_55
# BB#50:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpl	$255, -1092(%rbp)
	jg	.LBB0_55
# BB#51:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpl	$0, -1096(%rbp)
	jl	.LBB0_55
# BB#52:                                # %lor.lhs.false.148
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpl	$255, -1096(%rbp)
	jg	.LBB0_55
# BB#53:                                # %lor.lhs.false.151
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpl	$0, -1100(%rbp)
	jl	.LBB0_55
# BB#54:                                # %lor.lhs.false.154
                                        #   in Loop: Header=BB0_37 Depth=1
	cmpl	$255, -1100(%rbp)
	jle	.LBB0_56
.LBB0_55:                               # %if.then.157
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-1104(%rbp), %edx
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB0_56:                               # %if.end.160
                                        #   in Loop: Header=BB0_37 Depth=1
	movl	$48, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$255, %r8d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-1092(%rbp), %ecx
	movb	%cl, %dl
	movl	-1096(%rbp), %ecx
	movb	%cl, %sil
	movl	-1100(%rbp), %ecx
	movb	%cl, %r9b
	movzbl	%dl, %ecx
	movb	%sil, -1393(%rbp)       # 1-byte Spill
	movl	%ecx, %esi
	movb	-1393(%rbp), %dl        # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	%r9b, %ecx
	callq	gimp_rgba_set_uchar
	cmpq	$0, -1080(%rbp)
	je	.LBB0_58
# BB#57:                                # %cond.true
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-1080(%rbp), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	jmp	.LBB0_59
.LBB0_58:                               # %cond.false
                                        #   in Loop: Header=BB0_37 Depth=1
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -1408(%rbp)       # 8-byte Spill
.LBB0_59:                               # %cond.end
                                        #   in Loop: Header=BB0_37 Depth=1
	movq	-1408(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	movq	-48(%rbp), %rdi
	movl	%eax, 40(%rdi)
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-40(%rbp), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
.LBB0_60:                               # %if.end.172
                                        #   in Loop: Header=BB0_37 Depth=1
	movl	$1024, %esi             # imm = 0x400
	leaq	-1072(%rbp), %rdi
	movl	-1104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1104(%rbp)
	movq	-1088(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_64
# BB#61:                                # %if.then.177
	movq	-1088(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB0_63
# BB#62:                                # %if.then.180
	jmp	.LBB0_65
.LBB0_63:                               # %if.end.181
	movq	-32(%rbp), %rdi
	movq	%rdi, -1416(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1420(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1104(%rbp), %r9d
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movl	-1420(%rbp), %esi       # 4-byte Reload
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1436(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_66
.LBB0_64:                               # %if.end.186
                                        #   in Loop: Header=BB0_37 Depth=1
	jmp	.LBB0_37
.LBB0_65:                               # %while.end
	movq	-1088(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -1440(%rbp)       # 4-byte Spill
	callq	g_list_reverse
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB0_66:                               # %return
	movq	-8(%rbp), %rax
	addq	$1440, %rsp             # imm = 0x5A0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_load, .Lfunc_end0-gimp_palette_load
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_message, .Lfunc_end1-g_message
	.cfi_endproc

	.globl	gimp_palette_load_act
	.align	16, 0x90
	.type	gimp_palette_load_act,@function
gimp_palette_load_act:                  # @gimp_palette_load_act
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_act, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.2
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_act, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_9:                                # %if.end.4
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.5
	jmp	.LBB2_11
.LBB2_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_14
.LBB2_13:                               # %if.then.9
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_act, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_15:                               # %if.end.11
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB2_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.5, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB2_22
.LBB2_18:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB2_19:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	read
	cmpq	$3, %rax
	jne	.LBB2_21
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB2_19 Depth=1
	leaq	-88(%rbp), %rdi
	movl	$255, %r8d
	movb	-56(%rbp), %al
	movb	-55(%rbp), %cl
	movzbl	%al, %esi
	movzbl	%cl, %edx
	movzbl	-54(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_19
.LBB2_21:                               # %while.end
	movl	-52(%rbp), %edi
	callq	close
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB2_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_load_act, .Lfunc_end2-gimp_palette_load_act
	.cfi_endproc

	.globl	gimp_palette_load_riff
	.align	16, 0x90
	.type	gimp_palette_load_riff,@function
gimp_palette_load_riff:                 # @gimp_palette_load_riff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_riff, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_22
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.2
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_riff, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_22
.LBB3_9:                                # %if.end.4
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.5
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB3_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_14
.LBB3_13:                               # %if.then.9
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_riff, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_22
.LBB3_15:                               # %if.end.11
	jmp	.LBB3_16
.LBB3_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB3_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.5, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB3_22
.LBB3_18:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$28, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movl	-52(%rbp), %edi
	callq	lseek
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB3_19:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	read
	cmpq	$4, %rax
	jne	.LBB3_21
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-88(%rbp), %rdi
	movl	$255, %r8d
	movb	-56(%rbp), %al
	movb	-55(%rbp), %cl
	movzbl	%al, %esi
	movzbl	%cl, %edx
	movzbl	-54(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_21:                               # %while.end
	movl	-52(%rbp), %edi
	callq	close
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB3_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_load_riff, .Lfunc_end3-gimp_palette_load_riff
	.cfi_endproc

	.globl	gimp_palette_load_psp
	.align	16, 0x90
	.type	gimp_palette_load_psp,@function
gimp_palette_load_psp:                  # @gimp_palette_load_psp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$4288, %rsp             # imm = 0x10C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_psp, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB4_8
# BB#7:                                 # %if.then.2
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_psp, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_9:                                # %if.end.4
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.5
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB4_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_14
.LBB4_13:                               # %if.then.9
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_psp, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_15:                               # %if.end.11
	jmp	.LBB4_16
.LBB4_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB4_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -4232(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -4236(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.5, %rdi
	movl	%eax, -4240(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -4248(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -4256(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-4232(%rbp), %rdi       # 8-byte Reload
	movl	-4236(%rbp), %esi       # 4-byte Reload
	movl	-4240(%rbp), %edx       # 4-byte Reload
	movq	-4248(%rbp), %rcx       # 8-byte Reload
	movq	-4256(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_18:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -4264(%rbp)       # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-4264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$16, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movl	-52(%rbp), %edi
	callq	lseek
	movl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, %edx
	leaq	-4176(%rbp), %rsi
	movl	-52(%rbp), %edi
	movq	%rax, -4272(%rbp)       # 8-byte Spill
	callq	read
	movabsq	$.L.str.22, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-4176(%rbp), %rdi
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movslq	-64(%rbp), %rax
	movb	$0, -4176(%rbp,%rax)
	callq	g_strsplit
	movq	%rax, -4184(%rbp)
	movq	-4184(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, -60(%rbp)
	movl	$0, -68(%rbp)
.LBB4_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_32
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-4184(%rbp), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	jne	.LBB4_22
# BB#21:                                # %if.then.40
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB4_32
.LBB4_22:                               # %if.end.42
                                        #   in Loop: Header=BB4_19 Depth=1
	movabsq	$.L.str.24, %rsi
	movl	$3, %edx
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-4184(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	callq	g_strsplit
	movq	%rax, -4192(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -72(%rbp)
.LBB4_23:                               # %for.cond.47
                                        #   Parent Loop BB4_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -72(%rbp)
	jge	.LBB4_28
# BB#24:                                # %for.body.50
                                        #   in Loop: Header=BB4_23 Depth=2
	movslq	-72(%rbp), %rax
	movq	-4192(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB4_26
# BB#25:                                # %if.then.55
                                        #   in Loop: Header=BB4_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.25, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -76(%rbp)
	jmp	.LBB4_28
.LBB4_26:                               # %if.end.57
                                        #   in Loop: Header=BB4_23 Depth=2
	movslq	-72(%rbp), %rax
	movq	-4192(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	atoi
	movb	%al, %dl
	movslq	-72(%rbp), %rcx
	movb	%dl, -56(%rbp,%rcx)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_23
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_19 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.65
                                        #   in Loop: Header=BB4_19 Depth=1
	leaq	-4224(%rbp), %rdi
	movl	$255, %r8d
	movb	-56(%rbp), %al
	movb	-55(%rbp), %cl
	movzbl	%al, %esi
	movzbl	%cl, %edx
	movzbl	-54(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-4224(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -4280(%rbp)       # 8-byte Spill
.LBB4_30:                               # %if.end.70
                                        #   in Loop: Header=BB4_19 Depth=1
	movq	-4192(%rbp), %rdi
	callq	g_strfreev
# BB#31:                                # %for.inc.71
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_19
.LBB4_32:                               # %for.end.73
	movq	-4184(%rbp), %rdi
	callq	g_strfreev
	movl	-52(%rbp), %edi
	callq	close
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -4284(%rbp)       # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB4_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$4288, %rsp             # imm = 0x10C0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_load_psp, .Lfunc_end4-gimp_palette_load_psp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI5_2:
	.quad	4679240012837945344     # double 65536
	.text
	.globl	gimp_palette_load_aco
	.align	16, 0x90
	.type	gimp_palette_load_aco,@function
gimp_palette_load_aco:                  # @gimp_palette_load_aco
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_aco, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB5_8
# BB#7:                                 # %if.then.2
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_aco, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_9:                                # %if.end.4
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.5
	jmp	.LBB5_11
.LBB5_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB5_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_14
.LBB5_13:                               # %if.then.9
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_aco, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_15:                               # %if.end.11
	jmp	.LBB5_16
.LBB5_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB5_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.5, %rdi
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-396(%rbp), %esi        # 4-byte Reload
	movl	-400(%rbp), %edx        # 4-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_18:                               # %if.end.23
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-68(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, -88(%rbp)
	movslq	-88(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB5_20
# BB#19:                                # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.26, %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-52(%rbp), %edi
	callq	close
	movq	$0, -8(%rbp)
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB5_48
.LBB5_20:                               # %if.end.33
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movsbl	-67(%rbp), %ecx
	movsbl	-68(%rbp), %edx
	shll	$8, %edx
	addl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movsbl	-65(%rbp), %ecx
	movsbl	-66(%rbp), %edx
	shll	$8, %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB5_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_47
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$10, %eax
	movl	%eax, %edx
	leaq	-78(%rbp), %rsi
	movl	$0, -112(%rbp)
	movl	-52(%rbp), %edi
	callq	read
	cmpq	$10, %rax
	je	.LBB5_24
# BB#23:                                # %if.then.53
	movq	-32(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.27, %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-52(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_24:                               # %if.end.58
                                        #   in Loop: Header=BB5_21 Depth=1
	movsbl	-77(%rbp), %eax
	movsbl	-78(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movzbl	-75(%rbp), %eax
	movzbl	-76(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -96(%rbp)
	movzbl	-73(%rbp), %eax
	movzbl	-74(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movzbl	-71(%rbp), %eax
	movzbl	-72(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movzbl	-69(%rbp), %eax
	movzbl	-70(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB5_26
# BB#25:                                # %if.then.91
                                        #   in Loop: Header=BB5_21 Depth=1
	leaq	-144(%rbp), %rdi
	movsd	.LCPI5_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movl	$1, -112(%rbp)
	jmp	.LBB5_39
.LBB5_26:                               # %if.else.97
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$1, -92(%rbp)
	jne	.LBB5_28
# BB#27:                                # %if.then.100
                                        #   in Loop: Header=BB5_21 Depth=1
	leaq	-200(%rbp), %rdi
	movsd	.LCPI5_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	callq	gimp_hsva_set
	leaq	-200(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	gimp_hsv_to_rgb
	movl	$1, -112(%rbp)
	jmp	.LBB5_38
.LBB5_28:                               # %if.else.107
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$2, -92(%rbp)
	jne	.LBB5_30
# BB#29:                                # %if.then.110
                                        #   in Loop: Header=BB5_21 Depth=1
	leaq	-264(%rbp), %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -272(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -280(%rbp)
	cvtsi2sdl	-104(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -288(%rbp)
	cvtsi2sdl	-108(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -296(%rbp)
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-280(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-288(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-296(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-496(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gimp_cmyka_set
	leaq	-264(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	gimp_cmyk_to_rgb
	movl	$1, -112(%rbp)
	jmp	.LBB5_37
.LBB5_30:                               # %if.else.122
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$8, -92(%rbp)
	jne	.LBB5_32
# BB#31:                                # %if.then.125
                                        #   in Loop: Header=BB5_21 Depth=1
	leaq	-144(%rbp), %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -304(%rbp)
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-304(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-504(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movl	$1, -112(%rbp)
	jmp	.LBB5_36
.LBB5_32:                               # %if.else.130
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$9, -92(%rbp)
	jne	.LBB5_34
# BB#33:                                # %if.then.133
                                        #   in Loop: Header=BB5_21 Depth=1
	leaq	-344(%rbp), %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -352(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -360(%rbp)
	cvtsi2sdl	-104(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -368(%rbp)
	cvtsi2sdl	-108(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -376(%rbp)
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-360(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-368(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-376(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-512(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gimp_cmyka_set
	leaq	-344(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	gimp_cmyk_to_rgb
	movl	$1, -112(%rbp)
	jmp	.LBB5_35
.LBB5_34:                               # %if.else.151
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-92(%rbp), %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -516(%rbp)        # 4-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.28, %rdi
	movl	-516(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
.LBB5_35:                               # %if.end.153
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_36
.LBB5_36:                               # %if.end.154
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_37
.LBB5_37:                               # %if.end.155
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_38
.LBB5_38:                               # %if.end.156
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.157
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$2, -56(%rbp)
	jne	.LBB5_43
# BB#40:                                # %if.then.160
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-82(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	read
	cmpq	$4, %rax
	je	.LBB5_42
# BB#41:                                # %if.then.165
	movq	-32(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.27, %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	-532(%rbp), %esi        # 4-byte Reload
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-52(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB5_48
.LBB5_42:                               # %if.end.170
                                        #   in Loop: Header=BB5_21 Depth=1
	xorl	%edx, %edx
	movsbl	-79(%rbp), %eax
	movsbl	-80(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -380(%rbp)
	movl	-52(%rbp), %edi
	movl	-380(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	callq	lseek
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB5_43:                               # %if.end.179
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	$0, -112(%rbp)
	je	.LBB5_45
# BB#44:                                # %if.then.181
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB5_45:                               # %if.end.183
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_46
.LBB5_46:                               # %for.inc
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_21
.LBB5_47:                               # %for.end
	movl	-52(%rbp), %edi
	callq	close
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB5_48:                               # %return
	movq	-8(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_load_aco, .Lfunc_end5-gimp_palette_load_aco
	.cfi_endproc

	.globl	gimp_palette_load_css
	.align	16, 0x90
	.type	gimp_palette_load_css,@function
gimp_palette_load_css:                  # @gimp_palette_load_css
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$1200, %rsp             # imm = 0x4B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_css, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_32
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB6_8
# BB#7:                                 # %if.then.2
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_css, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_32
.LBB6_9:                                # %if.end.4
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.5
	jmp	.LBB6_11
.LBB6_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB6_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_14
.LBB6_13:                               # %if.then.9
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_load_css, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_32
.LBB6_15:                               # %if.end.11
	jmp	.LBB6_16
.LBB6_16:                               # %do.end.12
	movabsq	$.L.str.29, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	callq	g_regex_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_18
# BB#17:                                # %if.then.15
	movq	$0, -8(%rbp)
	jmp	.LBB6_32
.LBB6_18:                               # %if.end.16
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_20
# BB#19:                                # %if.then.19
	movq	-32(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movl	-1156(%rbp), %esi       # 4-byte Reload
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	movq	-1176(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB6_32
.LBB6_20:                               # %if.end.25
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB6_21:                               # %do.body.30
                                        # =>This Inner Loop Header: Depth=1
	movl	$1024, %esi             # imm = 0x400
	leaq	-1136(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB6_29
# BB#22:                                # %if.then.33
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	leaq	-1136(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	g_regex_match
	cmpl	$0, %eax
	je	.LBB6_28
# BB#23:                                # %if.then.37
                                        #   in Loop: Header=BB6_21 Depth=1
	movabsq	$.L.str.30, %rsi
	movq	-104(%rbp), %rdi
	callq	g_match_info_fetch_named
	leaq	-96(%rbp), %rdi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rsi
	callq	gimp_rgb_parse_css
	cmpl	$0, %eax
	je	.LBB6_27
# BB#24:                                # %if.then.41
                                        #   in Loop: Header=BB6_21 Depth=1
	leaq	-96(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_find_entry
	cmpq	$0, %rax
	jne	.LBB6_26
# BB#25:                                # %if.then.44
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB6_26:                               # %if.end.46
                                        #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.47
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-1144(%rbp), %rdi
	callq	g_free
.LBB6_28:                               # %if.end.48
                                        #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_29
.LBB6_29:                               # %if.end.49
                                        #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_30
.LBB6_30:                               # %do.cond
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB6_21
# BB#31:                                # %do.end.52
	movq	-56(%rbp), %rdi
	callq	fclose
	movq	-64(%rbp), %rdi
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	callq	g_regex_unref
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB6_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_palette_load_css, .Lfunc_end6-gimp_palette_load_css
	.cfi_endproc

	.globl	gimp_palette_load_detect_format
	.align	16, 0x90
	.type	gimp_palette_load_detect_format,@function
gimp_palette_load_detect_format:        # @gimp_palette_load_detect_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB7_26
# BB#1:                                 # %if.then
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rsi
	movl	-16(%rbp), %edi
	callq	read
	cmpq	$16, %rax
	jne	.LBB7_12
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.31, %rsi
	leaq	-32(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movabsq	$.L.str.32, %rsi
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.10
	movl	$2, -12(%rbp)
	jmp	.LBB7_11
.LBB7_5:                                # %if.else
	movabsq	$.L.str.7, %rsi
	leaq	-32(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB7_7
# BB#6:                                 # %if.then.14
	movl	$1, -12(%rbp)
	jmp	.LBB7_10
.LBB7_7:                                # %if.else.15
	movabsq	$.L.str.33, %rsi
	leaq	-32(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB7_9
# BB#8:                                 # %if.then.19
	movl	$4, -12(%rbp)
.LBB7_9:                                # %if.end
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.20
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.21
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.22
	cmpl	$0, -12(%rbp)
	jne	.LBB7_19
# BB#13:                                # %if.then.24
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	callq	g_ascii_strdown
	movabsq	$.L.str.34, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_str_has_suffix
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %if.then.28
	movl	$5, -12(%rbp)
	jmp	.LBB7_18
.LBB7_15:                               # %if.else.29
	movabsq	$.L.str.35, %rsi
	movq	-40(%rbp), %rdi
	callq	g_str_has_suffix
	cmpl	$0, %eax
	je	.LBB7_17
# BB#16:                                # %if.then.32
	movl	$6, -12(%rbp)
.LBB7_17:                               # %if.end.33
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.34
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB7_19:                               # %if.end.35
	cmpl	$0, -12(%rbp)
	jne	.LBB7_25
# BB#20:                                # %if.then.37
	leaq	-184(%rbp), %rsi
	movl	-16(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jl	.LBB7_24
# BB#21:                                # %if.then.40
	cmpq	$768, -136(%rbp)        # imm = 0x300
	jne	.LBB7_23
# BB#22:                                # %if.then.42
	movl	$3, -12(%rbp)
.LBB7_23:                               # %if.end.43
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.44
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.45
	movl	-16(%rbp), %edi
	callq	close
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB7_26:                               # %if.end.47
	movl	-12(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_palette_load_detect_format, .Lfunc_end7-gimp_palette_load_detect_format
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_palette_load,@object # @__func__.gimp_palette_load
.L__func__.gimp_palette_load:
	.asciz	"gimp_palette_load"
	.size	.L__func__.gimp_palette_load, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fatal parse error in palette file '%s': Read error in line %d."
	.size	.L.str.6, 63

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP Palette"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Fatal parse error in palette file '%s': Missing magic header."
	.size	.L.str.8, 62

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mime-type"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"application/x-gimp-palette"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Name: "
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid UTF-8 string in palette file '%s'"
	.size	.L.str.12, 42

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Columns: "
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Reading palette file '%s': Invalid number of columns in line %d. Using default value."
	.size	.L.str.14, 86

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" \t"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Reading palette file '%s': Missing RED component in line %d."
	.size	.L.str.16, 61

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Reading palette file '%s': Missing GREEN component in line %d."
	.size	.L.str.17, 63

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Reading palette file '%s': Missing BLUE component in line %d."
	.size	.L.str.18, 62

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\n"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Reading palette file '%s': RGB value out of range in line %d."
	.size	.L.str.20, 62

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Untitled"
	.size	.L.str.21, 9

	.type	.L__func__.gimp_palette_load_act,@object # @__func__.gimp_palette_load_act
.L__func__.gimp_palette_load_act:
	.asciz	"gimp_palette_load_act"
	.size	.L__func__.gimp_palette_load_act, 22

	.type	.L__func__.gimp_palette_load_riff,@object # @__func__.gimp_palette_load_riff
.L__func__.gimp_palette_load_riff:
	.asciz	"gimp_palette_load_riff"
	.size	.L__func__.gimp_palette_load_riff, 23

	.type	.L__func__.gimp_palette_load_psp,@object # @__func__.gimp_palette_load_psp
.L__func__.gimp_palette_load_psp:
	.asciz	"gimp_palette_load_psp"
	.size	.L__func__.gimp_palette_load_psp, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\r\n"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Premature end of file reading %s."
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	" "
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Corrupted palette file %s."
	.size	.L.str.25, 27

	.type	.L__func__.gimp_palette_load_aco,@object # @__func__.gimp_palette_load_aco
.L__func__.gimp_palette_load_aco:
	.asciz	"gimp_palette_load_aco"
	.size	.L__func__.gimp_palette_load_aco, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Could not read header from palette file '%s'"
	.size	.L.str.26, 45

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Fatal parse error in palette file '%s'"
	.size	.L.str.27, 39

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unsupported color space (%d) in ACO file %s\n"
	.size	.L.str.28, 45

	.type	.L__func__.gimp_palette_load_css,@object # @__func__.gimp_palette_load_css
.L__func__.gimp_palette_load_css:
	.asciz	"gimp_palette_load_css"
	.size	.L__func__.gimp_palette_load_css, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	".*color.*:(?P<param>.*);"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"param"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"RIFF"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"PAL data"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"JASC-PAL"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	".aco"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	".css"
	.size	.L.str.35, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
