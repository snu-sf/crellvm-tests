	.text
	.file	"gimpbrushpipe-load.bc"
	.globl	gimp_brush_pipe_load
	.align	16, 0x90
	.type	gimp_brush_pipe_load,@function
gimp_brush_pipe_load:                   # @gimp_brush_pipe_load
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -152(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_pipe_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_103
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_pipe_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_103
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.9
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_pipe_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_103
.LBB0_15:                               # %if.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -184(%rbp)
	cmpl	$-1, -184(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_103
.LBB0_18:                               # %if.end.21
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -176(%rbp)
.LBB0_19:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-177(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-184(%rbp), %edi
	callq	read
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpq	$1, %rax
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jne	.LBB0_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-177(%rbp), %eax
	cmpl	$10, %eax
	movb	%cl, -233(%rbp)         # 1-byte Spill
	je	.LBB0_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-176(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	setb	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB0_22:                               # %land.end
                                        #   in Loop: Header=BB0_19 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_23
	jmp	.LBB0_24
.LBB0_23:                               # %while.body
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-176(%rbp), %rdi
	movsbl	-177(%rbp), %esi
	callq	g_string_append_c_inline
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB0_19
.LBB0_24:                               # %while.end
	movq	-176(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB0_27
# BB#25:                                # %land.lhs.true.33
	movq	-176(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	jae	.LBB0_27
# BB#26:                                # %if.then.37
	movabsq	$.L.str.5, %rdi
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -192(%rbp)
	callq	gimp_brush_pipe_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-192(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB0_27:                               # %if.end.44
	movl	$1, %esi
	movq	-176(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -40(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jne	.LBB0_29
# BB#28:                                # %if.then.47
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-184(%rbp), %edi
	callq	close
	movq	$0, -8(%rbp)
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB0_103
.LBB0_29:                               # %if.end.52
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -176(%rbp)
.LBB0_30:                               # %while.cond.54
                                        # =>This Inner Loop Header: Depth=1
	leaq	-177(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-184(%rbp), %edi
	callq	read
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpq	$1, %rax
	movb	%cl, -309(%rbp)         # 1-byte Spill
	jne	.LBB0_33
# BB#31:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB0_30 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-177(%rbp), %eax
	cmpl	$10, %eax
	movb	%cl, -309(%rbp)         # 1-byte Spill
	je	.LBB0_33
# BB#32:                                # %land.rhs.62
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-176(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	setb	%cl
	movb	%cl, -309(%rbp)         # 1-byte Spill
.LBB0_33:                               # %land.end.66
                                        #   in Loop: Header=BB0_30 Depth=1
	movb	-309(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_34
	jmp	.LBB0_35
.LBB0_34:                               # %while.body.67
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-176(%rbp), %rdi
	movsbl	-177(%rbp), %esi
	callq	g_string_append_c_inline
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_30
.LBB0_35:                               # %while.end.69
	movq	-176(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB0_38
# BB#36:                                # %land.lhs.true.73
	movq	-176(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	jae	.LBB0_38
# BB#37:                                # %if.then.77
	leaq	-168(%rbp), %rsi
	movl	$10, %edx
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	strtol
	movl	%eax, %edx
	movl	%edx, -152(%rbp)
.LBB0_38:                               # %if.end.81
	cmpl	$1, -152(%rbp)
	jge	.LBB0_40
# BB#39:                                # %if.then.84
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-184(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movl	$1, %esi
	movq	-176(%rbp), %rdi
	callq	g_string_free
	movq	$0, -8(%rbp)
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB0_103
.LBB0_40:                               # %if.end.90
	jmp	.LBB0_41
.LBB0_41:                               # %while.cond.91
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -361(%rbp)         # 1-byte Spill
	je	.LBB0_43
# BB#42:                                # %land.rhs.94
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	setne	%sil
	movb	%sil, -361(%rbp)        # 1-byte Spill
.LBB0_43:                               # %land.end.98
                                        #   in Loop: Header=BB0_41 Depth=1
	movb	-361(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_44
	jmp	.LBB0_45
.LBB0_44:                               # %while.body.99
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB0_41
.LBB0_45:                               # %while.end.100
	movq	-168(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_79
# BB#46:                                # %if.then.102
	leaq	-144(%rbp), %rdi
	callq	gimp_pixpipe_params_init
	leaq	-144(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	gimp_pixpipe_params_parse
	movl	$4, %eax
	movl	%eax, %esi
	movl	-136(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	movq	-40(%rbp), %rdi
	movslq	120(%rdi), %rdi
	callq	g_malloc0_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-40(%rbp), %rax
	movslq	120(%rax), %rdi
	callq	g_malloc0_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-40(%rbp), %rax
	movslq	120(%rax), %rdi
	callq	g_malloc0_n
	movq	-40(%rbp), %rsi
	movq	%rax, 152(%rsi)
	cmpl	$0, -104(%rbp)
	je	.LBB0_48
# BB#47:                                # %if.then.113
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB0_48:                               # %if.end.114
	movl	$0, -148(%rbp)
.LBB0_49:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB0_78
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	$1, %eax
	movslq	-148(%rbp), %rcx
	cmpl	-100(%rbp,%rcx,4), %eax
	jle	.LBB0_52
# BB#51:                                # %cond.true
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB0_53
.LBB0_52:                               # %cond.false
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movl	-100(%rbp,%rax,4), %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
.LBB0_53:                               # %cond.end
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	movslq	-148(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-148(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_55
# BB#54:                                # %if.then.134
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$1, (%rcx,%rax,4)
	jmp	.LBB0_74
.LBB0_55:                               # %if.else.138
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_57
# BB#56:                                # %if.then.145
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$2, (%rcx,%rax,4)
	jmp	.LBB0_73
.LBB0_57:                               # %if.else.149
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_59
# BB#58:                                # %if.then.156
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$3, (%rcx,%rax,4)
	jmp	.LBB0_72
.LBB0_59:                               # %if.else.160
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_61
# BB#60:                                # %if.then.167
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$4, (%rcx,%rax,4)
	jmp	.LBB0_71
.LBB0_61:                               # %if.else.171
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_63
# BB#62:                                # %if.then.178
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$5, (%rcx,%rax,4)
	jmp	.LBB0_70
.LBB0_63:                               # %if.else.182
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_65
# BB#64:                                # %if.then.189
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$6, (%rcx,%rax,4)
	jmp	.LBB0_69
.LBB0_65:                               # %if.else.193
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_67
# BB#66:                                # %if.then.200
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$7, (%rcx,%rax,4)
	jmp	.LBB0_68
.LBB0_67:                               # %if.else.204
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	$0, (%rcx,%rax,4)
.LBB0_68:                               # %if.end.208
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.209
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %if.end.210
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_71
.LBB0_71:                               # %if.end.211
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_72
.LBB0_72:                               # %if.end.212
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_73
.LBB0_73:                               # %if.end.213
                                        #   in Loop: Header=BB0_49 Depth=1
	jmp	.LBB0_74
.LBB0_74:                               # %if.end.214
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB0_76
# BB#75:                                # %if.then.216
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	callq	g_free
.LBB0_76:                               # %if.end.220
                                        #   in Loop: Header=BB0_49 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	152(%rcx), %rcx
	movl	$0, (%rcx,%rax,4)
# BB#77:                                # %for.inc
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB0_49
.LBB0_78:                               # %for.end
	jmp	.LBB0_80
.LBB0_79:                               # %if.else.224
	movl	$1, %eax
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movl	$1, 120(%rcx)
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %edi
	movl	$4, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movl	-152(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movl	%edx, (%rax)
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %edi
	movl	$4, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	$1, (%rax)
	callq	g_malloc_n
	movq	-40(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movl	$0, (%rax)
.LBB0_80:                               # %if.end.238
	movl	$1, %esi
	movq	-176(%rbp), %rdi
	callq	g_string_free
	movl	$1, -156(%rbp)
	movl	$0, -148(%rbp)
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB0_81:                               # %for.cond.240
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB0_84
# BB#82:                                # %for.body.244
                                        #   in Loop: Header=BB0_81 Depth=1
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	imull	-156(%rbp), %edx
	movl	%edx, -156(%rbp)
# BB#83:                                # %for.inc.248
                                        #   in Loop: Header=BB0_81 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB0_81
.LBB0_84:                               # %for.end.250
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movslq	120(%rcx), %rdi
	callq	g_malloc0_n
	movq	-40(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movl	$0, -148(%rbp)
.LBB0_85:                               # %for.cond.254
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB0_91
# BB#86:                                # %for.body.258
                                        #   in Loop: Header=BB0_85 Depth=1
	cmpl	$0, -148(%rbp)
	jne	.LBB0_88
# BB#87:                                # %if.then.261
                                        #   in Loop: Header=BB0_85 Depth=1
	movl	-156(%rbp), %eax
	movslq	-148(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	cltd
	movq	-384(%rbp), %rsi        # 8-byte Reload
	idivl	(%rsi,%rcx,4)
	movslq	-148(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, (%rdi,%rcx,4)
	jmp	.LBB0_89
.LBB0_88:                               # %if.else.268
                                        #   in Loop: Header=BB0_85 Depth=1
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	136(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movslq	-148(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	cltd
	movq	-392(%rbp), %rsi        # 8-byte Reload
	idivl	(%rsi,%rcx,4)
	movslq	-148(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, (%rdi,%rcx,4)
.LBB0_89:                               # %if.end.279
                                        #   in Loop: Header=BB0_85 Depth=1
	jmp	.LBB0_90
.LBB0_90:                               # %for.inc.280
                                        #   in Loop: Header=BB0_85 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB0_85
.LBB0_91:                               # %for.end.282
	jmp	.LBB0_92
.LBB0_92:                               # %do.body.283
	movq	-40(%rbp), %rax
	movl	120(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	136(%rdx), %rdx
	cmpl	$1, (%rdx,%rax,4)
	jne	.LBB0_94
# BB#93:                                # %if.then.291
	jmp	.LBB0_95
.LBB0_94:                               # %if.else.292
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$207, %edx
	movabsq	$.L__func__.gimp_brush_pipe_load, %rcx
	movabsq	$.L.str.18, %r8
	callq	g_assertion_message_expr
.LBB0_95:                               # %if.end.293
	jmp	.LBB0_96
.LBB0_96:                               # %do.end.294
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-152(%rbp), %rdi
	callq	g_malloc0_n
	movq	-40(%rbp), %rsi
	movq	%rax, 168(%rsi)
.LBB0_97:                               # %while.cond.297
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movl	160(%rax), %ecx
	cmpl	-152(%rbp), %ecx
	jge	.LBB0_102
# BB#98:                                # %while.body.300
                                        #   in Loop: Header=BB0_97 Depth=1
	leaq	-200(%rbp), %rcx
	movq	$0, -200(%rbp)
	movq	-16(%rbp), %rdi
	movl	-184(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_brush_load_brush
	movq	-40(%rbp), %rcx
	movslq	160(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	movslq	160(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_100
# BB#99:                                # %if.then.311
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	-40(%rbp), %rax
	movslq	160(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	jmp	.LBB0_101
.LBB0_100:                              # %if.else.318
	movq	-32(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_propagate_error
	movl	-184(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_103
.LBB0_101:                              # %if.end.320
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	-40(%rbp), %rax
	movl	160(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 160(%rax)
	jmp	.LBB0_97
.LBB0_102:                              # %while.end.323
	movl	-184(%rbp), %edi
	callq	close
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 176(%rdx)
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	movl	48(%rcx), %edi
	movq	-40(%rbp), %rcx
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movl	%edi, -412(%rbp)        # 4-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	56(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rcx), %rcx
	movq	%rcx, 64(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	72(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	80(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB0_103:                              # %return
	movq	-8(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_pipe_load, .Lfunc_end0-gimp_brush_pipe_load
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB1_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB1_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_string_append_c_inline, .Lfunc_end1-g_string_append_c_inline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_brush_pipe_load,@object # @__func__.gimp_brush_pipe_load
.L__func__.gimp_brush_pipe_load:
	.asciz	"gimp_brush_pipe_load"
	.size	.L__func__.gimp_brush_pipe_load, 21

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
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid UTF-8 string in brush file '%s'."
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"mime-type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image/x-gimp-gih"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Fatal parse error in brush file '%s': File is corrupt."
	.size	.L.str.9, 55

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"incremental"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"angular"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"velocity"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"random"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pressure"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"xtilt"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ytilt"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimpbrushpipe-load.c"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pipe->stride[pipe->dimension-1] == 1"
	.size	.L.str.18, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
