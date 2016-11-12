	.text
	.file	"gdevcdj.bc"
	.align	16, 0x90
	.type	dj500c_print_page,@function
dj500c_print_page:                      # @dj500c_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end0:
	.size	dj500c_print_page, .Lfunc_end0-dj500c_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	dj550c_print_page,@function
dj550c_print_page:                      # @dj550c_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end1:
	.size	dj550c_print_page, .Lfunc_end1-dj550c_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	picty180_print_page,@function
picty180_print_page:                    # @picty180_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.132, %edi
	callq	fputs
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hp_colour_print_page
	movl	%eax, %ebp
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	picty180_print_page, .Lfunc_end2-picty180_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	dj505j_print_page,@function
dj505j_print_page:                      # @dj505j_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end3:
	.size	dj505j_print_page, .Lfunc_end3-dj505j_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	declj250_print_page,@function
declj250_print_page:                    # @declj250_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.136, %edi
	callq	fputs
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hp_colour_print_page
	movl	%eax, %ebp
	movl	$.L.str.137, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	declj250_print_page, .Lfunc_end4-declj250_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	dnj650c_print_page,@function
dnj650c_print_page:                     # @dnj650c_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$7, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end5:
	.size	dnj650c_print_page, .Lfunc_end5-dnj650c_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	lj4dith_print_page,@function
lj4dith_print_page:                     # @lj4dith_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$8, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end6:
	.size	lj4dith_print_page, .Lfunc_end6-lj4dith_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	lj4dithp_print_page,@function
lj4dithp_print_page:                    # @lj4dithp_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.134, %edi
	callq	fputs
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hp_colour_print_page
	movl	%eax, %ebp
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lj4dithp_print_page, .Lfunc_end7-lj4dithp_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pj_print_page,@function
pj_print_page:                          # @pj_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end8:
	.size	pj_print_page, .Lfunc_end8-pj_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl_print_page,@function
pjxl_print_page:                        # @pjxl_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end9:
	.size	pjxl_print_page, .Lfunc_end9-pjxl_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl300_print_page,@function
pjxl300_print_page:                     # @pjxl300_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.135, %edi
	callq	fputs
	movl	$3, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	hp_colour_print_page
	movl	%eax, %ebp
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pjxl300_print_page, .Lfunc_end10-pjxl300_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	escp_print_page,@function
escp_print_page:                        # @escp_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$9, %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end11:
	.size	escp_print_page, .Lfunc_end11-escp_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	bjc_print_page,@function
bjc_print_page:                         # @bjc_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18484(%rdi), %edx
	jmp	hp_colour_print_page    # TAILCALL
.Lfunc_end12:
	.size	bjc_print_page, .Lfunc_end12-bjc_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	dj500c_open,@function
dj500c_open:                            # @dj500c_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB13_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB13_2
.LBB13_3:                               # %if.end.7.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.dj_a4, %eax
	movl	$hp_colour_open.dj_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB13_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end13:
	.size	dj500c_open, .Lfunc_end13-dj500c_open
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_rgb_color,@function
gdev_pcl_map_rgb_color:                 # @gdev_pcl_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movzwl	(%rsi), %edx
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %r10d
	movl	%ecx, %eax
	andl	%edx, %eax
	andl	%r10d, %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	xorl	%esi, %esi
	cmpl	$-16777217, %eax        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB14_20
# BB#1:                                 # %if.else
	movslq	18480(%rdi), %r9
	testq	%r9, %r9
	movl	%edx, %eax
	notl	%eax
	movl	%ecx, %r8d
	notl	%r8d
	notl	%r10d
	je	.LBB14_4
# BB#2:                                 # %if.then.18
	movzwl	%dx, %r11d
	movzwl	%cx, %r14d
	movzwl	%r8w, %ebp
	movzwl	%r10w, %ebx
	cmpl	%ebx, %ebp
	movw	%r10w, %cx
	cmovaew	%r8w, %cx
	movzwl	%ax, %edx
	cmpl	%ebx, %edx
	movw	%dx, %si
	cmovbw	%r10w, %si
	cmpl	%r11d, %r14d
	cmovbw	%cx, %si
	movzwl	%si, %ecx
	testw	%cx, %cx
	je	.LBB14_4
# BB#3:                                 # %if.then.46
	cmpl	%ebx, %ebp
	movw	%r10w, %ax
	cmovbew	%r8w, %ax
	cmpl	%ebx, %edx
	movw	%dx, %si
	cmovaw	%r10w, %si
	cmpl	%r11d, %r14d
	cmovaw	%ax, %si
	movzwl	%si, %eax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	shrq	$4, %rdx
	movq	%r9, %rax
	imulq	%rcx, %rax
	addq	%rsi, %rax
	imulq	%rdx, %rax
	leal	1(%r9), %edx
	movslq	%edx, %rsi
	imulq	%rcx, %rsi
	shrq	$4, %rsi
	xorl	%edx, %edx
	divq	%rsi
.LBB14_4:                               # %if.end.89
	movzwl	108(%rdi), %ecx
	xorl	%esi, %esi
	cmpl	$15, %ecx
	jle	.LBB14_5
# BB#9:                                 # %if.end.89
	cmpl	$16, %ecx
	je	.LBB14_17
# BB#10:                                # %if.end.89
	cmpl	$24, %ecx
	jne	.LBB14_11
# BB#18:                                # %sw.bb.135
	movzwl	%r10w, %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movzwl	%r8w, %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$16, %edx
	andl	$65280, %edx            # imm = 0xFF00
	orl	%ecx, %edx
	movzwl	%ax, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$8, %esi
	andl	$16711680, %esi         # imm = 0xFF0000
	orq	%rdx, %rsi
	jmp	.LBB14_20
.LBB14_5:                               # %if.end.89
	cmpl	$1, %ecx
	jne	.LBB14_6
# BB#15:                                # %sw.bb
	orl	%r8d, %r10d
	orl	%r10d, %eax
	andl	$32768, %eax            # imm = 0x8000
	shrl	$15, %eax
	movq	%rax, %rsi
	jmp	.LBB14_20
.LBB14_17:                              # %sw.bb.123
	movzwl	%r10w, %ecx
	shrl	$11, %ecx
	shrl	$5, %r8d
	andl	$2016, %r8d             # imm = 0x7E0
	orl	%ecx, %r8d
	andl	$63488, %eax            # imm = 0xF800
	orl	%r8d, %eax
	movq	%rax, %rsi
	jmp	.LBB14_20
.LBB14_11:                              # %if.end.89
	cmpl	$32, %ecx
	jne	.LBB14_20
# BB#12:                                # %sw.bb.159
	movzwl	%ax, %eax
	movzwl	%r8w, %ecx
	cmpl	%ecx, %eax
	jne	.LBB14_19
# BB#13:                                # %sw.bb.159
	movzwl	%r10w, %edx
	cmpl	%edx, %eax
	jne	.LBB14_19
# BB#14:                                # %cond.true.168
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	jmp	.LBB14_20
.LBB14_6:                               # %if.end.89
	cmpl	$8, %ecx
	jne	.LBB14_20
# BB#7:                                 # %sw.bb.98
	cmpl	$3, 100(%rdi)
	jl	.LBB14_16
# BB#8:                                 # %if.then.102
	movzwl	%ax, %eax
	shrl	$15, %eax
	shrl	$14, %r8d
	andl	$2, %r8d
	shrl	$13, %r10d
	andl	$4, %r10d
	orl	%r8d, %r10d
	orl	%eax, %r10d
	movq	%r10, %rsi
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.176
	movzwl	%r10w, %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%edx, %ecx
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	shlq	$16, %rsi
	orq	%rcx, %rsi
	jmp	.LBB14_20
.LBB14_16:                              # %if.else.113
	movzwl	%ax, %eax
	imulq	$306, %rax, %rax        # imm = 0x132
	movzwl	%r8w, %ecx
	imulq	$601, %rcx, %rcx        # imm = 0x259
	movzwl	%r10w, %edx
	imulq	$117, %rdx, %rsi
	addq	%rcx, %rsi
	addq	%rax, %rsi
	shrq	$18, %rsi
.LBB14_20:                              # %cleanup
	movq	%rsi, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gdev_pcl_map_rgb_color, .Lfunc_end14-gdev_pcl_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_color_rgb,@function
gdev_pcl_map_color_rgb:                 # @gdev_pcl_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzwl	108(%rdi), %ecx
	cmpl	$15, %ecx
	jle	.LBB15_1
# BB#5:                                 # %entry
	cmpl	$16, %ecx
	je	.LBB15_11
# BB#6:                                 # %entry
	cmpl	$24, %ecx
	jne	.LBB15_7
# BB#12:                                # %sw.bb.93
	xorq	$16777215, %rax         # imm = 0xFFFFFF
	movq	%rax, %rcx
	shrq	$16, %rcx
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, (%rdx)
	movzbl	%ah, %ecx  # NOREX
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	movzbl	%al, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	jmp	.LBB15_13
.LBB15_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB15_2
# BB#9:                                 # %sw.bb
	xorl	$-2, %eax
	incl	%eax
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.LBB15_11:                              # %sw.bb.37
	notl	%eax
	movzwl	%ax, %ecx
	movl	%ecx, %esi
	shrl	$11, %esi
	imull	$2114, %esi, %esi       # imm = 0x842
	movl	%ecx, %edi
	shrl	$15, %edi
	orl	%esi, %edi
	movw	%di, (%rdx)
	shrl	$6, %ecx
	andl	$63, %ecx
	imull	$1040, %ecx, %esi       # imm = 0x410
	shrl	$2, %ecx
	orl	%esi, %ecx
	movw	%cx, 2(%rdx)
	andl	$31, %eax
	imull	$2114, %eax, %ecx       # imm = 0x842
	shrl	$4, %eax
	orl	%ecx, %eax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB15_7:                               # %entry
	cmpl	$32, %ecx
	jne	.LBB15_14
# BB#8:                                 # %sw.bb.131
	movq	%rax, %rcx
	shrq	$24, %rcx
	imull	$-257, %ecx, %ecx       # imm = 0xFFFFFFFFFFFFFEFF
	movl	%eax, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, (%rdx)
	movzbl	%ah, %esi  # NOREX
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, 2(%rdx)
	movzbl	%al, %eax
	imull	$-257, %eax, %eax       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rax), %eax
	jmp	.LBB15_13
.LBB15_2:                               # %entry
	cmpl	$8, %ecx
	jne	.LBB15_14
# BB#3:                                 # %sw.bb.6
	cmpl	$3, 100(%rdi)
	jl	.LBB15_10
# BB#4:                                 # %if.then
	movzwl	%ax, %eax
	xorl	$7, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, (%rdx)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, 2(%rdx)
	shrl	$2, %eax
	negl	%eax
.LBB15_13:                              # %sw.epilog
	movw	%ax, 4(%rdx)
.LBB15_14:                              # %sw.epilog
	xorl	%eax, %eax
	retq
.LBB15_10:                              # %if.else
	xorl	$255, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	gdev_pcl_map_color_rgb, .Lfunc_end15-gdev_pcl_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	cdj_get_params,@function
