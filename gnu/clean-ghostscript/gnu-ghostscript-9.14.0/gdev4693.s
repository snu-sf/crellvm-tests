	.text
	.file	"gdev4693.bc"
	.align	16, 0x90
	.type	t4693d_print_page,@function
t4693d_print_page:                      # @t4693d_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movzwl	108(%rbp), %r12d
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movl	832(%rbp), %ecx
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r13d
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB0_25
# BB#1:                                 # %if.end
	movb	$20, 32(%rsp)
	movb	$-44, 33(%rsp)
	movl	%ecx, %eax
	shrl	$6, %eax
	orl	$192, %eax
	movb	%al, 34(%rsp)
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, 35(%rsp)
	movl	836(%rbp), %edx
	movl	%edx, %esi
	shrl	$6, %esi
	orl	$192, %esi
	movb	%sil, 36(%rsp)
	andl	$63, %edx
	leal	128(%rdx), %edi
	movb	%dil, 37(%rsp)
	movb	$-63, 38(%rsp)
	movb	$-64, 39(%rsp)
	movb	$-64, 40(%rsp)
	cmpl	$16, %r12d
	setne	%bl
	cmpl	$8, %r12d
	movb	$-53, %dil
	je	.LBB0_3
# BB#2:                                 # %if.end
	orb	$-52, %bl
	movb	%bl, %dil
.LBB0_3:                                # %if.end
	movb	%dil, 41(%rsp)
	movb	$-63, 42(%rsp)
	movb	$-61, 43(%rsp)
	movb	$-61, 44(%rsp)
	movb	$-64, 45(%rsp)
	movb	$-64, 46(%rsp)
	movb	$-64, 47(%rsp)
	movb	$-61, 48(%rsp)
	movb	$-55, 49(%rsp)
	movb	$-107, 50(%rsp)
	movb	$-127, 51(%rsp)
	movsbl	%al, %eax
	movsbl	%cl, %ecx
	addl	%eax, %ecx
	movsbl	%sil, %eax
	addl	%ecx, %eax
	leal	128(%rdx,%rax), %eax
	movzbl	%dil, %ecx
	leal	82(%rcx,%rax), %eax
	orl	$128, %eax
	movb	%al, 52(%rsp)
	movb	$2, 53(%rsp)
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	movl	$22, %edx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	cmpq	$22, %rax
	jne	.LBB0_6
# BB#4:                                 # %for.cond.70.preheader
	cmpl	$0, 836(%rbp)
	jle	.LBB0_21
# BB#5:                                 # %for.body.74.lr.ph
	movq	%r13, %rax
	movzwl	%ax, %r13d
	movzwl	%ax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%r14d, %rbx
	xorl	%eax, %eax
.LBB0_8:                                # %for.body.74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%r14d, %r14d
	movl	$0, %r14d
	jle	.LBB0_9
	.align	16, 0x90
.LBB0_12:                               # %for.body.79
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, %r12d
	je	.LBB0_18
# BB#13:                                # %for.body.79
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$16, %r12d
	jne	.LBB0_14
# BB#16:                                # %sw.bb.85
                                        #   in Loop: Header=BB0_12 Depth=2
	leaq	(%r15,%r14), %rdi
	movb	(%r15,%r14), %al
	movb	1(%r15,%r14), %cl
	andb	$15, %cl
	movb	%cl, (%r15,%r14)
	movb	%al, 1(%r15,%r14)
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_18:                               # %sw.bb
                                        #   in Loop: Header=BB0_12 Depth=2
	leaq	(%r15,%r14), %rdi
	andb	$63, (%r15,%r14)
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_14:                               # %for.body.79
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$24, %r12d
	jne	.LBB0_17
# BB#15:                                # %for.body.79.sw.epilog_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=2
	leaq	(%r15,%r14), %rdi
.LBB0_19:                               # %sw.epilog
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	$1, %esi
	movq	%r13, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	cmpq	%r13, %rax
	jne	.LBB0_20
# BB#11:                                # %for.cond.76
                                        #   in Loop: Header=BB0_12 Depth=2
	addq	16(%rsp), %r14          # 8-byte Folded Reload
	cmpq	%rbx, %r14
	jl	.LBB0_12
.LBB0_9:                                # %for.end.127
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$2, %edi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	fputc
	cmpl	$2, %eax
	jne	.LBB0_10
# BB#7:                                 # %for.cond.70
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	incl	%eax
	cmpl	836(%rbp), %eax
	movl	12(%rsp), %r14d         # 4-byte Reload
	jl	.LBB0_8
.LBB0_21:                               # %for.end.143
	movl	$1, %edi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	fputc
	cmpl	$1, %eax
	movq	24(%rbp), %rdi
	jne	.LBB0_22
# BB#24:                                # %if.end.156
	movq	200(%rdi), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	jmp	.LBB0_25
