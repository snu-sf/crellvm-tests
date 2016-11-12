	.text
	.file	"bmp-write.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
.LCPI0_2:
	.quad	4612901990326777938     # double 2.54
.LCPI0_3:
	.quad	4636737291354636288     # double 100
	.text
	.globl	WriteBMP
	.align	16, 0x90
	.type	WriteBMP,@function
WriteBMP:                               # @WriteBMP
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$3728, %rsp             # imm = 0xE90
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	-56(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -3264(%rbp)
	movl	-56(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -3268(%rbp)
	movq	-3264(%rbp), %rcx
	movl	4(%rcx), %r8d
	movl	8(%rcx), %r9d
	movq	%rsp, %r10
	movl	$0, 8(%r10)
	movl	$0, (%r10)
	leaq	-3256(%rbp), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_init
	movl	-3268(%rbp), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$5, %rdi
	movq	%rsi, -3464(%rbp)       # 8-byte Spill
	movq	%rdi, -3472(%rbp)       # 8-byte Spill
	ja	.LBB0_33
# BB#107:                               # %entry
	movq	-3464(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movl	$0, -3196(%rbp)
	movq	$32, -3192(%rbp)
	movl	$0, -3180(%rbp)
	movl	$4, -3176(%rbp)
	movl	$4, BMPSaveData
	jmp	.LBB0_35
.LBB0_2:                                # %sw.bb.2
	movl	$0, -3196(%rbp)
	movq	$24, -3192(%rbp)
	movl	$0, -3180(%rbp)
	movl	$3, -3176(%rbp)
	movl	$3, BMPSaveData
	jmp	.LBB0_35
.LBB0_3:                                # %sw.bb.3
	cmpl	$0, interactive
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movabsq	$.L.str, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rdi
	movq	%rax, -3480(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-3480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	warning_dialog
	cmpl	$0, %eax
	jne	.LBB0_6
# BB#5:                                 # %if.then
	movl	$4, -36(%rbp)
	jmp	.LBB0_106
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %sw.bb.8
	movl	$256, -3196(%rbp)       # imm = 0x100
	movq	$8, -3192(%rbp)
	movl	$1024, -3180(%rbp)      # imm = 0x400
	cmpl	$3, -3268(%rbp)
	jne	.LBB0_9
# BB#8:                                 # %if.then.9
	movl	$2, -3176(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else
	movl	$1, -3176(%rbp)
.LBB0_10:                               # %if.end.10
	movl	$0, -3412(%rbp)
.LBB0_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-3412(%rbp), %eax
	cmpl	-3196(%rbp), %eax
	jge	.LBB0_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-3412(%rbp), %eax
	movslq	-3412(%rbp), %rcx
	movl	%eax, -1104(%rbp,%rcx,4)
	movl	-3412(%rbp), %eax
	movslq	-3412(%rbp), %rcx
	movl	%eax, -2128(%rbp,%rcx,4)
	movl	-3412(%rbp), %eax
	movslq	-3412(%rbp), %rcx
	movl	%eax, -3152(%rbp,%rcx,4)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-3412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3412(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               # %for.end
	jmp	.LBB0_35
.LBB0_15:                               # %sw.bb.16
	cmpl	$0, interactive
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.18
	movabsq	$.L.str, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rdi
	movq	%rax, -3488(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-3488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	warning_dialog
	cmpl	$0, %eax
	jne	.LBB0_18
# BB#17:                                # %if.then.23
	movl	$4, -36(%rbp)
	jmp	.LBB0_106
.LBB0_18:                               # %if.end.24
	jmp	.LBB0_19
.LBB0_19:                               # %sw.bb.25
	leaq	-3196(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -3160(%rbp)
	movl	-3196(%rbp), %edi
	shll	$2, %edi
	movl	%edi, -3180(%rbp)
	cmpl	$5, -3268(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.28
	movl	$2, -3176(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.29
	movl	$1, -3176(%rbp)
.LBB0_22:                               # %if.end.30
	cmpl	$16, -3196(%rbp)
	jle	.LBB0_24
# BB#23:                                # %if.then.32
	movq	$8, -3192(%rbp)
	jmp	.LBB0_28
.LBB0_24:                               # %if.else.33
	cmpl	$2, -3196(%rbp)
	jle	.LBB0_26
# BB#25:                                # %if.then.35
	movq	$4, -3192(%rbp)
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.36
	movq	$1, -3192(%rbp)
.LBB0_27:                               # %if.end.37
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.38
	movl	$0, -3412(%rbp)
.LBB0_29:                               # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-3412(%rbp), %eax
	cmpl	-3196(%rbp), %eax
	jge	.LBB0_32
# BB#30:                                # %for.body.41
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	-3160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3160(%rbp)
	movzbl	(%rax), %edx
	movslq	-3412(%rbp), %rax
	movl	%edx, -1104(%rbp,%rax,4)
	movq	-3160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3160(%rbp)
	movzbl	(%rax), %edx
	movslq	-3412(%rbp), %rax
	movl	%edx, -2128(%rbp,%rax,4)
	movq	-3160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3160(%rbp)
	movzbl	(%rax), %edx
	movslq	-3412(%rbp), %rax
	movl	%edx, -3152(%rbp,%rax,4)
# BB#31:                                # %for.inc.52
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	-3412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3412(%rbp)
	jmp	.LBB0_29
.LBB0_32:                               # %for.end.54
	jmp	.LBB0_35
.LBB0_33:                               # %sw.default
	jmp	.LBB0_34
.LBB0_34:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.2, %rsi
	movl	$251, %edx
	movabsq	$.L__func__.WriteBMP, %rdi
	movq	%rdi, -3496(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-3496(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -3504(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	-3504(%rbp), %r8        # 8-byte Reload
	callq	g_assertion_message_expr
.LBB0_35:                               # %sw.epilog
	movl	$0, BMPSaveData+4
	movl	$0, BMPSaveData+8
	movl	$0, -3416(%rbp)
	cmpl	$0, interactive
	jne	.LBB0_37
# BB#36:                                # %lor.lhs.false
	cmpl	$0, lastvals
	je	.LBB0_38
.LBB0_37:                               # %if.then.57
	movabsq	$.L.str.3, %rdi
	movabsq	$BMPSaveData, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -3508(%rbp)       # 4-byte Spill
.LBB0_38:                               # %if.end.59
	cmpq	$8, -3192(%rbp)
	je	.LBB0_40
# BB#39:                                # %lor.lhs.false.62
	cmpq	$4, -3192(%rbp)
	jne	.LBB0_44
.LBB0_40:                               # %land.lhs.true.65
	cmpl	$0, interactive
	je	.LBB0_44
# BB#41:                                # %if.then.67
	movl	$1, %edi
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB0_43
# BB#42:                                # %if.then.70
	movl	$4, -36(%rbp)
	jmp	.LBB0_106
.LBB0_43:                               # %if.end.71
	jmp	.LBB0_60
.LBB0_44:                               # %if.else.72
	cmpq	$24, -3192(%rbp)
	je	.LBB0_46
# BB#45:                                # %lor.lhs.false.75
	cmpq	$32, -3192(%rbp)
	jne	.LBB0_59
.LBB0_46:                               # %if.then.78
	cmpl	$0, interactive
	je	.LBB0_49
# BB#47:                                # %land.lhs.true.80
	movl	-3176(%rbp), %edi
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB0_49
# BB#48:                                # %if.then.83
	movl	$4, -36(%rbp)
	jmp	.LBB0_106
.LBB0_49:                               # %if.end.84
	movl	BMPSaveData(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -3520(%rbp)       # 8-byte Spill
	movq	%rdx, -3528(%rbp)       # 8-byte Spill
	ja	.LBB0_56
# BB#108:                               # %if.end.84
	movq	-3520(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_50:                               # %sw.bb.85
	movq	$24, -3192(%rbp)
	jmp	.LBB0_58
.LBB0_51:                               # %sw.bb.86
	movq	$32, -3192(%rbp)
	movl	$16, -3416(%rbp)
	jmp	.LBB0_58
.LBB0_52:                               # %sw.bb.87
	movq	$32, -3192(%rbp)
	movl	$16, -3416(%rbp)
	jmp	.LBB0_58
.LBB0_53:                               # %sw.bb.88
	movq	$16, -3192(%rbp)
	movl	$16, -3416(%rbp)
	jmp	.LBB0_58
.LBB0_54:                               # %sw.bb.89
	movq	$16, -3192(%rbp)
	movl	$16, -3416(%rbp)
	jmp	.LBB0_58
.LBB0_55:                               # %sw.bb.90
	movq	$16, -3192(%rbp)
	movl	$16, -3416(%rbp)
	jmp	.LBB0_58
.LBB0_56:                               # %sw.default.91
	jmp	.LBB0_57
.LBB0_57:                               # %do.body.92
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.2, %rcx
	movl	$300, %r8d              # imm = 0x12C
	movabsq	$.L__func__.WriteBMP, %r9
	movb	$0, %al
	callq	g_log
	movl	$0, -36(%rbp)
	jmp	.LBB0_106
.LBB0_58:                               # %sw.epilog.94
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.95
	jmp	.LBB0_60
.LBB0_60:                               # %if.end.96
	movabsq	$.L.str.3, %rdi
	movabsq	$BMPSaveData, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movabsq	$.L.str.5, %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -3532(%rbp)       # 4-byte Spill
	callq	fopen
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_62
# BB#61:                                # %if.then.100
	movq	-64(%rbp), %rdi
	movq	%rdi, -3544(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -3548(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.6, %rdi
	movl	%eax, -3552(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -3560(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -3568(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-3544(%rbp), %rdi       # 8-byte Reload
	movl	-3548(%rbp), %esi       # 4-byte Reload
	movl	-3552(%rbp), %edx       # 4-byte Reload
	movq	-3560(%rbp), %rcx       # 8-byte Reload
	movq	-3568(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -36(%rbp)
	jmp	.LBB0_106
.LBB0_62:                               # %if.end.108
	movl	$1, %eax
	movl	%eax, %esi
	movq	-3264(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-3264(%rbp), %rcx
	imull	8(%rcx), %eax
	imull	-3176(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	leaq	-3256(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -3208(%rbp)
	movq	-3208(%rbp), %rsi
	movq	-3264(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-3264(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -3572(%rbp)       # 4-byte Spill
	movl	-3572(%rbp), %ecx       # 4-byte Reload
	callq	gimp_pixel_rgn_get_rect
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -3584(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-3584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$0, cur_progress
	movq	-3264(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, max_progress
	movq	-3264(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, -3168(%rbp)
	movq	-3264(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -3164(%rbp)
	cmpq	$8, -3192(%rbp)
	movl	%eax, -3588(%rbp)       # 4-byte Spill
	jg	.LBB0_65
# BB#63:                                # %land.lhs.true.125
	movl	$8, %eax
                                        # kill: RAX<def> EAX<kill>
	movslq	-3168(%rbp), %rcx
	cqto
	idivq	-3192(%rbp)
	movq	%rax, -3600(%rbp)       # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movq	-3600(%rbp), %rcx       # 8-byte Reload
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB0_65
# BB#64:                                # %if.then.128
	movl	$8, %eax
	movl	%eax, %ecx
	movslq	-3168(%rbp), %rax
	movq	%rax, -3608(%rbp)       # 8-byte Spill
	movq	%rcx, %rax
	cqto
	idivq	-3192(%rbp)
	movq	-3608(%rbp), %rsi       # 8-byte Reload
	movq	%rax, -3616(%rbp)       # 8-byte Spill
	movq	%rsi, %rax
	cqto
	movq	-3616(%rbp), %rdi       # 8-byte Reload
	idivq	%rdi
	addq	$1, %rax
	movq	%rax, -3624(%rbp)       # 8-byte Spill
	movq	%rcx, %rax
	cqto
	idivq	-3192(%rbp)
	movq	-3624(%rbp), %rcx       # 8-byte Reload
	imulq	%rax, %rcx
	movl	%ecx, %r8d
	movl	%r8d, -3172(%rbp)
	jmp	.LBB0_66
.LBB0_65:                               # %if.else.135
	movl	-3168(%rbp), %eax
	movl	%eax, -3172(%rbp)
.LBB0_66:                               # %if.end.136
	movl	$4, %eax
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %edx
	movslq	-3172(%rbp), %rsi
	imulq	-3192(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rdx, -3632(%rbp)       # 8-byte Spill
	cqto
	movq	-3632(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	jne	.LBB0_68
# BB#67:                                # %if.then.143
	movl	$8, %eax
	movl	%eax, %ecx
	movslq	-3172(%rbp), %rdx
	imulq	-3192(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movl	%esi, -3184(%rbp)
	jmp	.LBB0_69
.LBB0_68:                               # %if.else.148
	movl	$4, %eax
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %edx
	movslq	-3172(%rbp), %rsi
	imulq	-3192(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rdx, -3640(%rbp)       # 8-byte Spill
	cqto
	movq	-3640(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cqto
	idivq	%rcx
	movl	%eax, %edi
	addl	$1, %edi
	shll	$2, %edi
	movl	%edi, -3184(%rbp)
.LBB0_69:                               # %if.end.156
	cmpl	$0, BMPSaveData+8
	jne	.LBB0_71
# BB#70:                                # %if.then.158
	movl	$68, -3420(%rbp)
	jmp	.LBB0_72
.LBB0_71:                               # %if.else.159
	movl	$0, -3420(%rbp)
.LBB0_72:                               # %if.end.160
	movl	-3180(%rbp), %eax
	addl	$54, %eax
	movl	-3164(%rbp), %ecx
	imull	-3184(%rbp), %ecx
	addl	%ecx, %eax
	addl	-3416(%rbp), %eax
	addl	-3420(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, Bitmap_File_Head+8
	movw	$0, Bitmap_File_Head+16
	movw	$0, Bitmap_File_Head+18
	movl	-3180(%rbp), %eax
	addl	$54, %eax
	addl	-3416(%rbp), %eax
	addl	-3420(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, Bitmap_File_Head+24
	movl	-3416(%rbp), %eax
	addl	$40, %eax
	addl	-3420(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, Bitmap_File_Head+32
	movslq	-3168(%rbp), %rdx
	movq	%rdx, Bitmap_Head
	movslq	-3164(%rbp), %rdx
	movq	%rdx, Bitmap_Head+8
	movw	$1, Bitmap_Head+16
	movq	-3192(%rbp), %rdx
	movw	%dx, %si
	movw	%si, Bitmap_Head+18
	cmpl	$0, BMPSaveData+4
	jne	.LBB0_77
# BB#73:                                # %if.then.179
	cmpl	$0, -3416(%rbp)
	jle	.LBB0_75
# BB#74:                                # %if.then.182
	movq	$3, Bitmap_Head+24
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.183
	movq	$0, Bitmap_Head+24
.LBB0_76:                               # %if.end.184
	jmp	.LBB0_84
.LBB0_77:                               # %if.else.185
	cmpq	$8, -3192(%rbp)
	jne	.LBB0_79
# BB#78:                                # %if.then.188
	movq	$1, Bitmap_Head+24
	jmp	.LBB0_83
.LBB0_79:                               # %if.else.189
	cmpq	$4, -3192(%rbp)
	jne	.LBB0_81
# BB#80:                                # %if.then.192
	movq	$2, Bitmap_Head+24
	jmp	.LBB0_82
.LBB0_81:                               # %if.else.193
	movq	$0, Bitmap_Head+24
.LBB0_82:                               # %if.end.194
	jmp	.LBB0_83
.LBB0_83:                               # %if.end.195
	jmp	.LBB0_84
.LBB0_84:                               # %if.end.196
	leaq	-3448(%rbp), %rsi
	leaq	-3456(%rbp), %rdx
	movl	-3184(%rbp), %eax
	imull	-3164(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_Head+32
	movl	-52(%rbp), %edi
	callq	gimp_image_get_resolution
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-3448(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%eax, -3644(%rbp)       # 4-byte Spill
	jbe	.LBB0_87
# BB#85:                                # %land.lhs.true.202
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-3456(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_87
# BB#86:                                # %if.then.205
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	mulsd	-3448(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %rax
	movq	%rax, Bitmap_Head+40
	mulsd	-3456(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rax
	movq	%rax, Bitmap_Head+48
.LBB0_87:                               # %if.end.214
	cmpq	$8, -3192(%rbp)
	jg	.LBB0_89
# BB#88:                                # %if.then.217
	movslq	-3196(%rbp), %rax
	movq	%rax, Bitmap_Head+56
	jmp	.LBB0_90
.LBB0_89:                               # %if.else.219
	movq	$0, Bitmap_Head+56
.LBB0_90:                               # %if.end.220
	movabsq	$.L.str.8, %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	Bitmap_Head+56, %rcx
	movq	%rcx, Bitmap_Head+64
	movq	-72(%rbp), %rcx
	callq	fwrite
	leaq	-3408(%rbp), %rsi
	movq	Bitmap_File_Head+8, %rcx
	movl	%ecx, %r8d
	movl	%r8d, %edi
	movq	%rax, -3656(%rbp)       # 8-byte Spill
	callq	FromL
	leaq	-3408(%rbp), %rax
	movw	Bitmap_File_Head+16, %r9w
	addq	$4, %rax
	movswl	%r9w, %edi
	movq	%rax, %rsi
	callq	FromS
	leaq	-3408(%rbp), %rax
	movw	Bitmap_File_Head+18, %r9w
	addq	$6, %rax
	movswl	%r9w, %edi
	movq	%rax, %rsi
	callq	FromS
	leaq	-3408(%rbp), %rax
	movq	Bitmap_File_Head+24, %rcx
	movl	%ecx, %edi
	addq	$8, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_File_Head+32, %rcx
	movl	%ecx, %edi
	addq	$12, %rax
	movq	%rax, %rsi
	callq	FromL
	movl	$16, %edi
	movl	%edi, %esi
	movl	$1, %edi
	movl	%edi, %edx
	leaq	-3408(%rbp), %rdi
	movq	-72(%rbp), %rcx
	callq	fwrite
	leaq	-3408(%rbp), %rsi
	movq	Bitmap_Head, %rcx
	movl	%ecx, %r8d
	movl	%r8d, %edi
	movq	%rax, -3664(%rbp)       # 8-byte Spill
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+8, %rcx
	movl	%ecx, %edi
	addq	$4, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movw	Bitmap_Head+16, %r9w
	addq	$8, %rax
	movswl	%r9w, %edi
	movq	%rax, %rsi
	callq	FromS
	leaq	-3408(%rbp), %rax
	movw	Bitmap_Head+18, %r9w
	addq	$10, %rax
	movswl	%r9w, %edi
	movq	%rax, %rsi
	callq	FromS
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+24, %rcx
	movl	%ecx, %edi
	addq	$12, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+32, %rcx
	movl	%ecx, %edi
	addq	$16, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+40, %rcx
	movl	%ecx, %edi
	addq	$20, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+48, %rcx
	movl	%ecx, %edi
	addq	$24, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+56, %rcx
	movl	%ecx, %edi
	addq	$28, %rax
	movq	%rax, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rax
	movq	Bitmap_Head+64, %rcx
	movl	%ecx, %edi
	addq	$32, %rax
	movq	%rax, %rsi
	callq	FromL
	movl	$36, %edi
	movl	%edi, %esi
	movl	$1, %edi
	movl	%edi, %edx
	leaq	-3408(%rbp), %rdi
	movq	-72(%rbp), %rcx
	callq	fwrite
	cmpl	$0, -3416(%rbp)
	movq	%rax, -3672(%rbp)       # 8-byte Spill
	jle	.LBB0_99
# BB#91:                                # %if.then.253
	movl	BMPSaveData(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -3680(%rbp)       # 8-byte Spill
	movq	%rdx, -3688(%rbp)       # 8-byte Spill
	ja	.LBB0_92
# BB#109:                               # %if.then.253
	movq	-3680(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_92:                               # %sw.default.254
	jmp	.LBB0_93
.LBB0_93:                               # %sw.bb.255
	movl	$-16777216, -3440(%rbp) # imm = 0xFFFFFFFFFF000000
	movl	$16711680, -3436(%rbp)  # imm = 0xFF0000
	movl	$65280, -3432(%rbp)     # imm = 0xFF00
	movl	$0, -3428(%rbp)
	jmp	.LBB0_98
.LBB0_94:                               # %sw.bb.260
	movl	$-16777216, -3440(%rbp) # imm = 0xFFFFFFFFFF000000
	movl	$16711680, -3436(%rbp)  # imm = 0xFF0000
	movl	$65280, -3432(%rbp)     # imm = 0xFF00
	movl	$255, -3428(%rbp)
	jmp	.LBB0_98
.LBB0_95:                               # %sw.bb.265
	movl	$63488, -3440(%rbp)     # imm = 0xF800
	movl	$2016, -3436(%rbp)      # imm = 0x7E0
	movl	$31, -3432(%rbp)
	movl	$0, -3428(%rbp)
	jmp	.LBB0_98
.LBB0_96:                               # %sw.bb.270
	movl	$31744, -3440(%rbp)     # imm = 0x7C00
	movl	$992, -3436(%rbp)       # imm = 0x3E0
	movl	$31, -3432(%rbp)
	movl	$32768, -3428(%rbp)     # imm = 0x8000
	jmp	.LBB0_98
.LBB0_97:                               # %sw.bb.275
	movl	$31744, -3440(%rbp)     # imm = 0x7C00
	movl	$992, -3436(%rbp)       # imm = 0x3E0
	movl	$31, -3432(%rbp)
	movl	$0, -3428(%rbp)
.LBB0_98:                               # %sw.epilog.280
	leaq	-3408(%rbp), %rsi
	movl	-3440(%rbp), %edi
	callq	FromL
	leaq	-3408(%rbp), %rsi
	movl	-3436(%rbp), %edi
	addq	$4, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rsi
	movl	-3432(%rbp), %edi
	addq	$8, %rsi
	callq	FromL
	leaq	-3408(%rbp), %rsi
	movl	-3428(%rbp), %edi
	addq	$12, %rsi
	callq	FromL
	movl	$1, %edi
	movl	%edi, %edx
	leaq	-3408(%rbp), %rdi
	movslq	-3416(%rbp), %rsi
	movq	-72(%rbp), %rcx
	callq	fwrite
	movq	%rax, -3696(%rbp)       # 8-byte Spill
.LBB0_99:                               # %if.end.292
	cmpl	$0, BMPSaveData+8
	jne	.LBB0_105
# BB#100:                               # %if.then.294
	movl	$1934772034, %edi       # imm = 0x73524742
	leaq	-3408(%rbp), %rsi
	callq	FromL
	movl	$0, -3412(%rbp)
.LBB0_101:                              # %for.cond.296
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -3412(%rbp)
	jge	.LBB0_104
# BB#102:                               # %for.body.299
                                        #   in Loop: Header=BB0_101 Depth=1
	movl	-3412(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movb	$0, -3408(%rbp,%rcx)
# BB#103:                               # %for.inc.303
                                        #   in Loop: Header=BB0_101 Depth=1
	movl	-3412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3412(%rbp)
	jmp	.LBB0_101
.LBB0_104:                              # %for.end.305
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	FromL
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rsi
	callq	FromL
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	FromL
	movl	$2, %edi
	leaq	-3408(%rbp), %rax
	addq	$52, %rax
	movq	%rax, %rsi
	callq	FromL
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	FromL
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$60, %rax
	movq	%rax, %rsi
	callq	FromL
	xorl	%edi, %edi
	leaq	-3408(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rsi
	callq	FromL
	movl	$1, %edi
	movl	%edi, %edx
	leaq	-3408(%rbp), %rdi
	movslq	-3420(%rbp), %rsi
	movq	-72(%rbp), %rcx
	callq	fwrite
	movq	%rax, -3704(%rbp)       # 8-byte Spill
.LBB0_105:                              # %if.end.316
	leaq	-3152(%rbp), %rcx
	leaq	-2128(%rbp), %rdx
	leaq	-1104(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-3180(%rbp), %r8d
	callq	write_color_map
	movq	-72(%rbp), %rdi
	movq	-3208(%rbp), %rsi
	movl	-3168(%rbp), %edx
	movl	-3164(%rbp), %ecx
	movl	BMPSaveData+4, %r8d
	movl	-3176(%rbp), %r9d
	movq	-3192(%rbp), %rax
	movl	%eax, %r10d
	movl	-3184(%rbp), %r11d
	movl	-3180(%rbp), %ebx
	movl	BMPSaveData, %r14d
	movl	-3416(%rbp), %r15d
	movl	-3420(%rbp), %r12d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%r12d, 40(%rsp)
	callq	write_image
	movq	-72(%rbp), %rdi
	callq	fclose
	movq	-3264(%rbp), %rdi
	movl	%eax, -3708(%rbp)       # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-3208(%rbp), %rdi
	callq	g_free
	movl	$3, -36(%rbp)
.LBB0_106:                              # %return
	movl	-36(%rbp), %eax
	addq	$3728, %rsp             # imm = 0xE90
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	WriteBMP, .Lfunc_end0-WriteBMP
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_1
	.quad	.LBB0_7
	.quad	.LBB0_3
	.quad	.LBB0_19
	.quad	.LBB0_15
.LJTI0_1:
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
.LJTI0_2:
	.quad	.LBB0_95
	.quad	.LBB0_96
	.quad	.LBB0_97
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_93

	.text
	.align	16, 0x90
	.type	warning_dialog,@function
warning_dialog:                         # @warning_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	movl	$5, %r8d
	movabsq	$.L.str.9, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%r8d, %ecx
	movq	%r9, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_message_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_message_dialog_format_secondary_text
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	warning_dialog, .Lfunc_end1-warning_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.3, %rdx
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	BMPSaveData+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$1, -4(%rbp)
	jle	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB2_2:                                # %if.end
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$BMPSaveData, %rcx
	addq	$4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_expander_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movabsq	$.L.str.16, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	BMPSaveData+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$BMPSaveData, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_expander_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$3, -4(%rbp)
	jge	.LBB2_4
# BB#3:                                 # %if.then.38
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB2_4:                                # %if.end.39
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	movq	$0, -72(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	cmpl	$4, -4(%rbp)
	jge	.LBB2_6
# BB#5:                                 # %if.then.66
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB2_6:                                # %if.end.67
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rax
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rax
	movl	$3, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	cmpl	$4, -4(%rbp)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jge	.LBB2_8
# BB#7:                                 # %if.then.88
	movl	$3, BMPSaveData
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB2_8:                                # %if.end.91
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rax
	movl	$4, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	cmpl	$4, -4(%rbp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB2_10
# BB#9:                                 # %if.then.107
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB2_11
.LBB2_10:                               # %if.else
	movl	$4, BMPSaveData
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB2_11:                               # %if.end.110
	movabsq	$.L.str.26, %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$format_callback, %rax
	movl	$5, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	save_dialog, .Lfunc_end2-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	FromL,@function
FromL:                                  # @FromL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	andl	$255, %edi
	movb	%dil, %al
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
	movl	-4(%rbp), %edi
	sarl	$8, %edi
	andl	$255, %edi
	movb	%dil, %al
	movq	-16(%rbp), %rsi
	movb	%al, 1(%rsi)
	movl	-4(%rbp), %edi
	sarl	$16, %edi
	andl	$255, %edi
	movb	%dil, %al
	movq	-16(%rbp), %rsi
	movb	%al, 2(%rsi)
	movl	-4(%rbp), %edi
	sarl	$24, %edi
	andl	$255, %edi
	movb	%dil, %al
	movq	-16(%rbp), %rsi
	movb	%al, 3(%rsi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	FromL, .Lfunc_end3-FromL
	.cfi_endproc

	.align	16, 0x90
	.type	FromS,@function
FromS:                                  # @FromS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movq	%rsi, -16(%rbp)
	movswl	-2(%rbp), %edi
	andl	$255, %edi
	movb	%dil, %cl
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi)
	movswl	-2(%rbp), %edi
	sarl	$8, %edi
	andl	$255, %edi
	movb	%dil, %cl
	movq	-16(%rbp), %rsi
	movb	%cl, 1(%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FromS, .Lfunc_end4-FromS
	.cfi_endproc

	.align	16, 0x90
	.type	write_color_map,@function
write_color_map:                        # @write_color_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %r8d
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-48(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movl	%eax, -36(%rbp)
	movb	$0, -37(%rbp)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	(%r8,%rcx,4), %eax
	movb	%al, %r9b
	movb	%r9b, -40(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %r8
	movl	(%r8,%rcx,4), %eax
	movb	%al, %r9b
	movb	%r9b, -39(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-16(%rbp), %r8
	movl	(%r8,%rcx,4), %eax
	movb	%al, %r9b
	movb	%r9b, -38(%rbp)
	movq	-8(%rbp), %rcx
	callq	fwrite
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	write_color_map, .Lfunc_end5-write_color_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	write_image,@function
write_image:                            # @write_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movl	56(%rbp), %eax
	movl	48(%rbp), %r10d
	movl	40(%rbp), %r11d
	movl	32(%rbp), %ebx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r15d, -60(%rbp)
	movl	%r14d, -64(%rbp)
	movl	%ebx, -68(%rbp)
	movl	%r11d, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movl	%eax, -80(%rbp)
	movq	.Lwrite_image.buf, %rsi
	movq	%rsi, -96(%rbp)
	movq	.Lwrite_image.buf+8, %rsi
	movq	%rsi, -88(%rbp)
	movl	$0, -140(%rbp)
	movl	-44(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	%eax, -156(%rbp)
	cmpl	$8, -60(%rbp)
	jle	.LBB6_32
# BB#1:                                 # %if.then
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	cmpl	$0, -144(%rbp)
	jl	.LBB6_31
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$0, -148(%rbp)
.LBB6_4:                                # %for.cond.2
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_27
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-40(%rbp), %rax
	movl	-144(%rbp), %ecx
	movl	-156(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movl	-140(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -112(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	ja	.LBB6_6
# BB#116:                               # %for.body.4
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_6:                                # %sw.default
                                        #   in Loop: Header=BB6_4 Depth=2
	jmp	.LBB6_7
.LBB6_7:                                # %sw.bb
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -94(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -95(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -96(%rbp)
	movl	-140(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -140(%rbp)
	cmpl	$3, -56(%rbp)
	jle	.LBB6_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB6_4 Depth=2
	movb	$-1, -94(%rbp)
	movb	$-1, -95(%rbp)
	movb	$-1, -96(%rbp)
.LBB6_10:                               # %if.end
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	$3, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_11:                               # %sw.bb.20
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -93(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -94(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -95(%rbp)
	movb	$0, -96(%rbp)
	movl	-140(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -140(%rbp)
	cmpl	$3, -56(%rbp)
	jle	.LBB6_14
# BB#12:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_14
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB6_4 Depth=2
	movb	$-1, -94(%rbp)
	movb	$-1, -95(%rbp)
	movb	$-1, -96(%rbp)
.LBB6_14:                               # %if.end.39
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_15:                               # %sw.bb.42
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -112(%rbp)
	movb	(%rcx), %r9b
	movb	%r9b, -93(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -112(%rbp)
	movb	(%rcx), %r9b
	movb	%r9b, -94(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -112(%rbp)
	movb	(%rcx), %r9b
	movb	%r9b, -95(%rbp)
	movq	-112(%rbp), %rcx
	movb	(%rcx), %r9b
	movb	%r9b, -96(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_16:                               # %sw.bb.53
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -174(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -175(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -176(%rbp)
	cmpl	$3, -56(%rbp)
	jle	.LBB6_19
# BB#17:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_19
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB6_4 Depth=2
	movb	$-1, -176(%rbp)
	movb	$-1, -175(%rbp)
	movb	$-1, -174(%rbp)
.LBB6_19:                               # %if.end.64
                                        #   in Loop: Header=BB6_4 Depth=2
	leaq	-96(%rbp), %rcx
	movb	-174(%rbp), %al
	movb	-175(%rbp), %dl
	movb	-176(%rbp), %sil
	movzbl	%al, %edi
	movzbl	%dl, %r8d
	movb	%sil, -225(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-225(%rbp), %al         # 1-byte Reload
	movzbl	%al, %edx
	callq	Make565
	movl	$2, %edx
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-96(%rbp), %rdi
	movl	-140(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -140(%rbp)
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_20:                               # %sw.bb.69
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -174(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -175(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -176(%rbp)
	cmpl	$3, -56(%rbp)
	jle	.LBB6_23
# BB#21:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_23
# BB#22:                                # %if.then.79
                                        #   in Loop: Header=BB6_4 Depth=2
	movb	$-1, -176(%rbp)
	movb	$-1, -175(%rbp)
	movb	$-1, -174(%rbp)
.LBB6_23:                               # %if.end.80
                                        #   in Loop: Header=BB6_4 Depth=2
	xorl	%ecx, %ecx
	leaq	-96(%rbp), %r8
	movb	-174(%rbp), %al
	movb	-175(%rbp), %dl
	movb	-176(%rbp), %sil
	movzbl	%al, %edi
	movzbl	%dl, %r9d
	movb	%sil, -241(%rbp)        # 1-byte Spill
	movl	%r9d, %esi
	movb	-241(%rbp), %al         # 1-byte Reload
	movzbl	%al, %edx
	callq	Make5551
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rdi
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -140(%rbp)
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %sw.bb.85
                                        #   in Loop: Header=BB6_4 Depth=2
	leaq	-96(%rbp), %r8
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -174(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -175(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movb	%dl, -176(%rbp)
	movq	-112(%rbp), %rax
	movb	(%rax), %dl
	movb	%dl, -177(%rbp)
	movb	-174(%rbp), %dl
	movb	-175(%rbp), %sil
	movb	-176(%rbp), %dil
	movb	-177(%rbp), %r9b
	movzbl	%dl, %r10d
	movb	%dil, -257(%rbp)        # 1-byte Spill
	movl	%r10d, %edi
	movzbl	%sil, %esi
	movb	-257(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	%r9b, %ecx
	callq	Make5551
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rdi
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -140(%rbp)
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB6_25:                               # %sw.epilog
                                        #   in Loop: Header=BB6_4 Depth=2
	jmp	.LBB6_26
.LBB6_26:                               # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_4
.LBB6_27:                               # %for.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movl	$8, %eax
	leaq	-96(%rbp), %rcx
	addq	$4, %rcx
	movl	-64(%rbp), %esi
	movl	-44(%rbp), %edi
	movl	-60(%rbp), %r8d
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	cltd
	movl	-276(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	imull	%eax, %edi
	subl	%edi, %esi
	movslq	%esi, %rsi
	movq	-32(%rbp), %r9
	movq	%rcx, %rdi
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%r9, %rcx
	callq	fwrite
	movl	$5, %r8d
	movl	cur_progress, %r10d
	addl	$1, %r10d
	movl	%r10d, cur_progress
	movl	cur_progress, %r10d
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB6_29
# BB#28:                                # %if.then.102
                                        #   in Loop: Header=BB6_2 Depth=1
	cvtsi2sdl	cur_progress, %xmm0
	cvtsi2sdl	max_progress, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB6_29:                               # %if.end.107
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$0, -140(%rbp)
# BB#30:                                # %for.inc.108
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_2
.LBB6_31:                               # %for.end.109
	jmp	.LBB6_115
.LBB6_32:                               # %if.else
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB6_54
	jmp	.LBB6_33
.LBB6_33:                               # %sw.bb.110
	movl	$8, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-308(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -164(%rbp)
	movl	-44(%rbp), %eax
	movl	-304(%rbp), %esi        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	-60(%rbp)
	movl	-312(%rbp), %edi        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-316(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB6_35
# BB#34:                                # %if.then.115
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
.LBB6_35:                               # %if.end.117
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)
.LBB6_36:                               # %for.cond.119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_38 Depth 2
                                        #       Child Loop BB6_40 Depth 3
	cmpl	$0, -144(%rbp)
	jl	.LBB6_53
# BB#37:                                # %for.body.122
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	$0, -140(%rbp)
.LBB6_38:                               # %for.cond.123
                                        #   Parent Loop BB6_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_40 Depth 3
	movl	-140(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_49
# BB#39:                                # %for.body.126
                                        #   in Loop: Header=BB6_38 Depth=2
	movb	$0, -113(%rbp)
	movl	$1, -148(%rbp)
.LBB6_40:                               # %for.cond.127
                                        #   Parent Loop BB6_36 Depth=1
                                        #     Parent Loop BB6_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$8, %eax
	movl	-148(%rbp), %edx
	movl	%edx, -320(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movl	-320(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -321(%rbp)         # 1-byte Spill
	jg	.LBB6_42
# BB#41:                                # %land.rhs
                                        #   in Loop: Header=BB6_40 Depth=3
	movl	-140(%rbp), %eax
	cmpl	-44(%rbp), %eax
	setl	%cl
	movb	%cl, -321(%rbp)         # 1-byte Spill
.LBB6_42:                               # %land.end
                                        #   in Loop: Header=BB6_40 Depth=3
	movb	-321(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_43
	jmp	.LBB6_48
.LBB6_43:                               # %for.body.133
                                        #   in Loop: Header=BB6_40 Depth=3
	movq	-40(%rbp), %rax
	movl	-144(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-140(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	cmpl	$1, -56(%rbp)
	jle	.LBB6_46
# BB#44:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB6_40 Depth=3
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_46
# BB#45:                                # %if.then.147
                                        #   in Loop: Header=BB6_40 Depth=3
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
.LBB6_46:                               # %if.end.148
                                        #   in Loop: Header=BB6_40 Depth=3
	movl	$8, %eax
	movzbl	-113(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	-148(%rbp), %edi
	imull	-60(%rbp), %edi
	subl	%edi, %eax
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movl	-328(%rbp), %eax        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, -113(%rbp)
# BB#47:                                # %for.inc.154
                                        #   in Loop: Header=BB6_40 Depth=3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB6_40
.LBB6_48:                               # %for.end.157
                                        #   in Loop: Header=BB6_38 Depth=2
	leaq	-113(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB6_38
.LBB6_49:                               # %for.end.159
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	addq	$3, %rcx
	movl	-64(%rbp), %eax
	subl	-164(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$5, %r8d
	movl	$0, -140(%rbp)
	movl	cur_progress, %r9d
	addl	$1, %r9d
	movl	%r9d, cur_progress
	movl	cur_progress, %r9d
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB6_51
# BB#50:                                # %if.then.168
                                        #   in Loop: Header=BB6_36 Depth=1
	cvtsi2sdl	cur_progress, %xmm0
	cvtsi2sdl	max_progress, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB6_51:                               # %if.end.173
                                        #   in Loop: Header=BB6_36 Depth=1
	jmp	.LBB6_52
.LBB6_52:                               # %for.inc.174
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_36
.LBB6_53:                               # %for.end.176
	jmp	.LBB6_114
.LBB6_54:                               # %sw.default.177
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8, %eax
	movl	$0, -160(%rbp)
	movb	$0, -84(%rbp)
	movb	$1, -83(%rbp)
	movb	$0, -82(%rbp)
	movb	$0, -81(%rbp)
	movl	-44(%rbp), %ecx
	cltd
	idivl	-60(%rbp)
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-368(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$10, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$8, %ecx
	movq	%rax, -128(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-60(%rbp)
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-376(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	addl	$10, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -144(%rbp)
.LBB6_55:                               # %for.cond.192
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_57 Depth 2
                                        #       Child Loop BB6_59 Depth 3
                                        #     Child Loop BB6_71 Depth 2
                                        #       Child Loop BB6_73 Depth 3
                                        #     Child Loop BB6_81 Depth 2
                                        #       Child Loop BB6_84 Depth 3
                                        #       Child Loop BB6_98 Depth 3
	cmpl	$0, -144(%rbp)
	jl	.LBB6_113
# BB#56:                                # %for.body.195
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$0, -152(%rbp)
	movl	$0, -140(%rbp)
.LBB6_57:                               # %for.cond.196
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_59 Depth 3
	movl	-140(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_68
# BB#58:                                # %for.body.199
                                        #   in Loop: Header=BB6_57 Depth=2
	movb	$0, -113(%rbp)
	movl	$1, -148(%rbp)
.LBB6_59:                               # %for.cond.200
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$8, %eax
	movl	-148(%rbp), %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movl	-380(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -381(%rbp)         # 1-byte Spill
	jg	.LBB6_61
# BB#60:                                # %land.rhs.204
                                        #   in Loop: Header=BB6_59 Depth=3
	movl	-140(%rbp), %eax
	cmpl	-44(%rbp), %eax
	setl	%cl
	movb	%cl, -381(%rbp)         # 1-byte Spill
.LBB6_61:                               # %land.end.207
                                        #   in Loop: Header=BB6_59 Depth=3
	movb	-381(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_62
	jmp	.LBB6_67
.LBB6_62:                               # %for.body.208
                                        #   in Loop: Header=BB6_59 Depth=3
	movq	-40(%rbp), %rax
	movl	-144(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-140(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	cmpl	$1, -56(%rbp)
	jle	.LBB6_65
# BB#63:                                # %land.lhs.true.217
                                        #   in Loop: Header=BB6_59 Depth=3
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_65
# BB#64:                                # %if.then.222
                                        #   in Loop: Header=BB6_59 Depth=3
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
.LBB6_65:                               # %if.end.223
                                        #   in Loop: Header=BB6_59 Depth=3
	movl	$8, %eax
	movzbl	-113(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	-148(%rbp), %edi
	imull	-60(%rbp), %edi
	subl	%edi, %eax
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movl	-388(%rbp), %eax        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, -113(%rbp)
# BB#66:                                # %for.inc.231
                                        #   in Loop: Header=BB6_59 Depth=3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB6_59
.LBB6_67:                               # %for.end.234
                                        #   in Loop: Header=BB6_57 Depth=2
	movb	-113(%rbp), %al
	movl	-152(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -152(%rbp)
	movslq	%ecx, %rsi
	movq	-128(%rbp), %rdi
	movb	%al, (%rdi,%rsi)
	jmp	.LBB6_57
.LBB6_68:                               # %for.end.237
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$8, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -392(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-396(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -168(%rbp)
	movl	-44(%rbp), %eax
	movl	-392(%rbp), %esi        # 4-byte Reload
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	-60(%rbp)
	movl	-400(%rbp), %edi        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-404(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB6_70
# BB#69:                                # %if.then.243
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
.LBB6_70:                               # %if.end.245
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$0, -148(%rbp)
.LBB6_71:                               # %for.cond.246
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_73 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB6_80
# BB#72:                                # %for.body.249
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	$0, -152(%rbp)
.LBB6_73:                               # %while.cond
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	cmpl	-168(%rbp), %eax
	movb	%cl, -405(%rbp)         # 1-byte Spill
	jge	.LBB6_76
# BB#74:                                # %land.lhs.true.253
                                        #   in Loop: Header=BB6_73 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$255, %eax
	movl	$8, %edx
	movl	-152(%rbp), %esi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-60(%rbp)
	movl	-412(%rbp), %edi        # 4-byte Reload
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-416(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	%eax, %esi
	movb	%cl, -405(%rbp)         # 1-byte Spill
	jge	.LBB6_76
# BB#75:                                # %land.rhs.258
                                        #   in Loop: Header=BB6_73 Depth=3
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-148(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -405(%rbp)        # 1-byte Spill
.LBB6_76:                               # %land.end.268
                                        #   in Loop: Header=BB6_73 Depth=3
	movb	-405(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_77
	jmp	.LBB6_78
.LBB6_77:                               # %while.body
                                        #   in Loop: Header=BB6_73 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB6_73
.LBB6_78:                               # %while.end
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-152(%rbp), %eax
	movb	%al, %cl
	movslq	-148(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#79:                                # %for.inc.273
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-152(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_71
.LBB6_80:                               # %for.end.275
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$0, -148(%rbp)
.LBB6_81:                               # %for.cond.276
                                        #   Parent Loop BB6_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_84 Depth 3
                                        #       Child Loop BB6_98 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB6_109
# BB#82:                                # %for.body.279
                                        #   in Loop: Header=BB6_81 Depth=2
	movslq	-148(%rbp), %rax
	movq	-136(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$3, %edx
	jge	.LBB6_105
# BB#83:                                # %if.then.285
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	$0, -152(%rbp)
.LBB6_84:                               # %while.cond.286
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	cmpl	-168(%rbp), %eax
	movb	%cl, -417(%rbp)         # 1-byte Spill
	jge	.LBB6_87
# BB#85:                                # %land.lhs.true.290
                                        #   in Loop: Header=BB6_84 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$255, %eax
	movl	$8, %edx
	movl	-152(%rbp), %esi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	-60(%rbp)
	movl	-424(%rbp), %edi        # 4-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-428(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	%eax, %esi
	movb	%cl, -417(%rbp)         # 1-byte Spill
	jge	.LBB6_87
# BB#86:                                # %land.rhs.295
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$3, %eax
	setl	%sil
	movb	%sil, -417(%rbp)        # 1-byte Spill
.LBB6_87:                               # %land.end.302
                                        #   in Loop: Header=BB6_84 Depth=3
	movb	-417(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_88
	jmp	.LBB6_89
.LBB6_88:                               # %while.body.303
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-148(%rbp), %eax
	addl	-152(%rbp), %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB6_84
.LBB6_89:                               # %while.end.309
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	$255, %eax
	movl	$8, %ecx
	movl	-152(%rbp), %edx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -436(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movl	-432(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-440(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-436(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB6_91
# BB#90:                                # %if.then.314
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	-152(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -152(%rbp)
.LBB6_91:                               # %if.end.316
                                        #   in Loop: Header=BB6_81 Depth=2
	cmpl	$2, -152(%rbp)
	jle	.LBB6_97
# BB#92:                                # %if.then.319
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %rdx
	addq	$12, %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$8, %r8d
	movl	-152(%rbp), %r9d
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	-60(%rbp)
	imull	%eax, %r9d
	movb	%r9b, %r10b
	movb	%r10b, -173(%rbp)
	movzbl	-173(%rbp), %eax
	movl	-148(%rbp), %r9d
	movl	%eax, -460(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	-60(%rbp)
	imull	%eax, %r9d
	movl	-460(%rbp), %eax        # 4-byte Reload
	addl	%r9d, %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_94
# BB#93:                                # %if.then.331
                                        #   in Loop: Header=BB6_81 Depth=2
	movb	-173(%rbp), %al
	addb	$-1, %al
	movb	%al, -173(%rbp)
.LBB6_94:                               # %if.end.333
                                        #   in Loop: Header=BB6_81 Depth=2
	leaq	-173(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$1, %r8d
	movl	%r8d, %edx
	movl	-160(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -160(%rbp)
	movslq	-148(%rbp), %rcx
	addq	-128(%rbp), %rcx
	movslq	-152(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	fwrite
	movl	$2, %r8d
	movl	-152(%rbp), %r9d
	addl	-160(%rbp), %r9d
	movl	%r9d, -160(%rbp)
	movl	-152(%rbp), %r9d
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB6_96
# BB#95:                                # %if.then.343
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %rdx
	addq	$12, %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	-160(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -160(%rbp)
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB6_96:                               # %if.end.347
                                        #   in Loop: Header=BB6_81 Depth=2
	jmp	.LBB6_104
.LBB6_97:                               # %if.else.348
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	-148(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB6_98:                               # %for.cond.349
                                        #   Parent Loop BB6_55 Depth=1
                                        #     Parent Loop BB6_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	movl	-148(%rbp), %ecx
	addl	-152(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_103
# BB#99:                                # %for.body.353
                                        #   in Loop: Header=BB6_98 Depth=3
	movl	$8, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	movb	%al, %cl
	movb	%cl, -173(%rbp)
	movzbl	-173(%rbp), %eax
	movl	-148(%rbp), %esi
	movl	-516(%rbp), %edi        # 4-byte Reload
	movl	%eax, -520(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	-60(%rbp)
	imull	%eax, %esi
	movl	-520(%rbp), %eax        # 4-byte Reload
	addl	%esi, %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_101
# BB#100:                               # %if.then.362
                                        #   in Loop: Header=BB6_98 Depth=3
	movb	-173(%rbp), %al
	addb	$-1, %al
	movb	%al, -173(%rbp)
.LBB6_101:                              # %if.end.364
                                        #   in Loop: Header=BB6_98 Depth=3
	leaq	-173(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$1, %r8d
	movl	%r8d, %ecx
	movslq	-172(%rbp), %rdx
	addq	-128(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	fwrite
	movl	-160(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -160(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
# BB#102:                               # %for.inc.370
                                        #   in Loop: Header=BB6_98 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB6_98
.LBB6_103:                              # %for.end.372
                                        #   in Loop: Header=BB6_81 Depth=2
	jmp	.LBB6_104
.LBB6_104:                              # %if.end.373
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	-152(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_108
.LBB6_105:                              # %if.else.375
                                        #   in Loop: Header=BB6_81 Depth=2
	movl	$8, %eax
	movslq	-148(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	cltd
	idivl	-60(%rbp)
	imull	%eax, %esi
	movb	%sil, %dil
	movb	%dil, -173(%rbp)
	movzbl	-173(%rbp), %eax
	movl	-148(%rbp), %esi
	movl	-556(%rbp), %r8d        # 4-byte Reload
	movl	%eax, -560(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	-60(%rbp)
	imull	%eax, %esi
	movl	-560(%rbp), %eax        # 4-byte Reload
	addl	%esi, %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB6_107
# BB#106:                               # %if.then.388
                                        #   in Loop: Header=BB6_81 Depth=2
	movb	-173(%rbp), %al
	addb	$-1, %al
	movb	%al, -173(%rbp)
.LBB6_107:                              # %if.end.390
                                        #   in Loop: Header=BB6_81 Depth=2
	leaq	-173(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$1, %r8d
	movl	%r8d, %ecx
	movslq	-148(%rbp), %rdx
	addq	-128(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	fwrite
	movslq	-148(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %r8d
	addl	-148(%rbp), %r8d
	movl	%r8d, -148(%rbp)
	movl	-160(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -160(%rbp)
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB6_108:                              # %if.end.400
                                        #   in Loop: Header=BB6_81 Depth=2
	jmp	.LBB6_81
.LBB6_109:                              # %for.end.401
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	addq	$14, %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movl	$5, %r8d
	movl	-160(%rbp), %r9d
	addl	$2, %r9d
	movl	%r9d, -160(%rbp)
	movl	cur_progress, %r9d
	addl	$1, %r9d
	movl	%r9d, cur_progress
	movl	cur_progress, %r9d
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB6_111
# BB#110:                               # %if.then.409
                                        #   in Loop: Header=BB6_55 Depth=1
	cvtsi2sdl	cur_progress, %xmm0
	cvtsi2sdl	max_progress, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB6_111:                              # %if.end.414
                                        #   in Loop: Header=BB6_55 Depth=1
	jmp	.LBB6_112
.LBB6_112:                              # %for.inc.415
                                        #   in Loop: Header=BB6_55 Depth=1
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_55
.LBB6_113:                              # %for.end.417
	movq	$-2, %rsi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	callq	fseek
	movl	$2, %edx
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-96(%rbp), %rdi
	addq	$12, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -616(%rbp)        # 4-byte Spill
	callq	fwrite
	movl	$34, %r8d
	movl	%r8d, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	fseek
	leaq	-104(%rbp), %rsi
	movl	-160(%rbp), %edi
	movl	%eax, -628(%rbp)        # 4-byte Spill
	callq	FromL
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fwrite
	movl	$2, %r8d
	movl	%r8d, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	fseek
	leaq	-104(%rbp), %rsi
	movl	-68(%rbp), %edx
	addl	$54, %edx
	addl	-76(%rbp), %edx
	addl	-80(%rbp), %edx
	addl	-160(%rbp), %edx
	movl	%edx, -160(%rbp)
	movl	-160(%rbp), %edi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	FromL
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	-136(%rbp), %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB6_114:                              # %sw.epilog.433
	jmp	.LBB6_115
.LBB6_115:                              # %if.end.434
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -660(%rbp)        # 4-byte Spill
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	write_image, .Lfunc_end6-write_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_16
	.quad	.LBB6_24
	.quad	.LBB6_20
	.quad	.LBB6_7
	.quad	.LBB6_15
	.quad	.LBB6_11

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4629418941960159232     # double 31
.LCPI7_2:
	.quad	4643176031446892544     # double 255
.LCPI7_3:
	.quad	4634063279075885056     # double 63
	.text
	.align	16, 0x90
	.type	Make565,@function
Make565:                                # @Make565
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	movb	%dl, %al
	movb	%sil, %r8b
	movb	%dil, %r9b
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_3, %xmm3         # xmm3 = mem[0],zero
	movb	%r9b, -1(%rbp)
	movb	%r8b, -2(%rbp)
	movb	%al, -3(%rbp)
	movq	%rcx, -16(%rbp)
	movzbl	-1(%rbp), %edx
	cvtsi2sdl	%edx, %xmm4
	divsd	%xmm2, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %edx
	shll	$11, %edx
	movzbl	-2(%rbp), %esi
	cvtsi2sdl	%esi, %xmm4
	divsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %esi
	shll	$5, %esi
	orl	%esi, %edx
	movzbl	-3(%rbp), %esi
	cvtsi2sdl	%esi, %xmm3
	divsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %esi
	orl	%esi, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	andl	$255, %edx
	movb	%dl, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-20(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, %al
	movq	-16(%rbp), %rcx
	movb	%al, 1(%rcx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Make565, .Lfunc_end7-Make565
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4643176031446892544     # double 255
.LCPI8_2:
	.quad	4629418941960159232     # double 31
	.text
	.align	16, 0x90
	.type	Make5551,@function
Make5551:                               # @Make5551
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	movb	%cl, %al
	movb	%dl, %r9b
	movb	%sil, %r10b
	movb	%dil, %r11b
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movb	%r11b, -1(%rbp)
	movb	%r10b, -2(%rbp)
	movb	%r9b, -3(%rbp)
	movb	%al, -4(%rbp)
	movq	%r8, -16(%rbp)
	movzbl	-1(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	divsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$10, %ecx
	movzbl	-2(%rbp), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %edx
	shll	$5, %edx
	orl	%edx, %ecx
	movzbl	-3(%rbp), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %edx
	orl	%edx, %ecx
	movzbl	-4(%rbp), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	shll	$15, %edx
	orl	%edx, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	andl	$255, %ecx
	movb	%cl, %al
	movq	-16(%rbp), %r8
	movb	%al, (%r8)
	movl	-20(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %al
	movq	-16(%rbp), %r8
	movb	%al, 1(%r8)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Make5551, .Lfunc_end8-Make5551
	.cfi_endproc

	.align	16, 0x90
	.type	format_callback,@function
format_callback:                        # @format_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, BMPSaveData
.LBB9_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	format_callback, .Lfunc_end9-format_callback
	.cfi_endproc

	.type	BMPSaveData,@object     # @BMPSaveData
	.local	BMPSaveData
	.comm	BMPSaveData,12,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot save indexed image with transparency in BMP file format."
	.size	.L.str, 64

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Alpha channel will be ignored."
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bmp-write.c"
	.size	.L.str.2, 12

	.type	.L__func__.WriteBMP,@object # @__func__.WriteBMP
.L__func__.WriteBMP:
	.asciz	"WriteBMP"
	.size	.L__func__.WriteBMP, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file-bmp-save"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Saving '%s'"
	.size	.L.str.7, 12

	.type	cur_progress,@object    # @cur_progress
	.local	cur_progress
	.comm	cur_progress,4,4
	.type	max_progress,@object    # @max_progress
	.local	max_progress
	.comm	max_progress,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"BM"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.Lwrite_image.buf,@object # @write_image.buf
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lwrite_image.buf:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000"
	.size	.Lwrite_image.buf, 16

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"BMP"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-bmp"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Run-Length Encoded"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"toggled"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Co_mpatibility Options"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Do not write color space information"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Some applications can not read BMP images that include color space information. GIMP writes color space information by default. Enabling this option will cause GIMP to not write color space information to the file."
	.size	.L.str.16, 215

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Advanced Options"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"16 bits"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"R5 G6 B5"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"A1 R5 G5 B5"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"X1 R5 G5 B5"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"24 bits"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"R8 G8 B8"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"32 bits"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"A8 R8 G8 B8"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"X8 R8 G8 B8"
	.size	.L.str.26, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