cdj_get_params:                         # @cdj_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	leaq	18480(%rbx), %rdx
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB16_3
# BB#2:                                 # %lor.lhs.false.3
	leaq	18484(%rbx), %rdx
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB16_3
# BB#4:                                 # %lor.lhs.false.6
	addq	$18488, %rbx            # imm = 0x4838
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB16_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	cdj_get_params, .Lfunc_end16-cdj_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	cdj_put_params,@function
cdj_put_params:                         # @cdj_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 64
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18480(%r14), %r15d
	movl	18484(%r14), %r12d
	movl	18488(%r14), %r13d
	leaq	4(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB17_1
# BB#3:                                 # %sw.bb.1.i
	movl	4(%rsp), %r15d
	movl	$1, %ebp
	cmpl	$10, %r15d
	jb	.LBB17_5
# BB#4:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	$.L.str.22, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %r15d
	jmp	.LBB17_5
.LBB17_1:                               # %entry
	cmpl	$1, %ebp
	jne	.LBB17_5
# BB#2:                                 # %sw.bb.i
	xorl	%ebp, %ebp
.LBB17_5:                               # %cdj_put_param_int.exit
	leaq	4(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB17_6
# BB#8:                                 # %sw.bb.1.i.25
	movl	4(%rsp), %r12d
	cmpl	$3, %r12d
	jb	.LBB17_10
# BB#9:                                 # %if.then.i.30
	movq	(%rbx), %rax
	movl	$.L.str.23, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %r12d
.LBB17_10:                              # %if.end.i.31
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB17_11
.LBB17_6:                               # %cdj_put_param_int.exit
	cmpl	$1, %eax
	je	.LBB17_11
# BB#7:
	movl	%eax, %ebp
.LBB17_11:                              # %cdj_put_param_int.exit33
	leaq	4(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB17_12
# BB#14:                                # %sw.bb.1.i.40
	movl	4(%rsp), %r13d
	leal	-1(%r13), %eax
	cmpl	$3, %eax
	jb	.LBB17_16
# BB#15:                                # %if.then.i.45
	movq	(%rbx), %rax
	movl	$.L.str.24, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %r13d
.LBB17_16:                              # %if.end.i.48
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB17_17
.LBB17_12:                              # %cdj_put_param_int.exit33
	cmpl	$1, %eax
	je	.LBB17_17
# BB#13:
	movl	%eax, %ebp
.LBB17_17:                              # %cdj_put_param_int.exit50
	leaq	4(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB17_18
# BB#21:                                # %sw.bb.1.i.57
	movl	4(%rsp), %edx
	leal	-1(%rdx), %eax
	cmpl	$32, %eax
	jb	.LBB17_23
# BB#22:                                # %if.then.i.62
	movq	(%rbx), %rax
	movl	$.L.str.25, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %edx
.LBB17_23:                              # %if.end.i.65
	testl	%ebp, %ebp
	jns	.LBB17_24
	jmp	.LBB17_26
.LBB17_18:                              # %cdj_put_param_int.exit50
	cmpl	$1, %eax
	jne	.LBB17_20
# BB#19:                                # %sw.bb.i.53
	movl	%ebp, %eax
.LBB17_20:                              # %cdj_put_param_int.exit67
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.LBB17_26
.LBB17_24:                              # %if.end
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%edx, %ecx
	callq	cdj_put_param_bpp
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_26
# BB#25:                                # %if.end.10
	movl	%r15d, 18480(%r14)
	movl	%r12d, 18484(%r14)
	movl	%r13d, 18488(%r14)
	xorl	%ebp, %ebp
.LBB17_26:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cdj_put_params, .Lfunc_end17-cdj_put_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	cdj_set_bpp,@function
cdj_set_bpp:                            # @cdj_set_bpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 80
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	jne	.LBB18_10
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	je	.LBB18_10
# BB#2:                                 # %if.then
	cmpw	$0, 18472(%rbx)
	je	.LBB18_11
# BB#3:                                 # %if.then.2
	movl	$1, %ebp
	cmpl	$1, %r14d
	je	.LBB18_12
# BB#4:                                 # %if.then.2
	cmpl	$4, %r14d
	jne	.LBB18_5
# BB#7:                                 # %sw.bb.4
	movzwl	108(%rbx), %eax
	cmpl	$32, %eax
	ja	.LBB18_9
# BB#8:                                 # %sw.bb.4
	movabsq	$4311810304, %rcx       # imm = 0x101010100
	btq	%rax, %rcx
	jb	.LBB18_11
.LBB18_9:                               # %sw.default.6
	movl	18476(%rbx), %ebp
.LBB18_10:                              # %if.end.8
	testl	%ebp, %ebp
	jne	.LBB18_12
.LBB18_11:                              # %if.then.11
	movzwl	108(%rbx), %ebp
.LBB18_12:                              # %if.end.14
	cmpw	$0, 18472(%rbx)
	jns	.LBB18_15
# BB#13:                                # %if.then.19
	movq	$gdev_cmyk_map_cmyk_color, 1552(%rbx)
	movq	$0, 1184(%rbx)
	movq	$gdev_cmyk_map_color_cmyk, 1560(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB18_15
# BB#14:                                # %if.then.23
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB18_15:                              # %if.end.25
	cmpl	$15, %ebp
	jg	.LBB18_20
# BB#16:                                # %if.end.25
	cmpl	$1, %ebp
	je	.LBB18_42
# BB#17:                                # %if.end.25
	cmpl	$3, %ebp
	jne	.LBB18_18
# BB#51:                                # %sw.bb.103
	movl	$3, %ebp
	cmpw	$0, 18472(%rbx)
	je	.LBB18_49
# BB#52:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_20:                              # %if.end.25
	cmpl	$32, %ebp
	je	.LBB18_24
# BB#21:                                # %if.end.25
	cmpl	$24, %ebp
	jne	.LBB18_22
# BB#27:                                # %sw.bb.37
	movzwl	18472(%rbx), %eax
	testl	$-5, %r14d
	movl	$24, %ebp
	je	.LBB18_48
# BB#28:                                # %sw.bb.37
	testw	%ax, %ax
	je	.LBB18_48
# BB#29:                                # %if.else
	cmpl	$1, %r14d
	jne	.LBB18_31
# BB#30:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_42:                              # %sw.bb.79
	cmpl	$1, %r14d
	jne	.LBB18_43
# BB#44:                                # %if.end.83
	movw	18472(%rbx), %ax
	movl	$1, %ebp
	testw	%ax, %ax
	jne	.LBB18_45
	jmp	.LBB18_60
.LBB18_18:                              # %if.end.25
	cmpl	$8, %ebp
	jne	.LBB18_19
# BB#32:                                # %sw.bb.53
	movw	18472(%rbx), %ax
	movl	$8, %ebp
	testw	%ax, %ax
	je	.LBB18_49
# BB#33:                                # %if.then.56
	movl	$8, %ebp
	testl	%r14d, %r14d
	je	.LBB18_48
# BB#34:                                # %if.then.58
	movl	$8, %ebp
	cmpl	$1, %r14d
	je	.LBB18_45
# BB#35:                                # %if.then.58
	cmpl	$4, %r14d
	je	.LBB18_48
# BB#36:                                # %if.then.58
	cmpl	$3, %r14d
	jne	.LBB18_37
# BB#38:                                # %sw.epilog.109.thread
	movw	$-1, 18472(%rbx)
	movl	$3, %ebp
	jmp	.LBB18_39
.LBB18_22:                              # %if.end.25
	cmpl	$16, %ebp
	jne	.LBB18_23
.LBB18_24:                              # %sw.bb.26
	movw	18472(%rbx), %ax
	testw	%ax, %ax
	je	.LBB18_48
# BB#25:                                # %switch.early.test
	movl	%r14d, %ecx
	orl	$4, %ecx
	cmpl	$4, %ecx
	je	.LBB18_48
# BB#26:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_5:                               # %if.then.2
	movl	$-15, %eax
	cmpl	$3, %r14d
	jne	.LBB18_70
# BB#6:                                 # %sw.bb.3
	movl	$24, %ebp
	jmp	.LBB18_12
.LBB18_43:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_19:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_23:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_45:                              # %land.lhs.true.87
	movzwl	108(%rbx), %ecx
	cmpl	%ecx, %ebp
	je	.LBB18_48
# BB#46:                                # %if.then.93
	movq	$0, 1264(%rbx)
	movq	$gdev_cmyk_map_rgb_color, 1184(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB18_48
# BB#47:                                # %if.then.99
	movq	%rbx, %rdi
	callq	gs_closedevice
	movzwl	18472(%rbx), %eax
.LBB18_48:                              # %sw.epilog.109
	movzwl	%ax, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jne	.LBB18_49
	jmp	.LBB18_39
.LBB18_31:                              # %sw.epilog.109.thread126
	movw	$-1, 18472(%rbx)
	movl	$24, %ebp
.LBB18_39:                              # %if.then.114
	movq	$0, 1264(%rbx)
	movq	$gdev_pcl_map_rgb_color, 1184(%rbx)
	movq	$gdev_pcl_map_color_rgb, 1192(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB18_49
# BB#40:                                # %if.end.124
	movq	%rbx, %rdi
	callq	gs_closedevice
	cmpl	$0, 84(%rbx)
	je	.LBB18_49
# BB#41:                                # %if.then.127
	movq	1096(%rbx), %rax
	movq	%rax, 32(%rsp)
	movdqu	1064(%rbx), %xmm0
	movdqu	1080(%rbx), %xmm1
	movdqa	%xmm1, 16(%rsp)
	movdqa	%xmm0, (%rsp)
	movl	832(%rbx), %edx
	movl	836(%rbx), %ecx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gdev_prn_reallocate_memory
	testl	%eax, %eax
	js	.LBB18_70
.LBB18_49:                              # %if.end.135
	movl	%r14d, %ecx
	movl	$-15, %eax
	cmpl	$4, %r14d
	ja	.LBB18_70
# BB#50:                                # %if.end.135
	jmpq	*.LJTI18_0(,%rcx,8)
.LBB18_53:                              # %sw.bb.136
	cmpl	$1, %ebp
	je	.LBB18_60
# BB#54:                                # %sw.bb.136
	cmpl	$8, %ebp
	movl	$-15, %eax
	je	.LBB18_60
	jmp	.LBB18_70
.LBB18_55:                              # %sw.bb.144
	cmpl	$8, %ebp
	jl	.LBB18_57
# BB#56:                                # %sw.bb.144
	movzwl	18472(%rbx), %eax
	testw	%ax, %ax
	jne	.LBB18_61
.LBB18_57:                              # %sw.bb.153
	movl	%ebp, %eax
	cmpl	$32, %ebp
	jbe	.LBB18_59
# BB#58:
	movl	$-15, %eax
	jmp	.LBB18_70
.LBB18_59:                              # %sw.bb.153
	movabsq	$4311810314, %rcx       # imm = 0x10101010A
	btq	%rax, %rcx
	movl	$-15, %eax
	jae	.LBB18_70
.LBB18_60:                              # %sw.epilog.174thread-pre-split
	movzwl	18472(%rbx), %eax
.LBB18_61:                              # %sw.epilog.174
	testw	%ax, %ax
	je	.LBB18_68
# BB#62:                                # %if.then.177
	cmpl	$7, %ebp
	setg	%cl
	testw	%ax, %ax
	movzbl	%cl, %eax
	leal	1(%rax,%rax,2), %ecx
	leal	1(%rax,%rax), %edx
	cmovgl	%ecx, %edx
	testl	%r14d, %r14d
	cmovnel	%r14d, %edx
	movl	%edx, 100(%rbx)
	movl	$1, %esi
	cmpl	$1, %ebp
	movl	$1, %eax
	je	.LBB18_64
# BB#63:                                # %land.lhs.true.200
	cmpl	$1, %edx
	movl	$8, %eax
	cmovnel	%ebp, %eax
	cmpl	$8, %ebp
	cmovgel	%ebp, %eax
.LBB18_64:                              # %if.end.211
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movl	%edi, 116(%rbx)
	cmpl	$7, %eax
	movl	$255, %ecx
	cmovlel	%esi, %ecx
	movl	%ecx, 112(%rbx)
	cmpl	$1, %edx
	jne	.LBB18_67
# BB#65:                                # %if.then.218
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$7, %eax
	jmp	.LBB18_66
.LBB18_68:                              # %if.else.247
	cmpl	$8, %ebp
	setne	%al
	cmpl	$7, %ebp
	setg	%cl
	cmpl	$1, %ebp
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	cmovel	%ebp, %eax
	movl	%eax, 100(%rbx)
	setg	%al
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	movl	$2, %ecx
	movd	%ecx, %xmm1
	movl	$1, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	addl	%eax, %eax
	movd	%eax, %xmm3
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pandn	%xmm2, %xmm1
	pand	.LCPI18_0(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 112(%rbx)
	movl	%ebp, %eax
	jmp	.LBB18_69
.LBB18_67:                              # %if.else.231
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$8, %eax
.LBB18_66:                              # %if.end.282
	movl	$256, %edx              # imm = 0x100
	movl	$2, %esi
	cmovgl	%edx, %esi
	movl	%esi, 120(%rbx)
	cmovgl	%edx, %ecx
	movl	%ecx, 124(%rbx)
.LBB18_69:                              # %if.end.282
	leal	-2(%rax), %ecx
	cmpl	$6, %ecx
	movw	$8, %cx
	cmovaew	%ax, %cx
	movw	%cx, 108(%rbx)
	xorl	%eax, %eax
.LBB18_70:                              # %cleanup.294
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_37:
	movl	$-15, %eax
	jmp	.LBB18_70
.Lfunc_end18:
	.size	cdj_set_bpp, .Lfunc_end18-cdj_set_bpp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_60
	.quad	.LBB18_53
	.quad	.LBB18_70
	.quad	.LBB18_57
	.quad	.LBB18_55

	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_cmyk_color,@function
gdev_cmyk_map_cmyk_color:               # @gdev_cmyk_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %eax
	movzwl	4(%rsi), %r9d
	movzwl	6(%rsi), %esi
	movzwl	108(%rdi), %edx
	cmpl	$1, %edx
	jne	.LBB19_2
# BB#1:                                 # %sw.bb
	orl	%r8d, %eax
	orl	%r9d, %eax
	orl	%esi, %eax
	shrl	$15, %eax
	retq
.LBB19_2:                               # %sw.default
	shrl	$2, %edx
	movl	$1, %r11d
	movl	$1, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	decl	%edi
	movl	$16, %ecx
	subl	%edx, %ecx
	shll	%cl, %edi
	incl	%edi
	movl	$32, %r10d
	subl	%edx, %r10d
	movl	$31, %ecx
	subl	%edx, %ecx
	shll	%cl, %r11d
	imull	%edi, %esi
	addl	%r11d, %esi
	movb	%r10b, %cl
	shrl	%cl, %esi
	leal	(%rdx,%rdx,2), %ecx
	shlq	%cl, %rsi
	imull	%edi, %r8d
	addl	%r11d, %r8d
	movb	%r10b, %cl
	shrl	%cl, %r8d
	movl	%edx, %ecx
	addl	%ecx, %ecx
	shlq	%cl, %r8
	imull	%edi, %eax
	addl	%r11d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	movb	%dl, %cl
	shlq	%cl, %rax
	imull	%r9d, %edi
	addl	%r11d, %edi
	movb	%r10b, %cl
	shrl	%cl, %edi
	orq	%r8, %rdi
	orq	%rsi, %rdi
	orq	%rdi, %rax
	retq
.Lfunc_end19:
	.size	gdev_cmyk_map_cmyk_color, .Lfunc_end19-gdev_cmyk_map_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_cmyk_map_color_cmyk,@function
gdev_cmyk_map_color_cmyk:               # @gdev_cmyk_map_color_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
.Ltmp59:
	.cfi_offset %rbx, -24
.Ltmp60:
	.cfi_offset %r14, -16
	movq	%rdx, %r8
	movzwl	108(%rdi), %r10d
	cmpl	$8, %r10d
	jne	.LBB20_1
# BB#3:                                 # %sw.bb.2
	cmpl	$1, 100(%rdi)
	jne	.LBB20_5
# BB#4:                                 # %if.then
	xorl	$255, %esi
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, (%r8)
	jmp	.LBB20_6
.LBB20_1:                               # %entry
	cmpl	$1, %r10d
	jne	.LBB20_5
# BB#2:                                 # %sw.bb
	movl	$1, %eax
	subl	%esi, %eax
	imull	$65535, %eax, %eax      # imm = 0xFFFF
	movw	%ax, (%r8)
	jmp	.LBB20_6
.LBB20_5:                               # %sw.default
	shrl	$2, %r10d
	leaq	(%r10,%r10), %r9
	movzbl	.L.str.21(%r10,%r10), %eax
	shll	$8, %eax
	leal	1(%r9), %ecx
	movzbl	.L.str.21(%rcx), %edi
	orl	%eax, %edi
	movl	$16, %eax
	xorl	%edx, %edx
	divq	%r10
	movq	%r10, %rax
	subq	%rdx, %rax
	xorl	%edx, %edx
	divq	%r10
	movq	%rdx, %r14
	leal	(%r10,%r10,2), %ecx
	movq	%rsi, %rax
	shrq	%cl, %rax
	movl	$1, %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	decl	%edx
	andl	%edx, %eax
	imull	%edi, %eax
	movzwl	%ax, %r11d
	movb	%r14b, %cl
	shrl	%cl, %r11d
	movq	%rsi, %rax
	movb	%r9b, %cl
	shrq	%cl, %rax
	andl	%edx, %eax
	imull	%edi, %eax
	movzwl	%ax, %eax
	movb	%r14b, %cl
	shrl	%cl, %eax
	movq	%rsi, %rbx
	movb	%r10b, %cl
	shrq	%cl, %rbx
	andl	%edx, %ebx
	imull	%edi, %ebx
	movzwl	%bx, %ebx
	movb	%r14b, %cl
	shrl	%cl, %ebx
	andl	%edx, %esi
	imull	%edi, %esi
	movzwl	%si, %edx
	movb	%r14b, %cl
	shrl	%cl, %edx
	movw	%ax, (%r8)
	movw	%bx, 2(%r8)
	movw	%dx, 4(%r8)
	movw	%r11w, 6(%r8)
.LBB20_6:                               # %sw.epilog
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end20:
	.size	gdev_cmyk_map_color_cmyk, .Lfunc_end20-gdev_cmyk_map_color_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_cmyk_map_rgb_color,@function
gdev_cmyk_map_rgb_color:                # @gdev_cmyk_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movl	%edx, %eax
	andl	%r8d, %eax
	andl	%ecx, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB21_5
# BB#1:                                 # %if.else
	notl	%r8d
	notl	%edx
	notl	%ecx
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$8, %esi
	jne	.LBB21_2
# BB#4:                                 # %sw.bb.24
	movzwl	%r8w, %eax
	imulq	$300, %rax, %rax        # imm = 0x12C
	movzwl	%dx, %edx
	imulq	$590, %rdx, %rdx        # imm = 0x24E
	addq	%rax, %rdx
	movzwl	%cx, %eax
	imulq	$110, %rax, %rax
	addq	%rdx, %rax
	shrq	$18, %rax
	jmp	.LBB21_5
.LBB21_2:                               # %if.else
	cmpl	$1, %esi
	jne	.LBB21_5
# BB#3:                                 # %sw.bb
	orl	%r8d, %edx
	orl	%edx, %ecx
	andl	$32768, %ecx            # imm = 0x8000
	shrl	$15, %ecx
	movq	%rcx, %rax
	retq
.LBB21_5:                               # %cleanup
	retq
.Lfunc_end21:
	.size	gdev_cmyk_map_rgb_color, .Lfunc_end21-gdev_cmyk_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	cdj_put_param_bpp,@function
cdj_put_param_bpp:                      # @cdj_put_param_bpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	%r13d, %eax
	orl	%r14d, %eax
	je	.LBB22_16
# BB#1:                                 # %if.else
	movl	100(%rbx), %ecx
	movw	108(%rbx), %ax
	movzwl	%ax, %edx
	cmpl	$3, %ecx
	jne	.LBB22_2
# BB#3:                                 # %if.else
	movzwl	%ax, %eax
	cmpl	$8, %eax
	jne	.LBB22_2
# BB#4:                                 # %land.lhs.true.7
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	$3, %eax
	cmpw	$0, 18472(%rbx)
	je	.LBB22_6
# BB#5:                                 # %select.mid
	movl	%edx, %eax
.LBB22_6:                               # %select.end
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jmp	.LBB22_7
.LBB22_16:                              # %if.then
	movq	%rbx, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_prn_put_params     # TAILCALL
.LBB22_2:
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	%ecx, (%rsp)            # 4-byte Spill
.LBB22_7:                               # %if.end
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	cdj_set_bpp
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_8
# BB#9:                                 # %if.end.17
	movw	%r14w, 108(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_10
# BB#11:                                # %if.end.27
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	cdj_set_bpp
	movzwl	108(%rbx), %eax
	cmpl	4(%rsp), %eax           # 4-byte Folded Reload
	jne	.LBB22_14
# BB#12:                                # %lor.lhs.false
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	je	.LBB22_15
# BB#13:                                # %lor.lhs.false
	cmpl	%r13d, (%rsp)           # 4-byte Folded Reload
	je	.LBB22_15
.LBB22_14:                              # %land.lhs.true.40
	xorl	%ebp, %ebp
	cmpl	$0, 84(%rbx)
	je	.LBB22_15
# BB#17:                                # %if.then.42
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_closedevice          # TAILCALL
.LBB22_8:                               # %if.then.12
	movq	(%r15), %rax
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	(%r15), %rax
	movl	$.L.str.26, %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB22_15
.LBB22_10:                              # %if.then.24
	movq	%rbx, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	callq	cdj_set_bpp
.LBB22_15:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	cdj_put_param_bpp, .Lfunc_end22-cdj_put_param_bpp
	.cfi_endproc

	.align	16, 0x90
	.type	dj550c_open,@function
dj550c_open:                            # @dj550c_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB23_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB23_2
.LBB23_3:                               # %if.end.7.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.dj_a4, %eax
	movl	$hp_colour_open.dj_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB23_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end23:
	.size	dj550c_open, .Lfunc_end23-dj550c_open
	.cfi_endproc

	.align	16, 0x90
	.type	dj505j_open,@function
dj505j_open:                            # @dj505j_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	100(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB24_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB24_4
# BB#2:                                 # %if.then.i.if.end.7.i_crit_edge
	movl	100(%rbx), %eax
.LBB24_3:                               # %if.end.7.i
	cmpl	$1, %eax
	movl	$hp_colour_open.dj_505jc, %eax
	movl	$hp_colour_open.dj_505j, %esi
	cmovgq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB24_4:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end24:
	.size	dj505j_open, .Lfunc_end24-dj505j_open
	.cfi_endproc

	.align	16, 0x90
	.type	pj_open,@function
pj_open:                                # @pj_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB25_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB25_2
.LBB25_3:                               # %if.end.7.i
	movl	$hp_colour_open.pj_all, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB25_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end25:
	.size	pj_open, .Lfunc_end25-pj_open
	.cfi_endproc

	.align	16, 0x90
	.type	pj_put_params,@function
pj_put_params:                          # @pj_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp82:
	.cfi_def_cfa_offset 32
.Ltmp83:
	.cfi_offset %rbx, -24
.Ltmp84:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	4(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	xorl	%edx, %edx
	cmpl	$1, %eax
	je	.LBB26_5
# BB#1:                                 # %entry
	testl	%eax, %eax
	jne	.LBB26_4
# BB#2:                                 # %sw.bb.1.i
	movl	4(%rsp), %edx
	leal	-1(%rdx), %eax
	cmpl	$32, %eax
	jb	.LBB26_5
# BB#3:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	$.L.str.25, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %edx
	jmp	.LBB26_5
.LBB26_4:                               # %cdj_put_param_int.exit
	xorl	%edx, %edx
	testl	%eax, %eax
	js	.LBB26_6
.LBB26_5:                               # %if.end
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%edx, %ecx
	callq	cdj_put_param_bpp
.LBB26_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end26:
	.size	pj_put_params, .Lfunc_end26-pj_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	dnj650c_open,@function
dnj650c_open:                           # @dnj650c_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB27_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB27_2
.LBB27_3:                               # %if.end.7.i
	movl	$hp_colour_open.dnj_all, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB27_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end27:
	.size	dnj650c_open, .Lfunc_end27-dnj650c_open
	.cfi_endproc

	.align	16, 0x90
	.type	lj4dith_open,@function
lj4dith_open:                           # @lj4dith_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB28_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB28_2
.LBB28_3:                               # %if.end.7.i
	movl	$hp_colour_open.lj4_all, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB28_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end28:
	.size	lj4dith_open, .Lfunc_end28-lj4dith_open
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl_open,@function
pjxl_open:                              # @pjxl_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB29_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB29_2
.LBB29_3:                               # %if.end.7.i
	movl	$hp_colour_open.pj_all, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB29_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end29:
	.size	pjxl_open, .Lfunc_end29-pjxl_open
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl_get_params,@function
pjxl_get_params:                        # @pjxl_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 32
.Ltmp94:
	.cfi_offset %rbx, -24
.Ltmp95:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB30_2
# BB#1:                                 # %lor.lhs.false
	leaq	18484(%rbx), %rdx
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB30_2
# BB#3:                                 # %lor.lhs.false.3
	addq	$18488, %rbx            # imm = 0x4838
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB30_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end30:
	.size	pjxl_get_params, .Lfunc_end30-pjxl_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl_put_params,@function
pjxl_put_params:                        # @pjxl_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 64
.Ltmp102:
	.cfi_offset %rbx, -48
.Ltmp103:
	.cfi_offset %r12, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18484(%r14), %r12d
	movl	18488(%r14), %r15d
	leaq	4(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB31_1
# BB#3:                                 # %sw.bb.1.i
	movl	4(%rsp), %r12d
	leal	1(%r12), %eax
	movl	$1, %ebp
	cmpl	$3, %eax
	jb	.LBB31_5
# BB#4:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	$.L.str.27, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	4(%rsp), %r12d
	jmp	.LBB31_5
.LBB31_1:                               # %entry
	cmpl	$1, %ebp
	jne	.LBB31_5
# BB#2:                                 # %sw.bb.i
	xorl	%ebp, %ebp
.LBB31_5:                               # %cdj_put_param_int.exit
	leaq	8(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB31_6
# BB#8:                                 # %sw.bb.1.i.23
	movl	8(%rsp), %r15d
	cmpl	$11, %r15d
	jb	.LBB31_10
# BB#9:                                 # %if.then.i.28
	movq	(%rbx), %rax
	movl	$.L.str.28, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	8(%rsp), %r15d
.LBB31_10:                              # %if.end.i.29
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB31_11
.LBB31_6:                               # %cdj_put_param_int.exit
	cmpl	$1, %eax
	je	.LBB31_11
# BB#7:
	movl	%eax, %ebp
.LBB31_11:                              # %cdj_put_param_int.exit31
	leaq	12(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB31_12
# BB#15:                                # %sw.bb.1.i.38
	movl	12(%rsp), %edx
	leal	-1(%rdx), %eax
	cmpl	$32, %eax
	jb	.LBB31_17
# BB#16:                                # %if.then.i.43
	movq	(%rbx), %rax
	movl	$.L.str.25, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	12(%rsp), %edx
.LBB31_17:                              # %if.end.i.46
	testl	%ebp, %ebp
	jns	.LBB31_18
	jmp	.LBB31_20
.LBB31_12:                              # %cdj_put_param_int.exit31
	cmpl	$1, %eax
	jne	.LBB31_14
# BB#13:                                # %sw.bb.i.34
	movl	%ebp, %eax
.LBB31_14:                              # %cdj_put_param_int.exit48
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.LBB31_20
.LBB31_18:                              # %if.end
	leal	-1(%rdx), %eax
	cmpl	$15, %eax
	movl	$24, %ecx
	cmovael	%edx, %ecx
	testl	%r15d, %r15d
	cmovlel	%edx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cdj_put_param_bpp
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_20
# BB#19:                                # %if.end.15
	movl	%r12d, 18484(%r14)
	movl	%r15d, 18488(%r14)
	xorl	%ebp, %ebp
.LBB31_20:                              # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pjxl_put_params, .Lfunc_end31-pjxl_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pjxl300_open,@function
pjxl300_open:                           # @pjxl300_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB32_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB32_2
.LBB32_3:                               # %if.end.7.i
	movl	$hp_colour_open.pj_all, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB32_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end32:
	.size	pjxl300_open, .Lfunc_end32-pjxl300_open
	.cfi_endproc

	.align	16, 0x90
	.type	escp_open,@function
escp_open:                              # @escp_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB33_3
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB33_2
.LBB33_3:                               # %if.end.7.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.ep_a4, %eax
	movl	$hp_colour_open.ep_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.LBB33_2:                               # %hp_colour_open.exit
	popq	%rbx
	retq
.Lfunc_end33:
	.size	escp_open, .Lfunc_end33-escp_open
	.cfi_endproc

	.align	16, 0x90
	.type	bjc_open,@function
bjc_open:                               # @bjc_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 32
.Ltmp114:
	.cfi_offset %rbx, -32
.Ltmp115:
	.cfi_offset %r14, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	18484(%rbx), %ebp
	cmpl	$0, 100(%rbx)
	jne	.LBB34_2
# BB#1:                                 # %if.then.i
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB34_19
.LBB34_2:                               # %if.end.7.i
	xorl	%r14d, %r14d
	movl	%ebp, %eax
	cmpl	$11, %ebp
	ja	.LBB34_18
# BB#3:                                 # %if.end.7.i
	jmpq	*.LJTI34_0(,%rax,8)
.LBB34_9:                               # %sw.bb.19.i
	movl	$hp_colour_open.pj_all, %r14d
	jmp	.LBB34_18
.LBB34_19:                              # %hp_colour_open.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB34_4:                               # %sw.bb.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.dj_a4, %eax
	movl	$hp_colour_open.dj_letter, %r14d
	cmoveq	%rax, %r14
	jmp	.LBB34_18
.LBB34_11:                              # %sw.bb.25.i
	movl	$hp_colour_open.bjc_letter, %r14d
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$30, %eax
	ja	.LBB34_14
# BB#12:                                # %sw.bb.25.i
	movl	$1744830464, %ecx       # imm = 0x68000000
	btl	%eax, %ecx
	jae	.LBB34_13
# BB#20:                                # %sw.bb.28.i
	movl	$hp_colour_open.bjc_a3, %r14d
	jmp	.LBB34_15
.LBB34_5:                               # %sw.bb.11.i
	movl	$hp_colour_open.dj_505jc, %r14d
	cmpl	$1, 100(%rbx)
	jg	.LBB34_18
# BB#6:                                 # %select.mid
	movl	$hp_colour_open.dj_505j, %r14d
	jmp	.LBB34_18
.LBB34_7:                               # %sw.bb.17.i
	movl	$hp_colour_open.dnj_all, %r14d
	jmp	.LBB34_18
.LBB34_8:                               # %sw.bb.18.i
	movl	$hp_colour_open.lj4_all, %r14d
	jmp	.LBB34_18
.LBB34_10:                              # %sw.bb.20.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.ep_a4, %eax
	movl	$hp_colour_open.ep_letter, %r14d
	cmoveq	%rax, %r14
	jmp	.LBB34_18
.LBB34_13:                              # %sw.bb.25.i
	movl	$12, %ecx
	btl	%eax, %ecx
	jb	.LBB34_15
.LBB34_14:                              # %sw.default.i
	movl	$hp_colour_open.bjc_a4, %r14d
.LBB34_15:                              # %sw.epilog.i
	cmpl	$11, %ebp
	jne	.LBB34_17
# BB#16:                                # %if.then.31.i
	movl	$1049434676, 4(%r14)    # imm = 0x3E8D1A34
.LBB34_17:                              # %if.end.32.i
	movl	12(%r14), %eax
	movl	%eax, 18488(%rbx)
.LBB34_18:                              # %sw.epilog.34.i
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end34:
	.size	bjc_open, .Lfunc_end34-bjc_open
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI34_0:
	.quad	.LBB34_4
	.quad	.LBB34_4
	.quad	.LBB34_5
	.quad	.LBB34_9
	.quad	.LBB34_9
	.quad	.LBB34_9
	.quad	.LBB34_18
	.quad	.LBB34_7
	.quad	.LBB34_8
	.quad	.LBB34_10
	.quad	.LBB34_11
	.quad	.LBB34_11

	.text
	.align	16, 0x90
	.type	bjc_get_params,@function
bjc_get_params:                         # @bjc_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp120:
	.cfi_def_cfa_offset 112
.Ltmp121:
	.cfi_offset %rbx, -32
.Ltmp122:
	.cfi_offset %r14, -24
.Ltmp123:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_prn_get_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB35_24
# BB#1:                                 # %if.end
	leaq	18492(%r15), %rdx
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movq	bjc_mediaTypeStrings(%rip), %rdi
	movl	$bjc_mediaTypeStrings+16, %eax
	testq	%rdi, %rdi
	je	.LBB35_25
# BB#2:
	movl	18496(%r15), %ecx
	.align	16, 0x90
.LBB35_4:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rax)
	je	.LBB35_5
# BB#3:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	(%rax), %rdi
	addq	$16, %rax
	testq	%rdi, %rdi
	jne	.LBB35_4
.LBB35_25:                              # %if.then.i
	movq	$0, 64(%rsp)
	movq	(%r14), %rax
	movl	$.L.str.30, %esi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB35_6
.LBB35_5:                               # %if.else.i
	movq	%rdi, 64(%rsp)
	callq	strlen
	movl	%eax, 72(%rsp)
	movl	$1, 76(%rsp)
.LBB35_6:                               # %get_param_string.exit
	leaq	64(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movl	$bjc800_printQualityStrings, %eax
	cmpl	$11, 18484(%r15)
	je	.LBB35_8
# BB#7:                                 # %select.mid
	movl	$bjc600_printQualityStrings, %eax
.LBB35_8:                               # %select.end
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB35_26
# BB#9:                                 # %for.body.i.i.44.preheader
	movl	18508(%r15), %ecx
	addq	$16, %rax
	.align	16, 0x90
.LBB35_11:                              # %for.body.i.i.44
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rax)
	je	.LBB35_12
# BB#10:                                # %for.cond.i.i.39
                                        #   in Loop: Header=BB35_11 Depth=1
	movq	(%rax), %rdi
	addq	$16, %rax
	testq	%rdi, %rdi
	jne	.LBB35_11
.LBB35_26:                              # %if.then.i.49
	movq	$0, 48(%rsp)
	movq	(%r14), %rax
	movl	$.L.str.27, %esi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB35_13
.LBB35_12:                              # %if.else.i.55
	movq	%rdi, 48(%rsp)
	callq	strlen
	movl	%eax, 56(%rsp)
	movl	$1, 60(%rsp)
.LBB35_13:                              # %get_param_string.exit59
	leaq	48(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movq	bjc_ditheringTypeStrings(%rip), %rdi
	movl	$bjc_ditheringTypeStrings+16, %eax
	testq	%rdi, %rdi
	je	.LBB35_27
# BB#14:
	movl	18512(%r15), %ecx
	.align	16, 0x90
.LBB35_16:                              # %for.body.i.i.68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rax)
	je	.LBB35_17
# BB#15:                                # %for.cond.i.i.63
                                        #   in Loop: Header=BB35_16 Depth=1
	movq	(%rax), %rdi
	addq	$16, %rax
	testq	%rdi, %rdi
	jne	.LBB35_16
.LBB35_27:                              # %if.then.i.73
	movq	$0, 32(%rsp)
	movq	(%r14), %rax
	movl	$.L.str.31, %esi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB35_18
.LBB35_17:                              # %if.else.i.79
	movq	%rdi, 32(%rsp)
	callq	strlen
	movl	%eax, 40(%rsp)
	movl	$1, 44(%rsp)
.LBB35_18:                              # %get_param_string.exit83
	leaq	32(%rsp), %rdx
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18520(%r15), %rdx
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	cmpl	$0, 18500(%r15)
	je	.LBB35_20
# BB#19:                                # %cond.true
	leaq	18504(%r15), %rdx
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	callq	param_write_int
	jmp	.LBB35_21
.LBB35_20:                              # %cond.false
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB35_21:                              # %cond.end
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	cmpl	$11, 18484(%r15)
	je	.LBB35_23
# BB#22:                                # %if.then.27
	addq	$18524, %r15            # imm = 0x485C
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB35_23:                              # %if.end.33
	movl	$1, 4(%rsp)
	movl	$1074454856, 28(%rsp)   # imm = 0x400AE148
	movq	$.L.str.35, 8(%rsp)
	movl	$.L.str.35, %edi
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	28(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	4(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB35_24:                              # %cleanup
	movl	%ebx, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end35:
	.size	bjc_get_params, .Lfunc_end35-bjc_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI36_0:
	.long	1074454856              # float 2.17000008
	.text
	.align	16, 0x90
	.type	bjc_put_params,@function
bjc_put_params:                         # @bjc_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp130:
	.cfi_def_cfa_offset 272
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$0, 196(%rsp)
	movl	$1, 192(%rsp)
	cmpl	$11, 18484(%r15)
	jne	.LBB36_1
# BB#2:                                 # %if.else
	movups	18492(%r15), %xmm0
	movups	18508(%r15), %xmm1
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	leaq	112(%rsp), %r13
	jmp	.LBB36_3
.LBB36_1:                               # %if.then
	movl	18524(%r15), %eax
	movl	%eax, 176(%rsp)
	movups	18492(%r15), %xmm0
	movups	18508(%r15), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	leaq	144(%rsp), %r13
.LBB36_3:                               # %if.end
	leaq	200(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB36_4
# BB#7:                                 # %sw.bb.1.i
	movl	200(%rsp), %ecx
	leal	-1(%rcx), %eax
	cmpl	$32, %eax
	jb	.LBB36_9
# BB#8:                                 # %if.then.i
	movq	(%r14), %rax
	movl	$.L.str.25, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	200(%rsp), %ecx
.LBB36_9:                               # %cdj_put_param_int.exit.thread
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	$1, %eax
	jmp	.LBB36_10
.LBB36_4:                               # %if.end
	cmpl	$1, %eax
	jne	.LBB36_6
# BB#5:                                 # %sw.bb.i
	xorl	%eax, %eax
.LBB36_6:                               # %if.then.3
	movzwl	108(%r15), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB36_10:                              # %if.end.4
	leaq	96(%rsp), %rdx
	leaq	196(%rsp), %r8
	movl	$.L.str.26, %esi
	movl	$bjc_processColorsStrings, %ecx
	movq	%r14, %rdi
	movl	%eax, %r9d
	callq	put_param_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB36_12
# BB#11:                                # %if.then.8
	movl	100(%r15), %eax
	movl	%eax, 196(%rsp)
.LBB36_12:                              # %if.end.10
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB36_14
# BB#13:                                # %if.then.14
	movq	(%r14), %rax
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB36_14:                              # %if.end.16
	leaq	4(%r13), %r8
	leaq	80(%rsp), %rdx
	movl	$.L.str.30, %esi
	movl	$bjc_mediaTypeStrings, %ecx
	movq	%r14, %rdi
	movl	%ebp, %r9d
	callq	put_param_string
	movl	%eax, %ebp
	leaq	200(%rsp), %rdx
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB36_15
# BB#17:                                # %sw.bb.1.i.89
	movl	200(%rsp), %eax
	cmpl	$16, %eax
	jb	.LBB36_19
# BB#18:                                # %if.then.i.94
	movq	(%r14), %rax
	movl	$.L.str.32, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	200(%rsp), %eax
.LBB36_19:                              # %if.end.i.95
	movl	%eax, 28(%r13)
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovsl	%ebp, %eax
	jmp	.LBB36_20
.LBB36_15:                              # %if.end.16
	cmpl	$1, %eax
	jne	.LBB36_20
# BB#16:                                # %sw.bb.i.85
	movl	%ebp, %eax
.LBB36_20:                              # %cdj_put_param_int.exit97
	movl	$bjc800_printQualityStrings, %ecx
	cmpl	$11, 18484(%r15)
	movq	%r15, %rbx
	je	.LBB36_22
# BB#21:                                # %select.mid
	movl	$bjc600_printQualityStrings, %ecx
.LBB36_22:                              # %select.end
	leaq	16(%r13), %r8
	leaq	64(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	movl	%eax, %r9d
	callq	put_param_string
	leaq	20(%r13), %r8
	movq	%r8, 8(%rsp)            # 8-byte Spill
	leaq	48(%rsp), %rdx
	movl	$.L.str.31, %esi
	movl	$bjc_ditheringTypeStrings, %ecx
	movq	%r14, %rdi
	movl	%eax, %r9d
	callq	put_param_string
	movl	%eax, %r12d
	leaq	12(%r13), %r15
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_read_int
	cmpl	$1, %eax
	je	.LBB36_29
# BB#23:                                # %select.end
	testl	%eax, %eax
	jne	.LBB36_26
# BB#24:                                # %sw.bb
	movl	$-15, %ebp
	cmpl	$0, (%r15)
	jle	.LBB36_28
# BB#25:                                # %if.else.29
	movl	$1, 8(%r13)
	jmp	.LBB36_29
.LBB36_26:                              # %sw.default
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB36_27
.LBB36_28:                              # %mwe
	movq	(%r14), %rax
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r12d
	jmp	.LBB36_29
.LBB36_27:                              # %if.then.34
	movl	$0, 8(%r13)
.LBB36_29:                              # %sw.epilog
	movq	%rbx, %rax
	cmpl	$11, 18484(%rax)
	jne	.LBB36_31
# BB#30:
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB36_33
.LBB36_31:                              # %if.then.43
	movq	%rax, 16(%rsp)          # 8-byte Spill
	addq	$32, %r13
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB36_33
# BB#32:                                # %if.then.47
	movq	(%r14), %rax
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB36_33:                              # %if.end.52
	leaq	200(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	movl	$1, %r15d
	cmpl	$1, %ebp
	movl	$1, %eax
	je	.LBB36_38
# BB#34:                                # %if.end.52
	testl	%ebp, %ebp
	jne	.LBB36_36
# BB#35:                                # %land.lhs.true.i
	movss	200(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %ebp
	xorl	%eax, %eax
	ucomiss	.LCPI36_0(%rip), %xmm0
	jne	.LBB36_37
	jp	.LBB36_37
	jmp	.LBB36_38
.LBB36_36:                              # %sw.default.i
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	$1, %eax
	je	.LBB36_38
.LBB36_37:                              # %e.i
	movq	(%r14), %rax
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %eax
.LBB36_38:                              # %cdj_param_check_float.exit
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	movl	$.L.str.35, %edi
	callq	strlen
	movq	%rax, %r13
	leaq	200(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB36_45
# BB#39:                                # %cdj_param_check_float.exit
	testl	%ebp, %ebp
	jne	.LBB36_42
# BB#40:                                # %land.lhs.true.i.106
	movl	$-15, %ebp
	cmpl	%r13d, 208(%rsp)
	jne	.LBB36_44
# BB#41:                                # %land.lhs.true.2.i
	movq	200(%rsp), %rsi
	movl	%r13d, %edx
	movl	$.L.str.35, %edi
	callq	memcmp
	xorl	%r15d, %r15d
	jmp	.LBB36_43
.LBB36_42:                              # %sw.default.i.108
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_read_null
.LBB36_43:                              # %sw.default.i.108
	testl	%eax, %eax
	je	.LBB36_45
.LBB36_44:                              # %e.i.112
	movq	(%r14), %rax
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB36_45:                              # %cdj_param_check_bytes.exit
	leaq	192(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB36_46
# BB#47:                                # %if.else.84
	testl	%r15d, %r15d
	cmovsl	%r15d, %r12d
	cmpl	$1, 192(%rsp)
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB36_49
# BB#48:                                # %if.then.87
	movq	(%r14), %rax
	movl	$-15, %r12d
	movl	$.L.str.38, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB36_49
.LBB36_46:                              # %if.then.80
	movq	(%r14), %rax
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB36_49:                              # %if.end.92
	leaq	32(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB36_58
# BB#50:                                # %if.end.92
	testl	%ebp, %ebp
	jne	.LBB36_57
# BB#51:                                # %sw.bb.94
	movl	$-15, %ebp
	cmpl	$2, 40(%rsp)
	jne	.LBB36_57
# BB#52:                                # %if.else.98
	movq	32(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB36_53
# BB#54:                                # %lor.lhs.false
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jb	.LBB36_56
# BB#55:
	movl	%r12d, %ebp
	jmp	.LBB36_57
.LBB36_53:
	movl	%r12d, %ebp
	jmp	.LBB36_57
.LBB36_56:                              # %lor.lhs.false
	ucomiss	%xmm2, %xmm0
	movl	%r12d, %ebp
	jne	.LBB36_57
	jnp	.LBB36_59
.LBB36_57:                              # %hwre
	movq	(%r14), %rax
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r12d
.LBB36_58:                              # %sw.bb.146
	movq	$0, 32(%rsp)
.LBB36_59:                              # %sw.epilog.148
	movl	196(%rsp), %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %edx
	movl	%ebp, %ecx
	callq	cdj_put_param_bpp
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB36_66
# BB#60:                                # %if.end.157
	cmpl	$1, %ebp
	jne	.LBB36_62
# BB#61:                                # %if.then.160
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$0, (%rax)
.LBB36_62:                              # %if.end.162
	cmpl	$11, 18484(%rbx)
	jne	.LBB36_63
# BB#64:                                # %if.else.168
	movaps	112(%rsp), %xmm0
	movaps	128(%rsp), %xmm1
	jmp	.LBB36_65
.LBB36_63:                              # %if.then.166
	movl	176(%rsp), %eax
	movl	%eax, 18524(%rbx)
	movaps	144(%rsp), %xmm0
	movaps	160(%rsp), %xmm1
.LBB36_65:                              # %cleanup.171
	movups	%xmm1, 18508(%rbx)
	movups	%xmm0, 18492(%rbx)
.LBB36_66:                              # %cleanup.171
	movl	%r12d, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	bjc_put_params, .Lfunc_end36-bjc_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	put_param_string,@function
put_param_string:                       # @put_param_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp143:
	.cfi_def_cfa_offset 80
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	callq	param_read_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB37_1
# BB#2:                                 # %if.else
	cmpl	$1, %ebp
	jne	.LBB37_4
# BB#3:                                 # %if.then.3
	movq	$0, (%r14)
	movl	$0, 8(%r14)
	jmp	.LBB37_11
.LBB37_1:                               # %if.then
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB37_11
.LBB37_4:                               # %if.else.4
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB37_9
# BB#5:                                 # %for.body.lr.ph.i
	movq	(%r14), %r15
	movslq	8(%r14), %r14
	.align	16, 0x90
.LBB37_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB37_8
# BB#7:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB37_6 Depth=1
	cmpb	$0, (%rbp,%r14)
	je	.LBB37_10
.LBB37_8:                               # %for.inc.i
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	16(%rbx), %rbp
	addq	$16, %rbx
	testq	%rbp, %rbp
	jne	.LBB37_6
.LBB37_9:                               # %if.then.9
	movq	(%r13), %rax
	movl	$-15, %r15d
	movl	$-15, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*56(%rax)
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.13
	movl	8(%rbx), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	movl	12(%rsp), %r15d         # 4-byte Reload
.LBB37_11:                              # %if.end.15
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	put_param_string, .Lfunc_end37-put_param_string
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4634766966517661696     # double 72
.LCPI38_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI38_3:
	.quad	4602678819172646912     # double 0.5
.LCPI38_4:
	.quad	4619792497756654797     # double 7.2000000000000002
.LCPI38_5:
	.quad	-4623665593436193423    # double -0.33500000000000002
.LCPI38_6:
	.quad	4645040803167600640     # double 360
.LCPI38_7:
	.quad	4649544402794971136     # double 720
.LCPI38_8:
	.quad	4640537203540230144     # double 180
.LCPI38_9:
	.quad	4643985272004935680     # double 300
.LCPI38_12:
	.quad	-4637446608295947141    # double -0.040000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI38_2:
	.long	1092616192              # float 10
.LCPI38_10:
	.long	1142292480              # float 600
.LCPI38_11:
	.long	1149108224              # float 1016
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI38_13:
	.zero	16,3
.LCPI38_14:
	.zero	16,63
.LCPI38_15:
	.zero	16,15
.LCPI38_16:
	.zero	16,5
.LCPI38_17:
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
.LCPI38_18:
	.zero	16,192
.LCPI38_19:
	.zero	16,240
.LCPI38_20:
	.zero	16,48
.LCPI38_21:
	.zero	16,1
.LCPI38_22:
	.zero	16,2
.LCPI38_23:
	.zero	16,4
.LCPI38_24:
	.zero	16,8
.LCPI38_25:
	.zero	16,16
.LCPI38_26:
	.zero	16,32
.LCPI38_27:
	.zero	16,64
.LCPI38_28:
	.zero	16,128
	.text
	.align	16, 0x90
	.type	hp_colour_print_page,@function
hp_colour_print_page:                   # @hp_colour_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp154:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 56
	subq	$3160, %rsp             # imm = 0xC58
.Ltmp156:
	.cfi_def_cfa_offset 3216
.Ltmp157:
	.cfi_offset %rbx, -56
.Ltmp158:
	.cfi_offset %r12, -48
.Ltmp159:
	.cfi_offset %r13, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 712(%rsp)         # 8-byte Spill
	cvtsi2sdl	832(%rbx), %xmm0
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	908(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI38_0(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm2
	movss	916(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	movsd	.LCPI38_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rax
	movq	%rax, 800(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 672(%rsp)         # 8-byte Spill
	leal	7(%rax), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, 760(%rsp)         # 4-byte Spill
	movl	100(%rbx), %r14d
	movzwl	108(%rbx), %ebp
	leaq	856(%rsp), %rdi
	xorl	%esi, %esi
	movl	$2104, %edx             # imm = 0x838
	callq	memset
	movl	$64, 2936(%rsp)
	movq	24(%rbx), %r8
	movq	%r8, 2952(%rsp)
	leal	-1(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB38_13
# BB#1:                                 # %entry
	jmpq	*.LJTI38_0(,%rax,8)
.LBB38_9:                               # %sw.bb.15
	xorl	%r13d, %r13d
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 18488(%rax)
	jle	.LBB38_13
# BB#10:                                # %if.then.18
	cmpl	$15, %ebp
	ja	.LBB38_12
# BB#11:                                # %if.then.21
	movq	712(%rsp), %rax         # 8-byte Reload
	movl	$0, 18488(%rax)
	xorl	%r13d, %r13d
	jmp	.LBB38_13
.LBB38_2:                               # %sw.bb
	xorl	%r13d, %r13d
	cmpl	$3, %r14d
	jne	.LBB38_13
# BB#3:                                 # %land.lhs.true
	movl	$4, %r14d
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpw	$0, 18472(%rax)
	je	.LBB38_5
# BB#4:                                 # %select.mid
	movl	$3, %r14d
.LBB38_5:                               # %select.end
	xorl	%r13d, %r13d
	jmp	.LBB38_13
.LBB38_6:                               # %sw.bb.6
	xorl	%r13d, %r13d
	cmpl	$24, %ebp
	jne	.LBB38_8
# BB#7:
	movl	$3, %r14d
	jmp	.LBB38_13
.LBB38_12:                              # %if.else.23
	cmpl	$16, %ebp
	movl	$.L.str.52, %eax
	movl	$.L.str.53, %r13d
	cmoveq	%rax, %r13
	movl	$1, %ebp
	movl	$1, %r14d
	jmp	.LBB38_13
.LBB38_8:                               # %if.else
	cmpl	$1, %r14d
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,2), %r14d
	xorl	%r13d, %r13d
.LBB38_13:                              # %sw.epilog
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movq	712(%rsp), %rax         # 8-byte Reload
	movw	18472(%rax), %si
	testw	%si, %si
	movl	%ebp, %edx
	jg	.LBB38_15
# BB#14:                                # %if.then.32
	cmpl	$2, %r14d
	movl	$3, %edx
	cmovlel	%ebp, %edx
	cmpl	$8, %ebp
	cmovnel	%ebp, %edx
.LBB38_15:                              # %if.end.40
	movq	%r13, 752(%rsp)         # 8-byte Spill
	movq	%r15, 776(%rsp)         # 8-byte Spill
	movl	%edx, 660(%rsp)         # 4-byte Spill
	leal	(,%rbp,8), %edi
	movq	672(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%rbp,8), %eax
	movl	%edx, %ecx
	cltd
	idivl	%edi
	leal	(,%rax,8), %ebx
	movl	%ebx, 2932(%rsp)
	movl	%eax, %edi
	shll	$5, %edi
	xorl	%r12d, %r12d
	cmpl	$1, %ecx
	cmovnel	%r12d, %edi
	cmpl	$5, %ecx
	jl	.LBB38_20
# BB#16:                                # %if.then.54
	leal	(,%r14,8), %ecx
	testw	%si, %si
	jle	.LBB38_18
# BB#17:                                # %if.then.60
	movq	672(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r12d
	shll	$4, %r12d
	addl	$160, %r12d
	jmp	.LBB38_19
.LBB38_18:                              # %if.else.66
	movl	%ebx, %edx
	imull	%ecx, %edx
	leal	(%rdx,%r14,4), %edx
	shll	$2, %edx
	orl	$8, %edx
	leal	-1(%rdx), %esi
	sarl	$31, %esi
	shrl	$29, %esi
	leal	-1(%rdx,%rsi), %r12d
	andl	$-8, %r12d
.LBB38_19:                              # %if.end.76
	movl	%ecx, %ebp
.LBB38_20:                              # %if.end.76
	movq	%rbp, 808(%rsp)         # 8-byte Spill
	movl	%ecx, 700(%rsp)         # 4-byte Spill
	movl	%ebp, %ecx
	imull	%ebx, %ecx
	movl	%ecx, 412(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	movq	%rax, 600(%rsp)         # 8-byte Spill
	shll	$4, %edx
	movl	%edx, 768(%rsp)         # 4-byte Spill
	imull	%r14d, %edx
	addl	%edx, %edi
	addl	%r12d, %edi
	addl	%ecx, %edi
	movl	%edi, %r13d
	sarl	$31, %r13d
	shrl	$29, %r13d
	addl	%edi, %r13d
	sarl	$3, %r13d
	movq	200(%r8), %rdi
	movl	$8, %edx
	movl	$.L.str.54, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	leal	1(%r14), %eax
	movl	%ebx, 788(%rsp)         # 4-byte Spill
	imull	%ebx, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%eax, %esi
	sarl	$3, %esi
	imull	2936(%rsp), %esi
	addl	$16, %esi
	movl	%esi, 864(%rsp)
	movq	712(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.55, %ecx
	callq	*88(%rdi)
	movq	%rax, 856(%rsp)
	testq	%r15, %r15
	movl	$-25, %ecx
	je	.LBB38_519
# BB#21:                                # %if.end.76
	testq	%rax, %rax
	je	.LBB38_519
# BB#22:                                # %if.else.110
	movq	%r15, 3104(%rsp)
	movq	%r15, 3096(%rsp)
	movq	%r15, 3088(%rsp)
	movslq	412(%rsp), %rsi         # 4-byte Folded Reload
	leaq	(%r15,%rsi), %r10
	movq	%r10, 3112(%rsp)
	movl	660(%rsp), %edx         # 4-byte Reload
	cmpl	$1, %edx
	movq	%r15, %rdi
	cmovgq	%r10, %rdi
	cmpl	$5, %edx
	jl	.LBB38_23
# BB#24:                                # %if.then.126
	leal	(%r14,%r14), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx,4), %rcx
	movq	%rcx, 744(%rsp)         # 8-byte Spill
	movq	%rcx, 3120(%rsp)
	leaq	(%rcx,%rsi,4), %rcx
	movq	%rsi, 360(%rsp)         # 8-byte Spill
	movq	%rcx, 3128(%rsp)
	movslq	%r12d, %rcx
	addq	%rcx, %rdi
	jmp	.LBB38_25
.LBB38_23:
	movq	%rsi, 360(%rsp)         # 8-byte Spill
                                        # implicit-def: RCX
	movq	%rcx, 744(%rsp)         # 8-byte Spill
.LBB38_25:                              # %for.cond.preheader
	movq	728(%rsp), %r12         # 8-byte Reload
	testl	%r14d, %r14d
	jle	.LBB38_26
# BB#27:                                # %for.body.lr.ph
	movslq	788(%rsp), %rdx         # 4-byte Folded Reload
	leal	-1(%r14), %ebx
	leaq	1(%rbx), %r8
	xorl	%ecx, %ecx
	testb	$3, %r14b
	movq	%rdi, %rsi
	je	.LBB38_30
# BB#28:                                # %for.body.prol.preheader
	movl	%r14d, %ebp
	andl	$3, %ebp
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB38_29:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 3024(%rsp,%rcx,8)
	movq	%rsi, 2960(%rsp,%rcx,8)
	addq	%rdx, %rsi
	incq	%rcx
	cmpl	%ecx, %ebp
	jne	.LBB38_29
.LBB38_30:                              # %for.body.lr.ph.split
	imulq	%rdx, %r8
	cmpl	$3, %ebx
	jb	.LBB38_33
# BB#31:                                # %for.body.lr.ph.split.split
	movl	%r14d, %ebp
	subl	%ecx, %ebp
	leaq	3048(%rsp,%rcx,8), %rcx
	.align	16, 0x90
.LBB38_32:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -24(%rcx)
	movq	%rsi, -88(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rcx)
	movq	%rsi, -80(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rcx)
	movq	%rsi, -72(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, (%rcx)
	movq	%rsi, -64(%rcx)
	addq	$32, %rcx
	addq	%rdx, %rsi
	addl	$-4, %ebp
	jne	.LBB38_32
.LBB38_33:                              # %for.cond.147.preheader
	leaq	(%r8,%rdi), %r11
	movq	%r14, %r9
	testl	%r9d, %r9d
	jle	.LBB38_34
# BB#35:                                # %for.body.150.lr.ph
	leaq	1(%rbx), %r14
	xorl	%ecx, %ecx
	testb	$3, %r9b
	movq	%r9, 584(%rsp)          # 8-byte Spill
	movq	%r11, %rsi
	je	.LBB38_39
# BB#36:                                # %for.body.150.prol.preheader
	movq	%r15, 400(%rsp)         # 8-byte Spill
	movq	%r12, 728(%rsp)         # 8-byte Spill
	leaq	1(%rbx), %r8
	imulq	%rdx, %r8
	leaq	2(%rbx), %rbp
	movq	%rbx, %r9
	imulq	%rdx, %rbp
	movq	584(%rsp), %rbx         # 8-byte Reload
	andl	$3, %ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB38_37:                              # %for.body.150.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%r8), %r12
	movq	%r12, 2992(%rsp,%rcx,8)
	leaq	(%rdi,%rbp), %rsi
	movq	%rsi, 3056(%rsp,%rcx,8)
	incq	%rcx
	addq	%rdx, %rdi
	cmpl	%ecx, %ebx
	jne	.LBB38_37
# BB#38:
	addq	%r8, %rdi
	movq	%rdi, %rsi
	movq	728(%rsp), %r12         # 8-byte Reload
	movq	400(%rsp), %r15         # 8-byte Reload
	movq	%r9, %rbx
.LBB38_39:                              # %for.body.150.lr.ph.split
	imulq	%rdx, %r14
	cmpl	$3, %ebx
	jb	.LBB38_42
# BB#40:                                # %for.body.150.lr.ph.split.split
	movq	584(%rsp), %rdi         # 8-byte Reload
	subl	%ecx, %edi
	leaq	3080(%rsp,%rcx,8), %rcx
	.align	16, 0x90
.LBB38_41:                              # %for.body.150
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -88(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -24(%rcx)
	movq	%rsi, -80(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rcx)
	movq	%rsi, -72(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rcx)
	movq	%rsi, -64(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, (%rcx)
	addq	$32, %rcx
	addl	$-4, %edi
	jne	.LBB38_41
.LBB38_42:                              # %for.cond.147.for.end.163_crit_edge
	addq	%r14, %r11
	jmp	.LBB38_43
.LBB38_26:
	movq	%r14, 584(%rsp)         # 8-byte Spill
	jmp	.LBB38_44
.LBB38_34:
	movq	%r9, 584(%rsp)          # 8-byte Spill
.LBB38_43:                              # %for.end.163
	movq	%r11, %rdi
	movl	660(%rsp), %edx         # 4-byte Reload
.LBB38_44:                              # %for.end.163
	movq	%r15, 400(%rsp)         # 8-byte Spill
	cmpl	$1, %edx
	movl	%edx, %r14d
	movq	%r15, 424(%rsp)         # 8-byte Spill
	jne	.LBB38_46
# BB#45:                                # %if.then.166
	movq	%r10, 3096(%rsp)
	addq	360(%rsp), %r10         # 8-byte Folded Reload
	movq	%r10, 3112(%rsp)
	movq	%rdi, 424(%rsp)         # 8-byte Spill
.LBB38_46:                              # %if.end.176
	movq	584(%rsp), %rbx         # 8-byte Reload
	testl	%ebx, %ebx
	jle	.LBB38_51
# BB#47:                                # %for.cond.181.preheader.lr.ph
	movslq	788(%rsp), %rcx         # 4-byte Folded Reload
	movl	2936(%rsp), %edi
	leaq	872(%rsp), %rbp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB38_48:                              # %for.cond.181.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_49 Depth 2
	movq	%rbx, %r8
	testl	%edi, %edi
	movq	%rbp, %rdx
	movl	$0, %ebx
	jle	.LBB38_50
	.align	16, 0x90
.LBB38_49:                              # %for.body.185
                                        #   Parent Loop BB38_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, (%rdx)
	addq	%rcx, %rax
	incq	%rbx
	movslq	2936(%rsp), %rdi
	addq	$8, %rdx
	cmpq	%rdi, %rbx
	jl	.LBB38_49
.LBB38_50:                              # %for.end.194
                                        #   in Loop: Header=BB38_48 Depth=1
	leaq	8(%rax), %rdx
	andq	$-8, %rdx
	movq	%rdx, 2920(%rsp)
	incq	%rsi
	addq	$512, %rbp              # imm = 0x200
	movq	%r8, %rbx
	cmpl	%ebx, %esi
	jne	.LBB38_48
.LBB38_51:                              # %for.end.198
	movl	%ebx, 2928(%rsp)
	movq	776(%rsp), %rcx         # 8-byte Reload
	cmpl	$2, %ecx
	jne	.LBB38_53
# BB#52:                                # %if.end.234.thread
	movl	$.L.str.56, %edi
	movq	%r12, %rsi
	callq	fputs
	movq	%rbx, %rbp
	movq	%rbp, 584(%rsp)         # 8-byte Spill
	movq	712(%rsp), %rbx         # 8-byte Reload
	cvttss2si	884(%rbx), %eax
	movzbl	%al, %edx
	movzbl	%ah, %ecx  # NOREX
	movl	$0, 596(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	shll	$3, %r13d
	xorl	%esi, %esi
	movq	400(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	callq	memset
	movl	18484(%rbx), %ecx
	movl	18488(%rbx), %edx
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.69, %edi
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.70, %edi
	movl	$5, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$65536, %eax            # imm = 0x10000
	subl	%ebp, %eax
	movzbl	%al, %edx
	movzbl	%ah, %ecx  # NOREX
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	800(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %edx
	movzbl	%ah, %ecx  # NOREX
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.73, %edi
	movl	$4, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movq	808(%rsp), %rbx         # 8-byte Reload
.LBB38_99:                              # %if.then.405
	movl	$1, 440(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.92, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	callq	fprintf
	movl	$2, %edi
	movb	$1, %al
	movl	%eax, 684(%rsp)         # 4-byte Spill
.LBB38_113:                             # %if.end.429
	movsd	.LCPI38_0(%rip), %xmm2  # xmm2 = mem[0],zero
	jmp	.LBB38_114
.LBB38_53:                              # %if.else.213
	movl	%ecx, %eax
	andl	$-2, %eax
	cmpl	$10, %eax
	jne	.LBB38_73
# BB#54:                                # %if.then.219
	movq	%rcx, %r15
	movq	712(%rsp), %rcx         # 8-byte Reload
	cvtsi2ssl	836(%rcx), %xmm1
	movss	888(%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	.LCPI38_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI38_3(%rip), %xmm3  # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 3157(%rsp)
	movb	$1, 3158(%rsp)
	cvtsi2ssl	832(%rcx), %xmm4
	movss	884(%rcx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	908(%rcx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm4
	mulss	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm4, %xmm2
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm5, %xmm4
	movsd	.LCPI38_4(%rip), %xmm5  # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm2
	movss	916(%rcx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm2
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, 3159(%rsp)
	cmpl	$11, 18484(%rcx)
	movq	%rcx, %rdx
	jne	.LBB38_57
# BB#55:                                # %sw.bb.i
	movq	%rbx, 584(%rsp)         # 8-byte Spill
	movzbl	%al, %eax
	cmpl	$115, %eax
	jb	.LBB38_59
# BB#56:                                # %if.then.i
	movb	$114, 3159(%rsp)
	jmp	.LBB38_59
.LBB38_73:                              # %if.else.221
	movq	%rbx, 584(%rsp)         # 8-byte Spill
	cmpl	$8, %ecx
	movq	%rcx, %r15
	jne	.LBB38_75
# BB#74:                                # %if.then.224
	movl	$.L.str.58, %edi
	jmp	.LBB38_76
.LBB38_57:                              # %sw.default.i
	movq	%rbx, 584(%rsp)         # 8-byte Spill
	movzbl	%al, %eax
	cmpl	$81, %eax
	jb	.LBB38_59
# BB#58:                                # %if.then.30.i
	movb	$80, 3159(%rsp)
.LBB38_59:                              # %sw.epilog.i
	cvttss2si	%xmm0, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	leal	(%rcx,%rax), %ecx
	movb	%ch, 3153(%rsp)  # NOREX
	movb	%al, 3154(%rsp)
	cvttss2si	%xmm1, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	leal	(%rcx,%rax), %ecx
	movb	%ch, 3155(%rsp)  # NOREX
	movb	%al, 3156(%rsp)
	movl	$1, %ebp
	movl	$1, %eax
	movq	%rdx, %rbx
	subl	18492(%rbx), %eax
	leal	16(,%rax,4), %eax
	movb	%al, 3151(%rsp)
	movb	18496(%rbx), %al
	shlb	$4, %al
	movb	%al, 3152(%rsp)
	movl	$.L.str.118, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$2, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$15, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$97, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$.L.str.119, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$103, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$3, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	leaq	3157(%rsp), %rdi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$98, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$.L.str.119, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$108, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$2, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	leaq	3151(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r12, %rcx
	callq	fwrite
	cmpl	$11, 18484(%rbx)
	jne	.LBB38_67
# BB#60:                                # %if.then.76.i
	movl	18508(%rbx), %eax
	cmpl	$2, %eax
	movb	$4, %cl
	je	.LBB38_62
# BB#61:                                # %if.then.76.i
	movb	%al, %cl
.LBB38_62:                              # %if.then.76.i
	movb	%cl, 3148(%rsp)
	movb	$1, %al
	cmpl	$7, 18496(%rbx)
	jg	.LBB38_66
# BB#63:                                # %cond.false.i
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 18500(%rax)
	je	.LBB38_64
# BB#65:                                # %land.rhs.i
	cmpl	$105, 18504(%rax)
	setg	%al
	jmp	.LBB38_66
.LBB38_75:                              # %if.else.226
	movl	$.L.str.59, %edi
.LBB38_76:                              # %if.end.228
	movq	%r12, %rsi
	callq	fputs
	movq	400(%rsp), %rbp         # 8-byte Reload
	movq	712(%rsp), %rax         # 8-byte Reload
	cvttss2si	884(%rax), %edx
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB38_77
.LBB38_67:                              # %if.else.i
	subl	18492(%rbx), %ebp
	leal	16(,%rbp,4), %eax
	movb	%al, 3148(%rsp)
	movl	18496(%rbx), %edx
	movl	18508(%rbx), %eax
	movl	%edx, %ecx
	shll	$4, %ecx
	addl	%eax, %ecx
	movb	%cl, 3149(%rsp)
	cmpl	$1, %eax
	sete	%al
	shlb	$4, %al
	movb	$1, %cl
	cmpl	$7, %edx
	jg	.LBB38_71
# BB#68:                                # %cond.false.122.i
	movq	712(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 18500(%rcx)
	je	.LBB38_69
# BB#70:                                # %land.rhs.126.i
	cmpl	$105, 18504(%rcx)
	setg	%cl
	jmp	.LBB38_71
.LBB38_64:
	xorl	%eax, %eax
.LBB38_66:                              # %cond.end.i
	movb	%al, 3149(%rsp)
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$99, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$2, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	leaq	3148(%rsp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	jmp	.LBB38_72
.LBB38_69:
	xorl	%ecx, %ecx
.LBB38_71:                              # %cond.end.133.i
	orb	%al, %cl
	movb	%cl, 3150(%rsp)
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$99, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$3, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	leaq	3148(%rsp), %rdi
	movl	$1, %esi
	movl	$3, %edx
.LBB38_72:                              # %bjc_init_page.exit
	movq	%r12, %rcx
	callq	fwrite
	movq	400(%rsp), %rbp         # 8-byte Reload
	movl	$.L.str.120, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$100, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$4, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	leaq	3153(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rcx
	callq	fwrite
.LBB38_77:                              # %if.end.234
	shll	$3, %r13d
	movl	$0, 440(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memset
	movl	%r15d, %eax
	cmpl	$11, %r15d
	movq	%r15, %r13
	jbe	.LBB38_79
# BB#78:
	movq	808(%rsp), %rbx         # 8-byte Reload
.LBB38_105:                             # %if.then.409.thread1423
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movl	$.L.str.93, %edi
	movq	%r12, %rsi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	callq	fputs
	movl	$1, 596(%rsp)           # 4-byte Folded Spill
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movsd	.LCPI38_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movq	%r13, %rdi
.LBB38_114:                             # %if.end.429
	movq	%rdi, 776(%rsp)         # 8-byte Spill
	movl	%ebx, %ecx
	negl	%ecx
	movq	712(%rsp), %rax         # 8-byte Reload
	imull	832(%rax), %ecx
	movq	$-1, %rdx
	shlq	%cl, %rdx
	movq	%rdx, 648(%rsp)         # 8-byte Spill
	movl	836(%rax), %ecx
	movl	%ecx, 668(%rsp)         # 4-byte Spill
	movss	920(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	movss	912(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movss	888(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rsi
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	leal	-3(%rdi), %ecx
	cmpl	$9, %ecx
	jae	.LBB38_115
# BB#116:                               # %switch.hole_check
	movl	$391, %edx              # imm = 0x187
	btl	%ecx, %edx
	jb	.LBB38_117
.LBB38_115:                             # %sw.default
	movq	%rdi, 776(%rsp)         # 8-byte Spill
	movq	584(%rsp), %rcx         # 8-byte Reload
	cmpl	$1, %ecx
	movl	$49, %ecx
	movl	$15, %edx
	cmovel	%ecx, %edx
	movl	%edx, 664(%rsp)         # 4-byte Spill
	jmp	.LBB38_118
.LBB38_79:                              # %if.end.234
	movq	808(%rsp), %rbx         # 8-byte Reload
	jmpq	*.LJTI38_1(,%rax,8)
.LBB38_106:                             # %if.then.409
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	760(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	movq	712(%rsp), %rbp         # 8-byte Reload
	movl	18484(%rbp), %ecx
	movl	18488(%rbp), %edx
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movss	920(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	addsd	.LCPI38_12(%rip), %xmm0
	mulsd	.LCPI38_9(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	800(%rsp), %rdx         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	callq	fprintf
	movl	$.L.str.93, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$9, %edx
	movl	$1, 596(%rsp)           # 4-byte Folded Spill
	movl	%r13d, %ebp
	jmp	.LBB38_107
.LBB38_117:                             # %switch.lookup
	movq	%rdi, 776(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	movl	.Lswitch.table(,%rcx,4), %ecx
	movl	%ecx, 664(%rsp)         # 4-byte Spill
.LBB38_118:                             # %sw.epilog.456
	movl	%r14d, 660(%rsp)        # 4-byte Spill
	subl	%eax, 668(%rsp)         # 4-byte Folded Spill
	cmpl	$4, %r14d
	movq	744(%rsp), %rbp         # 8-byte Reload
	jle	.LBB38_119
# BB#127:                               # %if.then.459
	cmpl	$32, 700(%rsp)          # 4-byte Folded Reload
	jne	.LBB38_130
# BB#128:                               # %if.then.459
	movzwl	18472(%rsi), %eax
	testw	%ax, %ax
	jle	.LBB38_130
# BB#129:                               # %if.then.467
	leaq	3088(%rsp), %rdi
	leaq	2960(%rsp), %rsi
	leaq	3120(%rsp), %rdx
	movl	$-1, %r8d
	movl	788(%rsp), %ecx         # 4-byte Reload
	callq	bjc_fscmyk
	jmp	.LBB38_119
.LBB38_130:                             # %if.else.471
	cmpl	$0, 412(%rsp)           # 4-byte Folded Reload
	jle	.LBB38_119
# BB#131:                               # %for.body.476.lr.ph
	movq	600(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebx
	shll	$3, %ebx
	.align	16, 0x90
.LBB38_132:                             # %for.body.476
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	shll	$16, %eax
	movslq	%eax, %rcx
	imulq	$-2139062143, %rcx, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$25, %ecx
	addl	%edx, %ecx
	imull	$66846720, %ecx, %ecx   # imm = 0x3FC0000
	negl	%ecx
	leal	-33423360(%rax,%rcx), %eax
	movl	%eax, (%rbp)
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB38_132
.LBB38_119:                             # %for.cond.485.preheader
	cmpl	$0, 668(%rsp)           # 4-byte Folded Reload
	movq	672(%rsp), %rbx         # 8-byte Reload
	jle	.LBB38_499
# BB#120:                               # %for.body.488.lr.ph
	movq	792(%rsp), %rax         # 8-byte Reload
	leal	7(%rbx,%rax), %eax
	sarl	$3, %eax
	movl	%eax, 808(%rsp)         # 4-byte Spill
	movl	788(%rsp), %edi         # 4-byte Reload
	movl	%edi, %ecx
	movq	584(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 800(%rsp)         # 4-byte Spill
	movq	776(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	andl	$-2, %edx
	movl	%edx, 444(%rsp)         # 4-byte Spill
	movslq	%ebx, %r12
	movq	%r12, 312(%rsp)         # 8-byte Spill
	leal	1(%rbx), %edx
	shrl	$31, %edx
	leal	1(%rbx,%rdx), %r10d
	movl	%r10d, %esi
	sarl	%esi
	leal	(%rsi,%rsi,2), %r15d
	movl	%r15d, 268(%rsp)        # 4-byte Spill
	andl	$-2, %r10d
	movq	600(%rsp), %r13         # 8-byte Reload
	testl	%r13d, %r13d
	setg	792(%rsp)               # 1-byte Folded Spill
	cmpl	$1, %eax
	setg	%r8b
	leal	-1(%r13), %eax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	leaq	1(%rax), %r14
	movq	%r14, 392(%rsp)         # 8-byte Spill
	testl	%edi, %edi
	movl	$1, %eax
	cmovgl	%edi, %eax
	decl	%eax
	movq	%rax, %rdi
	leaq	1(%rax), %rbp
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	shlq	$3, %rax
	movq	%r12, %rsi
	negq	%rsi
	movq	%rsi, 304(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	movq	%r14, %rsi
	andq	%rcx, %rsi
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	leaq	-4(%rsi), %rsi
	shrq	$2, %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	setle	%r9b
	cmpl	$16, 660(%rsp)          # 4-byte Folded Reload
	movl	%r15d, %r11d
	cmovnel	%ebx, %r11d
	movl	%r11d, 348(%rsp)        # 4-byte Spill
	setne	%dl
	orb	%r9b, %dl
	movb	%dl, 347(%rsp)          # 1-byte Spill
	andb	792(%rsp), %r8b         # 1-byte Folded Reload
	movb	%r8b, 391(%rsp)         # 1-byte Spill
	movslq	768(%rsp), %r8          # 4-byte Folded Reload
	movq	%r8, 328(%rsp)          # 8-byte Spill
	movslq	808(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, 632(%rsp)         # 8-byte Spill
	movslq	800(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	movslq	%r10d, %rdx
	movq	%rbx, %r9
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	notq	%rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	notq	%rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	2(%rcx), %rax
	andq	%r14, %rax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	andl	$1, %esi
	movq	%rsi, 272(%rsp)         # 8-byte Spill
	addq	$-12, %rcx
	andq	%rbp, %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	(,%rcx,8), %rax
	negq	%rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	negq	%rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movslq	%r15d, %rax
	decq	%rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rbp, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movabsq	$8589934590, %rax       # imm = 0x1FFFFFFFE
	andq	%r14, %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movdqa	.LCPI38_16(%rip), %xmm0 # xmm0 = [5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
	psraw	$8, %xmm0
	movdqa	%xmm0, 608(%rsp)        # 16-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rcx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	leal	(%r9,%r9), %ecx
	movl	%ecx, 372(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	movslq	788(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	movslq	%r13d, %rdx
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	leaq	1(%r12), %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	-1(%rcx), %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leaq	-2(%rcx), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	-1(%r12), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	leaq	-16(%r12), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movq	400(%rsp), %r12         # 8-byte Reload
	movl	$0, %r15d
	movq	%rax, 768(%rsp)         # 8-byte Spill
	movl	$0, %r13d
	movl	$0, %eax
	movq	%rax, 808(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 800(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 624(%rsp)         # 8-byte Spill
	movl	664(%rsp), %eax         # 4-byte Reload
	movq	%rax, 576(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, 688(%rsp)         # 8-byte Spill
	jmp	.LBB38_121
	.align	16, 0x90
.LBB38_384:                             # %cleanup.for.body.488_crit_edge
                                        #   in Loop: Header=BB38_121 Depth=1
	movslq	%r15d, %rax
	movq	3088(%rsp,%rax,8), %r12
.LBB38_121:                             # %for.body.488
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_122 Depth 2
                                        #     Child Loop BB38_144 Depth 2
                                        #     Child Loop BB38_147 Depth 2
                                        #     Child Loop BB38_186 Depth 2
                                        #     Child Loop BB38_201 Depth 2
                                        #     Child Loop BB38_165 Depth 2
                                        #     Child Loop BB38_169 Depth 2
                                        #     Child Loop BB38_183 Depth 2
                                        #     Child Loop BB38_174 Depth 2
                                        #     Child Loop BB38_300 Depth 2
                                        #       Child Loop BB38_301 Depth 3
                                        #     Child Loop BB38_306 Depth 2
                                        #       Child Loop BB38_307 Depth 3
                                        #     Child Loop BB38_287 Depth 2
                                        #       Child Loop BB38_288 Depth 3
                                        #     Child Loop BB38_277 Depth 2
                                        #       Child Loop BB38_278 Depth 3
                                        #     Child Loop BB38_267 Depth 2
                                        #       Child Loop BB38_268 Depth 3
                                        #     Child Loop BB38_261 Depth 2
                                        #       Child Loop BB38_262 Depth 3
                                        #     Child Loop BB38_218 Depth 2
                                        #     Child Loop BB38_241 Depth 2
                                        #     Child Loop BB38_224 Depth 2
                                        #     Child Loop BB38_211 Depth 2
                                        #     Child Loop BB38_351 Depth 2
                                        #     Child Loop BB38_374 Depth 2
                                        #     Child Loop BB38_367 Depth 2
                                        #     Child Loop BB38_372 Depth 2
                                        #     Child Loop BB38_332 Depth 2
                                        #       Child Loop BB38_333 Depth 3
                                        #       Child Loop BB38_446 Depth 3
                                        #         Child Loop BB38_447 Depth 4
                                        #         Child Loop BB38_451 Depth 4
                                        #         Child Loop BB38_455 Depth 4
                                        #       Child Loop BB38_422 Depth 3
                                        #       Child Loop BB38_427 Depth 3
                                        #       Child Loop BB38_403 Depth 3
                                        #       Child Loop BB38_407 Depth 3
                                        #       Child Loop BB38_409 Depth 3
                                        #         Child Loop BB38_410 Depth 4
                                        #         Child Loop BB38_413 Depth 4
                                        #       Child Loop BB38_389 Depth 3
                                        #         Child Loop BB38_390 Depth 4
                                        #         Child Loop BB38_393 Depth 4
                                        #       Child Loop BB38_387 Depth 3
	movslq	%r15d, %rax
	movq	%rax, 704(%rsp)         # 8-byte Spill
	movq	632(%rsp), %rbx         # 8-byte Reload
	leaq	(%r12,%rbx,8), %rbp
	movq	712(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	%r12, %rdx
	movl	%r9d, %ecx
	callq	gdev_prn_copy_scan_lines
	movq	%r12, %r9
	movq	648(%rsp), %rax         # 8-byte Reload
	andq	%rax, -8(%r9,%rbx,8)
	.align	16, 0x90
.LBB38_122:                             # %while.cond
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rax
	cmpq	%r9, %rax
	jbe	.LBB38_124
# BB#123:                               # %land.rhs
                                        #   in Loop: Header=BB38_122 Depth=2
	leaq	-8(%rax), %rbp
	cmpq	$0, -8(%rax)
	je	.LBB38_122
.LBB38_124:                             # %while.end
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	776(%rsp), %rsi         # 8-byte Reload
	cmpl	$7, %esi
	movq	688(%rsp), %rcx         # 8-byte Reload
	je	.LBB38_133
# BB#125:                               # %while.end
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpq	%r9, %rax
	jne	.LBB38_133
# BB#126:                               # %if.then.509
                                        #   in Loop: Header=BB38_121 Depth=1
	incl	%ecx
	movq	%rcx, 688(%rsp)         # 8-byte Spill
	movq	672(%rsp), %r9          # 8-byte Reload
	jmp	.LBB38_383
	.align	16, 0x90
.LBB38_133:                             # %if.end.512
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%ecx, %ecx
	movdqa	.LCPI38_13(%rip), %xmm4 # xmm4 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
	movdqa	.LCPI38_14(%rip), %xmm5 # xmm5 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	movdqa	%xmm5, %xmm8
	movdqa	.LCPI38_15(%rip), %xmm6 # xmm6 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	movdqa	%xmm6, %xmm9
	movdqa	608(%rsp), %xmm7        # 16-byte Reload
	movdqa	.LCPI38_17(%rip), %xmm6 # xmm6 = [255,255,255,255,255,255,255,255]
	movdqa	.LCPI38_18(%rip), %xmm5 # xmm5 = [192,192,192,192,192,192,192,192,192,192,192,192,192,192,192,192]
	movdqa	%xmm5, %xmm10
	movdqa	.LCPI38_19(%rip), %xmm5 # xmm5 = [240,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240]
	movdqa	.LCPI38_20(%rip), %xmm11 # xmm11 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	movq	%r13, %r11
	jle	.LBB38_134
# BB#135:                               # %if.then.515
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	684(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	movl	664(%rsp), %ebx         # 4-byte Reload
	je	.LBB38_137
# BB#136:                               # %if.then.518
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movzbl	%cl, %edx
	movzbl	%ch, %ecx  # NOREX
	movl	$.L.str.96, %esi
	xorl	%eax, %eax
	movq	728(%rsp), %rdi         # 8-byte Reload
	callq	fprintf
	jmp	.LBB38_152
.LBB38_134:                             #   in Loop: Header=BB38_121 Depth=1
	movl	664(%rsp), %ebx         # 4-byte Reload
	movq	576(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB38_153
.LBB38_137:                             # %if.else.523
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%rcx, %rbp
	cmpl	$9, %esi
	jne	.LBB38_139
# BB#138:                               # %if.then.526
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movl	$66, %edx
	xorl	%ecx, %ecx
	movq	728(%rsp), %rdi         # 8-byte Reload
	leaq	856(%rsp), %rsi
	movl	%ebp, %r8d
	callq	ep_print_image
	jmp	.LBB38_152
.LBB38_139:                             # %if.else.528
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r15, 720(%rsp)         # 8-byte Spill
	cmpl	$10, 444(%rsp)          # 4-byte Folded Reload
	movq	728(%rsp), %r12         # 8-byte Reload
	jne	.LBB38_141
# BB#140:                               # %bjc_v_skip.exit853
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movl	$.L.str.121, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$2, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%rbp), %edi
	movq	%r12, %r15
	movl	%edi, %r12d
	andl	$-256, %r12d
	sarl	$8, %edi
	movq	%r15, %rsi
	callq	_IO_putc
	subl	%r12d, %ebp
	movl	%ebp, %edi
	movq	%r15, %rsi
	callq	_IO_putc
	movq	720(%rsp), %r15         # 8-byte Reload
	jmp	.LBB38_152
.LBB38_141:                             # %if.else.536
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%rbp, %rdx
	movq	576(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %edx
	movq	720(%rsp), %r15         # 8-byte Reload
	jge	.LBB38_148
# BB#142:                               # %if.then.539
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%rsi, %rbp
	cmpl	$0, 596(%rsp)           # 4-byte Folded Reload
	je	.LBB38_145
# BB#143:                               # %for.body.546.lr.ph
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movl	$121, %edi
	movq	%r12, %rsi
	movq	%rdx, %rbp
	callq	fputc
	.align	16, 0x90
.LBB38_144:                             # %for.body.546
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$119, %edi
	movq	%r12, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB38_144
	jmp	.LBB38_152
.LBB38_148:                             # %if.else.566
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$0, 596(%rsp)           # 4-byte Folded Reload
	je	.LBB38_150
# BB#149:                               # %if.then.568
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movl	$.L.str.100, %esi
	jmp	.LBB38_151
.LBB38_145:                             # %if.else.550
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movq	%rdx, %r15
	movl	$.L.str.97, %edi
	movq	%r12, %rsi
	callq	fputs
	cmpl	$7, %ebp
	jne	.LBB38_146
# BB#520:                               # %if.then.554
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movq	720(%rsp), %r15         # 8-byte Reload
	jmp	.LBB38_152
.LBB38_150:                             # %if.else.570
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 736(%rsp)          # 8-byte Spill
	movq	%r11, %r13
	movl	$.L.str.98, %esi
.LBB38_151:                             # %if.end.576
                                        #   in Loop: Header=BB38_121 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	.align	16, 0x90
.LBB38_152:                             # %if.end.576
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$1, %eax
	subl	%r15d, %eax
	cltq
	shlq	$5, %rax
	movq	2960(%rsp,%rax), %rdi
	xorl	%eax, %eax
	movq	%rax, 688(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	432(%rsp), %rdx         # 8-byte Reload
	callq	memset
	movl	%ebx, %ecx
	movdqa	.LCPI38_13(%rip), %xmm4 # xmm4 = [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
	movdqa	.LCPI38_14(%rip), %xmm5 # xmm5 = [63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63]
	movdqa	%xmm5, %xmm8
	movdqa	.LCPI38_15(%rip), %xmm6 # xmm6 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	movdqa	%xmm6, %xmm9
	movdqa	608(%rsp), %xmm7        # 16-byte Reload
	movdqa	.LCPI38_17(%rip), %xmm6 # xmm6 = [255,255,255,255,255,255,255,255]
	movdqa	.LCPI38_18(%rip), %xmm5 # xmm5 = [192,192,192,192,192,192,192,192,192,192,192,192,192,192,192,192]
	movdqa	%xmm5, %xmm10
	movdqa	.LCPI38_19(%rip), %xmm5 # xmm5 = [240,240,240,240,240,240,240,240,240,240,240,240,240,240,240,240]
	movdqa	.LCPI38_20(%rip), %xmm11 # xmm11 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	movq	%r13, %r11
	movq	736(%rsp), %r9          # 8-byte Reload
.LBB38_153:                             # %if.end.584
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r15, 720(%rsp)         # 8-byte Spill
	movl	%ebx, 664(%rsp)         # 4-byte Spill
	leal	2(%r15), %eax
	cltq
	movq	3088(%rsp,%rax,8), %r12
	shlq	$5, %rax
	movq	2984(%rsp,%rax), %rdx
	movq	%rdx, 744(%rsp)         # 8-byte Spill
	movq	2976(%rsp,%rax), %rbp
	movq	2960(%rsp,%rax), %rdx
	movq	%rdx, 792(%rsp)         # 8-byte Spill
	movq	2968(%rsp,%rax), %r10
	movq	704(%rsp), %rax         # 8-byte Reload
	movq	3120(%rsp,%rax,8), %r13
	testl	%ecx, %ecx
	leal	-1(%rcx), %eax
	cmovel	%ebx, %eax
	movq	%rax, 576(%rsp)         # 8-byte Spill
	movl	700(%rsp), %eax         # 4-byte Reload
	cmpl	660(%rsp), %eax         # 4-byte Folded Reload
	jle	.LBB38_206
# BB#154:                               # %if.then.616
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpw	$0, 18472(%rax)
	jle	.LBB38_184
# BB#155:                               # %if.then.i.855
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r10, 760(%rsp)         # 8-byte Spill
	movq	%rbp, 752(%rsp)         # 8-byte Spill
	movl	660(%rsp), %edx         # 4-byte Reload
	cmpl	$8, %edx
	movq	672(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	jne	.LBB38_171
# BB#156:                               # %if.then.4.i
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%ecx, %ecx
	movl	372(%rsp), %eax         # 4-byte Reload
	jle	.LBB38_175
# BB#157:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	312(%rsp), %rax         # 8-byte Reload
	leaq	(%r9,%rax), %rbp
	movq	296(%rsp), %rcx         # 8-byte Reload
	leaq	(%r9,%rcx), %r10
	leaq	(%r9,%rax), %rdi
	movq	304(%rsp), %rsi         # 8-byte Reload
	subq	%r9, %rsi
	movq	%r9, %rcx
	notq	%rcx
	cmpq	%rcx, %rsi
	movq	%rcx, %rax
	cmovaq	%rsi, %rax
	addq	%rax, %rdi
	cmpq	$-1, %rdi
	je	.LBB38_168
# BB#158:                               # %overflow.checked1931
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	240(%rsp), %rdi         # 8-byte Reload
	leaq	(%r9,%rdi), %rdi
	addq	%rax, %rdi
	movq	%rdi, %rax
	andq	$-16, %rax
	je	.LBB38_159
# BB#160:                               # %vector.memcheck1954
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	movq	224(%rsp), %rdi         # 8-byte Reload
	leaq	(%r9,%rdi), %rax
	movq	%rdi, %r15
	subq	%r9, %r15
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	movq	312(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx), %rsi
	addq	%rsi, %rsi
	subq	%rsi, %r15
	movq	216(%rsp), %rdi         # 8-byte Reload
	leaq	(%r9,%rdi), %r8
	subq	%r9, %rdi
	subq	%rsi, %rdi
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r9, 736(%rsp)          # 8-byte Spill
	leaq	(%r9,%rsi), %r9
	notq	%rcx
	cmpq	%rdi, %rax
	setbe	%bl
	cmpq	%r15, %r8
	setbe	%r14b
	cmpq	%rcx, %rax
	setbe	%sil
	cmpq	%r15, %r9
	setbe	%r15b
	cmpq	%rcx, %r8
	setbe	%cl
	cmpq	%rdi, %r9
	setbe	%r8b
	testb	%r14b, %bl
	jne	.LBB38_161
# BB#162:                               # %vector.memcheck1954
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%r15b, %sil
	jne	.LBB38_161
# BB#163:                               # %vector.memcheck1954
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%r8b, %cl
	jne	.LBB38_161
# BB#164:                               # %vector.body1927.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, 336(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rbp
	leaq	(%rcx,%rcx), %rcx
	subq	%rcx, %r10
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	736(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rcx
	movq	200(%rsp), %rdx         # 8-byte Reload
	andq	$-16, %rdx
	.align	16, 0x90
.LBB38_165:                             # %vector.body1927
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, 560(%rsp)         # 8-byte Spill
	movdqu	(%rcx), %xmm0
	movdqa	%xmm0, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm0, %xmm1
	psrlw	$2, %xmm1
	pand	%xmm8, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm3, %xmm3    # xmm3 = xmm3[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	psraw	$8, %xmm3
	pmullw	%xmm7, %xmm3
	pand	%xmm6, %xmm3
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	psraw	$8, %xmm2
	pmullw	%xmm7, %xmm2
	pand	%xmm6, %xmm2
	packuswb	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	psllw	$6, %xmm3
	pand	%xmm10, %xmm3
	por	%xmm2, %xmm3
	psllw	$4, %xmm1
	pand	%xmm5, %xmm1
	pand	%xmm11, %xmm1
	paddb	%xmm3, %xmm1
	movdqa	%xmm1, 816(%rsp)
	movb	816(%rsp), %dl
	movb	%dl, 544(%rsp)          # 1-byte Spill
	movb	817(%rsp), %dl
	movb	%dl, 528(%rsp)          # 1-byte Spill
	movb	818(%rsp), %dl
	movb	%dl, 512(%rsp)          # 1-byte Spill
	movb	819(%rsp), %dl
	movb	%dl, 496(%rsp)          # 1-byte Spill
	movb	820(%rsp), %dl
	movb	%dl, 480(%rsp)          # 1-byte Spill
	movb	821(%rsp), %dl
	movb	%dl, 464(%rsp)          # 1-byte Spill
	movb	822(%rsp), %dl
	movb	%dl, 463(%rsp)          # 1-byte Spill
	movb	823(%rsp), %r14b
	movb	824(%rsp), %dl
	movb	825(%rsp), %r11b
	movb	826(%rsp), %r9b
	movb	827(%rsp), %r8b
	movb	828(%rsp), %dil
	movb	829(%rsp), %sil
	movq	%rcx, %rbx
	movb	830(%rsp), %cl
	movb	831(%rsp), %r15b
	movb	%r15b, (%rax)
	movdqa	%xmm0, %xmm1
	psrlw	$4, %xmm1
	pand	%xmm9, %xmm1
	pand	%xmm4, %xmm1
	psrlw	$6, %xmm0
	pand	%xmm4, %xmm0
	movb	%cl, -2(%rax)
	movb	%sil, -4(%rax)
	movb	%dil, -6(%rax)
	movb	%r8b, -8(%rax)
	movb	%r9b, -10(%rax)
	movb	%r11b, -12(%rax)
	movb	%dl, -14(%rax)
	movb	%r14b, -16(%rax)
	movb	463(%rsp), %cl          # 1-byte Reload
	movb	%cl, -18(%rax)
	movb	464(%rsp), %cl          # 1-byte Reload
	movb	%cl, -20(%rax)
	movb	480(%rsp), %cl          # 1-byte Reload
	movb	%cl, -22(%rax)
	movb	496(%rsp), %cl          # 1-byte Reload
	movb	%cl, -24(%rax)
	movb	512(%rsp), %cl          # 1-byte Reload
	movb	%cl, -26(%rax)
	movb	528(%rsp), %cl          # 1-byte Reload
	movb	%cl, -28(%rax)
	movb	544(%rsp), %cl          # 1-byte Reload
	movb	%cl, -30(%rax)
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm2, %xmm2    # xmm2 = xmm2[8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15]
	psraw	$8, %xmm2
	pmullw	%xmm7, %xmm2
	pand	%xmm6, %xmm2
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	psraw	$8, %xmm1
	pmullw	%xmm7, %xmm1
	pand	%xmm6, %xmm1
	packuswb	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psllw	$6, %xmm2
	pand	%xmm10, %xmm2
	por	%xmm1, %xmm2
	psllw	$4, %xmm0
	pand	%xmm5, %xmm0
	paddb	%xmm2, %xmm0
	movdqa	%xmm0, 832(%rsp)
	movb	832(%rsp), %cl
	movb	%cl, 544(%rsp)          # 1-byte Spill
	movb	833(%rsp), %cl
	movb	%cl, 528(%rsp)          # 1-byte Spill
	movb	834(%rsp), %cl
	movb	%cl, 512(%rsp)          # 1-byte Spill
	movb	835(%rsp), %cl
	movb	%cl, 496(%rsp)          # 1-byte Spill
	movb	836(%rsp), %cl
	movb	%cl, 480(%rsp)          # 1-byte Spill
	movb	837(%rsp), %cl
	movb	%cl, 464(%rsp)          # 1-byte Spill
	movb	838(%rsp), %cl
	movb	%cl, 463(%rsp)          # 1-byte Spill
	movb	839(%rsp), %r15b
	movb	840(%rsp), %r11b
	movb	841(%rsp), %dl
	movb	842(%rsp), %r9b
	movb	843(%rsp), %r8b
	movb	844(%rsp), %dil
	movb	845(%rsp), %sil
	movb	846(%rsp), %cl
	movb	847(%rsp), %r14b
	movb	%r14b, -1(%rax)
	movb	%cl, -3(%rax)
	movq	%rbx, %rcx
	movb	%sil, -5(%rax)
	movb	%dil, -7(%rax)
	movb	%r8b, -9(%rax)
	movb	%r9b, -11(%rax)
	movb	%dl, -13(%rax)
	movq	560(%rsp), %rdx         # 8-byte Reload
	movb	%r11b, -15(%rax)
	movb	%r15b, -17(%rax)
	movb	463(%rsp), %bl          # 1-byte Reload
	movb	%bl, -19(%rax)
	movb	464(%rsp), %bl          # 1-byte Reload
	movb	%bl, -21(%rax)
	movb	480(%rsp), %bl          # 1-byte Reload
	movb	%bl, -23(%rax)
	movb	496(%rsp), %bl          # 1-byte Reload
	movb	%bl, -25(%rax)
	movb	512(%rsp), %bl          # 1-byte Reload
	movb	%bl, -27(%rax)
	movb	528(%rsp), %bl          # 1-byte Reload
	movb	%bl, -29(%rax)
	movb	544(%rsp), %bl          # 1-byte Reload
	movb	%bl, -31(%rax)
	addq	$-32, %rax
	addq	$-16, %rcx
	addq	$-16, %rdx
	jne	.LBB38_165
# BB#166:                               #   in Loop: Header=BB38_121 Depth=1
	movl	660(%rsp), %edx         # 4-byte Reload
	movl	644(%rsp), %r14d        # 4-byte Reload
	movq	336(%rsp), %r11         # 8-byte Reload
	movq	736(%rsp), %r9          # 8-byte Reload
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	184(%rsp), %rax         # 8-byte Reload
	jmp	.LBB38_167
.LBB38_184:                             # %if.else.158.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpb	$0, 347(%rsp)           # 1-byte Folded Reload
	movl	348(%rsp), %eax         # 4-byte Reload
	movq	720(%rsp), %r8          # 8-byte Reload
	jne	.LBB38_188
# BB#185:                               # %while.body.175.lr.ph.i
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	256(%rsp), %rax         # 8-byte Reload
	leaq	(%r9,%rax), %rsi
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	(%r9,%rax), %rdi
	.align	16, 0x90
.LBB38_186:                             # %while.body.175.i
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-2(%rsi), %dl
	movb	-1(%rsi), %al
	addq	$-2, %rsi
	movb	%al, %cl
	shlb	$3, %cl
	movb	%al, %bl
	shrb	$2, %bl
	andb	$7, %bl
	orb	%cl, %bl
	movb	%bl, (%rdi)
	movb	%dl, %cl
	shlb	$5, %cl
	shrb	$3, %al
	andb	$28, %al
	orb	%cl, %al
	movb	%dl, %cl
	shrb	%cl
	andb	$3, %cl
	orb	%al, %cl
	movb	%cl, -1(%rdi)
	movb	%dl, %al
	andb	$-8, %al
	shrb	$5, %dl
	orb	%al, %dl
	movb	%dl, -2(%rdi)
	addq	$-3, %rdi
	cmpq	%r9, %rsi
	ja	.LBB38_186
# BB#187:                               #   in Loop: Header=BB38_121 Depth=1
	movl	268(%rsp), %eax         # 4-byte Reload
.LBB38_188:                             # %if.end.206.i
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	700(%rsp), %ecx         # 4-byte Reload
	cmpl	$23, %ecx
	jg	.LBB38_196
# BB#189:                               # %if.end.206.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$3, %ecx
	je	.LBB38_177
	jmp	.LBB38_190
.LBB38_196:                             # %if.end.206.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$24, %ecx
	je	.LBB38_273
# BB#197:                               # %if.end.206.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$32, %ecx
	jne	.LBB38_198
# BB#199:                               # %if.then.209.i
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%eax, %eax
	jle	.LBB38_296
# BB#200:                               # %while.body.221.lr.ph.i
                                        #   in Loop: Header=BB38_121 Depth=1
	addl	$2, %eax
	cltq
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	cltq
	leaq	(%rax,%r9), %rax
	shll	$2, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rcx
	.align	16, 0x90
.LBB38_201:                             # %while.body.221.i
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rax), %esi
	movb	-2(%rax), %dl
	movzbl	-3(%rax), %edi
	addq	$-3, %rax
	cmpl	%esi, %edi
	jne	.LBB38_204
# BB#202:                               # %while.body.221.i
                                        #   in Loop: Header=BB38_201 Depth=2
	movq	%r9, %r15
	movzbl	%dl, %r9d
	movzbl	%dil, %ebx
	cmpl	%r9d, %ebx
	movq	%r15, %r9
	jne	.LBB38_204
# BB#203:                               # %if.then.233.i
                                        #   in Loop: Header=BB38_201 Depth=2
	movb	$0, -1(%rcx)
	movb	$0, -2(%rcx)
	movb	$0, -3(%rcx)
	movb	%dl, -4(%rcx)
	jmp	.LBB38_205
	.align	16, 0x90
.LBB38_204:                             # %if.else.238.i
                                        #   in Loop: Header=BB38_201 Depth=2
	movb	%sil, -1(%rcx)
	movb	%dl, -2(%rcx)
	movb	%dil, -3(%rcx)
	movb	$0, -4(%rcx)
.LBB38_205:                             # %while.cond.218.backedge.i
                                        #   in Loop: Header=BB38_201 Depth=2
	addq	$-4, %rcx
	cmpq	%r9, %rax
	ja	.LBB38_201
	jmp	.LBB38_206
.LBB38_159:                             #   in Loop: Header=BB38_121 Depth=1
	xorl	%eax, %eax
	jmp	.LBB38_167
.LBB38_161:                             #   in Loop: Header=BB38_121 Depth=1
	xorl	%eax, %eax
	movl	644(%rsp), %r14d        # 4-byte Reload
	movq	736(%rsp), %r9          # 8-byte Reload
	movq	200(%rsp), %rdi         # 8-byte Reload
.LBB38_167:                             # %middle.block1928
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpq	%rax, %rdi
	movl	372(%rsp), %eax         # 4-byte Reload
	je	.LBB38_171
.LBB38_168:                             # %while.body.i.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%edx, %edi
	decq	%r10
	movb	$5, %r8b
	.align	16, 0x90
.LBB38_169:                             # %while.body.i
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rbp), %dl
	decq	%rbp
	movb	%dl, %al
	andb	$3, %al
	movb	%dl, %bl
	shlb	$4, %bl
	andb	$-64, %bl
	movb	%dl, %sil
	shrb	$4, %sil
	andb	$3, %sil
	movb	%dl, %cl
	shrb	$6, %cl
	mulb	%r8b
	orb	%bl, %al
	shlb	$2, %dl
	andb	$48, %dl
	addb	%al, %dl
	movb	%dl, (%r10)
	movb	%sil, %al
	mulb	%r8b
	movb	%cl, %dl
	shlb	$6, %dl
	orb	%al, %dl
	shlb	$4, %cl
	addb	%dl, %cl
	movb	%cl, -1(%r10)
	addq	$-2, %r10
	cmpq	%r9, %rbp
	ja	.LBB38_169
# BB#170:                               #   in Loop: Header=BB38_121 Depth=1
	movl	372(%rsp), %eax         # 4-byte Reload
	movl	%edi, %edx
.LBB38_171:                             # %if.end.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$24, %edx
	jne	.LBB38_175
# BB#172:                               # %if.then.46.i
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%eax, %eax
	movq	752(%rsp), %rbp         # 8-byte Reload
	movq	760(%rsp), %r10         # 8-byte Reload
	jle	.LBB38_206
# BB#173:                               # %while.body.57.lr.ph.i
                                        #   in Loop: Header=BB38_121 Depth=1
	addl	$2, %eax
	cltq
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	cltq
	leaq	(%rax,%r9), %rsi
	shll	$2, %ecx
	movslq	%ecx, %rcx
	leaq	-1(%r9,%rcx), %rdi
	.align	16, 0x90
.LBB38_174:                             # %while.body.57.i
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rsi), %cl
	movq	%r9, %r15
	movb	-3(%rsi), %r9b
	movb	-2(%rsi), %dl
	addq	$-3, %rsi
	movb	%cl, %r8b
	shlb	$2, %r8b
	shrb	$4, %cl
	movb	%cl, %bl
	andb	$3, %bl
	orb	%r8b, %bl
	movb	%bl, (%rdi)
	movb	%dl, %bl
	shlb	$4, %bl
	andb	$12, %cl
	orb	%bl, %cl
	shrb	$2, %dl
	movb	%dl, %al
	andb	$3, %al
	orb	%cl, %al
	movb	%al, -1(%rdi)
	movb	%r9b, %al
	andb	$3, %al
	movb	%r9b, %cl
	shlb	$6, %cl
	andb	$60, %dl
	orb	%cl, %dl
	orb	%al, %dl
	movb	%dl, -2(%rdi)
	movb	%r9b, %al
	andb	$-4, %al
	shrb	$6, %r9b
	orb	%al, %r9b
	movb	%r9b, -3(%rdi)
	movq	%r15, %r9
	addq	$-4, %rdi
	cmpq	%r9, %rsi
	ja	.LBB38_174
	jmp	.LBB38_206
.LBB38_175:                             # %if.else.i.859
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	700(%rsp), %ecx         # 4-byte Reload
	cmpl	$23, %ecx
	jle	.LBB38_176
# BB#179:                               # %if.else.i.859
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$24, %ecx
	movq	720(%rsp), %r8          # 8-byte Reload
	movq	752(%rsp), %rbp         # 8-byte Reload
	movq	760(%rsp), %r10         # 8-byte Reload
	je	.LBB38_273
# BB#180:                               # %if.else.i.859
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$32, %ecx
	jne	.LBB38_198
# BB#181:                               # %if.then.106.i
                                        #   in Loop: Header=BB38_121 Depth=1
	leal	1(%rax), %ecx
	shrl	$31, %ecx
	testl	%eax, %eax
	jle	.LBB38_296
# BB#182:                               # %while.body.118.lr.ph.i
                                        #   in Loop: Header=BB38_121 Depth=1
	leal	1(%rax,%rcx), %ecx
	sarl	%ecx
	leal	(%rcx,%rcx), %eax
	cltq
	leaq	(%rax,%r9), %rax
	shll	$2, %ecx
	movslq	%ecx, %rcx
	leaq	-1(%r9,%rcx), %rcx
	.align	16, 0x90
.LBB38_183:                             # %while.body.118.i
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rax), %edx
	movl	%edx, %esi
	shll	$4, %esi
	movl	%edx, %edi
	shrl	$4, %edi
	andl	$240, %edx
	orl	%edi, %edx
	andl	$7, %edi
	orl	%esi, %edi
	movzbl	-2(%rax), %esi
	leaq	-2(%rax), %rax
	movb	%dil, (%rcx)
	movb	%dl, -1(%rcx)
	movl	%esi, %edx
	shll	$4, %edx
	movl	%esi, %edi
	shrl	$4, %edi
	orl	%edi, %edx
	movb	%dl, -2(%rcx)
	andl	$240, %esi
	orl	%edi, %esi
	movb	%sil, -3(%rcx)
	addq	$-4, %rcx
	cmpq	%r9, %rax
	ja	.LBB38_183
	.align	16, 0x90
.LBB38_206:                             # %if.end.618
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	700(%rsp), %ecx         # 4-byte Reload
	cmpl	$23, %ecx
	jg	.LBB38_207
.LBB38_176:                             # %if.else.i.859
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$3, %ecx
	movq	720(%rsp), %r8          # 8-byte Reload
	jne	.LBB38_190
.LBB38_177:                             # %sw.bb.619
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	cmpl	$0, 412(%rsp)           # 4-byte Folded Reload
	jle	.LBB38_178
# BB#210:                               # %for.body.626.lr.ph
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, %r15
	movq	704(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rax
	shlq	$5, %rax
	movq	2960(%rsp,%rax), %rax
	xorl	%ecx, %ecx
	movq	360(%rsp), %r11         # 8-byte Reload
	movq	328(%rsp), %r14         # 8-byte Reload
	movq	416(%rsp), %r12         # 8-byte Reload
	.align	16, 0x90
.LBB38_211:                             # %for.body.626
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	3088(%rsp,%r13,8), %rdx
	movzbl	(%rdx,%rcx), %r8d
	movzbl	1(%rdx,%rcx), %r9d
	movzbl	2(%rdx,%rcx), %ebp
	movq	hp_colour_print_page.spr40(,%rbp,8), %rbp
	shrq	%rbp
	movzbl	3(%rdx,%rcx), %ebx
	movq	hp_colour_print_page.spr08(,%rbx,8), %rbx
	movzbl	4(%rdx,%rcx), %r10d
	movzbl	5(%rdx,%rcx), %edi
	movq	hp_colour_print_page.spr08(,%rdi,8), %rdi
	shrq	%rdi
	movzbl	6(%rdx,%rcx), %esi
	movzbl	7(%rdx,%rcx), %edx
	movq	hp_colour_print_page.spr02(,%rdx,8), %rdx
	shrq	%rdx
	addq	hp_colour_print_page.spr40(,%r8,8), %rbx
	addq	hp_colour_print_page.spr40(,%r9,8), %rbp
	addq	hp_colour_print_page.spr08(,%r10,8), %rbp
	addq	%rdi, %rbp
	addq	hp_colour_print_page.spr02(,%rsi,8), %rbp
	addq	%rdx, %rbp
	leaq	(%rbp,%rbx,2), %rdx
	movq	%rdx, %rsi
	shrq	$16, %rsi
	movb	%sil, (%rax)
	movq	%r12, %rsi
	movb	%dh, (%rsi,%rax)  # NOREX
	movb	%dl, (%r14,%rax)
	addq	$8, %rcx
	incq	%rax
	cmpq	%r11, %rcx
	jl	.LBB38_211
# BB#212:                               #   in Loop: Header=BB38_121 Depth=1
	movq	624(%rsp), %r9          # 8-byte Reload
	movq	%r15, %r11
	movl	700(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB38_329
.LBB38_207:                             # %if.end.618
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$24, %ecx
	movq	720(%rsp), %r8          # 8-byte Reload
	jne	.LBB38_208
.LBB38_273:                             # %sw.bb.868
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB38_276
# BB#274:                               # %for.cond.985.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB38_275
	.align	16, 0x90
.LBB38_287:                             # %for.cond.995.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_288 Depth 3
	movl	%ecx, 744(%rsp)         # 4-byte Spill
	movq	%r10, 760(%rsp)         # 8-byte Spill
	movq	%rbp, 752(%rsp)         # 8-byte Spill
	leaq	-96(%r13), %rax
	movq	%rax, 736(%rsp)         # 8-byte Spill
	movl	$1, %eax
	xorl	%ebp, %ebp
	movl	$1, %ebx
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	movl	%r11d, %r9d
	movq	808(%rsp), %r11         # 8-byte Reload
	movq	800(%rsp), %r8          # 8-byte Reload
	.align	16, 0x90
.LBB38_288:                             # %for.body.999
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$7, %r8d, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-4(%r13,%rbp,4), %edx
	movzbl	-1(%r12,%rbp), %r14d
	shll	$19, %r14d
	addl	%edx, %r14d
	cmpl	$67108865, %r14d        # imm = 0x4000001
	jl	.LBB38_290
# BB#289:                               # %if.then.1013
                                        #   in Loop: Header=BB38_288 Depth=3
	movzbl	%cl, %ecx
	orl	%ebx, %ecx
	addl	$-133693440, %r14d      # imm = 0xFFFFFFFFF8080000
.LBB38_290:                             # %if.end.1019
                                        #   in Loop: Header=BB38_288 Depth=3
	leal	8(%r14,%r14,2), %edx
	sarl	$4, %edx
	addl	%edx, 8(%r13,%rbp,4)
	leal	(%r14,%r14,4), %edx
	leal	8(%r8,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -4(%r13,%rbp,4)
	imull	$7, %r11d, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-8(%r13,%rbp,4), %edx
	movzbl	-2(%r12,%rbp), %edi
	shll	$19, %edi
	addl	%edx, %edi
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB38_292
# BB#291:                               # %if.then.1041
                                        #   in Loop: Header=BB38_288 Depth=3
	movzbl	%r10b, %r10d
	orl	%ebx, %r10d
	addl	$-133693440, %edi       # imm = 0xFFFFFFFFF8080000
.LBB38_292:                             # %if.end.1047
                                        #   in Loop: Header=BB38_288 Depth=3
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	addl	%edx, 4(%r13,%rbp,4)
	leal	(%rdi,%rdi,4), %edx
	leal	8(%r11,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -8(%r13,%rbp,4)
	imull	$7, %r9d, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-12(%r13,%rbp,4), %edx
	movzbl	-3(%r12,%rbp), %esi
	shll	$19, %esi
	addl	%edx, %esi
	cmpl	$67108865, %esi         # imm = 0x4000001
	jl	.LBB38_294
# BB#293:                               # %if.then.1069
                                        #   in Loop: Header=BB38_288 Depth=3
	movzbl	%r15b, %edx
	orl	%edx, %ebx
	addl	$-133693440, %esi       # imm = 0xFFFFFFFFF8080000
	movb	%bl, %r15b
.LBB38_294:                             # %if.end.1075
                                        #   in Loop: Header=BB38_288 Depth=3
	leal	8(%rsi,%rsi,2), %edx
	sarl	$4, %edx
	addl	%edx, (%r13,%rbp,4)
	leal	(%rsi,%rsi,4), %edx
	leal	8(%r9,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -12(%r13,%rbp,4)
	movl	%eax, %ebx
	addl	%ebx, %ebx
	addq	$-3, %rbp
	movl	%ebx, %eax
	andl	$254, %eax
	movl	%esi, %r9d
	movl	%edi, %r11d
	movl	%r14d, %r8d
	jne	.LBB38_288
# BB#295:                               # %for.end.1090
                                        #   in Loop: Header=BB38_287 Depth=2
	movq	%r14, 800(%rsp)         # 8-byte Spill
	movq	%rdi, 808(%rsp)         # 8-byte Spill
	addq	$-24, %r12
	movq	792(%rsp), %rax         # 8-byte Reload
	movb	%cl, -1(%rax)
	decq	%rax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	movq	760(%rsp), %rax         # 8-byte Reload
	movb	%r10b, -1(%rax)
	movq	%rax, %r10
	decq	%r10
	movq	752(%rsp), %rbp         # 8-byte Reload
	movb	%r15b, -1(%rbp)
	decq	%rbp
	movl	744(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	cmpl	788(%rsp), %ecx         # 4-byte Folded Reload
	movq	736(%rsp), %r13         # 8-byte Reload
	movq	%rsi, %r11
	jl	.LBB38_287
	jmp	.LBB38_275
.LBB38_190:                             # %if.end.206.i
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$8, %ecx
	jne	.LBB38_198
# BB#191:                               # %sw.bb.683
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$10, 444(%rsp)          # 4-byte Folded Reload
	jne	.LBB38_257
# BB#192:                               # %sw.bb.684
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 18512(%rax)
	je	.LBB38_193
.LBB38_257:                             # %sw.default.754
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%r8d, %r8d
	je	.LBB38_260
# BB#258:                               # %for.cond.812.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	xorl	%r10d, %r10d
	movq	600(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movl	788(%rsp), %r9d         # 4-byte Reload
	movq	800(%rsp), %rbp         # 8-byte Reload
	movq	792(%rsp), %r14         # 8-byte Reload
	jle	.LBB38_259
	.align	16, 0x90
.LBB38_267:                             # %for.cond.822.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_268 Depth 3
	leaq	-32(%r13), %r8
	movl	$1, %ebx
	movq	$-1, %rsi
	xorl	%edx, %edx
	movl	$1, %edi
	movl	%ebp, %eax
	.align	16, 0x90
.LBB38_268:                             # %for.body.826
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$7, %eax, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	(%r13,%rsi,4), %ecx
	movzbl	(%r12,%rsi), %ebp
	shll	$19, %ebp
	addl	%ecx, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB38_270
# BB#269:                               # %if.then.840
                                        #   in Loop: Header=BB38_268 Depth=3
	movzbl	%dl, %edx
	orl	%edi, %edx
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB38_270:                             # %if.end.846
                                        #   in Loop: Header=BB38_268 Depth=3
	leal	8(%rbp,%rbp,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, 4(%r13,%rsi,4)
	leal	(%rbp,%rbp,4), %ecx
	leal	8(%rax,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r13,%rsi,4)
	movl	%ebx, %edi
	addl	%edi, %edi
	decq	%rsi
	movl	%edi, %ebx
	andl	$254, %ebx
	movl	%ebp, %eax
	jne	.LBB38_268
# BB#271:                               # %for.end.861
                                        #   in Loop: Header=BB38_267 Depth=2
	addq	$-8, %r12
	movb	%dl, -1(%r14)
	decq	%r14
	incl	%r10d
	cmpl	%r9d, %r10d
	movq	%r8, %r13
	jl	.LBB38_267
# BB#272:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%rbp, 800(%rsp)         # 8-byte Spill
	jmp	.LBB38_259
.LBB38_198:                             #   in Loop: Header=BB38_121 Depth=1
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	movq	624(%rsp), %r9          # 8-byte Reload
	jmp	.LBB38_329
.LBB38_208:                             # %if.end.618
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$32, %ecx
	jne	.LBB38_209
.LBB38_296:                             # %sw.bb.1098
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, %rbx
	movq	712(%rsp), %rax         # 8-byte Reload
	cmpw	$0, 18472(%rax)
	jle	.LBB38_298
# BB#297:                               # %if.then.1103
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	leaq	3088(%rsp), %rdi
	leaq	2960(%rsp), %rsi
	leaq	3120(%rsp), %rdx
	movl	788(%rsp), %ecx         # 4-byte Reload
	movq	%r8, 720(%rsp)          # 8-byte Spill
	callq	bjc_fscmyk
	movdqa	608(%rsp), %xmm7        # 16-byte Reload
	movq	624(%rsp), %r9          # 8-byte Reload
	movq	%rbx, %r11
	movl	700(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB38_329
.LBB38_178:                             #   in Loop: Header=BB38_121 Depth=1
	movq	624(%rsp), %r9          # 8-byte Reload
	jmp	.LBB38_329
.LBB38_276:                             # %for.cond.872.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	800(%rsp), %rax         # 8-byte Reload
	jle	.LBB38_275
	.align	16, 0x90
.LBB38_277:                             # %for.cond.882.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_278 Depth 3
	movq	%r10, 760(%rsp)         # 8-byte Spill
	movq	%rbp, %r9
	leaq	96(%r13), %rcx
	movq	%rcx, 800(%rsp)         # 8-byte Spill
	movl	$128, %ebx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movl	%r11d, %edx
	movq	808(%rsp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	.align	16, 0x90
.LBB38_278:                             # %for.body.886
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$7, %edx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	(%r13,%rcx,4), %ebp
	movzbl	(%r12,%rcx), %r11d
	shll	$19, %r11d
	addl	%ebp, %r11d
	cmpl	$67108865, %r11d        # imm = 0x4000001
	jl	.LBB38_280
# BB#279:                               # %if.then.898
                                        #   in Loop: Header=BB38_278 Depth=3
	movzbl	%r10b, %r10d
	orl	%ebx, %r10d
	addl	$-133693440, %r11d      # imm = 0xFFFFFFFFF8080000
.LBB38_280:                             # %if.end.904
                                        #   in Loop: Header=BB38_278 Depth=3
	leal	8(%r11,%r11,2), %ebp
	sarl	$4, %ebp
	addl	%ebp, -12(%r13,%rcx,4)
	leal	(%r11,%r11,4), %ebp
	leal	8(%rdx,%rbp), %edx
	sarl	$4, %edx
	movl	%edx, (%r13,%rcx,4)
	imull	$7, %edi, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	4(%r13,%rcx,4), %edx
	movzbl	1(%r12,%rcx), %ebp
	shll	$19, %ebp
	addl	%edx, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB38_282
# BB#281:                               # %if.then.926
                                        #   in Loop: Header=BB38_278 Depth=3
	movzbl	%r8b, %r8d
	orl	%ebx, %r8d
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB38_282:                             # %if.end.932
                                        #   in Loop: Header=BB38_278 Depth=3
	leal	8(%rbp,%rbp,2), %edx
	sarl	$4, %edx
	addl	%edx, -8(%r13,%rcx,4)
	leal	(%rbp,%rbp,4), %edx
	leal	8(%rdi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, 4(%r13,%rcx,4)
	imull	$7, %esi, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	8(%r13,%rcx,4), %edx
	movzbl	2(%r12,%rcx), %eax
	shll	$19, %eax
	addl	%edx, %eax
	cmpl	$67108865, %eax         # imm = 0x4000001
	jl	.LBB38_284
# BB#283:                               # %if.then.954
                                        #   in Loop: Header=BB38_278 Depth=3
	movzbl	%r15b, %r15d
	orl	%ebx, %r15d
	addl	$-133693440, %eax       # imm = 0xFFFFFFFFF8080000
.LBB38_284:                             # %if.end.960
                                        #   in Loop: Header=BB38_278 Depth=3
	leal	8(%rax,%rax,2), %edx
	sarl	$4, %edx
	addl	%edx, -4(%r13,%rcx,4)
	leal	(%rax,%rax,4), %edx
	leal	8(%rsi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, 8(%r13,%rcx,4)
	shrl	%ebx
	addq	$3, %rcx
	testl	%ebx, %ebx
	movl	%r11d, %edx
	movl	%ebp, %edi
	movl	%eax, %esi
	jne	.LBB38_278
# BB#285:                               # %for.end.977
                                        #   in Loop: Header=BB38_277 Depth=2
	movq	%rbp, 808(%rsp)         # 8-byte Spill
	addq	$24, %r12
	movb	%r10b, (%r9)
	movq	%r9, %rbp
	incq	%rbp
	movq	760(%rsp), %r10         # 8-byte Reload
	movb	%r8b, (%r10)
	incq	%r10
	movq	792(%rsp), %rcx         # 8-byte Reload
	movb	%r15b, (%rcx)
	incq	%rcx
	movq	%rcx, 792(%rsp)         # 8-byte Spill
	incl	%r14d
	cmpl	788(%rsp), %r14d        # 4-byte Folded Reload
	movq	800(%rsp), %r13         # 8-byte Reload
	jl	.LBB38_277
# BB#286:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%rax, 800(%rsp)         # 8-byte Spill
.LBB38_275:                             #   in Loop: Header=BB38_121 Depth=1
	movl	700(%rsp), %ecx         # 4-byte Reload
	movq	624(%rsp), %r9          # 8-byte Reload
	jmp	.LBB38_329
.LBB38_209:                             #   in Loop: Header=BB38_121 Depth=1
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	jmp	.LBB38_259
.LBB38_260:                             # %for.cond.758.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	xorl	%r10d, %r10d
	movq	600(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movl	788(%rsp), %r8d         # 4-byte Reload
	movq	800(%rsp), %rcx         # 8-byte Reload
	movq	792(%rsp), %rax         # 8-byte Reload
	jle	.LBB38_259
	.align	16, 0x90
.LBB38_261:                             # %for.cond.767.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_262 Depth 3
	leaq	32(%r13), %r9
	movl	$128, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%ecx, %ebp
	.align	16, 0x90
.LBB38_262:                             # %for.body.771
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_261 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$7, %ebp, %ebx
	addl	$8, %ebx
	sarl	$4, %ebx
	addl	(%r13,%rsi,4), %ebx
	movzbl	(%r12,%rsi), %ecx
	shll	$19, %ecx
	addl	%ebx, %ecx
	cmpl	$67108865, %ecx         # imm = 0x4000001
	jl	.LBB38_264
# BB#263:                               # %if.then.783
                                        #   in Loop: Header=BB38_262 Depth=3
	movzbl	%dil, %edi
	orl	%edx, %edi
	addl	$-133693440, %ecx       # imm = 0xFFFFFFFFF8080000
.LBB38_264:                             # %if.end.789
                                        #   in Loop: Header=BB38_262 Depth=3
	leal	8(%rcx,%rcx,2), %ebx
	sarl	$4, %ebx
	addl	%ebx, -4(%r13,%rsi,4)
	leal	(%rcx,%rcx,4), %ebx
	leal	8(%rbp,%rbx), %ebp
	sarl	$4, %ebp
	movl	%ebp, (%r13,%rsi,4)
	shrl	%edx
	incq	%rsi
	testl	%edx, %edx
	movl	%ecx, %ebp
	jne	.LBB38_262
# BB#265:                               # %for.end.806
                                        #   in Loop: Header=BB38_261 Depth=2
	addq	$8, %r12
	movb	%dil, (%rax)
	incq	%rax
	incl	%r10d
	cmpl	%r8d, %r10d
	movq	%r9, %r13
	jl	.LBB38_261
# BB#266:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%rcx, 800(%rsp)         # 8-byte Spill
.LBB38_259:                             #   in Loop: Header=BB38_121 Depth=1
	movq	624(%rsp), %r9          # 8-byte Reload
	movl	700(%rsp), %ecx         # 4-byte Reload
	.align	16, 0x90
.LBB38_329:                             # %sw.epilog.1405
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	584(%rsp), %rax         # 8-byte Reload
	cmpl	$4, %eax
	jne	.LBB38_330
# BB#335:                               # %land.lhs.true.1408
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpl	$32, %ecx
	movl	$4, %r13d
	movq	712(%rsp), %rax         # 8-byte Reload
	jne	.LBB38_338
# BB#336:                               # %land.lhs.true.1408
                                        #   in Loop: Header=BB38_121 Depth=1
	movzwl	18472(%rax), %eax
	testw	%ax, %ax
	jle	.LBB38_338
# BB#337:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 624(%rsp)          # 8-byte Spill
	movq	704(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB38_331
	.align	16, 0x90
.LBB38_330:                             # %for.cond.1473.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 624(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movl	%eax, %r13d
	movq	728(%rsp), %r12         # 8-byte Reload
	movq	704(%rsp), %rbx         # 8-byte Reload
	jg	.LBB38_331
	jmp	.LBB38_380
.LBB38_338:                             # %if.then.1416
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	704(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	shlq	$5, %rdx
	cmpl	$4, 660(%rsp)           # 4-byte Folded Reload
	movq	2984(%rsp,%rdx), %rsi
	movq	2976(%rsp,%rdx), %rcx
	movq	2960(%rsp,%rdx), %rax
	movq	2968(%rsp,%rdx), %rdx
	jle	.LBB38_339
# BB#356:                               # %for.cond.1432.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	600(%rsp), %r8          # 8-byte Reload
	testl	%r8d, %r8d
	jle	.LBB38_340
# BB#357:                               # %overflow.checked1636
                                        #   in Loop: Header=BB38_121 Depth=1
	xorl	%r12d, %r12d
	cmpq	$0, 352(%rsp)           # 8-byte Folded Reload
	je	.LBB38_358
# BB#359:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, 336(%rsp)         # 8-byte Spill
	movq	%r9, 624(%rsp)          # 8-byte Spill
	movq	288(%rsp), %rbx         # 8-byte Reload
	leaq	(%rsi,%rbx,8), %rdi
	leaq	(%rcx,%rbx,8), %rbp
	leaq	(%rdx,%rbx,8), %r12
	leaq	(%rax,%rbx,8), %rbx
	cmpq	%rbp, %rsi
	setbe	792(%rsp)               # 1-byte Folded Spill
	cmpq	%rdi, %rcx
	setbe	%r14b
	cmpq	%r12, %rsi
	setbe	%r15b
	cmpq	%rdi, %rdx
	setbe	%r13b
	cmpq	%rbx, %rsi
	setbe	%r8b
	cmpq	%rdi, %rax
	setbe	%dil
	cmpq	%r12, %rcx
	setbe	%r9b
	cmpq	%rbp, %rdx
	setbe	760(%rsp)               # 1-byte Folded Spill
	cmpq	%rbx, %rcx
	setbe	%r10b
	cmpq	%rbp, %rax
	setbe	%bpl
	cmpq	%rbx, %rdx
	setbe	%r11b
	cmpq	%r12, %rax
	setbe	%bl
	xorl	%r12d, %r12d
	testb	792(%rsp), %r14b        # 1-byte Folded Reload
	jne	.LBB38_360
# BB#361:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%r13b, %r15b
	jne	.LBB38_360
# BB#362:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%dil, %r8b
	jne	.LBB38_360
# BB#363:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	760(%rsp), %r9b         # 1-byte Folded Reload
	jne	.LBB38_360
# BB#364:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%bpl, %r10b
	jne	.LBB38_360
# BB#365:                               # %vector.memcheck
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%bl, %r11b
	jne	.LBB38_360
# BB#366:                               #   in Loop: Header=BB38_121 Depth=1
	movq	352(%rsp), %rdi         # 8-byte Reload
	leaq	(%rax,%rdi,8), %r9
	leaq	(%rdx,%rdi,8), %rbp
	leaq	(%rcx,%rdi,8), %rbx
	leaq	(%rsi,%rdi,8), %r8
	movq	%rdi, %r10
	movq	232(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB38_367:                             # %vector.body1632
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rcx), %xmm0
	movdqu	(%rdx), %xmm1
	pand	%xmm0, %xmm1
	movdqu	(%rax), %xmm0
	pand	%xmm1, %xmm0
	movdqu	(%rsi), %xmm1
	por	%xmm0, %xmm1
	movdqu	%xmm1, (%rsi)
	movdqu	(%rcx), %xmm1
	movdqa	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movdqu	%xmm2, (%rcx)
	movdqu	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movdqu	%xmm2, (%rdx)
	movdqu	(%rax), %xmm1
	pandn	%xmm1, %xmm0
	movdqu	%xmm0, (%rax)
	addq	$16, %rsi
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$16, %rax
	addq	$-2, %rdi
	jne	.LBB38_367
# BB#368:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, %rax
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%r8, %rsi
	movq	%r10, %r12
	movl	%r10d, %ebp
	jmp	.LBB38_369
.LBB38_339:                             # %for.cond.1451.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	600(%rsp), %r8          # 8-byte Reload
	testl	%r8d, %r8d
	jle	.LBB38_340
# BB#341:                               # %overflow.checked1726
                                        #   in Loop: Header=BB38_121 Depth=1
	xorl	%r12d, %r12d
	cmpq	$0, 352(%rsp)           # 8-byte Folded Reload
	je	.LBB38_342
# BB#343:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, 336(%rsp)         # 8-byte Spill
	movq	%r9, 624(%rsp)          # 8-byte Spill
	movq	288(%rsp), %rbx         # 8-byte Reload
	leaq	(%rsi,%rbx,8), %rdi
	leaq	(%rcx,%rbx,8), %rbp
	leaq	(%rdx,%rbx,8), %r12
	leaq	(%rax,%rbx,8), %rbx
	cmpq	%rbp, %rsi
	setbe	792(%rsp)               # 1-byte Folded Spill
	cmpq	%rdi, %rcx
	setbe	%r14b
	cmpq	%r12, %rsi
	setbe	%r15b
	cmpq	%rdi, %rdx
	setbe	%r13b
	cmpq	%rbx, %rsi
	setbe	%r8b
	cmpq	%rdi, %rax
	setbe	%dil
	cmpq	%r12, %rcx
	setbe	%r9b
	cmpq	%rbp, %rdx
	setbe	760(%rsp)               # 1-byte Folded Spill
	cmpq	%rbx, %rcx
	setbe	%r10b
	cmpq	%rbp, %rax
	setbe	%bpl
	cmpq	%rbx, %rdx
	setbe	%r11b
	cmpq	%r12, %rax
	setbe	%bl
	xorl	%r12d, %r12d
	testb	792(%rsp), %r14b        # 1-byte Folded Reload
	jne	.LBB38_344
# BB#345:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%r13b, %r15b
	jne	.LBB38_344
# BB#346:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%dil, %r8b
	jne	.LBB38_344
# BB#347:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	760(%rsp), %r9b         # 1-byte Folded Reload
	jne	.LBB38_344
# BB#348:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%bpl, %r10b
	jne	.LBB38_344
# BB#349:                               # %vector.memcheck1765
                                        #   in Loop: Header=BB38_121 Depth=1
	andb	%bl, %r11b
	jne	.LBB38_344
# BB#350:                               #   in Loop: Header=BB38_121 Depth=1
	movq	352(%rsp), %rdi         # 8-byte Reload
	leaq	(%rax,%rdi,8), %r9
	leaq	(%rdx,%rdi,8), %rbp
	leaq	(%rcx,%rdi,8), %rbx
	leaq	(%rsi,%rdi,8), %r8
	movq	%rdi, %r10
	movq	232(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB38_351:                             # %vector.body1722
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rcx), %xmm0
	movdqu	(%rdx), %xmm1
	pand	%xmm0, %xmm1
	movdqu	(%rax), %xmm0
	pand	%xmm1, %xmm0
	movdqu	%xmm0, (%rsi)
	movdqu	(%rcx), %xmm1
	movdqa	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movdqu	%xmm2, (%rcx)
	movdqu	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	movdqu	%xmm2, (%rdx)
	movdqu	(%rax), %xmm1
	pandn	%xmm1, %xmm0
	movdqu	%xmm0, (%rax)
	addq	$16, %rsi
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$16, %rax
	addq	$-2, %rdi
	jne	.LBB38_351
# BB#352:                               #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, %rax
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%r8, %rsi
	movq	%r10, %r12
	movl	%r10d, %ebp
	jmp	.LBB38_353
.LBB38_340:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 624(%rsp)          # 8-byte Spill
	movdqa	%xmm7, 608(%rsp)        # 16-byte Spill
	jmp	.LBB38_331
.LBB38_298:                             # %if.else.1108
                                        #   in Loop: Header=BB38_121 Depth=1
	testl	%r8d, %r8d
	movq	%rbx, %r11
	je	.LBB38_305
# BB#299:                               # %for.cond.1258.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r10, 760(%rsp)         # 8-byte Spill
	movq	%rbp, 752(%rsp)         # 8-byte Spill
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	xorl	%edx, %edx
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	624(%rsp), %r9          # 8-byte Reload
	movl	700(%rsp), %ecx         # 4-byte Reload
	jle	.LBB38_329
	.align	16, 0x90
.LBB38_300:                             # %for.cond.1268.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_301 Depth 3
	movl	%edx, 736(%rsp)         # 4-byte Spill
	leaq	-128(%r13), %rax
	movq	%rax, 624(%rsp)         # 8-byte Spill
	movl	$1, %r14d
	xorl	%ebx, %ebx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB38_301:                             # %for.body.1272
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_300 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-4(%r12,%rbx), %esi
	testl	%esi, %esi
	je	.LBB38_320
# BB#302:                               # %if.then.1276
                                        #   in Loop: Header=BB38_301 Depth=3
	imull	$7, %r9d, %edi
	addl	$8, %edi
	sarl	$4, %edi
	shll	$19, %esi
	addl	%edi, %esi
	addl	-16(%r13,%rbx,4), %esi
	cmpl	$67108865, %esi         # imm = 0x4000001
	jl	.LBB38_304
# BB#303:                               # %if.then.1288
                                        #   in Loop: Header=BB38_301 Depth=3
	movzbl	%dl, %edx
	orl	%eax, %edx
	addl	$-133693440, %esi       # imm = 0xFFFFFFFFF8080000
.LBB38_304:                             # %if.end.1294
                                        #   in Loop: Header=BB38_301 Depth=3
	leal	8(%rsi,%rsi,2), %eax
	sarl	$4, %eax
	addl	%eax, (%r13,%rbx,4)
	leal	(%rsi,%rsi,4), %eax
	leal	8(%r9,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -16(%r13,%rbx,4)
	xorl	%eax, %eax
	movq	%rax, 800(%rsp)         # 8-byte Spill
	movl	%esi, %r9d
	xorl	%eax, %eax
	movq	%rax, 808(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
	jmp	.LBB38_327
	.align	16, 0x90
.LBB38_320:                             # %if.else.1305
                                        #   in Loop: Header=BB38_301 Depth=3
	movq	800(%rsp), %rcx         # 8-byte Reload
	imull	$7, %ecx, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-4(%r13,%rbx,4), %edi
	movzbl	-1(%r12,%rbx), %esi
	shll	$19, %esi
	addl	%edi, %esi
	cmpl	$67108865, %esi         # imm = 0x4000001
	jl	.LBB38_322
# BB#321:                               # %if.then.1317
                                        #   in Loop: Header=BB38_301 Depth=3
	movzbl	%r10b, %r10d
	orl	%eax, %r10d
	addl	$-133693440, %esi       # imm = 0xFFFFFFFFF8080000
.LBB38_322:                             # %if.end.1323
                                        #   in Loop: Header=BB38_301 Depth=3
	leal	8(%rsi,%rsi,2), %edi
	sarl	$4, %edi
	addl	%edi, 12(%r13,%rbx,4)
	leal	(%rsi,%rsi,4), %edi
	movq	800(%rsp), %rcx         # 8-byte Reload
	leal	8(%rcx,%rdi), %edi
	sarl	$4, %edi
	movl	%edi, -4(%r13,%rbx,4)
	movq	808(%rsp), %rcx         # 8-byte Reload
	imull	$7, %ecx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	-8(%r13,%rbx,4), %ebp
	movzbl	-2(%r12,%rbx), %edi
	shll	$19, %edi
	addl	%ebp, %edi
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB38_324
# BB#323:                               # %if.then.1345
                                        #   in Loop: Header=BB38_301 Depth=3
	movzbl	%r8b, %r8d
	orl	%eax, %r8d
	addl	$-133693440, %edi       # imm = 0xFFFFFFFFF8080000
.LBB38_324:                             # %if.end.1351
                                        #   in Loop: Header=BB38_301 Depth=3
	leal	8(%rdi,%rdi,2), %ebp
	sarl	$4, %ebp
	addl	%ebp, 8(%r13,%rbx,4)
	leal	(%rdi,%rdi,4), %ebp
	movq	808(%rsp), %rcx         # 8-byte Reload
	leal	8(%rcx,%rbp), %ebp
	sarl	$4, %ebp
	movl	%ebp, -8(%r13,%rbx,4)
	imull	$7, %r11d, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	-12(%r13,%rbx,4), %ecx
	movzbl	-3(%r12,%rbx), %ebp
	shll	$19, %ebp
	addl	%ecx, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB38_326
# BB#325:                               # %if.then.1373
                                        #   in Loop: Header=BB38_301 Depth=3
	movzbl	%r15b, %ecx
	orl	%ecx, %eax
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
	movb	%al, %r15b
.LBB38_326:                             # %if.end.1379
                                        #   in Loop: Header=BB38_301 Depth=3
	leal	8(%rbp,%rbp,2), %eax
	sarl	$4, %eax
	addl	%eax, 4(%r13,%rbx,4)
	leal	(%rbp,%rbp,4), %eax
	leal	8(%r11,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -12(%r13,%rbx,4)
	movq	%rsi, 800(%rsp)         # 8-byte Spill
	movq	%rdi, 808(%rsp)         # 8-byte Spill
	movl	%ebp, %r11d
.LBB38_327:                             # %for.inc.1391
                                        #   in Loop: Header=BB38_301 Depth=3
	movl	%r14d, %eax
	addl	%eax, %eax
	addq	$-4, %rbx
	movl	%eax, %r14d
	andl	$254, %r14d
	jne	.LBB38_301
# BB#328:                               # %for.end.1395
                                        #   in Loop: Header=BB38_300 Depth=2
	addq	$-32, %r12
	movq	792(%rsp), %rax         # 8-byte Reload
	movb	%r10b, -1(%rax)
	decq	%rax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	movq	760(%rsp), %rax         # 8-byte Reload
	movb	%r8b, -1(%rax)
	decq	%rax
	movq	%rax, 760(%rsp)         # 8-byte Spill
	movq	752(%rsp), %rax         # 8-byte Reload
	movb	%r15b, -1(%rax)
	decq	%rax
	movq	%rax, 752(%rsp)         # 8-byte Spill
	movq	744(%rsp), %rax         # 8-byte Reload
	movb	%dl, -1(%rax)
	decq	%rax
	movq	%rax, 744(%rsp)         # 8-byte Spill
	movl	736(%rsp), %edx         # 4-byte Reload
	incl	%edx
	cmpl	788(%rsp), %edx         # 4-byte Folded Reload
	movq	624(%rsp), %r13         # 8-byte Reload
	movl	700(%rsp), %ecx         # 4-byte Reload
	jl	.LBB38_300
	jmp	.LBB38_329
.LBB38_358:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 624(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB38_370
.LBB38_342:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r9, 624(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB38_354
.LBB38_360:                             #   in Loop: Header=BB38_121 Depth=1
	xorl	%ebp, %ebp
.LBB38_369:                             # %middle.block1633
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	600(%rsp), %r8          # 8-byte Reload
	movq	336(%rsp), %r11         # 8-byte Reload
	movq	704(%rsp), %rbx         # 8-byte Reload
	movl	$4, %r13d
.LBB38_370:                             # %middle.block1633
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpq	%r12, 392(%rsp)         # 8-byte Folded Reload
	je	.LBB38_355
# BB#371:                               # %for.body.1436.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movdqa	%xmm7, 608(%rsp)        # 16-byte Spill
	movl	%r8d, %edi
	movq	%r8, 600(%rsp)          # 8-byte Spill
	subl	%ebp, %edi
	.align	16, 0x90
.LBB38_372:                             # %for.body.1436
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rbp
	andq	(%rcx), %rbp
	andq	(%rax), %rbp
	orq	%rbp, (%rsi)
	addq	$8, %rsi
	notq	%rbp
	andq	%rbp, (%rcx)
	addq	$8, %rcx
	andq	%rbp, (%rdx)
	addq	$8, %rdx
	andq	%rbp, (%rax)
	addq	$8, %rax
	decl	%edi
	jne	.LBB38_372
	jmp	.LBB38_331
.LBB38_344:                             #   in Loop: Header=BB38_121 Depth=1
	xorl	%ebp, %ebp
.LBB38_353:                             # %middle.block1723
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	600(%rsp), %r8          # 8-byte Reload
	movq	336(%rsp), %r11         # 8-byte Reload
	movq	704(%rsp), %rbx         # 8-byte Reload
	movl	$4, %r13d
.LBB38_354:                             # %middle.block1723
                                        #   in Loop: Header=BB38_121 Depth=1
	cmpq	%r12, 392(%rsp)         # 8-byte Folded Reload
	jne	.LBB38_373
.LBB38_355:                             #   in Loop: Header=BB38_121 Depth=1
	movdqa	%xmm7, 608(%rsp)        # 16-byte Spill
	movq	%r8, 600(%rsp)          # 8-byte Spill
	jmp	.LBB38_331
.LBB38_373:                             # %for.body.1455.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movdqa	%xmm7, 608(%rsp)        # 16-byte Spill
	movl	%r8d, %edi
	movq	%r8, 600(%rsp)          # 8-byte Spill
	subl	%ebp, %edi
	.align	16, 0x90
.LBB38_374:                             # %for.body.1455
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rbp
	andq	(%rcx), %rbp
	andq	(%rax), %rbp
	movq	%rbp, (%rsi)
	addq	$8, %rsi
	notq	%rbp
	andq	%rbp, (%rcx)
	addq	$8, %rcx
	andq	%rbp, (%rdx)
	addq	$8, %rdx
	andq	%rbp, (%rax)
	addq	$8, %rax
	decl	%edi
	jne	.LBB38_374
	.align	16, 0x90
.LBB38_331:                             # %for.body.1476.lr.ph.lr.ph.lr.ph
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$1, %eax
	movq	720(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	cltq
	shlq	$5, %rax
	leaq	2960(%rsp,%rax), %rax
	movq	%rax, 736(%rsp)         # 8-byte Spill
	shlq	$5, %rbx
	leaq	2960(%rsp,%rbx), %rax
	movq	%rax, 744(%rsp)         # 8-byte Spill
	movl	$0, 752(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_332
.LBB38_474:                             # %if.else.1660
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$10, 444(%rsp)          # 4-byte Folded Reload
	jne	.LBB38_492
# BB#475:                               # %if.then.1666
                                        #   in Loop: Header=BB38_332 Depth=2
	testl	%ebx, %ebx
	je	.LBB38_490
# BB#476:                               # %if.then.1668
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	712(%rsp), %r15         # 8-byte Reload
	movl	18520(%r15), %eax
	testl	%eax, %eax
	je	.LBB38_477
# BB#479:                               # %if.else.i.930
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$1, 100(%r15)
	jne	.LBB38_488
# BB#480:                               # %if.then.2.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r12, %r14
	movq	%r11, %r12
	testb	$8, %al
	jne	.LBB38_481
# BB#482:                               # %if.else.7.i
                                        #   in Loop: Header=BB38_332 Depth=2
	testb	$4, %al
	movq	%r12, %r11
	je	.LBB38_484
# BB#483:                               # %if.then.12.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r14, %r13
	movq	%r13, %rsi
	movq	%r11, %r12
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r14d
	movl	%r14d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r13, %rsi
	callq	fputc
	sarl	$8, %r14d
	movl	%r14d, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$89, %edi
	movq	%r13, %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r13, %rsi
	movq	%r13, %r14
	movq	792(%rsp), %r13         # 8-byte Reload
	callq	_IO_putc
	movq	%r12, %r11
	movl	18520(%r15), %eax
.LBB38_484:                             # %if.end.i.936
                                        #   in Loop: Header=BB38_332 Depth=2
	testb	$2, %al
	movq	%r14, %r12
	je	.LBB38_486
# BB#485:                               # %if.then.18.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r12, %rsi
	movq	%r12, %r13
	movq	%r11, %r12
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r14d
	movl	%r14d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r13, %rsi
	callq	fputc
	sarl	$8, %r14d
	movl	%r14d, %edi
	movq	%r13, %rsi
	callq	fputc
	movl	$77, %edi
	movq	%r13, %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r13, %rsi
	callq	_IO_putc
	movq	%r12, %r11
	movq	%r13, %r12
	movq	792(%rsp), %r13         # 8-byte Reload
	movl	18520(%r15), %eax
.LBB38_486:                             # %if.end.20.i
                                        #   in Loop: Header=BB38_332 Depth=2
	testb	$1, %al
	je	.LBB38_490
# BB#487:                               # %if.then.25.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r12, %rsi
	movq	%r11, %r15
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r14d
	movl	%r14d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r12, %rsi
	callq	fputc
	sarl	$8, %r14d
	movl	%r14d, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$67, %edi
	jmp	.LBB38_478
.LBB38_492:                             # %if.else.1682
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r14
	movslq	%r13d, %rax
	cmpl	$9, %ebp
	jne	.LBB38_495
# BB#493:                               # %if.end.1700.thread
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	744(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movsbl	%r13b, %edx
	movq	%r12, %rdi
	leaq	856(%rsp), %rsi
	callq	ep_print_image
	jmp	.LBB38_494
.LBB38_495:                             # %if.else.1692
                                        #   in Loop: Header=BB38_332 Depth=2
	movsbl	.L.str.108(%rax), %ecx
	movl	$.L.str.111, %esi
	jmp	.LBB38_496
.LBB38_477:                             # %if.then.i.929
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r12, %rsi
	movq	%r11, %r15
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r14d
	movl	%r14d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r12, %rsi
	callq	fputc
	sarl	$8, %r14d
	movl	%r14d, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$75, %edi
.LBB38_478:                             # %if.end.1676
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r12, %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movq	%r15, %r11
	jmp	.LBB38_490
.LBB38_488:                             # %if.else.29.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	584(%rsp), %rcx         # 8-byte Reload
	cmpl	$1, %ecx
	movslq	%r13d, %r14
	movl	$3, %ecx
	cmoveq	%rcx, %r14
	movzbl	bjc_raster_cmd.ymckCodes(%r14), %ecx
	testl	%eax, %ecx
	je	.LBB38_490
# BB#489:                               # %if.then.34.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r12, %rsi
	movq	%r12, %r13
	movq	%r11, %r12
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r15d
	movl	%r15d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r13, %rsi
	callq	fputc
	sarl	$8, %r15d
	movl	%r15d, %edi
	movq	%r13, %rsi
	callq	fputc
	movsbl	.L.str.129(%r14), %edi
	movq	%r13, %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r13, %rsi
	callq	_IO_putc
	movq	%r12, %r11
	movq	%r13, %r12
	movq	792(%rsp), %r13         # 8-byte Reload
	jmp	.LBB38_490
.LBB38_481:                             # %if.then.5.i
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.130, %edi
	movq	%r14, %r15
	movq	%r15, %rsi
	callq	fputs
	leal	1(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	1(%rbx,%rax), %r14d
	movl	%r14d, %eax
	andl	$-256, %eax
	negl	%eax
	leal	1(%rbx,%rax), %edi
	movq	%r15, %rsi
	callq	fputc
	sarl	$8, %r14d
	movl	%r14d, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	$75, %edi
	movq	%r15, %rsi
	callq	_IO_putc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rcx
	callq	fwrite
	movl	$13, %edi
	movq	%r15, %rsi
	callq	_IO_putc
	movq	%r12, %r11
	movq	%r15, %r12
.LBB38_490:                             # %if.end.1676
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r14
	testl	%r13d, %r13d
	jne	.LBB38_497
# BB#491:                               # %if.then.1679
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.121, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$2, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	jmp	.LBB38_497
	.align	16, 0x90
.LBB38_332:                             # %for.body.1476.lr.ph.lr.ph
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_333 Depth 3
                                        #       Child Loop BB38_446 Depth 3
                                        #         Child Loop BB38_447 Depth 4
                                        #         Child Loop BB38_451 Depth 4
                                        #         Child Loop BB38_455 Depth 4
                                        #       Child Loop BB38_422 Depth 3
                                        #       Child Loop BB38_427 Depth 3
                                        #       Child Loop BB38_403 Depth 3
                                        #       Child Loop BB38_407 Depth 3
                                        #       Child Loop BB38_409 Depth 3
                                        #         Child Loop BB38_410 Depth 4
                                        #         Child Loop BB38_413 Depth 4
                                        #       Child Loop BB38_389 Depth 3
                                        #         Child Loop BB38_390 Depth 4
                                        #         Child Loop BB38_393 Depth 4
                                        #       Child Loop BB38_387 Depth 3
	leal	1(%r13), %eax
	movq	%rax, 760(%rsp)         # 8-byte Spill
	decl	%r13d
	movslq	%r13d, %rax
	movq	736(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %r15
	movq	744(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %r12
	xorl	%ebp, %ebp
.LBB38_333:                             # %for.body.1476.lr.ph
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	(%r13,%rbp), %rax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	movq	776(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	cmpl	$11, %ecx
	ja	.LBB38_470
# BB#334:                               # %for.body.1476.lr.ph
                                        #   in Loop: Header=BB38_333 Depth=3
	jmpq	*.LJTI38_2(,%rax,8)
.LBB38_375:                             # %sw.bb.1477
                                        #   in Loop: Header=BB38_333 Depth=3
	movq	%r11, %r14
	movq	(%r12,%rbp,8), %rsi
	movq	(%r15,%rbp,8), %rdx
	movl	788(%rsp), %edi         # 4-byte Reload
	movq	768(%rsp), %rcx         # 8-byte Reload
	callq	gdev_pcl_mode9compress
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB38_376
# BB#378:                               # %if.then.1490
                                        #   in Loop: Header=BB38_333 Depth=3
	movq	792(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB38_379
# BB#385:                               # %if.else.1495
                                        #   in Loop: Header=BB38_333 Depth=3
	incl	752(%rsp)               # 4-byte Folded Spill
	decq	%rbp
	movq	760(%rsp), %rax         # 8-byte Reload
	leal	(%rbp,%rax), %eax
	cmpl	$1, %eax
	movq	%r14, %r11
	jg	.LBB38_333
	jmp	.LBB38_386
.LBB38_376:                             # %for.cond.1499.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	752(%rsp), %ebp         # 4-byte Reload
	testl	%ebp, %ebp
	movq	728(%rsp), %r15         # 8-byte Reload
	je	.LBB38_377
	.align	16, 0x90
.LBB38_387:                             # %for.body.1501
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$118, %edi
	movq	%r15, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB38_387
.LBB38_377:                             #   in Loop: Header=BB38_332 Depth=2
	movl	$0, 752(%rsp)           # 4-byte Folded Spill
	movq	%r14, %r11
	jmp	.LBB38_470
.LBB38_396:                             # %sw.bb.1520
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpb	$0, 391(%rsp)           # 1-byte Folded Reload
	movq	600(%rsp), %rdi         # 8-byte Reload
	movq	416(%rsp), %rbx         # 8-byte Reload
	movq	792(%rsp), %r8          # 8-byte Reload
	je	.LBB38_408
# BB#397:                               # %for.body.1532.lr.ph
                                        #   in Loop: Header=BB38_332 Depth=2
	xorl	%ecx, %ecx
	movq	320(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	movslq	%r8d, %rax
	movq	744(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	pcmpeqd	%xmm2, %xmm2
	je	.LBB38_398
# BB#399:                               # %vector.body.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB38_401
# BB#400:                               # %vector.body.prol
                                        #   in Loop: Header=BB38_332 Depth=2
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rax)
	movdqu	%xmm1, 16(%rax)
	movl	$4, %esi
.LBB38_401:                             # %vector.body.preheader.split
                                        #   in Loop: Header=BB38_332 Depth=2
	leaq	(%rax,%rbp,8), %rcx
	cmpq	$0, 280(%rsp)           # 8-byte Folded Reload
	je	.LBB38_404
# BB#402:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%rbp, %rdx
	subq	%rsi, %rdx
	leaq	48(%rax,%rsi,8), %rax
	.align	16, 0x90
.LBB38_403:                             # %vector.body
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rax), %xmm0
	movdqu	-32(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm1, -32(%rax)
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm1, (%rax)
	addq	$64, %rax
	addq	$-8, %rdx
	jne	.LBB38_403
.LBB38_404:                             #   in Loop: Header=BB38_332 Depth=2
	movq	%rcx, %rax
	movq	%rbp, %rcx
	movl	%ebp, %edx
	jmp	.LBB38_405
.LBB38_444:                             # %sw.bb.1630
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	448(%rsp), %rbx         # 8-byte Reload
	jle	.LBB38_469
# BB#445:                               # %while.body.i.906.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	792(%rsp), %rax         # 8-byte Reload
	cltq
	movq	744(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rsi
	movq	416(%rsp), %rax         # 8-byte Reload
	leaq	(%rsi,%rax), %rdi
	movq	448(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB38_446:                             # %while.body.i.906
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB38_447 Depth 4
                                        #         Child Loop BB38_451 Depth 4
                                        #         Child Loop BB38_455 Depth 4
	movb	(%rsi), %al
	movq	%rsi, %r12
	.align	16, 0x90
.LBB38_447:                             # %while.cond.1.i
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_446 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	%al, %r15b
	cmpq	%rdi, %r12
	jae	.LBB38_449
# BB#448:                               # %while.body.3.i
                                        #   in Loop: Header=BB38_447 Depth=4
	movzbl	1(%r12), %eax
	incq	%r12
	movzbl	%r15b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB38_447
.LBB38_449:                             # %while.end.i
                                        #   in Loop: Header=BB38_446 Depth=3
	cmpq	%rdi, %r12
	je	.LBB38_523
# BB#450:                               # %while.cond.12.i.preheader
                                        #   in Loop: Header=BB38_446 Depth=3
	leaq	1(%r12), %rbp
	.align	16, 0x90
.LBB38_451:                             # %while.cond.12.i
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_446 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbp, %rax
	cmpq	%rdi, %rax
	jae	.LBB38_453
# BB#452:                               # %land.rhs.i.911
                                        #   in Loop: Header=BB38_451 Depth=4
	movzbl	%r15b, %ecx
	movzbl	(%rax), %edx
	leaq	1(%rax), %rbp
	cmpl	%ecx, %edx
	je	.LBB38_451
.LBB38_453:                             #   in Loop: Header=BB38_446 Depth=3
	movq	%rax, 760(%rsp)         # 8-byte Spill
	movq	%rdi, 768(%rsp)         # 8-byte Spill
	jmp	.LBB38_454
	.align	16, 0x90
.LBB38_523:                             # %if.then.9.i
                                        #   in Loop: Header=BB38_446 Depth=3
	decq	%rdi
	movq	%rdi, 768(%rsp)         # 8-byte Spill
	movq	%rdi, 760(%rsp)         # 8-byte Spill
.LBB38_454:                             # %for.cond.preheader.i
                                        #   in Loop: Header=BB38_446 Depth=3
	decq	%r12
	jmp	.LBB38_455
	.align	16, 0x90
.LBB38_524:                             # %cleanup.i
                                        #   in Loop: Header=BB38_455 Depth=4
	cmpl	$128, %eax
	movl	$128, %ecx
	cmoval	%ecx, %eax
	leal	255(%rax), %ecx
	leaq	1(%rbx), %rdi
	movb	%cl, (%rbx)
	movl	%eax, %ebp
	movq	%rbp, %rdx
	movq	%r11, %r14
	movq	%rbx, %r13
	movq	%rsi, %rbx
	callq	memcpy
	movq	%rbx, %rsi
	movq	%r13, %rbx
	movq	%r14, %r11
	leaq	1(%rbx,%rbp), %rbx
	addq	%rbp, %rsi
.LBB38_455:                             # %for.cond.i
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_446 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r12, %rax
	subq	%rsi, %rax
	movl	%eax, %edx
	cmpl	$6, %eax
	ja	.LBB38_524
# BB#456:                               # %for.cond.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	$1, %cl
	movb	$2, %r10b
	movb	$3, %dil
	movb	$4, %r9b
	movb	$5, %r8b
	jmpq	*.LJTI38_3(,%rdx,8)
.LBB38_457:                             # %sw.bb.i.916
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	5(%rsi), %cl
	movb	%cl, 6(%rbx)
	movb	$6, %r8b
.LBB38_458:                             # %sw.bb.25.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	4(%rsi), %cl
	movb	%cl, 5(%rbx)
	movb	%r8b, %r9b
.LBB38_459:                             # %sw.bb.28.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	3(%rsi), %cl
	movb	%cl, 4(%rbx)
	movb	%r9b, %dil
.LBB38_460:                             # %sw.bb.31.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	2(%rsi), %cl
	movb	%cl, 3(%rbx)
	movb	%dil, %r10b
.LBB38_461:                             # %sw.bb.34.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	1(%rsi), %cl
	movb	%cl, 2(%rbx)
	movb	%r10b, %cl
.LBB38_462:                             # %sw.bb.37.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movb	(%rsi), %dl
	movb	%dl, 1(%rbx)
	decb	%cl
	movb	%cl, (%rbx)
	incl	%eax
	addq	%rax, %rbx
.LBB38_463:                             # %for.end.i
                                        #   in Loop: Header=BB38_446 Depth=3
	movq	760(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	subl	%r12d, %eax
	movq	768(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rsi
	jb	.LBB38_467
# BB#464:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB38_446 Depth=3
	testb	%r15b, %r15b
	je	.LBB38_469
# BB#465:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB38_446 Depth=3
	testl	%eax, %eax
	jle	.LBB38_469
.LBB38_466:                             # %while.body.68.i
                                        #   in Loop: Header=BB38_446 Depth=3
	cmpl	$128, %eax
	movl	%eax, %ecx
	movl	$128, %edx
	cmovgl	%edx, %ecx
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	movb	%dl, (%rbx)
	movb	%r15b, 1(%rbx)
	addq	$2, %rbx
	subl	%ecx, %eax
.LBB38_467:                             # %while.cond.65.i
                                        #   in Loop: Header=BB38_446 Depth=3
	testl	%eax, %eax
	jg	.LBB38_466
# BB#468:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB38_446 Depth=3
	cmpq	%rdi, %rsi
	jb	.LBB38_446
.LBB38_469:                             # %bjc_compress.exit
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	448(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ebx
	movq	%rax, 768(%rsp)         # 8-byte Spill
	jmp	.LBB38_470
.LBB38_388:                             # %sw.bb.1507
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	792(%rsp), %rax         # 8-byte Reload
	cltq
	movq	744(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	416(%rsp), %rax         # 8-byte Reload
	leaq	-1(%rcx,%rax), %rsi
	cmpq	%rsi, %rcx
	movq	768(%rsp), %rbx         # 8-byte Reload
	jae	.LBB38_395
	.align	16, 0x90
.LBB38_389:                             # %while.body.i.861
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB38_390 Depth 4
                                        #         Child Loop BB38_393 Depth 4
	leaq	1(%rcx), %r8
	movb	(%rcx), %al
	cmpq	%rsi, %r8
	movq	%r8, %rbp
	jae	.LBB38_391
	.align	16, 0x90
.LBB38_390:                             # %land.rhs.i.862
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_389 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	%al, %edx
	movzbl	(%rbp), %edi
	cmpl	%edx, %edi
	jne	.LBB38_391
# BB#521:                               # %while.body.6.i
                                        #   in Loop: Header=BB38_390 Depth=4
	incq	%rbp
	cmpq	%rsi, %rbp
	jb	.LBB38_390
.LBB38_391:                             # %while.cond.8.preheader.i
                                        #   in Loop: Header=BB38_389 Depth=3
	movq	%rbp, %rdx
	subq	%r8, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jl	.LBB38_394
# BB#392:                               # %while.body.11.i.preheader
                                        #   in Loop: Header=BB38_389 Depth=3
	addq	$257, %rcx              # imm = 0x101
	.align	16, 0x90
.LBB38_393:                             # %while.body.11.i
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_389 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	$-1, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	addq	$256, %rcx              # imm = 0x100
	cmpq	$255, %rdx
	jg	.LBB38_393
.LBB38_394:                             # %while.end.14.i
                                        #   in Loop: Header=BB38_389 Depth=3
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	cmpq	%rsi, %rbp
	movq	%rbp, %rcx
	jb	.LBB38_389
	jmp	.LBB38_395
.LBB38_415:                             # %sw.bb.1551
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpb	$0, 391(%rsp)           # 1-byte Folded Reload
	je	.LBB38_428
# BB#416:                               # %for.body.1564.lr.ph
                                        #   in Loop: Header=BB38_332 Depth=2
	xorl	%ecx, %ecx
	movq	320(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	movq	792(%rsp), %rax         # 8-byte Reload
	cltq
	movq	744(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	je	.LBB38_417
# BB#418:                               # %vector.body1594.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	pcmpeqd	%xmm2, %xmm2
	jne	.LBB38_420
# BB#419:                               # %vector.body1594.prol
                                        #   in Loop: Header=BB38_332 Depth=2
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rax)
	movdqu	%xmm1, 16(%rax)
	movl	$4, %esi
.LBB38_420:                             # %vector.body1594.preheader.split
                                        #   in Loop: Header=BB38_332 Depth=2
	leaq	(%rax,%rbp,8), %rcx
	cmpq	$0, 280(%rsp)           # 8-byte Folded Reload
	movq	600(%rsp), %rdi         # 8-byte Reload
	je	.LBB38_423
# BB#421:                               # %vector.body1594.preheader.split.split
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%rbp, %rdx
	subq	%rsi, %rdx
	leaq	48(%rax,%rsi,8), %rax
	.align	16, 0x90
.LBB38_422:                             # %vector.body1594
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rax), %xmm0
	movdqu	-32(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm1, -32(%rax)
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm1, (%rax)
	addq	$64, %rax
	addq	$-8, %rdx
	jne	.LBB38_422
.LBB38_423:                             #   in Loop: Header=BB38_332 Depth=2
	movq	%rcx, %rax
	movq	%rbp, %rcx
	movl	%ebp, %edx
	jmp	.LBB38_424
.LBB38_398:                             #   in Loop: Header=BB38_332 Depth=2
	xorl	%edx, %edx
.LBB38_405:                             # %middle.block
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpq	%rcx, 392(%rsp)         # 8-byte Folded Reload
	je	.LBB38_408
# BB#406:                               # %for.body.1532.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	%edi, %ecx
	subl	%edx, %ecx
	.align	16, 0x90
.LBB38_407:                             # %for.body.1532
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	notq	(%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB38_407
.LBB38_408:                             # %if.end.1538
                                        #   in Loop: Header=BB38_332 Depth=2
	movslq	%r8d, %rax
	movq	744(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	leaq	-1(%rcx,%rbx), %rsi
	cmpq	%rsi, %rcx
	movq	768(%rsp), %rbx         # 8-byte Reload
	jae	.LBB38_395
	.align	16, 0x90
.LBB38_409:                             # %while.body.i.871
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB38_410 Depth 4
                                        #         Child Loop BB38_413 Depth 4
	leaq	1(%rcx), %r8
	movb	(%rcx), %al
	cmpq	%rsi, %r8
	movq	%r8, %rbp
	jae	.LBB38_411
	.align	16, 0x90
.LBB38_410:                             # %land.rhs.i.874
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_409 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	%al, %edx
	movzbl	(%rbp), %edi
	cmpl	%edx, %edi
	jne	.LBB38_411
# BB#522:                               # %while.body.6.i.883
                                        #   in Loop: Header=BB38_410 Depth=4
	incq	%rbp
	cmpq	%rsi, %rbp
	jb	.LBB38_410
.LBB38_411:                             # %while.cond.8.preheader.i.880
                                        #   in Loop: Header=BB38_409 Depth=3
	movq	%rbp, %rdx
	subq	%r8, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jl	.LBB38_414
# BB#412:                               # %while.body.11.i.892.preheader
                                        #   in Loop: Header=BB38_409 Depth=3
	addq	$257, %rcx              # imm = 0x101
	.align	16, 0x90
.LBB38_413:                             # %while.body.11.i.892
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        #       Parent Loop BB38_409 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	$-1, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	addq	$256, %rcx              # imm = 0x100
	cmpq	$255, %rdx
	jg	.LBB38_413
.LBB38_414:                             # %while.end.14.i.899
                                        #   in Loop: Header=BB38_409 Depth=3
	movb	%dl, (%rbx)
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	cmpq	%rsi, %rbp
	movq	%rbp, %rcx
	jb	.LBB38_409
.LBB38_395:                             # %gdev_pcl_mode1compress.exit
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	768(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ebx
	jmp	.LBB38_470
.LBB38_417:                             #   in Loop: Header=BB38_332 Depth=2
	xorl	%edx, %edx
	movq	600(%rsp), %rdi         # 8-byte Reload
.LBB38_424:                             # %middle.block1595
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpq	%rcx, 392(%rsp)         # 8-byte Folded Reload
	jne	.LBB38_426
# BB#425:                               #   in Loop: Header=BB38_332 Depth=2
	movq	%rdi, 600(%rsp)         # 8-byte Spill
	jmp	.LBB38_428
.LBB38_426:                             # %for.body.1564.preheader
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	%edi, %ecx
	movq	%rdi, 600(%rsp)         # 8-byte Spill
	subl	%edx, %ecx
	.align	16, 0x90
.LBB38_427:                             # %for.body.1564
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	notq	(%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB38_427
.LBB38_428:                             # %sw.bb.1571
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r15
	movq	792(%rsp), %rax         # 8-byte Reload
	cltq
	movq	744(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movq	736(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbp
	movq	376(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,8), %rsi
	movq	%rbx, %rdi
	movq	448(%rsp), %rdx         # 8-byte Reload
	callq	gdev_pcl_mode2compress
	movl	%eax, %r14d
	movl	788(%rsp), %edi         # 4-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	424(%rsp), %rcx         # 8-byte Reload
	callq	gdev_pcl_mode3compress
	movl	%eax, %ebx
	movl	596(%rsp), %ebp         # 4-byte Reload
	testl	%ebp, %ebp
	je	.LBB38_430
# BB#429:                               # %cond.true
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.101, %edi
	jmp	.LBB38_431
.LBB38_430:                             # %cond.false
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.102, %edi
.LBB38_431:                             # %cond.end
                                        #   in Loop: Header=BB38_332 Depth=2
	callq	strlen
	movl	440(%rsp), %edx         # 4-byte Reload
	movq	%r15, %r11
	cmpl	$2, %edx
	movl	%eax, %ecx
	movl	$0, %esi
	cmovel	%esi, %ecx
	cmpl	$3, %edx
	cmovel	%esi, %eax
	addl	%ebx, %eax
	addl	%r14d, %ecx
	cmpl	%ecx, %eax
	jge	.LBB38_438
# BB#432:                               # %if.then.1607
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$3, %edx
	jne	.LBB38_434
# BB#433:                               #   in Loop: Header=BB38_332 Depth=2
	movq	424(%rsp), %rax         # 8-byte Reload
	movq	%rax, 768(%rsp)         # 8-byte Spill
	movl	$3, 440(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_470
.LBB38_438:                             # %if.else.1618
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$2, %edx
	jne	.LBB38_440
# BB#439:                               #   in Loop: Header=BB38_332 Depth=2
	movq	448(%rsp), %rax         # 8-byte Reload
	movq	%rax, 768(%rsp)         # 8-byte Spill
	movl	%r14d, %ebx
	movl	$2, 440(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_470
.LBB38_434:                             # %if.then.1610
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r14
	testl	%ebp, %ebp
	movq	728(%rsp), %rsi         # 8-byte Reload
	je	.LBB38_437
# BB#435:                               # %if.then.1612
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.103, %edi
	jmp	.LBB38_436
.LBB38_440:                             # %if.then.1621
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r15
	testl	%ebp, %ebp
	movq	728(%rsp), %rsi         # 8-byte Reload
	je	.LBB38_443
# BB#441:                               # %if.then.1623
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.105, %edi
	jmp	.LBB38_442
.LBB38_437:                             # %if.else.1614
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.104, %edi
.LBB38_436:                             # %if.then.1642
                                        #   in Loop: Header=BB38_332 Depth=2
	callq	fputs
	movq	424(%rsp), %rax         # 8-byte Reload
	movq	%rax, 768(%rsp)         # 8-byte Spill
	movl	$3, 440(%rsp)           # 4-byte Folded Spill
	movq	%r14, %r11
	jmp	.LBB38_470
.LBB38_443:                             # %if.else.1625
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	$.L.str.106, %edi
.LBB38_442:                             # %if.then.1642
                                        #   in Loop: Header=BB38_332 Depth=2
	callq	fputs
	movq	448(%rsp), %rax         # 8-byte Reload
	movq	%rax, 768(%rsp)         # 8-byte Spill
	movl	%r14d, %ebx
	movl	$2, 440(%rsp)           # 4-byte Folded Spill
	movq	%r15, %r11
	.align	16, 0x90
.LBB38_470:                             # %if.then.1642
                                        #   in Loop: Header=BB38_332 Depth=2
	movl	684(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB38_472
# BB#471:                               # %if.then.1645
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r14
	movq	792(%rsp), %r13         # 8-byte Reload
	movslq	%r13d, %rax
	movsbl	.L.str.108(%rax), %edx
	movzbl	%bl, %ecx
	movzbl	%bh, %ebp  # NOREX
	movl	$.L.str.107, %esi
	xorl	%eax, %eax
	movq	728(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebp, %r8d
	callq	fprintf
	movq	776(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB38_497
	.align	16, 0x90
.LBB38_472:                             # %if.else.1653
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$0, 596(%rsp)           # 4-byte Folded Reload
	movq	728(%rsp), %r12         # 8-byte Reload
	movl	788(%rsp), %r8d         # 4-byte Reload
	movq	776(%rsp), %rbp         # 8-byte Reload
	movq	792(%rsp), %r13         # 8-byte Reload
	je	.LBB38_474
# BB#473:                               # %if.then.1655
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r11, %r14
	movslq	%r13d, %rax
	movsbl	.L.str.110(%rax), %ecx
	movl	$.L.str.109, %esi
.LBB38_496:                             # %if.end.1700
                                        #   in Loop: Header=BB38_332 Depth=2
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	fprintf
.LBB38_497:                             # %if.end.1700
                                        #   in Loop: Header=BB38_332 Depth=2
	cmpl	$9, %ebp
	jge	.LBB38_494
# BB#498:                               # %if.then.1703
                                        #   in Loop: Header=BB38_332 Depth=2
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	768(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rcx
	callq	fwrite
.LBB38_494:                             # %for.cond.1473.outer.outer.backedge
                                        #   in Loop: Header=BB38_332 Depth=2
	movq	%r14, %r11
	testl	%r13d, %r13d
	jg	.LBB38_332
	jmp	.LBB38_380
.LBB38_379:                             # %if.then.1493
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$119, %edi
	movq	728(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	callq	fputc
	movq	%r14, %r11
	jmp	.LBB38_380
.LBB38_386:                             #   in Loop: Header=BB38_121 Depth=1
	movq	728(%rsp), %r12         # 8-byte Reload
.LBB38_380:                             # %for.end.1710
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r11, %r13
	movq	776(%rsp), %rax         # 8-byte Reload
	cmpl	$9, %eax
	jne	.LBB38_382
# BB#381:                               # %if.then.1713
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$73, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	leaq	856(%rsp), %rsi
	callq	ep_print_image
.LBB38_382:                             # %if.end.1715
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	$1, %eax
	movq	720(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, %r15d
	movq	672(%rsp), %r9          # 8-byte Reload
	movl	644(%rsp), %r14d        # 4-byte Reload
.LBB38_383:                             # %cleanup
                                        #   in Loop: Header=BB38_121 Depth=1
	incl	%r14d
	cmpl	668(%rsp), %r14d        # 4-byte Folded Reload
	jne	.LBB38_384
	jmp	.LBB38_499
.LBB38_193:                             # %if.then.687
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB38_222
# BB#194:                               # %for.cond.719.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	792(%rsp), %rbp         # 8-byte Reload
	jle	.LBB38_195
# BB#213:                               # %overflow.checked1821
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%ecx, %edi
	xorl	%esi, %esi
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	je	.LBB38_214
# BB#215:                               # %vector.memcheck1837
                                        #   in Loop: Header=BB38_121 Depth=1
	leaq	-1(%rbp), %rax
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %rax
	pxor	%xmm6, %xmm6
	movdqa	.LCPI38_21(%rip), %xmm8 # xmm8 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
	movdqa	.LCPI38_22(%rip), %xmm9 # xmm9 = [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	movdqa	.LCPI38_23(%rip), %xmm10 # xmm10 = [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]
	movdqa	.LCPI38_24(%rip), %xmm11 # xmm11 = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
	movdqa	.LCPI38_25(%rip), %xmm12 # xmm12 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movdqa	.LCPI38_26(%rip), %xmm13 # xmm13 = [32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32]
	movdqa	.LCPI38_27(%rip), %xmm14 # xmm14 = [64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64]
	movdqa	.LCPI38_28(%rip), %xmm15 # xmm15 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	ja	.LBB38_217
# BB#216:                               # %vector.memcheck1837
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	leaq	-8(%r12), %rcx
	cmpq	%rax, %rcx
	ja	.LBB38_217
.LBB38_214:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%rbp, %rax
	jmp	.LBB38_220
.LBB38_305:                             # %for.cond.1112.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r10, 760(%rsp)         # 8-byte Spill
	movq	%rbp, 752(%rsp)         # 8-byte Spill
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movl	%r14d, 644(%rsp)        # 4-byte Spill
	xorl	%r8d, %r8d
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	624(%rsp), %r9          # 8-byte Reload
	movl	700(%rsp), %ecx         # 4-byte Reload
	jle	.LBB38_329
	.align	16, 0x90
.LBB38_306:                             # %for.cond.1122.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_307 Depth 3
	movq	%r11, %rdx
	movq	%r9, %r15
	movq	%r13, %rax
	subq	$-128, %rax
	movq	%rax, 736(%rsp)         # 8-byte Spill
	movl	$128, %ebp
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB38_307:                             # %for.body.1126
                                        #   Parent Loop BB38_121 Depth=1
                                        #     Parent Loop BB38_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12,%rcx), %esi
	testl	%esi, %esi
	je	.LBB38_311
# BB#308:                               # %if.then.1128
                                        #   in Loop: Header=BB38_307 Depth=3
	imull	$7, %r15d, %eax
	addl	$8, %eax
	sarl	$4, %eax
	shll	$19, %esi
	addl	%eax, %esi
	addl	(%r13,%rcx,4), %esi
	cmpl	$67108865, %esi         # imm = 0x4000001
	jl	.LBB38_310
# BB#309:                               # %if.then.1140
                                        #   in Loop: Header=BB38_307 Depth=3
	movzbl	%r14b, %r14d
	orl	%ebp, %r14d
	addl	$-133693440, %esi       # imm = 0xFFFFFFFFF8080000
.LBB38_310:                             # %if.end.1146
                                        #   in Loop: Header=BB38_307 Depth=3
	leal	8(%rsi,%rsi,2), %eax
	sarl	$4, %eax
	addl	%eax, -16(%r13,%rcx,4)
	leal	(%rsi,%rsi,4), %eax
	leal	8(%r15,%rax), %eax
	sarl	$4, %eax
	movl	%eax, (%r13,%rcx,4)
	xorl	%eax, %eax
	movq	%rax, 800(%rsp)         # 8-byte Spill
	movl	%esi, %r15d
	xorl	%eax, %eax
	movq	%rax, 808(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB38_318
	.align	16, 0x90
.LBB38_311:                             # %if.else.1157
                                        #   in Loop: Header=BB38_307 Depth=3
	imull	$7, %edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	4(%r13,%rcx,4), %eax
	movzbl	1(%r12,%rcx), %esi
	shll	$19, %esi
	addl	%eax, %esi
	cmpl	$67108865, %esi         # imm = 0x4000001
	jl	.LBB38_313
# BB#312:                               # %if.then.1169
                                        #   in Loop: Header=BB38_307 Depth=3
	movzbl	%r9b, %r9d
	orl	%ebp, %r9d
	addl	$-133693440, %esi       # imm = 0xFFFFFFFFF8080000
.LBB38_313:                             # %if.end.1175
                                        #   in Loop: Header=BB38_307 Depth=3
	leal	8(%rsi,%rsi,2), %eax
	sarl	$4, %eax
	addl	%eax, -12(%r13,%rcx,4)
	leal	(%rsi,%rsi,4), %eax
	leal	8(%rdx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, 4(%r13,%rcx,4)
	movq	808(%rsp), %rax         # 8-byte Reload
	imull	$7, %eax, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	8(%r13,%rcx,4), %eax
	movzbl	2(%r12,%rcx), %edi
	shll	$19, %edi
	addl	%eax, %edi
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB38_315
# BB#314:                               # %if.then.1197
                                        #   in Loop: Header=BB38_307 Depth=3
	movzbl	%r11b, %r11d
	orl	%ebp, %r11d
	addl	$-133693440, %edi       # imm = 0xFFFFFFFFF8080000
.LBB38_315:                             # %if.end.1203
                                        #   in Loop: Header=BB38_307 Depth=3
	leal	8(%rdi,%rdi,2), %eax
	sarl	$4, %eax
	addl	%eax, -8(%r13,%rcx,4)
	leal	(%rdi,%rdi,4), %eax
	movq	808(%rsp), %rdx         # 8-byte Reload
	leal	8(%rdx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, 8(%r13,%rcx,4)
	movq	800(%rsp), %rax         # 8-byte Reload
	imull	$7, %eax, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	12(%r13,%rcx,4), %edx
	movzbl	3(%r12,%rcx), %eax
	shll	$19, %eax
	addl	%edx, %eax
	cmpl	$67108865, %eax         # imm = 0x4000001
	jl	.LBB38_317
# BB#316:                               # %if.then.1225
                                        #   in Loop: Header=BB38_307 Depth=3
	movzbl	%r10b, %r10d
	orl	%ebp, %r10d
	addl	$-133693440, %eax       # imm = 0xFFFFFFFFF8080000
.LBB38_317:                             # %if.end.1231
                                        #   in Loop: Header=BB38_307 Depth=3
	leal	8(%rax,%rax,2), %edx
	sarl	$4, %edx
	addl	%edx, -4(%r13,%rcx,4)
	leal	(%rax,%rax,4), %edx
	movq	800(%rsp), %rbx         # 8-byte Reload
	leal	8(%rbx,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, 12(%r13,%rcx,4)
	movq	%rax, 800(%rsp)         # 8-byte Spill
	movq	%rdi, 808(%rsp)         # 8-byte Spill
	movl	%esi, %edx
.LBB38_318:                             # %if.end.1242
                                        #   in Loop: Header=BB38_307 Depth=3
	shrl	%ebp
	addq	$4, %rcx
	testl	%ebp, %ebp
	jne	.LBB38_307
# BB#319:                               # %for.end.1249
                                        #   in Loop: Header=BB38_306 Depth=2
	addq	$32, %r12
	movq	744(%rsp), %rax         # 8-byte Reload
	movb	%r14b, (%rax)
	incq	%rax
	movq	%rax, 744(%rsp)         # 8-byte Spill
	movq	752(%rsp), %rax         # 8-byte Reload
	movb	%r9b, (%rax)
	incq	%rax
	movq	%rax, 752(%rsp)         # 8-byte Spill
	movq	760(%rsp), %rax         # 8-byte Reload
	movb	%r11b, (%rax)
	incq	%rax
	movq	%rax, 760(%rsp)         # 8-byte Spill
	movq	792(%rsp), %rax         # 8-byte Reload
	movb	%r10b, (%rax)
	incq	%rax
	movq	%rax, 792(%rsp)         # 8-byte Spill
	incl	%r8d
	cmpl	788(%rsp), %r8d         # 4-byte Folded Reload
	movq	736(%rsp), %r13         # 8-byte Reload
	movq	%r15, %r9
	movq	%rdx, %r11
	movl	700(%rsp), %ecx         # 4-byte Reload
	jl	.LBB38_306
	jmp	.LBB38_329
.LBB38_222:                             # %for.cond.691.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movl	%ecx, %edi
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movq	600(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %eax
	movl	788(%rsp), %esi         # 4-byte Reload
	movq	792(%rsp), %rbp         # 8-byte Reload
	jle	.LBB38_223
	.align	16, 0x90
.LBB38_224:                             # %for.cond.695.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r12,%rax,8)
	je	.LBB38_225
# BB#226:                               # %select.mid2826
                                        #   in Loop: Header=BB38_224 Depth=2
	movb	$-128, %cl
	jmp	.LBB38_227
	.align	16, 0x90
.LBB38_225:                             #   in Loop: Header=BB38_224 Depth=2
	xorl	%ecx, %ecx
.LBB38_227:                             # %select.end2825
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 1(%r12,%rax,8)
	je	.LBB38_229
# BB#228:                               # %select.mid3022
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$64, %cl
.LBB38_229:                             # %select.end3021
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 2(%r12,%rax,8)
	je	.LBB38_231
# BB#230:                               # %select.mid3032
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$32, %cl
.LBB38_231:                             # %select.end3031
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 3(%r12,%rax,8)
	je	.LBB38_233
# BB#232:                               # %select.mid3042
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$16, %cl
.LBB38_233:                             # %select.end3041
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 4(%r12,%rax,8)
	je	.LBB38_235
# BB#234:                               # %select.mid3052
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$8, %cl
.LBB38_235:                             # %select.end3051
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 5(%r12,%rax,8)
	je	.LBB38_237
# BB#236:                               # %select.mid3062
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$4, %cl
.LBB38_237:                             # %select.end3061
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 6(%r12,%rax,8)
	je	.LBB38_239
# BB#238:                               # %select.mid3072
                                        #   in Loop: Header=BB38_224 Depth=2
	orb	$2, %cl
.LBB38_239:                             # %select.end3071
                                        #   in Loop: Header=BB38_224 Depth=2
	cmpb	$0, 7(%r12,%rax,8)
	setne	%dl
	orb	%cl, %dl
	movb	%dl, (%rbp,%rax)
	incq	%rax
	cmpl	%esi, %eax
	jl	.LBB38_224
.LBB38_223:                             #   in Loop: Header=BB38_121 Depth=1
	movq	624(%rsp), %r9          # 8-byte Reload
	movl	%edi, %ecx
	jmp	.LBB38_329
.LBB38_146:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r15, %rbp
	movq	720(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB38_147:                             # %for.body.559
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.99, %edi
	movq	%r12, %rsi
	callq	fputs
	decl	%ebp
	jne	.LBB38_147
	jmp	.LBB38_152
.LBB38_195:                             #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movq	624(%rsp), %r9          # 8-byte Reload
	jmp	.LBB38_329
.LBB38_217:                             # %vector.body1817.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	%r8, 720(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rax
	addq	$-16, %rbp
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	(%r12,%rcx), %rcx
	decq	%r12
	movq	128(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB38_218:                             # %vector.body1817
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-120(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-56(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movzbl	-88(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-24(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-104(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-40(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movzbl	-72(%r12), %esi
	movd	%esi, %xmm3
	movzbl	-8(%r12), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	movzbl	-112(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-48(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-80(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-16(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-96(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-32(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-64(%r12), %esi
	movd	%esi, %xmm4
	movzbl	(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pcmpeqb	%xmm6, %xmm1
	pandn	%xmm8, %xmm1
	movzbl	-121(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-57(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movzbl	-89(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-25(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-105(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-41(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	movzbl	-73(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-9(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-113(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-49(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-81(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-17(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-97(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-33(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-65(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-1(%r12), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3],xmm0[4],xmm5[4],xmm0[5],xmm5[5],xmm0[6],xmm5[6],xmm0[7],xmm5[7]
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm0
	movdqa	%xmm1, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm0, %xmm1
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movzbl	-122(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-58(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-90(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-26(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-106(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-42(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	movzbl	-74(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-10(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-114(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-50(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-82(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-18(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-98(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-34(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-66(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-2(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1],xmm1[2],xmm5[2],xmm1[3],xmm5[3],xmm1[4],xmm5[4],xmm1[5],xmm5[5],xmm1[6],xmm5[6],xmm1[7],xmm5[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm1
	movdqa	%xmm0, %xmm2
	por	%xmm10, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm2, %xmm1
	por	%xmm0, %xmm1
	movzbl	-123(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-59(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movzbl	-91(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-27(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-107(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-43(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	movzbl	-75(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-11(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-115(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-51(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-83(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-19(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-99(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-35(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-67(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-3(%r12), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3],xmm0[4],xmm5[4],xmm0[5],xmm5[5],xmm0[6],xmm5[6],xmm0[7],xmm5[7]
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm0
	movdqa	%xmm1, %xmm2
	por	%xmm11, %xmm2
	pand	%xmm0, %xmm1
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movzbl	-124(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-60(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-92(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-28(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-108(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-44(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	movzbl	-76(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-12(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-116(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-52(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-84(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-20(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-100(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-36(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-68(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-4(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1],xmm1[2],xmm5[2],xmm1[3],xmm5[3],xmm1[4],xmm5[4],xmm1[5],xmm5[5],xmm1[6],xmm5[6],xmm1[7],xmm5[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm1
	movdqa	%xmm0, %xmm2
	por	%xmm12, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm2, %xmm1
	por	%xmm0, %xmm1
	movzbl	-125(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-61(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movzbl	-93(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-29(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-109(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-45(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	movzbl	-77(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-13(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-117(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-53(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-85(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-21(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-101(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-37(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movzbl	-69(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-5(%r12), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3],xmm0[4],xmm5[4],xmm0[5],xmm5[5],xmm0[6],xmm5[6],xmm0[7],xmm5[7]
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm0
	movdqa	%xmm1, %xmm2
	por	%xmm13, %xmm2
	pand	%xmm0, %xmm1
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movzbl	-126(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-62(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movzbl	-94(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-30(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-110(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-46(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	movzbl	-78(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-14(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movzbl	-118(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-54(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-86(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-22(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-102(%r12), %esi
	movd	%esi, %xmm1
	movzbl	-38(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	movzbl	-70(%r12), %esi
	movd	%esi, %xmm5
	movzbl	-6(%r12), %esi
	movd	%esi, %xmm1
	punpcklbw	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1],xmm1[2],xmm5[2],xmm1[3],xmm5[3],xmm1[4],xmm5[4],xmm1[5],xmm5[5],xmm1[6],xmm5[6],xmm1[7],xmm5[7]
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pcmpeqb	%xmm6, %xmm1
	movdqa	%xmm0, %xmm2
	por	%xmm14, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm2, %xmm1
	por	%xmm0, %xmm1
	movzbl	-127(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-63(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movzbl	-95(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-31(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-111(%r12), %esi
	movd	%esi, %xmm0
	movzbl	-47(%r12), %esi
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movzbl	-79(%r12), %esi
	movd	%esi, %xmm4
	movzbl	-15(%r12), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	movzbl	-119(%r12), %esi
	movd	%esi, %xmm2
	movzbl	-55(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-87(%r12), %esi
	movd	%esi, %xmm2
	movzbl	-23(%r12), %esi
	movd	%esi, %xmm4
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	movzbl	-103(%r12), %esi
	movd	%esi, %xmm2
	movzbl	-39(%r12), %esi
	movd	%esi, %xmm3
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	movzbl	-71(%r12), %esi
	movd	%esi, %xmm2
	movzbl	-7(%r12), %esi
	movd	%esi, %xmm5
	punpcklbw	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3],xmm5[4],xmm2[4],xmm5[5],xmm2[5],xmm5[6],xmm2[6],xmm5[7],xmm2[7]
	punpcklbw	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3],xmm5[4],xmm3[4],xmm5[5],xmm3[5],xmm5[6],xmm3[6],xmm5[7],xmm3[7]
	punpcklbw	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1],xmm5[2],xmm4[2],xmm5[3],xmm4[3],xmm5[4],xmm4[4],xmm5[5],xmm4[5],xmm5[6],xmm4[6],xmm5[7],xmm4[7]
	punpcklbw	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pcmpeqb	%xmm6, %xmm5
	movdqa	%xmm1, %xmm0
	por	%xmm15, %xmm0
	pand	%xmm5, %xmm1
	pandn	%xmm0, %xmm5
	por	%xmm1, %xmm5
	movdqa	%xmm5, %xmm0
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm5    # xmm5 = xmm5[8],xmm6[8],xmm5[9],xmm6[9],xmm5[10],xmm6[10],xmm5[11],xmm6[11],xmm5[12],xmm6[12],xmm5[13],xmm6[13],xmm5[14],xmm6[14],xmm5[15],xmm6[15]
	pshufd	$78, %xmm5, %xmm1       # xmm1 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, (%rbp)
	addq	$-16, %rbp
	addq	$-128, %r12
	addq	$-16, %rdx
	jne	.LBB38_218
# BB#219:                               #   in Loop: Header=BB38_121 Depth=1
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rsi
.LBB38_220:                             # %middle.block1818
                                        #   in Loop: Header=BB38_121 Depth=1
	movq	624(%rsp), %r9          # 8-byte Reload
	cmpq	%rsi, 168(%rsp)         # 8-byte Folded Reload
	jne	.LBB38_240
# BB#221:                               #   in Loop: Header=BB38_121 Depth=1
	movl	%edi, %ecx
	jmp	.LBB38_329
.LBB38_240:                             # %for.cond.728.preheader.preheader
                                        #   in Loop: Header=BB38_121 Depth=1
	decq	%rcx
	decq	%rax
	movl	788(%rsp), %esi         # 4-byte Reload
	.align	16, 0x90
.LBB38_241:                             # %for.cond.728.preheader
                                        #   Parent Loop BB38_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rcx)
	setne	%bl
	cmpb	$0, -1(%rcx)
	je	.LBB38_243
# BB#242:                               # %select.mid2828
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$2, %bl
.LBB38_243:                             # %select.end2827
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -2(%rcx)
	je	.LBB38_245
# BB#244:                               # %select.mid3024
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$4, %bl
.LBB38_245:                             # %select.end3023
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -3(%rcx)
	je	.LBB38_247
# BB#246:                               # %select.mid3034
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$8, %bl
.LBB38_247:                             # %select.end3033
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -4(%rcx)
	je	.LBB38_249
# BB#248:                               # %select.mid3044
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$16, %bl
.LBB38_249:                             # %select.end3043
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -5(%rcx)
	je	.LBB38_251
# BB#250:                               # %select.mid3054
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$32, %bl
.LBB38_251:                             # %select.end3053
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -6(%rcx)
	je	.LBB38_253
# BB#252:                               # %select.mid3064
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$64, %bl
.LBB38_253:                             # %select.end3063
                                        #   in Loop: Header=BB38_241 Depth=2
	cmpb	$0, -7(%rcx)
	je	.LBB38_255
# BB#254:                               # %select.mid3074
                                        #   in Loop: Header=BB38_241 Depth=2
	orb	$-128, %bl
.LBB38_255:                             # %select.end3073
                                        #   in Loop: Header=BB38_241 Depth=2
	movb	%bl, (%rax)
	incl	%edx
	addq	$-8, %rcx
	decq	%rax
	cmpl	%esi, %edx
	jl	.LBB38_241
# BB#256:                               #   in Loop: Header=BB38_121 Depth=1
	movl	%edi, %ecx
	jmp	.LBB38_329
.LBB38_499:                             # %for.end.1720
	cmpl	$0, 596(%rsp)           # 4-byte Folded Reload
	movq	728(%rsp), %rbx         # 8-byte Reload
	je	.LBB38_501
# BB#500:                               # %if.then.1722
	movl	$.L.str.112, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB38_501:                             # %if.end.1724
	movq	776(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebp
	andl	$-2, %ebp
	cmpl	$10, %ebp
	jne	.LBB38_503
# BB#502:                               # %if.then.1730
	movq	%rcx, %r14
	movl	$.L.str.120, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$97, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.131, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.120, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$98, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.131, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.56, %edi
	jmp	.LBB38_507
.LBB38_503:                             # %if.else.1732
	movl	684(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB38_505
# BB#504:                               # %if.then.1735
	movq	%rcx, %r14
	movl	$.L.str.113, %edi
	jmp	.LBB38_507
.LBB38_505:                             # %if.else.1737
	cmpl	$9, %ecx
	je	.LBB38_515
# BB#506:                               # %if.then.1740
	movq	%rcx, %r14
	movl	$.L.str.114, %edi
.LBB38_507:                             # %if.end.1744
	movq	%rbx, %rsi
	callq	fputs
	cmpl	$4, %r14d
	movl	684(%rsp), %eax         # 4-byte Reload
	jne	.LBB38_509
# BB#508:                               # %if.then.1747
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	fputc
	jmp	.LBB38_518
.LBB38_509:                             # %if.else.1749
	testb	%al, %al
	je	.LBB38_511
# BB#510:                               # %if.then.1752
	movl	$.L.str.115, %edi
	jmp	.LBB38_517
.LBB38_511:                             # %if.else.1754
	cmpl	$7, %r14d
	jne	.LBB38_513
# BB#512:                               # %if.then.1757
	movl	$.L.str.116, %edi
	jmp	.LBB38_517
.LBB38_513:                             # %if.else.1759
	cmpl	$10, %ebp
	je	.LBB38_518
# BB#514:                               # %if.else.1766
	cmpl	$9, %r14d
	jne	.LBB38_516
.LBB38_515:                             # %if.then.1769
	leaq	856(%rsp), %rsi
	movl	$70, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	ep_print_image
	movl	$.L.str.115, %edi
.LBB38_517:                             # %if.end.1778
	movq	%rbx, %rsi
	callq	fputs
.LBB38_518:                             # %if.end.1778
	movq	712(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movq	856(%rsp), %rsi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.54, %edx
	movq	400(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ecx, %ecx
.LBB38_519:                             # %cleanup.1791
	movl	%ecx, %eax
	addq	$3160, %rsp             # imm = 0xC58
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_98:                              # %sw.epilog.402
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movl	$.L.str.89, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	712(%rsp), %rax         # 8-byte Reload
	movss	920(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	mulsd	.LCPI38_7(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.90, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	800(%rsp), %rdx         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	callq	fprintf
	cmpl	$6, %r13d
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 596(%rsp)         # 4-byte Spill
	movl	$4, %ebp
	cmovnel	%r13d, %ebp
	cmpl	$2, %ebp
	je	.LBB38_99
# BB#100:                               # %if.else.407
	movl	$1, %edx
	cmpl	$6, %r13d
	jne	.LBB38_102
# BB#101:
	movl	%ebp, %edi
	jmp	.LBB38_109
.LBB38_95:                              # %sw.bb.389
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movq	712(%rsp), %rax         # 8-byte Reload
	movss	888(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	920(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI38_0(%rip), %xmm1
	movss	18488(%rax), %xmm2      # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ebp
	movl	$2, %edx
	testl	%ebp, %ebp
	je	.LBB38_96
# BB#97:                                # %if.then.i.843
	movl	$.L.str.121, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$2, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%rbp), %edi
	movl	%edi, %r15d
	andl	$-256, %r15d
	sarl	$8, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	subl	%r15d, %ebp
	movl	%ebp, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	$2, %edx
	movq	%r13, %rdi
	jmp	.LBB38_109
.LBB38_516:                             # %if.else.1772
	movl	$.L.str.117, %edi
	jmp	.LBB38_517
.LBB38_85:                              # %sw.bb.309
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	760(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	712(%rsp), %rbp         # 8-byte Reload
	movl	18484(%rbp), %edx
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movss	920(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	mulsd	.LCPI38_9(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	18488(%rbp), %edx
	testl	%edx, %edx
	jle	.LBB38_87
# BB#86:                                # %if.then.324
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	752(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	fputs
	movl	$.L.str.87, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movq	800(%rsp), %rdx         # 8-byte Reload
	callq	fprintf
	movl	$3, %edi
	jmp	.LBB38_92
.LBB38_88:                              # %sw.bb.332
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	760(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	movq	712(%rsp), %r15         # 8-byte Reload
	movl	18484(%r15), %edx
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movss	920(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	mulsd	.LCPI38_8(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	18488(%r15), %edx
	testl	%edx, %edx
	jle	.LBB38_103
# BB#89:                                # %if.then.347
	movl	$.L.str.86, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	752(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	fputs
	movl	$.L.str.87, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	800(%rsp), %rdx         # 8-byte Reload
	callq	fprintf
	jmp	.LBB38_104
.LBB38_80:                              # %sw.bb.272
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movq	712(%rsp), %rax         # 8-byte Reload
	movss	884(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI38_10(%rip), %xmm0
	jne	.LBB38_82
	jp	.LBB38_82
# BB#81:                                # %if.then.277
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB38_82:                              # %if.end.279
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	712(%rsp), %rbp         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	836(%rbp), %xmm0
	divss	888(%rbp), %xmm0
	movss	.LCPI38_11(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%rbp), %xmm0
	divss	884(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.78, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.79, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.81, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI38_10(%rip), %xmm0
	jne	.LBB38_84
	jp	.LBB38_84
# BB#83:                                # %if.then.303
	movl	$.L.str.82, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB38_84:                              # %if.end.305
	movl	$hp_colour_print_page.temp, %edi
	movl	$1, %esi
	movl	$11, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	800(%rsp), %rdx         # 8-byte Reload
	callq	fprintf
	movl	$.L.str.84, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$7, %edi
	movl	$1, %edx
	jmp	.LBB38_109
.LBB38_108:                             # %sw.bb.238
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	760(%rsp), %edx         # 4-byte Reload
	callq	fprintf
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.63, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$8, %edi
	movl	$3, %edx
	jmp	.LBB38_109
.LBB38_90:                              # %sw.bb.370
	movq	%rbp, 400(%rsp)         # 8-byte Spill
	movq	712(%rsp), %rax         # 8-byte Reload
	movss	920(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI38_0(%rip), %xmm0
	addsd	.LCPI38_5(%rip), %xmm0
	mulsd	.LCPI38_6(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	$9, %edi
	testl	%ecx, %ecx
	je	.LBB38_91
# BB#94:                                # %if.then.379
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.91, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	callq	fprintf
	movl	$9, %edi
	jmp	.LBB38_92
.LBB38_96:
	movq	%r13, %rdi
.LBB38_109:                             # %if.else.415
	movl	%edi, %eax
	andl	$-2, %eax
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	cmpl	$10, %eax
	jne	.LBB38_111
# BB#110:
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movl	%edx, 440(%rsp)         # 4-byte Spill
	jmp	.LBB38_112
.LBB38_111:                             # %if.then.424
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.95, %esi
	xorl	%eax, %eax
	movq	%rdi, %rbp
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movl	%edx, 440(%rsp)         # 4-byte Spill
	callq	fprintf
	movq	%rbp, %rdi
.LBB38_112:                             # %if.end.429
	movl	$0, 596(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_113
.LBB38_102:                             # %if.then.409.thread
	movl	$.L.str.93, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$1, %edx
.LBB38_107:                             # %if.then.412
	movl	%edx, 440(%rsp)         # 4-byte Spill
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.94, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	callq	fprintf
	movl	%ebp, %edi
	jmp	.LBB38_113
.LBB38_87:                              # %if.else.329
	movl	$0, 596(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movq	800(%rsp), %rdx         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	callq	fprintf
	movl	$3, %edi
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
	movl	$0, 440(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_113
.LBB38_103:                             # %if.else.352
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	800(%rsp), %rdx         # 8-byte Reload
	movq	584(%rsp), %rcx         # 8-byte Reload
	callq	fprintf
.LBB38_104:                             # %if.then.409.thread1423
	movl	$5, %r13d
	jmp	.LBB38_105
.LBB38_91:
	movq	%r12, 728(%rsp)         # 8-byte Spill
	movl	$0, 684(%rsp)           # 4-byte Folded Spill
.LBB38_92:                              # %if.end.429
	movl	$0, 596(%rsp)           # 4-byte Folded Spill
	movl	$0, 440(%rsp)           # 4-byte Folded Spill
	jmp	.LBB38_113
.Lfunc_end38:
	.size	hp_colour_print_page, .Lfunc_end38-hp_colour_print_page
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI38_0:
	.quad	.LBB38_2
	.quad	.LBB38_13
	.quad	.LBB38_9
	.quad	.LBB38_13
	.quad	.LBB38_9
	.quad	.LBB38_13
	.quad	.LBB38_13
	.quad	.LBB38_13
	.quad	.LBB38_6
.LJTI38_1:
	.quad	.LBB38_106
	.quad	.LBB38_106
	.quad	.LBB38_105
	.quad	.LBB38_85
	.quad	.LBB38_98
	.quad	.LBB38_88
	.quad	.LBB38_98
	.quad	.LBB38_80
	.quad	.LBB38_108
	.quad	.LBB38_90
	.quad	.LBB38_95
	.quad	.LBB38_95
.LJTI38_2:
	.quad	.LBB38_375
	.quad	.LBB38_375
	.quad	.LBB38_388
	.quad	.LBB38_428
	.quad	.LBB38_396
	.quad	.LBB38_415
	.quad	.LBB38_470
	.quad	.LBB38_396
	.quad	.LBB38_428
	.quad	.LBB38_470
	.quad	.LBB38_444
	.quad	.LBB38_444
.LJTI38_3:
	.quad	.LBB38_463
	.quad	.LBB38_462
	.quad	.LBB38_461
	.quad	.LBB38_460
	.quad	.LBB38_459
	.quad	.LBB38_458
	.quad	.LBB38_457

	.text
	.align	16, 0x90
	.type	bjc_fscmyk,@function
bjc_fscmyk:                             # @bjc_fscmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp167:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp169:
	.cfi_def_cfa_offset 208
.Ltmp170:
	.cfi_offset %rbx, -56
.Ltmp171:
	.cfi_offset %r12, -48
.Ltmp172:
	.cfi_offset %r13, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	(%rdx), %rbx
	testl	%r8d, %r8d
	js	.LBB39_1
# BB#6:                                 # %if.else
	leaq	112(%rbx), %r13
	movl	80(%rbx), %r12d
	movl	84(%rbx), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	88(%rbx), %r15d
	movl	92(%rbx), %eax
	addl	$2, %r8d
	movslq	%r8d, %rdx
	shlq	$5, %rdx
	movq	16(%rsi,%rdx), %rbp
	movq	%rbp, 112(%rsp)
	movq	8(%rsi,%rdx), %rcx
	movq	%rcx, 120(%rsp)
	movq	(%rsi,%rdx), %r10
	movq	%r10, 128(%rsp)
	movq	24(%rsi,%rdx), %rdx
	movq	%rdx, 136(%rsp)
	movl	(%rbx), %r8d
	testl	%r8d, %r8d
	js	.LBB39_7
# BB#8:                                 # %if.else.216
	movq	24(%rdi), %r11
	movl	%r14d, %edi
	shll	$5, %edi
	movslq	%edi, %r9
	movslq	%r14d, %rdi
	subq	%rdi, %rbp
	movq	%rbp, 112(%rsp)
	movq	%rbp, %rsi
	subq	%rdi, %rcx
	movq	%rcx, 120(%rsp)
	subq	%rdi, %r10
	movq	%r10, 128(%rsp)
	subq	%rdi, %rdx
	movq	%rdx, 136(%rsp)
	subq	%r9, %r11
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	$4, %edx
	jmp	.LBB39_9
.LBB39_1:                               # %if.then
	movl	$-1, (%rbx)
	movq	$-4, %rax
	.align	16, 0x90
.LBB39_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$127, 32(%rbx,%rax,4)
	movl	$255, 48(%rbx,%rax,4)
	movl	$0, 92(%rbx)
	movl	32(%rbx,%rax,4), %ecx
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	96(%rbx), %ecx
	movl	%ecx, 96(%rbx)
	imull	$5, 32(%rbx,%rax,4), %edx
	movl	80(%rbx), %esi
	leal	8(%rsi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, 112(%rbx)
	movl	32(%rbx,%rax,4), %edx
	movl	%edx, 80(%rbx)
	movl	32(%rbx,%rax,4), %esi
	leal	8(%rsi,%rsi,2), %esi
	sarl	$4, %esi
	addl	%ecx, %esi
	movl	%esi, 96(%rbx)
	imull	$5, 32(%rbx,%rax,4), %ecx
	leal	8(%rdx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 112(%rbx)
	movl	%ecx, 80(%rbx,%rax,4)
	movl	$0, 80(%rbx)
	imull	$-3, 32(%rbx,%rax,4), %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	96(%rbx), %ecx
	movl	%ecx, 96(%rbx)
	imull	$-5, 32(%rbx,%rax,4), %edx
	addl	$8, %edx
	sarl	$4, %edx
	movl	%edx, 112(%rbx)
	movl	32(%rbx,%rax,4), %edx
	movl	$8, %esi
	subl	%edx, %esi
	negl	%edx
	movl	%edx, 80(%rbx)
	imull	$-3, 32(%rbx,%rax,4), %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	%ecx, %edx
	movl	%edx, 96(%rbx)
	imull	$-5, 32(%rbx,%rax,4), %ecx
	addl	%esi, %ecx
	sarl	$4, %ecx
	movl	%ecx, 112(%rbx)
	xorl	%edx, %edx
	subl	32(%rbx,%rax,4), %edx
	movl	%edx, 80(%rbx)
	movl	%ecx, 64(%rbx,%rax,4)
	incq	%rax
	jne	.LBB39_2
# BB#3:                                 # %for.cond.100.preheader
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rbx)
	testl	%r14d, %r14d
	jle	.LBB39_52
# BB#4:                                 # %for.cond.114.preheader.preheader
	shll	$3, %r14d
	leaq	124(%rbx), %rbp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB39_5:                               # %for.cond.114.preheader
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	cltd
	idivl	32(%rbx)
	subl	16(%rbx), %edx
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	addl	%eax, -28(%rbp)
	leal	(%rdx,%rdx,4), %eax
	movl	80(%rbx), %ecx
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -12(%rbp)
	movl	%edx, 80(%rbx)
	callq	rand
	cltd
	idivl	36(%rbx)
	subl	20(%rbx), %edx
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	addl	%eax, -24(%rbp)
	leal	(%rdx,%rdx,4), %eax
	movl	84(%rbx), %ecx
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -8(%rbp)
	movl	%edx, 84(%rbx)
	callq	rand
	cltd
	idivl	40(%rbx)
	subl	24(%rbx), %edx
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	addl	%eax, -20(%rbp)
	leal	(%rdx,%rdx,4), %eax
	movl	88(%rbx), %ecx
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -4(%rbp)
	movl	%edx, 88(%rbx)
	callq	rand
	cltd
	idivl	44(%rbx)
	subl	28(%rbx), %edx
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	addl	%eax, -16(%rbp)
	leal	(%rdx,%rdx,4), %eax
	movl	92(%rbx), %ecx
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, (%rbp)
	movl	%edx, 92(%rbx)
	incl	%r15d
	addq	$16, %rbp
	cmpl	%r14d, %r15d
	jl	.LBB39_5
	jmp	.LBB39_52
.LBB39_7:                               # %if.then.192
	movq	16(%rdi), %r11
	movl	%r14d, %edi
	shll	$5, %edi
	addl	$-4, %edi
	movslq	%edi, %r9
	leal	-1(%r14), %edi
	movslq	%edi, %rdi
	addq	%rdi, %rbp
	movq	%rbp, 112(%rsp)
	movq	%rbp, %rsi
	addq	%rdi, %rcx
	movq	%rcx, 120(%rsp)
	addq	%rdi, %r10
	movq	%r10, 128(%rsp)
	addq	%rdi, %rdx
	movq	%rdx, 136(%rsp)
	addq	%r9, %r11
	leaq	(%r13,%r9,4), %r13
	movl	$7, %ecx
	movl	$-4, %edx
	movq	$-1, 16(%rsp)           # 8-byte Folded Spill
.LBB39_9:                               # %if.end
	movl	%edx, 104(%rsp)         # 4-byte Spill
	negl	%r8d
	movl	%r8d, (%rbx)
	testl	%r14d, %r14d
	movq	%r15, %rbp
	movq	%rax, %r9
	je	.LBB39_10
# BB#11:                                # %for.body.244.lr.ph
	movl	$128, %r10d
	shrl	%cl, %r10d
	testl	%edx, %edx
	movb	$-128, 15(%rsp)         # 1-byte Folded Spill
	jg	.LBB39_13
# BB#12:                                # %for.body.244.lr.ph
	movb	$1, 15(%rsp)            # 1-byte Folded Spill
.LBB39_13:                              # %for.body.244.lr.ph
	movslq	%edx, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	$3, %ecx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%r13,%rcx,4), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	negl	%ecx
	movslq	%ecx, %rcx
	leaq	(%r13,%rcx,4), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%r13,%rcx,4), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	$2, %ecx
	subl	%edx, %ecx
	movl	%edx, 104(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	leaq	(%r13,%rcx,4), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	shll	$3, %r14d
	negl	%r14d
	xorl	%r15d, %r15d
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rsi, %r8
	movq	%r12, %rsi
	jmp	.LBB39_14
.LBB39_28:                              #   in Loop: Header=BB39_14 Depth=1
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movl	%r8d, %ebp
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r9, %rsi
	movl	104(%rsp), %ecx         # 4-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	jmp	.LBB39_44
	.align	16, 0x90
.LBB39_14:                              # %for.body.244
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r11,%r15), %edx
	movb	2(%r11,%r15), %cl
	orb	%dl, %cl
	orb	3(%r11,%r15), %cl
	movzbl	(%r11,%r15), %edi
	imull	$7, %r9d, %r12d
	sarl	$4, %r12d
	addl	12(%r13,%r15,4), %r12d
	addl	%edi, %r12d
	cmpl	28(%rbx), %r12d
	jle	.LBB39_16
# BB#15:                                # %if.then.262
                                        #   in Loop: Header=BB39_14 Depth=1
	orb	%r10b, %al
	subl	44(%rbx), %r12d
.LBB39_16:                              # %if.end.270
                                        #   in Loop: Header=BB39_14 Depth=1
	testb	%cl, %cl
	je	.LBB39_32
# BB#17:                                # %if.then.272
                                        #   in Loop: Header=BB39_14 Depth=1
	testb	%r10b, %al
	je	.LBB39_19
# BB#18:                                # %if.then.278
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%eax, 108(%rsp)         # 4-byte Spill
	leal	8(%r12,%r12,2), %ecx
	sarl	$4, %ecx
	movq	64(%rsp), %rdx          # 8-byte Reload
	addl	%ecx, (%rdx,%r15,4)
	leal	(%r12,%r12,4), %ecx
	leal	8(%r9,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 12(%r13,%r15,4)
	movzbl	1(%r11,%r15), %ecx
	imull	$7, %esi, %edi
	sarl	$4, %edi
	addl	(%r13,%r15,4), %edi
	addl	%ecx, %edi
	subl	32(%rbx), %edi
	movl	16(%rbx), %ecx
	movl	%ecx, %edx
	negl	%edx
	addl	%edi, %ecx
	cmovnsl	%edi, %edx
	leal	8(%rdx,%rdx,2), %ecx
	sarl	$4, %ecx
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	%ecx, (%rax,%r15,4)
	leal	(%rdx,%rdx,4), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r13,%r15,4)
	movzbl	2(%r11,%r15), %ecx
	movq	96(%rsp), %r9           # 8-byte Reload
	imull	$7, %r9d, %esi
	sarl	$4, %esi
	addl	4(%r13,%r15,4), %esi
	addl	%ecx, %esi
	subl	36(%rbx), %esi
	movl	20(%rbx), %ecx
	movl	%ecx, %edi
	negl	%edi
	addl	%esi, %ecx
	cmovnsl	%esi, %edi
	leal	8(%rdi,%rdi,2), %ecx
	sarl	$4, %ecx
	movq	48(%rsp), %rax          # 8-byte Reload
	addl	%ecx, (%rax,%r15,4)
	leal	(%rdi,%rdi,4), %ecx
	leal	8(%r9,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 4(%r13,%r15,4)
	movzbl	3(%r11,%r15), %ecx
	imull	$7, %ebp, %esi
	sarl	$4, %esi
	addl	8(%r13,%r15,4), %esi
	addl	%ecx, %esi
	subl	40(%rbx), %esi
	movl	24(%rbx), %ecx
	movq	%rbp, %rax
	movl	%ecx, %ebp
	negl	%ebp
	addl	%esi, %ecx
	cmovnsl	%esi, %ebp
	leal	8(%rbp,%rbp,2), %ecx
	sarl	$4, %ecx
	movq	40(%rsp), %rsi          # 8-byte Reload
	addl	%ecx, (%rsi,%r15,4)
	leal	(%rbp,%rbp,4), %ecx
	leal	8(%rax,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 8(%r13,%r15,4)
	movl	%r12d, %r9d
	movl	%edx, %esi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	jmp	.LBB39_43
	.align	16, 0x90
.LBB39_32:                              # %if.else.530
                                        #   in Loop: Header=BB39_14 Depth=1
	leal	8(%r12,%r12,2), %ecx
	sarl	$4, %ecx
	movq	64(%rsp), %rdx          # 8-byte Reload
	addl	%ecx, (%rdx,%r15,4)
	leal	(%r12,%r12,4), %ecx
	leal	8(%r9,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 12(%r13,%r15,4)
	movl	(%r13,%r15,4), %ecx
	movl	64(%rbx), %edx
	cmpl	%edx, %ecx
	jg	.LBB39_34
# BB#33:                                # %if.else.550
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	48(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB39_35
.LBB39_34:                              # %if.then.555
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%edx, (%r13,%r15,4)
.LBB39_35:                              # %if.end.559
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	4(%r13,%r15,4), %ecx
	movl	68(%rbx), %edx
	cmpl	%edx, %ecx
	jg	.LBB39_37
# BB#36:                                # %if.else.567
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	52(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB39_38
.LBB39_37:                              # %if.then.572
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%edx, 4(%r13,%r15,4)
.LBB39_38:                              # %if.end.576
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	8(%r13,%r15,4), %ecx
	movl	72(%rbx), %edx
	cmpl	%edx, %ecx
	jg	.LBB39_41
# BB#39:                                # %if.else.584
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	56(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB39_40
.LBB39_41:                              # %if.then.589
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%edx, 8(%r13,%r15,4)
	jmp	.LBB39_42
	.align	16, 0x90
.LBB39_19:                              # %if.else.378
                                        #   in Loop: Header=BB39_14 Depth=1
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%eax, 108(%rsp)         # 4-byte Spill
	imull	$7, %esi, %r9d
	sarl	$4, %r9d
	addl	(%r13,%r15,4), %r9d
	addl	%edx, %r9d
	cmpl	16(%rbx), %r9d
	jle	.LBB39_21
# BB#20:                                # %if.then.389
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	92(%rsp), %eax          # 4-byte Reload
	orb	%r10b, %al
	movl	%eax, 92(%rsp)          # 4-byte Spill
	subl	32(%rbx), %r9d
.LBB39_21:                              # %if.end.397
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	88(%rsp), %eax          # 4-byte Reload
	leal	8(%r9,%r9,2), %ecx
	sarl	$4, %ecx
	movq	56(%rsp), %rdx          # 8-byte Reload
	addl	%ecx, (%rdx,%r15,4)
	leal	(%r9,%r9,4), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r13,%r15,4)
	movzbl	2(%r11,%r15), %ecx
	movq	96(%rsp), %rdx          # 8-byte Reload
	imull	$7, %edx, %edx
	sarl	$4, %edx
	addl	4(%r13,%r15,4), %edx
	addl	%ecx, %edx
	cmpl	20(%rbx), %edx
	jle	.LBB39_22
# BB#23:                                # %if.then.420
                                        #   in Loop: Header=BB39_14 Depth=1
	movq	%r8, 24(%rsp)           # 8-byte Spill
	orb	%r10b, %al
	subl	36(%rbx), %edx
	jmp	.LBB39_24
.LBB39_22:                              #   in Loop: Header=BB39_14 Depth=1
	movq	%r8, 24(%rsp)           # 8-byte Spill
.LBB39_24:                              # %if.end.428
                                        #   in Loop: Header=BB39_14 Depth=1
	leal	8(%rdx,%rdx,2), %ecx
	sarl	$4, %ecx
	movq	48(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, (%rdi,%r15,4)
	leal	(%rdx,%rdx,4), %ecx
	movq	96(%rsp), %rdi          # 8-byte Reload
	leal	8(%rdi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 4(%r13,%r15,4)
	movzbl	3(%r11,%r15), %ecx
	imull	$7, %ebp, %r8d
	sarl	$4, %r8d
	addl	8(%r13,%r15,4), %r8d
	addl	%ecx, %r8d
	cmpl	24(%rbx), %r8d
	jle	.LBB39_25
# BB#26:                                # %if.then.451
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	84(%rsp), %esi          # 4-byte Reload
	orb	%r10b, %sil
	subl	40(%rbx), %r8d
	jmp	.LBB39_27
.LBB39_25:                              #   in Loop: Header=BB39_14 Depth=1
	movl	84(%rsp), %esi          # 4-byte Reload
.LBB39_27:                              # %if.end.459
                                        #   in Loop: Header=BB39_14 Depth=1
	leal	8(%r8,%r8,2), %ecx
	sarl	$4, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, (%rdi,%r15,4)
	leal	(%r8,%r8,4), %ecx
	leal	8(%rbp,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 8(%r13,%r15,4)
	movl	92(%rsp), %ebp          # 4-byte Reload
	movb	%bpl, %cl
	andb	%r10b, %cl
	andb	%al, %cl
	testb	%sil, %cl
	je	.LBB39_28
# BB#29:                                # %if.then.483
                                        #   in Loop: Header=BB39_14 Depth=1
	movzbl	%r10b, %edi
	movzbl	%sil, %ecx
	movzbl	%bpl, %ebp
	movzbl	%al, %eax
	notl	%edi
	andl	%edi, %ebp
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	andl	%edi, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	andl	%ecx, %edi
	subl	44(%rbx), %r12d
	movl	28(%rbx), %ecx
	addl	%r12d, %ecx
	jns	.LBB39_31
# BB#30:                                # %if.then.512
                                        #   in Loop: Header=BB39_14 Depth=1
	xorl	%r12d, %r12d
	subl	16(%rbx), %r12d
.LBB39_31:                              # %if.end.515
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	108(%rsp), %eax         # 4-byte Reload
	orb	%r10b, %al
	movl	%eax, 108(%rsp)         # 4-byte Spill
	leal	8(%r12,%r12,2), %ecx
	sarl	$4, %ecx
	movq	64(%rsp), %rbp          # 8-byte Reload
	addl	%ecx, (%rbp,%r15,4)
	leal	(%r12,%r12,4), %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	8(%rax,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, 12(%r13,%r15,4)
	movl	%edi, 84(%rsp)          # 4-byte Spill
	movl	%r9d, %eax
	movq	%r12, %r9
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movl	%r8d, %ebp
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%rax, %rsi
	jmp	.LBB39_43
.LBB39_40:                              #   in Loop: Header=BB39_14 Depth=1
	movl	%eax, 108(%rsp)         # 4-byte Spill
.LBB39_42:                              # %if.end.594
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%r12d, %r9d
.LBB39_43:                              # %if.end.594
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	104(%rsp), %ecx         # 4-byte Reload
.LBB39_44:                              # %if.end.594
                                        #   in Loop: Header=BB39_14 Depth=1
	testl	%ecx, %ecx
	jg	.LBB39_45
# BB#46:                                # %if.end.594
                                        #   in Loop: Header=BB39_14 Depth=1
	addb	%r10b, %r10b
	jmp	.LBB39_47
	.align	16, 0x90
.LBB39_45:                              #   in Loop: Header=BB39_14 Depth=1
	shrb	%r10b
.LBB39_47:                              # %if.end.594
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	108(%rsp), %eax         # 4-byte Reload
	testb	%r10b, %r10b
	je	.LBB39_49
# BB#48:                                #   in Loop: Header=BB39_14 Depth=1
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	jmp	.LBB39_50
	.align	16, 0x90
.LBB39_49:                              # %if.then.605
                                        #   in Loop: Header=BB39_14 Depth=1
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	92(%rsp), %ecx          # 4-byte Reload
	movb	%cl, (%r8)
	movq	120(%rsp), %rcx
	movl	88(%rsp), %edx          # 4-byte Reload
	movb	%dl, (%rcx)
	movq	128(%rsp), %rdx
	movl	84(%rsp), %edi          # 4-byte Reload
	movb	%dil, (%rdx)
	movq	%rsi, %r10
	movq	136(%rsp), %rsi
	movb	%al, (%rsi)
	movq	112(%rsp), %r8
	movq	16(%rsp), %rdi          # 8-byte Reload
	addq	%rdi, %r8
	movq	%r8, 112(%rsp)
	addq	%rdi, %rcx
	movq	%rcx, 120(%rsp)
	addq	%rdi, %rdx
	movq	%rdx, 128(%rsp)
	addq	%rdi, %rsi
	movq	%rsi, 136(%rsp)
	movq	%r10, %rsi
	xorl	%eax, %eax
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movb	15(%rsp), %cl           # 1-byte Reload
	movb	%cl, %r10b
.LBB39_50:                              # %if.end.637
                                        #   in Loop: Header=BB39_14 Depth=1
	addq	72(%rsp), %r15          # 8-byte Folded Reload
	incl	%r14d
	jne	.LBB39_14
	jmp	.LBB39_51
.LBB39_10:
	movq	%r12, %rsi
.LBB39_51:                              # %for.end.643
	movl	%esi, 80(%rbx)
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 84(%rbx)
	movl	%ebp, 88(%rbx)
	movl	%r9d, 92(%rbx)
.LBB39_52:                              # %if.end.648
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	bjc_fscmyk, .Lfunc_end39-bjc_fscmyk
	.cfi_endproc

	.align	16, 0x90
	.type	ep_print_image,@function
ep_print_image:                         # @ep_print_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp179:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp180:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp182:
	.cfi_def_cfa_offset 144
.Ltmp183:
	.cfi_offset %rbx, -56
.Ltmp184:
	.cfi_offset %r12, -48
.Ltmp185:
	.cfi_offset %r13, -40
.Ltmp186:
	.cfi_offset %r14, -32
.Ltmp187:
	.cfi_offset %r15, -24
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpl	$65, %edx
	jg	.LBB40_3
# BB#1:                                 # %entry
	cmpl	$4, %edx
	jae	.LBB40_55
# BB#2:                                 # %sw.bb
	movslq	2092(%rbx), %rax
	movslq	2084(%rbx), %rsi
	addq	%rax, %rsi
	movsbq	%dl, %rax
	shlq	$9, %rax
	addq	%rbx, %rax
	movq	16(%rax,%rsi,8), %rdi
	movslq	%r8d, %rdx
	movq	%rcx, %rsi
	callq	memcpy
	xorl	%ebp, %ebp
	jmp	.LBB40_56
.LBB40_3:                               # %entry
	cmpl	$72, %edx
	jg	.LBB40_7
# BB#4:                                 # %entry
	cmpl	$66, %edx
	jne	.LBB40_5
# BB#10:                                # %sw.bb.5
	movl	2084(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB40_11
# BB#12:                                # %if.else
	movl	2080(%rbx), %eax
	movl	2092(%rbx), %edx
	leal	(%rcx,%rdx), %ecx
	addl	%r8d, %edx
	cmpl	$31, %ecx
	movl	%edx, 2092(%rbx)
	jg	.LBB40_14
# BB#13:                                # %if.else
	subl	%ecx, %eax
	xorl	%ebp, %ebp
	cmpl	%r8d, %eax
	jg	.LBB40_56
.LBB40_14:                              # %if.then.17
	movl	$70, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ep_print_image
	xorl	%eax, %eax
	jmp	.LBB40_57
.LBB40_7:                               # %entry
	cmpl	$73, %edx
	jne	.LBB40_8
# BB#15:                                # %sw.bb.25
	movl	2084(%rbx), %eax
	movl	2092(%rbx), %ecx
	leal	1(%rcx,%rax), %eax
	movl	%eax, 2084(%rbx)
	movl	$0, 2092(%rbx)
	xorl	%ebp, %ebp
	cmpl	2080(%rbx), %eax
	jl	.LBB40_56
# BB#16:
	leaq	2084(%rbx), %r15
	jmp	.LBB40_17
.LBB40_5:                               # %entry
	cmpl	$70, %edx
	jne	.LBB40_55
# BB#6:                                 # %entry.sw.bb.37_crit_edge
	leaq	2084(%rbx), %r15
	movl	2084(%rbx), %eax
.LBB40_17:                              # %sw.bb.37
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB40_56
# BB#18:                                # %while.cond.preheader
	movl	2088(%rbx), %eax
	cmpl	$510, %eax              # imm = 0x1FE
	jl	.LBB40_21
# BB#19:
	movl	$-510, %ebp             # imm = 0xFFFFFFFFFFFFFE02
	.align	16, 0x90
.LBB40_20:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.122, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	2088(%rbx), %eax
	addl	%ebp, %eax
	movl	%eax, 2088(%rbx)
	cmpl	$509, %eax              # imm = 0x1FD
	jg	.LBB40_20
.LBB40_21:                              # %while.end
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB40_23
# BB#22:                                # %if.then.51
	movl	$.L.str.123, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$-256, %eax
	addl	2088(%rbx), %eax
	movl	%eax, 2088(%rbx)
.LBB40_23:                              # %if.end.55
	testl	%eax, %eax
	je	.LBB40_25
# BB#24:                                # %if.then.58
	movl	$.L.str.124, %edi
	movq	%r14, %rsi
	callq	fputs
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movl	2088(%rbx), %edi
	movq	%r14, %rsi
	callq	_IO_putc
.LBB40_25:                              # %if.end.63
	movl	(%r15), %eax
	movl	$64, %ecx
	cmpl	$56, %eax
	jg	.LBB40_28
# BB#26:                                # %if.else.68
	movl	$56, %ecx
	cmpl	$48, %eax
	jg	.LBB40_28
# BB#27:                                # %if.else.73
	cmpl	$32, %eax
	movl	$48, %ecx
	movl	$32, %edx
	cmovgl	%ecx, %edx
	movl	%edx, %ecx
.LBB40_28:                              # %if.end.81
	movq	%rbx, %r8
	movq	%r8, 48(%rsp)           # 8-byte Spill
	cmpl	$0, 2072(%r8)
	jle	.LBB40_53
# BB#29:                                # %for.body.lr.ph
	movq	%r15, (%rsp)            # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%ecx, %r12d
	shrl	$3, %r12d
	movl	%ecx, %r13d
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	%ecx, %edx
	shrl	$2, %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	(%r12,%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB40_30:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_31 Depth 2
                                        #       Child Loop BB40_32 Depth 3
                                        #     Child Loop BB40_38 Depth 2
                                        #       Child Loop BB40_58 Depth 3
                                        #       Child Loop BB40_42 Depth 3
	movq	2064(%r8), %rcx
	movl	2076(%r8), %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB40_31:                              # %for.body.88
                                        #   Parent Loop BB40_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB40_32 Depth 3
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	shlq	$9, %rax
	leaq	(%rax,%r8), %rax
	movq	16(%rax,%rdx,8), %r14
	testl	%esi, %esi
	movq	%rcx, %rbx
	movq	%r14, %rbp
	jle	.LBB40_33
	.align	16, 0x90
.LBB40_32:                              # %for.body.97
                                        #   Parent Loop BB40_30 Depth=1
                                        #     Parent Loop BB40_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	%r8, %r15
	callq	memflip8x8
	movq	%r15, %r8
	incq	%rbp
	addq	%r13, %rbx
	movslq	2076(%r8), %rsi
	leaq	(%rsi,%r14), %rax
	cmpq	%rax, %rbp
	jb	.LBB40_32
.LBB40_33:                              # %for.inc.101
                                        #   in Loop: Header=BB40_31 Depth=2
	movq	64(%rsp), %rdx          # 8-byte Reload
	addq	$8, %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	cmpq	%r13, %rdx
	jl	.LBB40_31
# BB#34:                                # %for.end.104
                                        #   in Loop: Header=BB40_30 Depth=1
	cmpl	$1, 2072(%r8)
	jne	.LBB40_36
# BB#35:                                # %if.then.108
                                        #   in Loop: Header=BB40_30 Depth=1
	movl	$13, %edi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%r8, %rbx
	jmp	.LBB40_37
	.align	16, 0x90
.LBB40_36:                              # %if.else.110
                                        #   in Loop: Header=BB40_30 Depth=1
	movl	$.L.str.125, %edi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r8, %rbx
	callq	fputs
	movq	56(%rsp), %rax          # 8-byte Reload
	movsbl	ep_print_image.color(%rax), %edi
	movq	%rbp, %rsi
.LBB40_37:                              # %if.end.116
                                        #   in Loop: Header=BB40_30 Depth=1
	callq	_IO_putc
	movq	%rbx, %r8
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	2064(%r8), %rax
	movslq	2076(%r8), %rcx
	movslq	20(%rsp), %rdx          # 4-byte Folded Reload
	imulq	%rcx, %rdx
	leaq	(%rax,%rdx), %r14
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movb	$1, (%rax,%rdx)
	movq	2064(%r8), %rbp
	cmpq	%r14, %rbp
	movq	%rbp, %rax
	jae	.LBB40_51
	.align	16, 0x90
.LBB40_38:                              # %while.body.125
                                        #   Parent Loop BB40_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB40_58 Depth 3
                                        #       Child Loop BB40_42 Depth 3
	cmpq	%r14, %rbp
	jae	.LBB40_39
# BB#40:                                # %for.cond.129.preheader
                                        #   in Loop: Header=BB40_38 Depth=2
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$ep_print_image.zeros, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	movq	%rbp, %r15
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	jne	.LBB40_41
	.align	16, 0x90
.LBB40_58:                              # %for.inc.136
                                        #   Parent Loop BB40_30 Depth=1
                                        #     Parent Loop BB40_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addq	%rbx, %r15
	movl	$ep_print_image.zeros, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB40_58
.LBB40_41:                              # %redo.preheader
                                        #   in Loop: Header=BB40_38 Depth=2
	movq	%r15, %r13
	.align	16, 0x90
.LBB40_42:                              # %for.cond.145
                                        #   Parent Loop BB40_30 Depth=1
                                        #     Parent Loop BB40_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rbp
	leaq	(%rbp,%r12), %r13
	movl	$ep_print_image.zeros, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB40_42
# BB#43:                                # %for.end.155
                                        #   in Loop: Header=BB40_42 Depth=3
	cmpq	%r14, %r13
	jae	.LBB40_45
# BB#44:                                # %land.lhs.true
                                        #   in Loop: Header=BB40_42 Depth=3
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %rdi
	movl	$ep_print_image.zeros, %esi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB40_42
.LBB40_45:                              # %for.end.155.if.end.168.loopexit_crit_edge
                                        #   in Loop: Header=BB40_38 Depth=2
	addq	%r12, %rbp
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	jmp	.LBB40_46
	.align	16, 0x90
.LBB40_39:                              #   in Loop: Header=BB40_38 Depth=2
	movq	%r14, %r13
	movq	%r14, %r15
.LBB40_46:                              # %if.end.168
                                        #   in Loop: Header=BB40_38 Depth=2
	cmpq	%r13, %rax
	jae	.LBB40_48
# BB#47:                                # %if.then.171
                                        #   in Loop: Header=BB40_38 Depth=2
	cmpq	%r14, %r13
	movq	%r14, %rbx
	cmovbq	%r13, %rbx
	subq	%rax, %rbx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$.L.str.126, %edi
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rsi
	callq	fputs
	movl	20(%rsp), %edi          # 4-byte Reload
	movq	%r14, %rsi
	callq	_IO_putc
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	leal	(%rax,%rbx), %ebp
	movl	%ebp, %eax
	andl	$-256, %eax
	movl	%ebx, %edi
	subl	%eax, %edi
	movq	%r14, %rsi
	callq	fputc
	sarl	$8, %ebp
	movl	%ebp, %edi
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%r14, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rcx
	movq	32(%rsp), %rbx          # 8-byte Reload
	callq	fwrite
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB40_48:                              # %if.end.182
                                        #   in Loop: Header=BB40_38 Depth=2
	cmpq	%r15, %r13
	jae	.LBB40_50
# BB#49:                                # %if.then.185
                                        #   in Loop: Header=BB40_38 Depth=2
	cmpq	%r14, %r15
	cmovbq	%r15, %r14
	subq	%r13, %r14
	movq	%r14, %rax
	cqto
	idivq	%r12
	movq	%rax, %rbx
	shrq	$63, %rbx
	addq	%rax, %rbx
	shrq	%rbx
	movl	$.L.str.127, %edi
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rsi
	callq	fputs
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	movq	%rbp, %r14
	leal	(%rax,%rbx), %ebp
	movl	%ebp, %eax
	andl	$-256, %eax
	subl	%eax, %ebx
	movl	%ebx, %edi
	movq	%r13, %rsi
	callq	fputc
	sarl	$8, %ebp
	movl	%ebp, %edi
	movq	%r14, %rbp
	movq	%r13, %rsi
	callq	fputc
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
.LBB40_50:                              # %while.cond.122.backedge
                                        #   in Loop: Header=BB40_38 Depth=2
	cmpq	%r14, %r15
	movq	%r15, %rax
	jb	.LBB40_38
.LBB40_51:                              # %while.end.206
                                        #   in Loop: Header=BB40_30 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movslq	2072(%r8), %rax
	cmpq	%rax, %rcx
	movq	8(%rsp), %r13           # 8-byte Reload
	jl	.LBB40_30
# BB#52:                                # %for.cond.for.end.208_crit_edge
	movq	(%rsp), %rax            # 8-byte Reload
	movl	(%rax), %eax
.LBB40_53:                              # %for.end.208
	addl	2092(%r8), %eax
	movl	$0, 2084(%r8)
	movl	%eax, 2088(%r8)
	movl	$0, 2092(%r8)
	movq	(%r8), %rdi
	movl	8(%r8), %edx
	jmp	.LBB40_54
.LBB40_8:                               # %entry
	cmpl	$82, %edx
	jne	.LBB40_55
# BB#9:                                 # %sw.bb.213
	movl	$0, 2084(%rbx)
	movl	%r8d, 2088(%rbx)
	movl	$0, 2092(%rbx)
	movq	(%rbx), %rdi
	movl	8(%rbx), %edx
.LBB40_54:                              # %cleanup
	shll	$3, %edx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB40_56
.LBB40_55:                              # %sw.default
	movq	2096(%rbx), %rdi
	movl	$.L.str.128, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, %ebp
	jmp	.LBB40_56
.LBB40_11:                              # %if.then
	addl	%r8d, 2088(%rbx)
	xorl	%ebp, %ebp
.LBB40_56:                              # %cleanup
	movl	%ebp, %eax
.LBB40_57:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	ep_print_image, .Lfunc_end40-ep_print_image
	.cfi_endproc

	.type	cdj500_procs,@object    # @cdj500_procs
	.data
	.align	8
cdj500_procs:
	.quad	dj500c_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	cdj500_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cdjmono"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_cdjmono_device,@object # @gs_cdjmono_device
	.data
	.globl	gs_cdjmono_device
	.align	8
gs_cdjmono_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj500_procs
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj500c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_cdjmono_device, 18496

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cdeskjet"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceRGB"
	.size	.L.str.3, 10

	.type	gs_cdeskjet_device,@object # @gs_cdeskjet_device
	.data
	.globl	gs_cdeskjet_device
	.align	8
gs_cdeskjet_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj500_procs
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
	.short	3                       # 0x3
	.byte	255                     # 0xff
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj500c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_cdeskjet_device, 18496

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"cdjcolor"
	.size	.L.str.4, 9

	.type	gs_cdjcolor_device,@object # @gs_cdjcolor_device
	.data
	.globl	gs_cdjcolor_device
	.align	8
gs_cdjcolor_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj500_procs
	.quad	.L.str.4
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj500c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_cdjcolor_device, 18496

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"cdj500"
	.size	.L.str.5, 7

	.type	gs_cdj500_device,@object # @gs_cdj500_device
	.data
	.globl	gs_cdj500_device
	.align	8
gs_cdj500_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj500_procs
	.quad	.L.str.5
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj500c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_cdj500_device, 18496

	.type	cdj550_procs,@object    # @cdj550_procs
	.align	8
cdj550_procs:
	.quad	dj550c_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	cdj550_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"cdj550"
	.size	.L.str.6, 7

	.type	gs_cdj550_device,@object # @gs_cdj550_device
	.data
	.globl	gs_cdj550_device
	.align	8
gs_cdj550_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj550_procs
	.quad	.L.str.6
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj550c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_cdj550_device, 18496

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"picty180"
	.size	.L.str.7, 9

	.type	gs_picty180_device,@object # @gs_picty180_device
	.data
	.globl	gs_picty180_device
	.align	8
gs_picty180_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	cdj550_procs
	.quad	.L.str.7
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	picty180_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_picty180_device, 18496

	.type	dj505j_procs,@object    # @dj505j_procs
	.align	8
dj505j_procs:
	.quad	dj505j_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	dj505j_procs, 584

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"dj505j"
	.size	.L.str.8, 7

	.type	gs_dj505j_device,@object # @gs_dj505j_device
	.data
	.globl	gs_dj505j_device
	.align	8
gs_dj505j_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	dj505j_procs
	.quad	.L.str.8
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dj505j_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_dj505j_device, 18496

	.type	pj_procs,@object        # @pj_procs
	.align	8
pj_procs:
	.quad	pj_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	gdev_prn_get_params
	.quad	pj_put_params
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
	.size	pj_procs, 584

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"declj250"
	.size	.L.str.9, 9

	.type	gs_declj250_device,@object # @gs_declj250_device
	.data
	.globl	gs_declj250_device
	.align	8
gs_declj250_device:
	.long	18488                   # 0x4838
	.zero	4
	.quad	pj_procs
	.quad	.L.str.9
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.zero	8
	.zero	16
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
	.quad	declj250_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.zero	4
	.size	gs_declj250_device, 18488

	.type	dnj650c_procs,@object   # @dnj650c_procs
	.align	8
dnj650c_procs:
	.quad	dnj650c_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	dnj650c_procs, 584

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"dnj650c"
	.size	.L.str.10, 8

	.type	gs_dnj650c_device,@object # @gs_dnj650c_device
	.data
	.globl	gs_dnj650c_device
	.align	8
gs_dnj650c_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	dnj650c_procs
	.quad	.L.str.10
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	dnj650c_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.size	gs_dnj650c_device, 18496

	.type	lj4dith_procs,@object   # @lj4dith_procs
	.align	8
lj4dith_procs:
	.quad	lj4dith_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	lj4dith_procs, 584

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"lj4dith"
	.size	.L.str.11, 8

	.type	gs_lj4dith_device,@object # @gs_lj4dith_device
	.data
	.globl	gs_lj4dith_device
	.align	8
gs_lj4dith_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	lj4dith_procs
	.quad	.L.str.11
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
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
	.quad	lj4dith_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_lj4dith_device, 18496

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"lj4dithp"
	.size	.L.str.12, 9

	.type	gs_lj4dithp_device,@object # @gs_lj4dithp_device
	.data
	.globl	gs_lj4dithp_device
	.align	8
gs_lj4dithp_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	lj4dith_procs
	.quad	.L.str.12
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
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
	.quad	lj4dithp_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_lj4dithp_device, 18496

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"pj"
	.size	.L.str.13, 3

	.type	gs_pj_device,@object    # @gs_pj_device
	.data
	.globl	gs_pj_device
	.align	8
gs_pj_device:
	.long	18488                   # 0x4838
	.zero	4
	.quad	pj_procs
	.quad	.L.str.13
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.zero	8
	.zero	16
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
	.quad	pj_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.zero	4
	.size	gs_pj_device, 18488

	.type	pjxl_procs,@object      # @pjxl_procs
	.align	8
pjxl_procs:
	.quad	pjxl_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	pjxl_get_params
	.quad	pjxl_put_params
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
	.size	pjxl_procs, 584

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"pjxl"
	.size	.L.str.14, 5

	.type	gs_pjxl_device,@object  # @gs_pjxl_device
	.data
	.globl	gs_pjxl_device
	.align	8
gs_pjxl_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	pjxl_procs
	.quad	.L.str.14
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.zero	8
	.zero	16
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
	.quad	pjxl_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_pjxl_device, 18496

	.type	pjxl300_procs,@object   # @pjxl300_procs
	.align	8
pjxl300_procs:
	.quad	pjxl300_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	pjxl_get_params
	.quad	pjxl_put_params
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
	.size	pjxl300_procs, 584

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"pjxl300"
	.size	.L.str.15, 8

	.type	gs_pjxl300_device,@object # @gs_pjxl300_device
	.data
	.globl	gs_pjxl300_device
	.align	8
gs_pjxl300_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	pjxl300_procs
	.quad	.L.str.15
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
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
	.quad	pjxl300_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_pjxl300_device, 18496

	.type	escp_procs,@object      # @escp_procs
	.align	8
escp_procs:
	.quad	escp_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj_get_params
	.quad	cdj_put_params
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
	.size	escp_procs, 584

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"escp"
	.size	.L.str.16, 5

	.type	gs_escp_device,@object  # @gs_escp_device
	.data
	.globl	gs_escp_device
	.align	8
gs_escp_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	escp_procs
	.quad	.L.str.16
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
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
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.zero	8
	.zero	16
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
	.quad	escp_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_escp_device, 18496

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"escpc"
	.size	.L.str.17, 6

	.type	gs_escpc_device,@object # @gs_escpc_device
	.data
	.globl	gs_escpc_device
	.align	8
gs_escpc_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	escp_procs
	.quad	.L.str.17
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.zero	8
	.zero	16
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
	.quad	escp_print_page
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
	.short	0                       # 0x0
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_escpc_device, 18496

	.type	bjc_procs,@object       # @bjc_procs
	.align	8
bjc_procs:
	.quad	bjc_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	bjc_get_params
	.quad	bjc_put_params
	.quad	gdev_cmyk_map_cmyk_color
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
	.quad	gdev_cmyk_map_cmyk_color
	.quad	gdev_cmyk_map_color_cmyk
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
	.size	bjc_procs, 584

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"bjc600"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"DeviceCMYK"
	.size	.L.str.19, 11

	.type	gs_bjc600_device,@object # @gs_bjc600_device
	.data
	.globl	gs_bjc600_device
	.align	8
gs_bjc600_device:
	.long	18528                   # 0x4860
	.zero	4
	.quad	bjc_procs
	.quad	.L.str.18
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	24                      # 0x18
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	63                      # 0x3f
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.19
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.zero	8
	.zero	16
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
	.quad	bjc_print_page
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
	.short	1                       # 0x1
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	80                      # 0x50
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	15                      # 0xf
	.long	0                       # 0x0
	.size	gs_bjc600_device, 18528

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"bjc800"
	.size	.L.str.20, 7

	.type	gs_bjc800_device,@object # @gs_bjc800_device
	.data
	.globl	gs_bjc800_device
	.align	8
gs_bjc800_device:
	.long	18528                   # 0x4860
	.zero	4
	.quad	bjc_procs
	.quad	.L.str.20
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	24                      # 0x18
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	63                      # 0x3f
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.19
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.zero	8
	.zero	16
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
	.quad	bjc_print_page
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
	.short	1                       # 0x1
	.zero	2
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	11                      # 0xb
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	80                      # 0x50
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	15                      # 0xf
	.zero	4
	.size	gs_bjc800_device, 18528

	.type	hp_colour_open.dj_a4,@object # @hp_colour_open.dj_a4
	.section	.rodata,"a",@progbits
	.align	16
hp_colour_open.dj_a4:
	.long	1040187392              # float 1.250000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1041395352              # float 1.430000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dj_a4, 16

	.type	hp_colour_open.dj_letter,@object # @hp_colour_open.dj_letter
	.align	16
hp_colour_open.dj_letter:
	.long	1048576000              # float 2.500000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dj_letter, 16

	.type	hp_colour_open.dj_505j,@object # @hp_colour_open.dj_505j
	.align	16
hp_colour_open.dj_505j:
	.long	1040187392              # float 1.250000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1040187392              # float 1.250000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dj_505j, 16

	.type	hp_colour_open.dj_505jc,@object # @hp_colour_open.dj_505jc
	.align	16
hp_colour_open.dj_505jc:
	.long	1040187392              # float 1.250000e-01
	.long	1059732849              # float 6.650000e-01
	.long	1040187392              # float 1.250000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dj_505jc, 16

	.type	hp_colour_open.lj4_all,@object # @hp_colour_open.lj4_all
	.align	16
hp_colour_open.lj4_all:
	.long	1048911544              # float 2.600000e-01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.size	hp_colour_open.lj4_all, 16

	.type	hp_colour_open.pj_all,@object # @hp_colour_open.pj_all
	.align	16
hp_colour_open.pj_all:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.pj_all, 16

	.type	hp_colour_open.dnj_all,@object # @hp_colour_open.dnj_all
	.align	16
hp_colour_open.dnj_all:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dnj_all, 16

	.type	hp_colour_open.ep_a4,@object # @hp_colour_open.ep_a4
	.align	16
hp_colour_open.ep_a4:
	.long	1040791372              # float 1.340000e-01
	.long	1056159302              # float 4.760000e-01
	.long	1043609944              # float 1.760000e-01
	.long	1051428127              # float 3.350000e-01
	.size	hp_colour_open.ep_a4, 16

	.type	hp_colour_open.ep_letter,@object # @hp_colour_open.ep_letter
	.align	16
hp_colour_open.ep_letter:
	.long	1040791372              # float 1.340000e-01
	.long	1056159302              # float 4.760000e-01
	.long	1052803858              # float 3.760000e-01
	.long	1051428127              # float 3.350000e-01
	.size	hp_colour_open.ep_letter, 16

	.type	hp_colour_open.bjc_a3,@object # @hp_colour_open.bjc_a3
	.data
	.align	16
hp_colour_open.bjc_a3:
	.long	1042367109              # float 1.574803e-01
	.long	1052790120              # float 3.755906e-01
	.long	1042367109              # float 1.574803e-01
	.long	1050755717              # float 3.149606e-01
	.size	hp_colour_open.bjc_a3, 16

	.type	hp_colour_open.bjc_letter,@object # @hp_colour_open.bjc_letter
	.align	16
hp_colour_open.bjc_letter:
	.long	1048774156              # float 2.559055e-01
	.long	1052790120              # float 3.755906e-01
	.long	1048774156              # float 2.559055e-01
	.long	1039262664              # float 1.181102e-01
	.size	hp_colour_open.bjc_letter, 16

	.type	hp_colour_open.bjc_a4,@object # @hp_colour_open.bjc_a4
	.align	16
hp_colour_open.bjc_a4:
	.long	1040781860              # float 1.338583e-01
	.long	1052790120              # float 3.755906e-01
	.long	1040781860              # float 1.338583e-01
	.long	1039262664              # float 1.181102e-01
	.size	hp_colour_open.bjc_a4, 16

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata,"a",@progbits
.L.str.21:
	.asciz	"\000\000\377\377UU\222I\021\021\204!\020A@\201\001\001\002\001\004\001\b\001\020\001 \001@\001\200\001"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"BlackCorrect"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Shingling"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Depletion"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"BitsPerPixel"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ProcessColorModel"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"PrintQuality"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"RenderType"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ManualFeed"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"MediaType"
	.size	.L.str.30, 10

	.type	bjc_mediaTypeStrings,@object # @bjc_mediaTypeStrings
	.data
	.align	16
bjc_mediaTypeStrings:
	.quad	.L.str.39
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.41
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.42
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.43
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.44
	.long	15                      # 0xf
	.zero	4
	.zero	16
	.size	bjc_mediaTypeStrings, 112

	.type	bjc800_printQualityStrings,@object # @bjc800_printQualityStrings
	.align	16
bjc800_printQualityStrings:
	.quad	.L.str.45
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.46
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.47
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.48
	.long	4                       # 0x4
	.zero	4
	.zero	16
	.size	bjc800_printQualityStrings, 80

	.type	bjc600_printQualityStrings,@object # @bjc600_printQualityStrings
	.align	16
bjc600_printQualityStrings:
	.quad	.L.str.45
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.46
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.long	2                       # 0x2
	.zero	4
	.zero	16
	.size	bjc600_printQualityStrings, 64

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"DitheringType"
	.size	.L.str.31, 14

	.type	bjc_ditheringTypeStrings,@object # @bjc_ditheringTypeStrings
	.data
	.align	16
bjc_ditheringTypeStrings:
	.quad	.L.str.49
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.50
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.size	bjc_ditheringTypeStrings, 48

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"PrintColors"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"MediaWeight"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"MonochromePrint"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"2.17.00 5/23/96 Yves Arrouye"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Version"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"VersionString"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"OutputFaceUp"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"PlainPaper"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"CoatedPaper"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"TransparencyFilm"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Envelope"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Card"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Other"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Normal"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"High"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Low"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Draft"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"None"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Floyd-Steinberg"
	.size	.L.str.50, 16

	.type	bjc_processColorsStrings,@object # @bjc_processColorsStrings
	.data
	.align	16
bjc_processColorsStrings:
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.long	4                       # 0x4
	.zero	4
	.zero	16
	.size	bjc_processColorsStrings, 64

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"HWResolution"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata,"a",@progbits
.L.str.52:
	.asciz	"\033*v6W\000\003\000\005\006\005"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\033*v6W\000\003\000\b\b\b"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"hp_colour_print_page"
	.size	.L.str.54, 21

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ep_print_buffer"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"\033@"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"\033_R%c%c"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"\033*rB"
	.size	.L.str.58, 5

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\033*rbC"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\033*t%dR"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\033&l%dA\033&l0o0e0L\033*r0F"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\033*p0x0Y"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\033&u600D\033*r1A"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\033&l%daolE"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"\033*o%dd%dQ"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\033*p%dY"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"\033*r%ds-%du0A"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"\033_D%c\033_E%c"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata,"a",@progbits
.L.str.69:
	.asciz	"\033_N\000"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"\033_J\304\377"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"\033_U%c%c"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"\033_S%c%c"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"\033_A\001"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"\033%%-12345X@PJL SET RESOLUTION = 600\n"
	.size	.L.str.74, 37

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\033%%0B"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"BP5,1"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"PS%d,%d"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"PU"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"PA%d,%d"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"\033%%1A"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"\033&a1N"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"\033*t600R"
	.size	.L.str.82, 8

	.type	hp_colour_print_page.temp,@object # @hp_colour_print_page.temp
	.section	.rodata,"a",@progbits
hp_colour_print_page.temp:
	.ascii	"\033*v6W\000\000\003\b\b\b"
	.size	hp_colour_print_page.temp, 11

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"\033*r%dS"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"\033*r1A"
	.size	.L.str.84, 6

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"\033*o%dQ"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"\033*t%dJ"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\033*r%ds1A"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\033*r%ds%du0A"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"\033&lL"
	.size	.L.str.89, 5

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"\033&a%dV"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"\033|J%c%c"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"\033_M%c"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"\033*b"
	.size	.L.str.93, 4

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"%dm"
	.size	.L.str.94, 4

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"\033*b%dM"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\033_Y%c%c"
	.size	.L.str.96, 8

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"\033*bY"
	.size	.L.str.97, 5

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"\033*b%dY"
	.size	.L.str.98, 7

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"\033*bW"
	.size	.L.str.99, 5

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"%dy"
	.size	.L.str.100, 4

	.type	hp_colour_print_page.spr40,@object # @hp_colour_print_page.spr40
	.section	.rodata,"a",@progbits
	.align	16
hp_colour_print_page.spr40:
	.quad	0                       # 0x0
	.quad	64                      # 0x40
	.quad	16384                   # 0x4000
	.quad	16448                   # 0x4040
	.quad	4194304                 # 0x400000
	.quad	4194368                 # 0x400040
	.quad	4210688                 # 0x404000
	.quad	4210752                 # 0x404040
	.size	hp_colour_print_page.spr40, 64

	.type	hp_colour_print_page.spr08,@object # @hp_colour_print_page.spr08
	.align	16
hp_colour_print_page.spr08:
	.quad	0                       # 0x0
	.quad	8                       # 0x8
	.quad	2048                    # 0x800
	.quad	2056                    # 0x808
	.quad	524288                  # 0x80000
	.quad	524296                  # 0x80008
	.quad	526336                  # 0x80800
	.quad	526344                  # 0x80808
	.size	hp_colour_print_page.spr08, 64

	.type	hp_colour_print_page.spr02,@object # @hp_colour_print_page.spr02
	.align	16
hp_colour_print_page.spr02:
	.quad	0                       # 0x0
	.quad	2                       # 0x2
	.quad	512                     # 0x200
	.quad	514                     # 0x202
	.quad	131072                  # 0x20000
	.quad	131074                  # 0x20002
	.quad	131584                  # 0x20200
	.quad	131586                  # 0x20202
	.size	hp_colour_print_page.spr02, 64

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"#m"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"\033*b#M"
	.size	.L.str.102, 6

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"3m"
	.size	.L.str.103, 3

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"\033*b3M"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"2m"
	.size	.L.str.105, 3

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"\033*b2M"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"\033_%c%c%c"
	.size	.L.str.107, 9

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"WVVV"
	.size	.L.str.108, 5

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%d%c"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"wvvv"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"\033*b%d%c"
	.size	.L.str.111, 8

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"0M"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"\033_C"
	.size	.L.str.113, 4

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"\033*rbC\033E"
	.size	.L.str.114, 8

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"\f\033@"
	.size	.L.str.115, 4

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"\033*rC\033%0BPG;"
	.size	.L.str.116, 12

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"\033&l0H"
	.size	.L.str.117, 6

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"\033[K"
	.size	.L.str.118, 4

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"\001"
	.size	.L.str.119, 2

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"\033("
	.size	.L.str.120, 3

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"\033(e"
	.size	.L.str.121, 4

	.type	ep_print_image.color,@object # @ep_print_image.color
ep_print_image.color:
	.asciz	"\004\001\002"
	.size	ep_print_image.color, 4

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"\033J\377"
	.size	.L.str.122, 4

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"\033J\200"
	.size	.L.str.123, 4

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"\033|J"
	.size	.L.str.124, 4

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"\r\033r"
	.size	.L.str.125, 4

	.type	ep_print_image.zeros,@object # @ep_print_image.zeros
	.section	.rodata,"a",@progbits
	.align	16
ep_print_image.zeros:
	.zero	64
	.size	ep_print_image.zeros, 64

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"\033|B"
	.size	.L.str.126, 4

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"\033\\"
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"ep_print_image: illegal command character `%c'.\n"
	.size	.L.str.128, 49

	.type	bjc_raster_cmd.ymckCodes,@object # @bjc_raster_cmd.ymckCodes
	.section	.rodata.cst4,"aM",@progbits,4
bjc_raster_cmd.ymckCodes:
	.ascii	"\004\002\001\b"
	.size	bjc_raster_cmd.ymckCodes, 4

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"YMCK"
	.size	.L.str.129, 5

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"\033(A"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata,"a",@progbits
.L.str.131:
	.zero	2
	.size	.L.str.131, 2

	.type	.L.str.132,@object      # @.str.132
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.132:
	.asciz	"\033%-12345X@PJL ENTER LANGUAGE = PCLSLEEK\n"
	.size	.L.str.132, 41

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\033%-12345X"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"\033%-12345X@PJL\r\n@PJL ENTER LANGUAGE = PCL\r\n"
	.size	.L.str.134, 43

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"\033%-12345X@PJL enter language = PCL\n"
	.size	.L.str.135, 36

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"\033%8"
	.size	.L.str.136, 4

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"\033%@"
	.size	.L.str.137, 4

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.size	.Lswitch.table, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