.LBB0_6:                                # %if.then.61
	movq	24(%rbp), %rdi
	movl	$.L.str.5, %esi
	jmp	.LBB0_23
.LBB0_20:                               # %if.then.114
	movq	24(%rbp), %rdi
	movl	$.L.str.7, %esi
	jmp	.LBB0_23
.LBB0_17:                               # %sw.default
	movq	24(%rbp), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movl	%r12d, %edx
	callq	errprintf
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-15, %eax
	jmp	.LBB0_25
.LBB0_22:                               # %if.then.147
	movl	$.L.str.9, %esi
.LBB0_23:                               # %cleanup
	xorl	%eax, %eax
	callq	errprintf
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-12, %eax
.LBB0_25:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:                               # %if.then.131
	movq	24(%rbp), %rdi
	movl	$.L.str.8, %esi
	jmp	.LBB0_23
.Lfunc_end0:
	.size	t4693d_print_page, .Lfunc_end0-t4693d_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_t4693d_map_rgb_color,@function
gdev_t4693d_map_rgb_color:              # @gdev_t4693d_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %r8d      # imm = 0xAAAB
	shrl	$17, %r8d
	addl	$-15, %eax
	movzwl	%ax, %eax
	cmpl	$3, %eax
	sbbl	$0, %r8d
	movl	$1, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %r9
	movzwl	(%rsi), %eax
	imulq	%r9, %rax
	movabsq	$-9223231297218904063, %r10 # imm = 0x8000800080008001
	mulq	%r10
	movq	%rdx, %rdi
	shrq	$15, %rdi
	movq	%r8, %rcx
	addq	%rcx, %rcx
	shlq	%cl, %rdi
	movzwl	2(%rsi), %eax
	imulq	%r9, %rax
	mulq	%r10
	shrq	$15, %rdx
	movb	%r8b, %cl
	shlq	%cl, %rdx
	leaq	(%rdx,%rdi), %rcx
	movzwl	4(%rsi), %eax
	imulq	%r9, %rax
	mulq	%r10
	shrq	$15, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	gdev_t4693d_map_rgb_color, .Lfunc_end1-gdev_t4693d_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_t4693d_map_color_rgb,@function
gdev_t4693d_map_color_rgb:              # @gdev_t4693d_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %edi      # imm = 0xAAAB
	shrl	$17, %edi
	addl	$-15, %eax
	movzwl	%ax, %eax
	cmpl	$3, %eax
	sbbl	$0, %edi
	movl	$1, %eax
	movb	%dil, %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %r9
	movq	%rdi, %rcx
	addq	%rcx, %rcx
	movq	%rsi, %rax
	shrq	%cl, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, (%r8)
	movq	%rsi, %rax
	movb	%dil, %cl
	shrq	%cl, %rax
	andq	%r9, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, 2(%r8)
	andq	%r9, %rsi
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gdev_t4693d_map_color_rgb, .Lfunc_end2-gdev_t4693d_map_color_rgb
	.cfi_endproc

	.type	t4693d_procs,@object    # @t4693d_procs
	.data
	.align	8
t4693d_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_t4693d_map_rgb_color
	.quad	gdev_t4693d_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	t4693d_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"t4693d2"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_t4693d2_device,@object # @gs_t4693d2_device
	.section	.rodata,"a",@progbits
	.globl	gs_t4693d2_device
	.align	8
gs_t4693d2_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	t4693d_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	850                     # 0x352
	.long	1100                    # 0x44c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3251109888              # float -2.500000e+01
	.long	3251109888              # float -2.500000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	t4693d_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_t4693d2_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"t4693d4"
	.size	.L.str.2, 8

	.type	gs_t4693d4_device,@object # @gs_t4693d4_device
	.section	.rodata,"a",@progbits
	.globl	gs_t4693d4_device
	.align	8
gs_t4693d4_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	t4693d_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	16                      # 0x10
	.byte	255                     # 0xff
	.zero	1
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	850                     # 0x352
	.long	1100                    # 0x44c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3251109888              # float -2.500000e+01
	.long	3251109888              # float -2.500000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	t4693d_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_t4693d4_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"t4693d8"
	.size	.L.str.3, 8

	.type	gs_t4693d8_device,@object # @gs_t4693d8_device
	.section	.rodata,"a",@progbits
	.globl	gs_t4693d8_device
	.align	8
gs_t4693d8_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	t4693d_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	850                     # 0x352
	.long	1100                    # 0x44c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	1120403456              # float 1.000000e+02
	.long	3251109888              # float -2.500000e+01
	.long	3251109888              # float -2.500000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	t4693d_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_t4693d8_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"t4693d_print_page"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not write header (t4693d).\n"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Bad depth (%d) t4693d.\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Could not write pixel (t4693d).\n"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Could not write EOL (t4693d).\n"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Could not write EOT (t4693d).\n"
	.size	.L.str.9, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
