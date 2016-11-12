	.text
	.file	"file-pcx.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.19, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %r11
	movabsq	$.L.str.26, %r14
	movl	$1, %r10d
	movl	$5, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	movl	%r12d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.19, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_29
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_27
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.30, %rdx
	movl	$7, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_33
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_18
	jmp	.LBB1_19
.LBB1_14:                               # %sw.bb.24
	jmp	.LBB1_20
.LBB1_15:                               # %sw.bb.25
	cmpl	$5, -12(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.27
	movl	$1, -48(%rbp)
.LBB1_17:                               # %if.end.28
	jmp	.LBB1_20
.LBB1_18:                               # %sw.bb.29
	jmp	.LBB1_20
.LBB1_19:                               # %sw.default.30
	jmp	.LBB1_20
.LBB1_20:                               # %sw.epilog.31
	cmpl	$3, -48(%rbp)
	jne	.LBB1_24
# BB#21:                                # %if.then.33
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.38
	movl	$0, -48(%rbp)
.LBB1_23:                               # %if.end.39
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.40
	cmpl	$2, -60(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.42
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_26:                               # %if.end.44
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.45
	movl	$1, -48(%rbp)
.LBB1_28:                               # %if.end.46
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.47
	cmpl	$3, -48(%rbp)
	je	.LBB1_32
# BB#30:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.50
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_32:                               # %if.end.51
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_33:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$1248, %rsp             # imm = 0x4E0
	movabsq	$.L.str.31, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.32, %rdi
	movl	%eax, -1040(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movl	-1036(%rbp), %esi       # 4-byte Reload
	movl	-1040(%rbp), %edx       # 4-byte Reload
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	-1056(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_37
.LBB3_2:                                # %if.end
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$128, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-1024(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_4
# BB#3:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.34, %rdi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movl	-1084(%rbp), %esi       # 4-byte Reload
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_4:                                # %if.end.17
	leaq	-1024(%rbp), %rdi
	callq	pcx_header_from_buffer
	movzbl	pcx_header, %eax
	cmpl	$10, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then.21
	movq	-24(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.35, %rdi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movl	-1116(%rbp), %esi       # 4-byte Reload
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_6:                                # %if.end.26
	movw	pcx_header+4, %ax
	movw	%ax, -90(%rbp)
	movw	pcx_header+6, %ax
	movw	%ax, -92(%rbp)
	movzwl	pcx_header+8, %ecx
	movzwl	-90(%rbp), %edx
	subl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, -100(%rbp)
	movzwl	pcx_header+10, %ecx
	movzwl	-92(%rbp), %edx
	subl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, -104(%rbp)
	movw	pcx_header+66, %ax
	movw	%ax, -94(%rbp)
	cmpl	$0, -100(%rbp)
	jl	.LBB3_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$262144, -100(%rbp)     # imm = 0x40000
	jle	.LBB3_9
.LBB3_8:                                # %if.then.37
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_9:                                # %if.end.40
	cmpl	$0, -104(%rbp)
	jl	.LBB3_11
# BB#10:                                # %lor.lhs.false.43
	cmpl	$262144, -104(%rbp)     # imm = 0x40000
	jle	.LBB3_12
.LBB3_11:                               # %if.then.46
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_12:                               # %if.end.49
	movl	$8, %eax
	movzwl	-94(%rbp), %ecx
	movl	-100(%rbp), %edx
	movzbl	pcx_header+3, %esi
	imull	%esi, %edx
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1144(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB3_14
# BB#13:                                # %if.then.54
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_14:                               # %if.end.57
	movq	$-1, %rax
	movslq	-100(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movslq	-104(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	cmpq	$3, %rax
	jae	.LBB3_16
# BB#15:                                # %if.then.64
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_16:                               # %if.end.67
	movzbl	pcx_header+65, %eax
	cmpl	$3, %eax
	jne	.LBB3_19
# BB#17:                                # %land.lhs.true
	movzbl	pcx_header+3, %eax
	cmpl	$8, %eax
	jne	.LBB3_19
# BB#18:                                # %if.then.74
	xorl	%edx, %edx
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	callq	gimp_image_new
	movabsq	$.L.str.40, %rdi
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %ecx
	movl	-1156(%rbp), %edi       # 4-byte Reload
	movl	%esi, -1160(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movl	-1160(%rbp), %r8d       # 4-byte Reload
	movl	%edx, -1164(%rbp)       # 4-byte Spill
	movl	%r8d, %edx
	movl	-1164(%rbp), %r8d       # 4-byte Reload
	movl	-1164(%rbp), %r9d       # 4-byte Reload
	callq	gimp_layer_new
	movl	%eax, -112(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else
	movl	$2, %edx
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	callq	gimp_image_new
	movabsq	$.L.str.40, %rdi
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$4, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-1168(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	%eax, -112(%rbp)
.LBB3_20:                               # %if.end.81
	movl	-108(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %esi
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	callq	gimp_image_insert_layer
	movl	-112(%rbp), %edi
	movzwl	-90(%rbp), %esi
	movzwl	-92(%rbp), %edx
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	callq	gimp_layer_set_offsets
	movl	-112(%rbp), %edi
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)
	movzbl	pcx_header+65, %ecx
	cmpl	$1, %ecx
	jne	.LBB3_23
# BB#21:                                # %land.lhs.true.91
	movzbl	pcx_header+3, %eax
	cmpl	$1, %eax
	jne	.LBB3_23
# BB#22:                                # %if.then.95
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-100(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	-120(%rbp), %rcx
	movzwl	-94(%rbp), %r8d
	callq	load_1
	movabsq	$mono, %rsi
	movl	$2, %edx
	movl	-108(%rbp), %edi
	callq	gimp_image_set_colormap
	movl	%eax, -1184(%rbp)       # 4-byte Spill
	jmp	.LBB3_36
.LBB3_23:                               # %if.else.101
	movzbl	pcx_header+65, %eax
	cmpl	$4, %eax
	jne	.LBB3_26
# BB#24:                                # %land.lhs.true.105
	movzbl	pcx_header+3, %eax
	cmpl	$1, %eax
	jne	.LBB3_26
# BB#25:                                # %if.then.109
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-100(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	-120(%rbp), %rcx
	movzwl	-94(%rbp), %r8d
	callq	load_4
	movabsq	$pcx_header, %rax
	addq	$16, %rax
	movl	$16, %edx
	movl	-108(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_set_colormap
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	jmp	.LBB3_35
.LBB3_26:                               # %if.else.115
	movzbl	pcx_header+65, %eax
	cmpl	$1, %eax
	jne	.LBB3_29
# BB#27:                                # %land.lhs.true.119
	movzbl	pcx_header+3, %eax
	cmpl	$8, %eax
	jne	.LBB3_29
# BB#28:                                # %if.then.123
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-100(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	-120(%rbp), %rcx
	movzwl	-94(%rbp), %r8d
	callq	load_8
	movq	$-768, %rsi             # imm = 0xFFFFFFFFFFFFFD00
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	fseek
	movl	$768, %edx              # imm = 0x300
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-896(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -1192(%rbp)       # 4-byte Spill
	callq	fread
	movl	$256, %edx              # imm = 0x100
	leaq	-896(%rbp), %rsi
	movl	-108(%rbp), %edi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gimp_image_set_colormap
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	jmp	.LBB3_34
.LBB3_29:                               # %if.else.133
	movzbl	pcx_header+65, %eax
	cmpl	$3, %eax
	jne	.LBB3_32
# BB#30:                                # %land.lhs.true.137
	movzbl	pcx_header+3, %eax
	cmpl	$8, %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.141
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-100(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	imulq	%rdx, %rcx
	imulq	$3, %rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movq	-120(%rbp), %rcx
	movzwl	-94(%rbp), %r8d
	callq	load_24
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.147
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1208(%rbp)       # 4-byte Spill
	jmp	.LBB3_37
.LBB3_33:                               # %if.end.150
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.151
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.152
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.153
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%edx, -1212(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-120(%rbp), %rsi
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-32(%rbp), %rdi
	callq	fclose
	movq	-120(%rbp), %rdi
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-108(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_37:                               # %return
	movl	-4(%rbp), %eax
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -112(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -96(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -100(%rbp)
	movl	-24(%rbp), %edi
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	callq	gimp_drawable_offsets
	movq	-96(%rbp), %rcx
	movl	4(%rcx), %edi
	movl	%edi, -132(%rbp)
	movq	-96(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, -136(%rbp)
	movq	-96(%rbp), %rsi
	movl	-132(%rbp), %r8d
	movq	%rsp, %rcx
	movl	$0, 8(%rcx)
	movl	$0, (%rcx)
	leaq	-88(%rbp), %rcx
	xorl	%r9d, %r9d
	movl	%edi, -276(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	-276(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -280(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$.L.str.42, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-280(%rbp), %ecx        # 4-byte Reload
	movb	%cl, %r11b
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%r11b, %al
	callq	gimp_progress_init_printf
	movb	$10, pcx_header(%rip)
	movb	$5, pcx_header+1(%rip)
	movb	$1, pcx_header+2(%rip)
	movl	-100(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_34
.LBB4_34:                               # %entry
	movl	-304(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_35
.LBB4_35:                               # %entry
	movl	-304(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jne	.LBB4_4
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	leaq	-140(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -112(%rbp)
	movb	$8, pcx_header+3
	movl	-132(%rbp), %edi
	movw	%di, %cx
	movw	%cx, pcx_header+66
	movb	$1, pcx_header+65
	movw	$1, pcx_header+68
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb.9
	movb	$8, pcx_header+3
	movb	$3, pcx_header+65
	movw	$1, pcx_header+68
	movl	-132(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, pcx_header+66
	jmp	.LBB4_5
.LBB4_3:                                # %sw.bb.11
	movb	$8, pcx_header+3
	movb	$1, pcx_header+65
	movw	$2, pcx_header+68
	movl	-132(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, pcx_header+66
	jmp	.LBB4_5
.LBB4_4:                                # %sw.default
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_5:                                # %sw.epilog
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	movzbl	pcx_header+65, %ecx
	imull	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rsi
	movl	-132(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	cmpl	$0, -124(%rbp)
	jl	.LBB4_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$65536, -124(%rbp)      # imm = 0x10000
	jle	.LBB4_8
.LBB4_7:                                # %if.then
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movl	-124(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_8:                                # %if.end
	cmpl	$0, -128(%rbp)
	jl	.LBB4_10
# BB#9:                                 # %lor.lhs.false.24
	cmpl	$65536, -128(%rbp)      # imm = 0x10000
	jle	.LBB4_11
.LBB4_10:                               # %if.then.27
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movl	-128(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_11:                               # %if.end.29
	movl	-124(%rbp), %eax
	addl	-132(%rbp), %eax
	subl	$1, %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jbe	.LBB4_13
# BB#12:                                # %if.then.32
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movl	$65536, %esi            # imm = 0x10000
	movl	-124(%rbp), %ecx
	addl	-132(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_13:                               # %if.end.36
	movl	-128(%rbp), %eax
	addl	-136(%rbp), %eax
	subl	$1, %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jbe	.LBB4_15
# BB#14:                                # %if.then.41
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movl	$65536, %esi            # imm = 0x10000
	movl	-128(%rbp), %ecx
	addl	-136(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_15:                               # %if.end.45
	movabsq	$.L.str.48, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_17
# BB#16:                                # %if.then.49
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.49, %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	movl	-328(%rbp), %edx        # 4-byte Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_17:                               # %if.end.57
	movw	-124(%rbp), %ax
	movw	%ax, pcx_header+4(%rip)
	movw	-128(%rbp), %ax
	movw	%ax, pcx_header+6(%rip)
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, %edi
	leal	-1(%rdi,%rsi), %ecx
	movw	%cx, %ax
	movw	%ax, pcx_header+8(%rip)
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, %edi
	leal	-1(%rdi,%rsi), %ecx
	movw	%cx, %ax
	movw	%ax, pcx_header+10(%rip)
	movw	$300, pcx_header+12(%rip) # imm = 0x12C
	movw	$300, pcx_header+14(%rip) # imm = 0x12C
	movb	$0, pcx_header+64(%rip)
	leaq	-272(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	callq	pcx_header_to_buffer
	movq	-40(%rbp), %rcx
	movl	$128, %edx
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-352(%rbp), %rdi        # 8-byte Reload
	callq	fwrite
	movl	-100(%rbp), %r8d
	testl	%r8d, %r8d
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movl	%r8d, -364(%rbp)        # 4-byte Spill
	je	.LBB4_23
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.57
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB4_24
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.57
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jne	.LBB4_29
	jmp	.LBB4_18
.LBB4_18:                               # %sw.bb.68
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movq	-120(%rbp), %rcx
	callq	save_8
	movl	$12, %edi
	movq	-40(%rbp), %rsi
	callq	fputc
	movl	$3, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-112(%rbp), %rdi
	movslq	-140(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	fwrite
	movl	-140(%rbp), %r8d
	movl	%r8d, -144(%rbp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB4_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -144(%rbp)        # imm = 0x100
	jge	.LBB4_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB4_19 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -396(%rbp)        # 4-byte Spill
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end
	jmp	.LBB4_30
.LBB4_23:                               # %sw.bb.77
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movq	-120(%rbp), %rcx
	callq	save_24
	jmp	.LBB4_30
.LBB4_24:                               # %sw.bb.78
	movq	-40(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movq	-120(%rbp), %rcx
	callq	save_8
	movl	$12, %edi
	movq	-40(%rbp), %rsi
	callq	fputc
	movl	$0, -144(%rbp)
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB4_25:                               # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -144(%rbp)        # imm = 0x100
	jge	.LBB4_28
# BB#26:                                # %for.body.83
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-144(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %edi
	movq	-40(%rbp), %rsi
	callq	fputc
	movl	-144(%rbp), %edi
	movb	%dil, %cl
	movzbl	%cl, %edi
	movq	-40(%rbp), %rsi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	fputc
	movl	-144(%rbp), %edi
	movb	%dil, %cl
	movzbl	%cl, %edi
	movq	-40(%rbp), %rsi
	movl	%eax, -408(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -412(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc.93
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end.95
	jmp	.LBB4_30
.LBB4_29:                               # %sw.default.96
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_30:                               # %sw.epilog.97
	movq	-96(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB4_32
# BB#31:                                # %if.then.101
	movq	-32(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.50, %rdi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %esi        # 4-byte Reload
	movl	-432(%rbp), %edx        # 4-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-448(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_33
.LBB4_32:                               # %if.end.109
	movl	$1, -4(%rbp)
.LBB4_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	pcx_header_from_buffer,@function
pcx_header_from_buffer:                 # @pcx_header_from_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	8(%rdx), %rdi
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rcx, %rsi
	callq	memmove
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-16(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -16(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pcx_header_from_buffer, .Lfunc_end5-pcx_header_from_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_message, .Lfunc_end6-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	load_1,@function
load_1:                                 # @load_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movw	%r8w, %ax
	movl	$1, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movw	%ax, -26(%rbp)
	movzwl	-26(%rbp), %edx
	movl	%edx, %edi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movzwl	-26(%rbp), %edx
	callq	readline
	movl	$0, -32(%rbp)
.LBB7_3:                                # %for.cond.3
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_9
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	$128, %eax
	movl	$8, %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-32(%rbp), %r8d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB7_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$1, (%rcx,%rax)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_8
.LBB7_8:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_3
.LBB7_9:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#10:                                # %for.inc.16
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_1
.LBB7_11:                               # %for.end.18
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_1, .Lfunc_end7-load_1
	.cfi_endproc

	.align	16, 0x90
	.type	load_4,@function
load_4:                                 # @load_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movw	%r8w, %ax
	movl	$1, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movw	%ax, -26(%rbp)
	movzwl	-26(%rbp), %edx
	movl	%edx, %edi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_9 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB8_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -32(%rbp)
.LBB8_3:                                # %for.cond.2
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB8_3 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -40(%rbp)
.LBB8_7:                                # %for.cond.6
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
	cmpl	$4, -40(%rbp)
	jge	.LBB8_16
# BB#8:                                 # %for.body.9
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movzwl	-26(%rbp), %edx
	callq	readline
	movl	$0, -32(%rbp)
.LBB8_9:                                # %for.cond.11
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_14
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB8_9 Depth=3
	movl	$128, %eax
	movl	$8, %ecx
	movl	-32(%rbp), %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-32(%rbp), %r8d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	andl	%edx, %r8d
	cmpl	$0, %r8d
	je	.LBB8_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB8_9 Depth=3
	movl	$1, %eax
	movl	-40(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%eax, %edi
	movb	%dil, %cl
	movb	%cl, (%rsi,%rdx)
.LBB8_12:                               # %if.end
                                        #   in Loop: Header=BB8_9 Depth=3
	jmp	.LBB8_13
.LBB8_13:                               # %for.inc.22
                                        #   in Loop: Header=BB8_9 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_9
.LBB8_14:                               # %for.end.24
                                        #   in Loop: Header=BB8_7 Depth=2
	jmp	.LBB8_15
.LBB8_15:                               # %for.inc.25
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_7
.LBB8_16:                               # %for.end.27
                                        #   in Loop: Header=BB8_1 Depth=1
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#17:                                # %for.inc.32
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_18:                               # %for.end.34
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_4, .Lfunc_end8-load_4
	.cfi_endproc

	.align	16, 0x90
	.type	load_8,@function
load_8:                                 # @load_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movw	%r8w, %ax
	movl	$1, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movw	%ax, -26(%rbp)
	movzwl	-26(%rbp), %edx
	movl	%edx, %edi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movzwl	-26(%rbp), %edx
	callq	readline
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	memcpy
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	load_8, .Lfunc_end9-load_8
	.cfi_endproc

	.align	16, 0x90
	.type	load_24,@function
load_24:                                # @load_24
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movw	%r8w, %ax
	movl	$1, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movw	%ax, -26(%rbp)
	movzwl	-26(%rbp), %edx
	movl	%edx, %edi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB10_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -40(%rbp)
.LBB10_3:                               # %for.cond.2
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
	cmpl	$3, -40(%rbp)
	jge	.LBB10_10
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movzwl	-26(%rbp), %edx
	callq	readline
	movl	$0, -32(%rbp)
.LBB10_5:                               # %for.cond.7
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB10_8
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB10_5 Depth=3
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	imull	$3, -32(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc.13
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_10:                              # %for.end.15
                                        #   in Loop: Header=BB10_1 Depth=1
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB10_1 Depth=1
	imull	$3, -12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_1
.LBB10_12:                              # %for.end.22
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	load_24, .Lfunc_end10-load_24
	.cfi_endproc

	.align	16, 0x90
	.type	readline,@function
readline:                               # @readline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpb	$0, pcx_header+2
	je	.LBB11_10
# BB#1:                                 # %if.then
	jmp	.LBB11_2
.LBB11_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB11_9
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	readline.count, %eax
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	-8(%rbp), %rdi
	callq	fgetc
	movb	%al, %cl
	movb	%cl, readline.value
	movzbl	readline.value, %eax
	cmpl	$192, %eax
	jge	.LBB11_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB11_2 Depth=1
	movb	$1, readline.count
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	readline.value, %eax
	subl	$192, %eax
	movb	%al, %cl
	movb	%cl, readline.count
	movq	-8(%rbp), %rdi
	callq	fgetc
	movb	%al, %cl
	movb	%cl, readline.value
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.13
                                        #   in Loop: Header=BB11_2 Depth=1
	movb	readline.count, %al
	addb	$-1, %al
	movb	%al, readline.count
	movb	readline.value, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB11_2
.LBB11_9:                               # %while.end
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.15
	movl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-8(%rbp), %rcx
	callq	fread
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB11_11:                              # %if.end.18
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	readline, .Lfunc_end11-readline
	.cfi_endproc

	.align	16, 0x90
	.type	pcx_header_to_buffer,@function
pcx_header_to_buffer:                   # @pcx_header_to_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_3
.LBB12_3:                               # %do.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	8(%rsi), %rsi
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rcx, %rdi
	callq	memmove
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$pcx_header_buf_xlate, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-16(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -16(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pcx_header_to_buffer, .Lfunc_end12-pcx_header_to_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	save_8,@function
save_8:                                 # @save_8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	writeline
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -32(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	save_8, .Lfunc_end13-save_8
	.cfi_endproc

	.align	16, 0x90
	.type	save_24,@function
save_24:                                # @save_24
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movslq	-12(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -48(%rbp)
	movl	$0, -32(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #       Child Loop BB14_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB14_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -36(%rbp)
.LBB14_3:                               # %for.cond.2
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_5 Depth 3
	cmpl	$3, -36(%rbp)
	jge	.LBB14_10
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	$0, -28(%rbp)
.LBB14_5:                               # %for.cond.6
                                        #   Parent Loop BB14_1 Depth=1
                                        #     Parent Loop BB14_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB14_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB14_5 Depth=3
	imull	$3, -28(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-28(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_5
.LBB14_8:                               # %for.end
                                        #   in Loop: Header=BB14_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	writeline
# BB#9:                                 # %for.inc.12
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_3
.LBB14_10:                              # %for.end.14
                                        #   in Loop: Header=BB14_1 Depth=1
	imull	$3, -12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_1
.LBB14_12:                              # %for.end.21
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	save_24, .Lfunc_end14-save_24
	.cfi_endproc

	.align	16, 0x90
	.type	writeline,@function
writeline:                              # @writeline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB15_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -33(%rbp)
	movb	$1, -34(%rbp)
.LBB15_3:                               # %while.cond.1
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -35(%rbp)          # 1-byte Spill
	jae	.LBB15_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_3 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-34(%rbp), %eax
	cmpl	$63, %eax
	movb	%cl, -35(%rbp)          # 1-byte Spill
	jge	.LBB15_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB15_3 Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-33(%rbp), %edx
	cmpl	%edx, %ecx
	sete	%sil
	movb	%sil, -35(%rbp)         # 1-byte Spill
.LBB15_6:                               # %land.end
                                        #   in Loop: Header=BB15_3 Depth=2
	movb	-35(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_7
	jmp	.LBB15_8
.LBB15_7:                               # %while.body.9
                                        #   in Loop: Header=BB15_3 Depth=2
	movb	-34(%rbp), %al
	addb	$1, %al
	movb	%al, -34(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB15_3
.LBB15_8:                               # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$192, %eax
	jge	.LBB15_11
# BB#9:                                 # %land.lhs.true.14
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	-34(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB15_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	-33(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB15_12
.LBB15_11:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	-34(%rbp), %eax
	addl	$192, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	fputc
	movzbl	-33(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fputc
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB15_12:                              # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_1
.LBB15_13:                              # %while.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	writeline, .Lfunc_end15-writeline
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.save_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-pcx-load"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Loads files in Zsoft PCX file format"
	.size	.L.str.13, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"FIXME: write help for pcx_load"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Francisco Bustamante & Nick Lamb"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Nick Lamb <njl195@zepler.org.uk>"
	.size	.L.str.16, 33

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"January 1997"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ZSoft PCX image"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"image/x-pcx"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pcx,pcc"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"0&,byte,10,2&,byte,1,3&,byte,>0,3,byte,<9"
	.size	.L.str.22, 42

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"file-pcx-save"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Saves files in ZSoft PCX file format"
	.size	.L.str.24, 37

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FIXME: write help for pcx_save"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"INDEXED, RGB, GRAY"
	.size	.L.str.26, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"file-pcx"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"PCX"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"rb"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.32, 36

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Opening '%s'"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Could not read header from '%s'"
	.size	.L.str.34, 32

	.type	pcx_header,@object      # @pcx_header
	.local	pcx_header
	.comm	pcx_header,128,2
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"'%s' is not a PCX file"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Unsupported or invalid image width: %d"
	.size	.L.str.36, 39

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Unsupported or invalid image height: %d"
	.size	.L.str.37, 40

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid number of bytes per line in PCX header"
	.size	.L.str.38, 47

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Image dimensions too large: width %d x height %d"
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Background"
	.size	.L.str.40, 11

	.type	mono,@object            # @mono
	.section	.rodata,"a",@progbits
mono:
	.ascii	"\000\000\000\377\377\377"
	.size	mono, 6

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"Unusual PCX flavour, giving up"
	.size	.L.str.41, 31

	.type	pcx_header_buf_xlate,@object # @pcx_header_buf_xlate
	.section	.rodata,"a",@progbits
	.align	16
pcx_header_buf_xlate:
	.quad	1                       # 0x1
	.quad	pcx_header
	.quad	1                       # 0x1
	.quad	pcx_header+1
	.quad	1                       # 0x1
	.quad	pcx_header+2
	.quad	1                       # 0x1
	.quad	pcx_header+3
	.quad	2                       # 0x2
	.quad	pcx_header+4
	.quad	2                       # 0x2
	.quad	pcx_header+6
	.quad	2                       # 0x2
	.quad	pcx_header+8
	.quad	2                       # 0x2
	.quad	pcx_header+10
	.quad	2                       # 0x2
	.quad	pcx_header+12
	.quad	2                       # 0x2
	.quad	pcx_header+14
	.quad	48                      # 0x30
	.quad	pcx_header+16
	.quad	1                       # 0x1
	.quad	pcx_header+64
	.quad	1                       # 0x1
	.quad	pcx_header+65
	.quad	2                       # 0x2
	.quad	pcx_header+66
	.quad	2                       # 0x2
	.quad	pcx_header+68
	.quad	58                      # 0x3a
	.quad	pcx_header+70
	.zero	16
	.size	pcx_header_buf_xlate, 272

	.type	readline.count,@object  # @readline.count
	.local	readline.count
	.comm	readline.count,1,1
	.type	readline.value,@object  # @readline.value
	.local	readline.value
	.comm	readline.value,1,1
	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"Saving '%s'"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Cannot save images with alpha channel."
	.size	.L.str.43, 39

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Invalid X offset: %d"
	.size	.L.str.44, 21

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Invalid Y offset: %d"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Right border out of bounds (must be < %d): %d"
	.size	.L.str.46, 46

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Bottom border out of bounds (must be < %d): %d"
	.size	.L.str.47, 47

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"wb"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.49, 36

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Writing to file '%s' failed: %s"
	.size	.L.str.50, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
