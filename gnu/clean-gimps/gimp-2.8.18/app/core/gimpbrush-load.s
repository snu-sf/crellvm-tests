	.text
	.file	"gimpbrush-load.bc"
	.globl	gimp_brush_load
	.align	16, 0x90
	.type	gimp_brush_load,@function
gimp_brush_load:                        # @gimp_brush_load
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
	subq	$96, %rsp
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
	movabsq	$.L__func__.gimp_brush_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
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
	movabsq	$.L__func__.gimp_brush_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
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
	movabsq	$.L__func__.gimp_brush_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_15:                               # %if.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_18:                               # %if.end.21
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_brush_load_brush
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edi
	callq	close
	cmpq	$0, -40(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB0_20
# BB#19:                                # %if.then.25
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_20:                               # %if.end.26
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB0_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_load, .Lfunc_end0-gimp_brush_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643176031446892544     # double 255
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_brush_load_brush
	.align	16, 0x90
	.type	gimp_brush_load_brush,@function
gimp_brush_load_brush:                  # @gimp_brush_load_brush
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
	subq	$16928, %rsp            # imm = 0x4220
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -124(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_brush, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpl	$-1, -20(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_brush, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %if.then.10
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_brush, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_15:                               # %if.end.12
	jmp	.LBB1_16
.LBB1_16:                               # %do.end.13
	movl	$28, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movl	-20(%rbp), %edi
	movq	%rcx, %rsi
	callq	read
	cmpq	$28, %rax
	je	.LBB1_18
# BB#17:                                # %if.then.15
	movq	-40(%rbp), %rdi
	movq	%rdi, -16584(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$28, %ecx
	movl	%ecx, %edx
	movl	%eax, -16588(%rbp)      # 4-byte Spill
	callq	ngettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16600(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -16608(%rbp)      # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movl	$1, %edx
	movl	$28, %r8d
	movq	-16584(%rbp), %rdi      # 8-byte Reload
	movl	-16588(%rbp), %esi      # 4-byte Reload
	movq	-16600(%rbp), %rcx      # 8-byte Reload
	movq	-16608(%rbp), %r9       # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_18:                               # %if.end.21
	movl	-80(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-80(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-80(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-76(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-76(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-76(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-72(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-72(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-72(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-68(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-68(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-68(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-64(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-60(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-56(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.125
	movq	-40(%rbp), %rdi
	movq	%rdi, -16616(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -16620(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16632(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16616(%rbp), %rdi      # 8-byte Reload
	movl	-16620(%rbp), %esi      # 4-byte Reload
	movq	-16632(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_20:                               # %if.end.129
	cmpl	$0, -68(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.132
	movq	-40(%rbp), %rdi
	movq	%rdi, -16640(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -16644(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16656(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16640(%rbp), %rdi      # 8-byte Reload
	movl	-16644(%rbp), %esi      # 4-byte Reload
	movq	-16656(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_22:                               # %if.end.136
	cmpl	$0, -64(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.139
	movq	-40(%rbp), %rdi
	movq	%rdi, -16664(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -16668(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16680(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16664(%rbp), %rdi      # 8-byte Reload
	movl	-16668(%rbp), %esi      # 4-byte Reload
	movq	-16680(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_24:                               # %if.end.143
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -16684(%rbp)      # 4-byte Spill
	movl	%ecx, -16688(%rbp)      # 4-byte Spill
	je	.LBB1_25
	jmp	.LBB1_78
.LBB1_78:                               # %if.end.143
	movl	-16684(%rbp), %eax      # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -16692(%rbp)      # 4-byte Spill
	je	.LBB1_30
	jmp	.LBB1_79
.LBB1_79:                               # %if.end.143
	movl	-16684(%rbp), %eax      # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -16696(%rbp)      # 4-byte Spill
	je	.LBB1_26
	jmp	.LBB1_33
.LBB1_25:                               # %sw.bb
	movq	$-8, %rsi
	movl	$1, %edx
	movl	-20(%rbp), %edi
	callq	lseek
	movl	-80(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -80(%rbp)
	movl	$25, -56(%rbp)
	movq	%rax, -16704(%rbp)      # 8-byte Spill
	jmp	.LBB1_34
.LBB1_26:                               # %sw.bb.148
	cmpl	$18, -64(%rbp)
	jne	.LBB1_28
# BB#27:                                # %if.then.151
	movl	$2, -64(%rbp)
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.153
	movq	-40(%rbp), %rdi
	movq	%rdi, -16712(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.11, %rdi
	movl	%eax, -16716(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16728(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-64(%rbp), %r9d
	movq	-16712(%rbp), %rdi      # 8-byte Reload
	movl	-16716(%rbp), %esi      # 4-byte Reload
	movq	-16728(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_29:                               # %if.end.158
	jmp	.LBB1_30
.LBB1_30:                               # %sw.bb.159
	cmpl	$1195986256, -60(%rbp)  # imm = 0x47494D50
	jne	.LBB1_32
# BB#31:                                # %if.then.162
	jmp	.LBB1_34
.LBB1_32:                               # %if.end.163
	jmp	.LBB1_33
.LBB1_33:                               # %sw.default
	movq	-40(%rbp), %rdi
	movq	%rdi, -16736(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -16740(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16752(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-76(%rbp), %r9d
	movq	-16736(%rbp), %rdi      # 8-byte Reload
	movl	-16740(%rbp), %esi      # 4-byte Reload
	movq	-16752(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_34:                               # %sw.epilog
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	subq	$28, %rcx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB1_38
# BB#35:                                # %if.then.170
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-52(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	-20(%rbp), %edi
	movq	-88(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	callq	read
	movslq	-52(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB1_37
# BB#36:                                # %if.then.178
	movq	-40(%rbp), %rdi
	movq	%rdi, -16760(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -16764(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16776(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16760(%rbp), %rdi      # 8-byte Reload
	movl	-16764(%rbp), %esi      # 4-byte Reload
	movq	-16776(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_37:                               # %if.end.182
	movabsq	$.L.str.14, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -16784(%rbp)      # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16792(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-16784(%rbp), %rdi      # 8-byte Reload
	movq	-16792(%rbp), %rdx      # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB1_38:                               # %if.end.186
	cmpq	$0, -88(%rbp)
	jne	.LBB1_40
# BB#39:                                # %if.then.188
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
.LBB1_40:                               # %if.end.191
	callq	gimp_brush_get_type
	movq	-88(%rbp), %rdx
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	movl	$.L.str.17, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$.L.str.18, %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
	movl	%edi, %r9d
	movb	%dil, %r10b
	movl	%edi, -16796(%rbp)      # 4-byte Spill
	movq	%rax, %rdi
	movq	%r9, -16808(%rbp)       # 8-byte Spill
	movb	%r10b, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	-72(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	$1, %edx
	movl	-16796(%rbp), %ecx      # 4-byte Reload
	movl	-16796(%rbp), %r8d      # 4-byte Reload
	movq	-16808(%rbp), %r9       # 8-byte Reload
	callq	temp_buf_new
	movq	-48(%rbp), %r9
	movq	%rax, 32(%r9)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -104(%rbp)
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	imull	%edx, %ecx
	movl	-64(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	movq	%rax, -120(%rbp)
	movl	-64(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -16816(%rbp)      # 8-byte Spill
	movl	%ecx, -16820(%rbp)      # 4-byte Spill
	ja	.LBB1_73
# BB#80:                                # %if.end.191
	movq	-16816(%rbp), %rax      # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_41:                               # %sw.bb.206
	movl	-20(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	read
	cmpq	-120(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, -124(%rbp)
	jmp	.LBB1_74
.LBB1_42:                               # %sw.bb.210
	movq	$0, -112(%rbp)
.LBB1_43:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_51 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -124(%rbp)
	movb	%cl, -16821(%rbp)       # 1-byte Spill
	je	.LBB1_45
# BB#44:                                # %land.rhs
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	%cl
	movb	%cl, -16821(%rbp)       # 1-byte Spill
.LBB1_45:                               # %land.end
                                        #   in Loop: Header=BB1_43 Depth=1
	movb	-16821(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_46
	jmp	.LBB1_56
.LBB1_46:                               # %for.body
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	-120(%rbp), %rax
	subq	-112(%rbp), %rax
	cmpq	$8192, %rax             # imm = 0x2000
	jae	.LBB1_48
# BB#47:                                # %cond.true
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	-120(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -16832(%rbp)      # 8-byte Spill
	jmp	.LBB1_49
.LBB1_48:                               # %cond.false
                                        #   in Loop: Header=BB1_43 Depth=1
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	%rcx, -16832(%rbp)      # 8-byte Spill
	jmp	.LBB1_49
.LBB1_49:                               # %cond.end
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	-16832(%rbp), %rax      # 8-byte Reload
	leaq	-8336(%rbp), %rsi
	movq	%rax, -8344(%rbp)
	movl	-20(%rbp), %edi
	movq	-8344(%rbp), %rdx
	callq	read
	cmpq	-8344(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB1_55
# BB#50:                                # %if.then.223
                                        #   in Loop: Header=BB1_43 Depth=1
	leaq	-8336(%rbp), %rax
	movq	%rax, -8352(%rbp)
	movq	-8344(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB1_51:                               # %for.cond.226
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8344(%rbp)
	jle	.LBB1_54
# BB#52:                                # %for.body.229
                                        #   in Loop: Header=BB1_51 Depth=2
	movw	$0, -8360(%rbp)
	movq	-8352(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	shll	$8, %ecx
	orl	%ecx, %edx
	movw	%dx, %si
	movw	%si, -8358(%rbp)
	movss	-8360(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dil
	movq	-104(%rbp), %rax
	movb	%dil, (%rax)
# BB#53:                                # %for.inc
                                        #   in Loop: Header=BB1_51 Depth=2
	movq	-8344(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -8344(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-8352(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8352(%rbp)
	jmp	.LBB1_51
.LBB1_54:                               # %for.end
                                        #   in Loop: Header=BB1_43 Depth=1
	jmp	.LBB1_55
.LBB1_55:                               # %if.end.248
                                        #   in Loop: Header=BB1_43 Depth=1
	jmp	.LBB1_43
.LBB1_56:                               # %for.end.249
	jmp	.LBB1_74
.LBB1_57:                               # %sw.bb.250
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rdi
	movq	%rdi, -16840(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.19, %rdi
	movl	%eax, -16844(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16856(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-64(%rbp), %r9d
	movq	-16840(%rbp), %rdi      # 8-byte Reload
	movl	-16844(%rbp), %esi      # 4-byte Reload
	movq	-16856(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_58:                               # %sw.bb.255
	movl	$3, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-72(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	-48(%rbp), %r9
	movq	%rax, 40(%r9)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -96(%rbp)
	movq	$0, -112(%rbp)
.LBB1_59:                               # %for.cond.263
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_67 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -124(%rbp)
	movb	%cl, -16857(%rbp)       # 1-byte Spill
	je	.LBB1_61
# BB#60:                                # %land.rhs.265
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	%cl
	movb	%cl, -16857(%rbp)       # 1-byte Spill
.LBB1_61:                               # %land.end.268
                                        #   in Loop: Header=BB1_59 Depth=1
	movb	-16857(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_62
	jmp	.LBB1_72
.LBB1_62:                               # %for.body.269
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-120(%rbp), %rax
	subq	-112(%rbp), %rax
	cmpq	$8192, %rax             # imm = 0x2000
	jae	.LBB1_64
# BB#63:                                # %cond.true.274
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-120(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -16872(%rbp)      # 8-byte Spill
	jmp	.LBB1_65
.LBB1_64:                               # %cond.false.276
                                        #   in Loop: Header=BB1_59 Depth=1
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	%rcx, -16872(%rbp)      # 8-byte Spill
	jmp	.LBB1_65
.LBB1_65:                               # %cond.end.277
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-16872(%rbp), %rax      # 8-byte Reload
	leaq	-16560(%rbp), %rsi
	movq	%rax, -16568(%rbp)
	movl	-20(%rbp), %edi
	movq	-16568(%rbp), %rdx
	callq	read
	cmpq	-16568(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB1_71
# BB#66:                                # %if.then.284
                                        #   in Loop: Header=BB1_59 Depth=1
	leaq	-16560(%rbp), %rax
	movq	%rax, -16576(%rbp)
	movq	-16568(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB1_67:                               # %for.cond.288
                                        #   Parent Loop BB1_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16568(%rbp)
	jle	.LBB1_70
# BB#68:                                # %for.body.291
                                        #   in Loop: Header=BB1_67 Depth=2
	movq	-16576(%rbp), %rax
	movb	(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16576(%rbp), %rax
	movb	1(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16576(%rbp), %rax
	movb	2(%rax), %cl
	movq	-96(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-16576(%rbp), %rax
	movb	3(%rax), %cl
	movq	-104(%rbp), %rax
	movb	%cl, (%rax)
# BB#69:                                # %for.inc.300
                                        #   in Loop: Header=BB1_67 Depth=2
	movq	-16568(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -16568(%rbp)
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-16576(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16576(%rbp)
	jmp	.LBB1_67
.LBB1_70:                               # %for.end.304
                                        #   in Loop: Header=BB1_59 Depth=1
	jmp	.LBB1_71
.LBB1_71:                               # %if.end.305
                                        #   in Loop: Header=BB1_59 Depth=1
	jmp	.LBB1_59
.LBB1_72:                               # %for.end.306
	jmp	.LBB1_74
.LBB1_73:                               # %sw.default.307
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rdi
	movq	%rdi, -16880(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.20, %rdi
	movl	%eax, -16884(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16896(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-64(%rbp), %r9d
	movq	-16880(%rbp), %rdi      # 8-byte Reload
	movl	-16884(%rbp), %esi      # 4-byte Reload
	movq	-16896(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_74:                               # %sw.epilog.312
	cmpl	$0, -124(%rbp)
	jne	.LBB1_76
# BB#75:                                # %if.then.314
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rdi
	movq	%rdi, -16904(%rbp)      # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -16908(%rbp)      # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -16920(%rbp)      # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16904(%rbp), %rdi      # 8-byte Reload
	movl	-16908(%rbp), %esi      # 4-byte Reload
	movq	-16920(%rbp), %rcx      # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_77
.LBB1_76:                               # %if.end.318
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-48(%rbp), %rcx
	movsd	%xmm1, 56(%rcx)
	movq	-48(%rbp), %rcx
	movq	$0, 64(%rcx)
	movq	-48(%rbp), %rcx
	movq	$0, 72(%rcx)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-48(%rbp), %rcx
	movsd	%xmm1, 80(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB1_77:                               # %return
	movq	-8(%rbp), %rax
	addq	$16928, %rsp            # imm = 0x4220
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_load_brush, .Lfunc_end1-gimp_brush_load_brush
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_41
	.quad	.LBB1_42
	.quad	.LBB1_57
	.quad	.LBB1_58

	.text
	.globl	gimp_brush_load_abr
	.align	16, 0x90
	.type	gimp_brush_load_abr,@function
gimp_brush_load_abr:                    # @gimp_brush_load_abr
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_abr, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
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
	movabsq	$.L__func__.gimp_brush_load_abr, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
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
	movabsq	$.L__func__.gimp_brush_load_abr, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
.LBB2_15:                               # %if.end.11
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.12
	movabsq	$.L.str.21, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
.LBB2_18:                               # %if.end.21
	movq	-40(%rbp), %rdi
	callq	abr_read_short
	movw	%ax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	abr_read_short
	leaq	-48(%rbp), %rdi
	movw	%ax, -46(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	abr_supported
	cmpl	$0, %eax
	je	.LBB2_23
# BB#19:                                # %if.then.26
	movswl	-48(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$2, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jb	.LBB2_20
	jmp	.LBB2_29
.LBB2_29:                               # %if.then.26
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB2_21
	jmp	.LBB2_22
.LBB2_20:                               # %sw.bb
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_brush_load_abr_v12
	movq	%rax, -56(%rbp)
	jmp	.LBB2_22
.LBB2_21:                               # %sw.bb.29
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_brush_load_abr_v6
	movq	%rax, -56(%rbp)
.LBB2_22:                               # %sw.epilog
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.31
	movq	-40(%rbp), %rdi
	callq	fclose
	cmpq	$0, -56(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB2_27
# BB#24:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB2_27
# BB#25:                                # %land.lhs.true.35
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_27
# BB#26:                                # %if.then.37
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.22, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movswl	-48(%rbp), %r9d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB2_27:                               # %if.end.43
	movq	-56(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB2_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_load_abr, .Lfunc_end2-gimp_brush_load_abr
	.cfi_endproc

	.align	16, 0x90
	.type	abr_read_short,@function
abr_read_short:                         # @abr_read_short
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
	subq	$32, %rsp
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-10(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzwl	-10(%rbp), %r8d
	sarl	$8, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movzwl	-10(%rbp), %r10d
	shll	$8, %r10d
	movw	%r10w, %r9w
	movzwl	%r9w, %r10d
	orl	%r10d, %r8d
	movw	%r8w, %r9w
	movswl	%r9w, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	abr_read_short, .Lfunc_end3-abr_read_short
	.cfi_endproc

	.align	16, 0x90
	.type	abr_supported,@function
abr_supported:                          # @abr_supported
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movswl	(%rdx), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$2, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jb	.LBB4_1
	jmp	.LBB4_11
.LBB4_11:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_9
.LBB4_1:                                # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB4_10
.LBB4_2:                                # %sw.bb.1
	movq	-16(%rbp), %rax
	movswl	2(%rax), %ecx
	cmpl	$1, %ecx
	je	.LBB4_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movswl	2(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB4_5
.LBB4_4:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_8
# BB#7:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.22, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movswl	(%rdi), %ecx
	imull	$10, %ecx, %ecx
	movq	-16(%rbp), %rdi
	movswl	2(%rdi), %esi
	addl	%esi, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movb	$0, %al
	callq	g_set_error
.LBB4_8:                                # %if.end.16
	jmp	.LBB4_9
.LBB4_9:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB4_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	abr_supported, .Lfunc_end4-abr_supported
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_load_abr_v12,@function
gimp_brush_load_abr_v12:                # @gimp_brush_load_abr_v12
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movswl	2(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-64(%rbp), %r8
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_brush_load_abr_brush_v12
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_propagate_error
	jmp	.LBB5_9
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.5
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_load_abr_v12, .Lfunc_end5-gimp_brush_load_abr_v12
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_load_abr_v6,@function
gimp_brush_load_abr_v6:                 # @gimp_brush_load_abr_v6
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
	subq	$96, %rsp
	movabsq	$.L.str.31, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$1, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	abr_reach_8bim_section
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_11
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	ftell
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -56(%rbp)
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	ftell
	movslq	-56(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB6_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-80(%rbp), %r9
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_brush_load_abr_brush_v6
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	jmp	.LBB6_9
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_propagate_error
	jmp	.LBB6_10
.LBB6_8:                                # %if.end.13
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.14
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_3
.LBB6_10:                               # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_load_abr_v6, .Lfunc_end6-gimp_brush_load_abr_v6
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_brush_load_abr_brush_v12,@function
gimp_brush_load_abr_brush_v12:          # @gimp_brush_load_abr_brush_v12
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
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_abr_brush_v12, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB7_38
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB7_8
# BB#7:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_9
.LBB7_8:                                # %if.then.4
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_load_abr_brush_v12, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB7_38
.LBB7_10:                               # %if.end.6
	jmp	.LBB7_11
.LBB7_11:                               # %do.end.7
	movq	-24(%rbp), %rdi
	callq	abr_read_short
	movw	%ax, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -68(%rbp)
	movswl	-72(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	je	.LBB7_12
	jmp	.LBB7_39
.LBB7_39:                               # %do.end.7
	movl	-176(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_36
.LBB7_12:                               # %sw.bb
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	callq	fseek
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB7_37
.LBB7_13:                               # %sw.bb.13
	movq	$0, -160(%rbp)
	movq	-24(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -112(%rbp)
	movq	-24(%rbp), %rdi
	callq	abr_read_short
	movw	%ax, -108(%rbp)
	movq	-32(%rbp), %rdi
	movswl	(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB7_15
# BB#14:                                # %if.then.21
	movq	-24(%rbp), %rdi
	callq	abr_read_ucs2_text
	movq	%rax, -160(%rbp)
.LBB7_15:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	abr_read_char
	movb	%al, -106(%rbp)
	movl	$0, -140(%rbp)
.LBB7_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -140(%rbp)
	jge	.LBB7_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-24(%rbp), %rdi
	callq	abr_read_short
	movslq	-140(%rbp), %rdi
	movw	%ax, -104(%rbp,%rdi,2)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB7_16
.LBB7_19:                               # %for.end
	movl	$0, -140(%rbp)
.LBB7_20:                               # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -140(%rbp)
	jge	.LBB7_23
# BB#21:                                # %for.body.31
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	-24(%rbp), %rdi
	callq	abr_read_long
	movslq	-140(%rbp), %rdi
	movl	%eax, -96(%rbp,%rdi,4)
# BB#22:                                # %for.inc.35
                                        #   in Loop: Header=BB7_20 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB7_20
.LBB7_23:                               # %for.end.37
	movq	-24(%rbp), %rdi
	callq	abr_read_short
	movw	%ax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB7_25
# BB#24:                                # %if.then.40
	movq	-56(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -16(%rbp)
	jmp	.LBB7_38
.LBB7_25:                               # %if.end.44
	movl	-88(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-84(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, -116(%rbp)
	movswl	-80(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, -124(%rbp)
	cmpl	$16384, -120(%rbp)      # imm = 0x4000
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.60
	movq	-56(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.24, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -16(%rbp)
	jmp	.LBB7_38
.LBB7_27:                               # %if.end.64
	movq	-48(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB7_29
# BB#28:                                # %if.then.67
	movabsq	$.L.str.25, %rdi
	movq	-168(%rbp), %rsi
	movl	-36(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -152(%rbp)
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.69
	movabsq	$.L.str.26, %rdi
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB7_30:                               # %if.end.71
	movq	-168(%rbp), %rdi
	callq	g_free
	callq	gimp_brush_get_type
	movq	-152(%rbp), %rdx
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	movl	$.L.str.17, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$.L.str.27, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movb	%r9b, %r10b
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movb	%r10b, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rdi
	callq	g_free
	movswl	-108(%rbp), %r11d
	movq	-64(%rbp), %rax
	movl	%r11d, 48(%rax)
	cvtsi2sdl	-116(%rbp), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 72(%rax)
	cvtsi2sdl	-120(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movl	-116(%rbp), %edi
	movl	-120(%rbp), %esi
	movl	$1, %edx
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	callq	temp_buf_new
	movq	-64(%rbp), %r9
	movq	%rax, 32(%r9)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -136(%rbp)
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %edx
	imull	%edx, %ecx
	movl	-124(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -128(%rbp)
	movq	-24(%rbp), %rdi
	callq	abr_read_char
	movb	%al, %r10b
	movsbl	%al, %ecx
	movw	%cx, %bx
	movw	%bx, -170(%rbp)
	cmpw	$0, -170(%rbp)
	movb	%r10b, -253(%rbp)       # 1-byte Spill
	jne	.LBB7_32
# BB#31:                                # %if.then.92
	movl	$1, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rdi
	movslq	-128(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	fread
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.95
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-120(%rbp), %edx
	callq	abr_rle_decode
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB7_33:                               # %if.end.97
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB7_35
# BB#34:                                # %if.then.100
	movq	-56(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	$0, -16(%rbp)
	jmp	.LBB7_38
.LBB7_35:                               # %if.end.104
	jmp	.LBB7_37
.LBB7_36:                               # %sw.default
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	callq	fseek
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB7_37:                               # %sw.epilog
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB7_38:                               # %return
	movq	-16(%rbp), %rax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_load_abr_brush_v12, .Lfunc_end7-gimp_brush_load_abr_brush_v12
	.cfi_endproc

	.align	16, 0x90
	.type	abr_read_long,@function
abr_read_long:                          # @abr_read_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-12(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movl	-12(%rbp), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-12(%rbp), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-12(%rbp), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-12(%rbp), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	abr_read_long, .Lfunc_end8-abr_read_long
	.cfi_endproc

	.align	16, 0x90
	.type	abr_read_ucs2_text,@function
abr_read_ucs2_text:                     # @abr_read_ucs2_text
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	shll	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	abr_read_char
	movslq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movb	%al, (%rcx,%rdi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %r8
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_convert
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	abr_read_ucs2_text, .Lfunc_end9-abr_read_ucs2_text
	.cfi_endproc

	.align	16, 0x90
	.type	abr_read_char,@function
abr_read_char:                          # @abr_read_char
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fgetc
	movb	%al, %cl
	movsbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	abr_read_char, .Lfunc_end10-abr_read_char
	.cfi_endproc

	.align	16, 0x90
	.type	abr_rle_decode,@function
abr_rle_decode:                         # @abr_rle_decode
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
	subq	$64, %rsp
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	movslq	-20(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc0_n
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	abr_read_short
	movslq	-28(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movw	%ax, (%rcx,%rdi,2)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movl	$0, -28(%rbp)
.LBB11_5:                               # %for.cond.3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
                                        #       Child Loop BB11_14 Depth 3
                                        #       Child Loop BB11_19 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_26
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	$0, -32(%rbp)
.LBB11_7:                               # %for.cond.7
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_14 Depth 3
                                        #       Child Loop BB11_19 Depth 3
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	cmpl	%esi, %eax
	jge	.LBB11_24
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB11_7 Depth=2
	movq	-8(%rbp), %rdi
	callq	abr_read_char
	movsbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$128, -60(%rbp)
	jl	.LBB11_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	-60(%rbp), %eax
	subl	$256, %eax              # imm = 0x100
	movl	%eax, -60(%rbp)
.LBB11_10:                              # %if.end
                                        #   in Loop: Header=BB11_7 Depth=2
	cmpl	$0, -60(%rbp)
	jge	.LBB11_18
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB11_7 Depth=2
	cmpl	$-128, -60(%rbp)
	jne	.LBB11_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB11_7 Depth=2
	jmp	.LBB11_7
.LBB11_13:                              # %if.end.25
                                        #   in Loop: Header=BB11_7 Depth=2
	xorl	%eax, %eax
	subl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	abr_read_char
	movb	%al, -21(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB11_14:                              # %for.cond.29
                                        #   Parent Loop BB11_5 Depth=1
                                        #     Parent Loop BB11_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB11_17
# BB#15:                                # %for.body.32
                                        #   in Loop: Header=BB11_14 Depth=3
	movb	-21(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
# BB#16:                                # %for.inc.33
                                        #   in Loop: Header=BB11_14 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB11_14
.LBB11_17:                              # %for.end.35
                                        #   in Loop: Header=BB11_7 Depth=2
	jmp	.LBB11_23
.LBB11_18:                              # %if.else
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	$0, -36(%rbp)
.LBB11_19:                              # %for.cond.36
                                        #   Parent Loop BB11_5 Depth=1
                                        #     Parent Loop BB11_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_22
# BB#20:                                # %for.body.40
                                        #   in Loop: Header=BB11_19 Depth=3
	movq	-8(%rbp), %rdi
	callq	abr_read_char
	movq	-56(%rbp), %rdi
	movb	%al, (%rdi)
# BB#21:                                # %for.inc.42
                                        #   in Loop: Header=BB11_19 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB11_19
.LBB11_22:                              # %for.end.46
                                        #   in Loop: Header=BB11_7 Depth=2
	jmp	.LBB11_23
.LBB11_23:                              # %if.end.47
                                        #   in Loop: Header=BB11_7 Depth=2
	jmp	.LBB11_7
.LBB11_24:                              # %for.end.48
                                        #   in Loop: Header=BB11_5 Depth=1
	jmp	.LBB11_25
.LBB11_25:                              # %for.inc.49
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_5
.LBB11_26:                              # %for.end.51
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	abr_rle_decode, .Lfunc_end11-abr_rle_decode
	.cfi_endproc

	.align	16, 0x90
	.type	abr_reach_8bim_section,@function
abr_reach_8bim_section:                 # @abr_reach_8bim_section
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB12_2
	jmp	.LBB12_13
.LBB12_2:                               # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -44(%rbp)
	cmpl	$4, -44(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_14
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$.L.str.32, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-28(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB12_14
.LBB12_6:                               # %if.end.6
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-33(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -44(%rbp)
	cmpl	$4, -44(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB12_14
.LBB12_8:                               # %if.end.12
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-33(%rbp), %rdi
	movb	$0, -29(%rbp)
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB12_10
# BB#9:                                 # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB12_14
.LBB12_10:                              # %if.end.17
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	$1, %edx
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	fseek
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.LBB12_12
# BB#11:                                # %if.then.23
	movl	$0, -4(%rbp)
	jmp	.LBB12_14
.LBB12_12:                              # %if.end.24
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_13:                              # %while.end
	movl	$0, -4(%rbp)
.LBB12_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	abr_reach_8bim_section, .Lfunc_end12-abr_reach_8bim_section
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_brush_load_abr_brush_v6,@function
gimp_brush_load_abr_brush_v6:           # @gimp_brush_load_abr_brush_v6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %eax
	movl	-72(%rbp), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-136(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	ftell
	movslq	-72(%rbp), %rdi
	addq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movswl	2(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB13_5
# BB#4:                                 # %if.then
	movl	$47, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	movl	%eax, -132(%rbp)
	jmp	.LBB13_6
.LBB13_5:                               # %if.else
	movl	$301, %eax              # imm = 0x12D
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	movl	%eax, -132(%rbp)
.LBB13_6:                               # %if.end
	cmpl	$-1, -132(%rbp)
	jne	.LBB13_8
# BB#7:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB13_16
.LBB13_8:                               # %if.end.16
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_long
	movl	%eax, -92(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_short
	movw	%ax, -94(%rbp)
	movq	-16(%rbp), %rdi
	callq	abr_read_char
	movb	%al, -95(%rbp)
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB13_10
# BB#9:                                 # %if.then.24
	movq	-48(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB13_16
.LBB13_10:                              # %if.end.28
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movswl	-94(%rbp), %ecx
	sarl	$3, %ecx
	imull	%ecx, %eax
	imull	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_filename_display_basename
	movabsq	$.L.str.25, %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rsi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
	callq	gimp_brush_get_type
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.27, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-128(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_free
	movl	$1, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-56(%rbp), %rax
	movl	$25, 48(%rax)
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movq	-56(%rbp), %rax
	movsd	%xmm2, 56(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm1, 64(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm1, 72(%rax)
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 80(%rax)
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	temp_buf_new
	movq	-56(%rbp), %r9
	movq	%rax, 32(%r9)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -64(%rbp)
	cmpb	$0, -95(%rbp)
	jne	.LBB13_12
# BB#11:                                # %if.then.48
	movl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB13_13
.LBB13_12:                              # %if.else.51
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-104(%rbp), %edx
	callq	abr_rle_decode
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB13_13:                              # %if.end.53
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	fseek
	movq	-16(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	feof
	cmpl	$0, %eax
	je	.LBB13_15
# BB#14:                                # %if.then.58
	movq	-48(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB13_16
.LBB13_15:                              # %if.end.62
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_load_abr_brush_v6, .Lfunc_end13-gimp_brush_load_abr_brush_v6
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_brush_load,@object # @__func__.gimp_brush_load
.L__func__.gimp_brush_load:
	.asciz	"gimp_brush_load"
	.size	.L__func__.gimp_brush_load, 16

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

	.type	.L__func__.gimp_brush_load_brush,@object # @__func__.gimp_brush_load_brush
.L__func__.gimp_brush_load_brush:
	.asciz	"gimp_brush_load_brush"
	.size	.L__func__.gimp_brush_load_brush, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fd != -1"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not read %d byte from '%s': %s"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Could not read %d bytes from '%s': %s"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Fatal parse error in brush file '%s': Width = 0."
	.size	.L.str.8, 49

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Fatal parse error in brush file '%s': Height = 0."
	.size	.L.str.9, 50

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Fatal parse error in brush file '%s': Bytes = 0."
	.size	.L.str.10, 49

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Fatal parse error in brush file '%s': Unknown depth %d."
	.size	.L.str.11, 56

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Fatal parse error in brush file '%s': Unknown version %d."
	.size	.L.str.12, 58

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Fatal parse error in brush file '%s': File appears truncated."
	.size	.L.str.13, 62

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Invalid UTF-8 string in brush file '%s'."
	.size	.L.str.14, 41

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unnamed"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"name"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"mime-type"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image/x-gimp-gbr"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Fatal parse error in brush file '%s': Unsupported brush depth %d\nGIMP brushes must be GRAY or RGBA.\nThis might be an obsolete GIMP brush file, try loading it as image and save it again."
	.size	.L.str.19, 186

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Fatal parse error in brush file '%s': Unsupported brush depth %d\nGIMP brushes must be GRAY or RGBA."
	.size	.L.str.20, 100

	.type	.L__func__.gimp_brush_load_abr,@object # @__func__.gimp_brush_load_abr
.L__func__.gimp_brush_load_abr:
	.asciz	"gimp_brush_load_abr"
	.size	.L__func__.gimp_brush_load_abr, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"rb"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Fatal parse error in brush file '%s': unable to decode abr format version %d."
	.size	.L.str.22, 78

	.type	.L__func__.gimp_brush_load_abr_brush_v12,@object # @__func__.gimp_brush_load_abr_brush_v12
.L__func__.gimp_brush_load_abr_brush_v12:
	.asciz	"gimp_brush_load_abr_brush_v12"
	.size	.L__func__.gimp_brush_load_abr_brush_v12, 30

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"WARNING: computed brush unsupported, skipping.\n"
	.size	.L.str.23, 48

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Fatal parse error in brush file '%s': Wide brushes are not supported."
	.size	.L.str.24, 70

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s-%03d"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s-%s"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"application/x-photoshop-abr"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"WARNING: unknown brush type, skipping.\n"
	.size	.L.str.28, 40

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UTF-8"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UCS-2BE"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"samp"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"8BIM"
	.size	.L.str.32, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
