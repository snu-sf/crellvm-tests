	.text
	.file	"sanity.bc"
	.globl	sanity_check
	.align	16, 0x90
	.type	sanity_check,@function
sanity_check:                           # @sanity_check
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
	subq	$16, %rsp
	callq	sanity_check_gimp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	sanity_check_glib
	movq	%rax, -8(%rbp)
.LBB0_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	callq	sanity_check_cairo
	movq	%rax, -8(%rbp)
.LBB0_4:                                # %if.end.5
	cmpq	$0, -8(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.7
	callq	sanity_check_pango
	movq	%rax, -8(%rbp)
.LBB0_6:                                # %if.end.9
	cmpq	$0, -8(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.11
	callq	sanity_check_fontconfig
	movq	%rax, -8(%rbp)
.LBB0_8:                                # %if.end.13
	cmpq	$0, -8(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.15
	callq	sanity_check_freetype
	movq	%rax, -8(%rbp)
.LBB0_10:                               # %if.end.17
	cmpq	$0, -8(%rbp)
	jne	.LBB0_12
# BB#11:                                # %if.then.19
	callq	sanity_check_gdk_pixbuf
	movq	%rax, -8(%rbp)
.LBB0_12:                               # %if.end.21
	cmpq	$0, -8(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.23
	callq	sanity_check_babl
	movq	%rax, -8(%rbp)
.LBB0_14:                               # %if.end.25
	cmpq	$0, -8(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.27
	callq	sanity_check_gegl
	movq	%rax, -8(%rbp)
.LBB0_16:                               # %if.end.29
	cmpq	$0, -8(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.31
	callq	sanity_check_filename_encoding
	movq	%rax, -8(%rbp)
.LBB0_18:                               # %if.end.33
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sanity_check, .Lfunc_end0-sanity_check
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_gimp,@function
sanity_check_gimp:                      # @sanity_check_gimp
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
	subq	$16, %rsp
	movl	$2, %eax
	cmpl	gimp_major_version, %eax
	jne	.LBB1_3
# BB#1:                                 # %lor.lhs.false
	movl	$8, %eax
	cmpl	gimp_minor_version, %eax
	jne	.LBB1_3
# BB#2:                                 # %lor.lhs.false.2
	movl	$18, %eax
	cmpl	gimp_micro_version, %eax
	je	.LBB1_4
.LBB1_3:                                # %if.then
	movabsq	$.L.str, %rdi
	movl	$2, %esi
	movl	$8, %edx
	movl	$18, %ecx
	movl	gimp_major_version, %r8d
	movl	gimp_minor_version, %r9d
	movl	gimp_micro_version, %eax
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.end
	movq	$0, -8(%rbp)
.LBB1_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sanity_check_gimp, .Lfunc_end1-sanity_check_gimp
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_glib,@function
sanity_check_glib:                      # @sanity_check_glib
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
	subq	$64, %rsp
	movl	$2, %eax
	movl	$30, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	callq	glib_check_version
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movl	$2, %eax
	movl	$30, %ecx
	movq	-16(%rbp), %rsi
	movl	glib_major_version, %r9d
	movl	glib_minor_version, %edx
	movl	glib_micro_version, %r8d
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	%r8d, -24(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$30, 24(%rsp)
	movl	$2, 32(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sanity_check_glib, .Lfunc_end2-sanity_check_glib
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_cairo,@function
sanity_check_cairo:                     # @sanity_check_cairo
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
	callq	cairo_version
	cmpl	$11002, %eax            # imm = 0x2AFA
	jge	.LBB3_2
# BB#1:                                 # %if.then
	callq	cairo_version_string
	movabsq	$.L.str.2, %rdi
	movl	$1, %ecx
	movl	$10, %edx
	movl	$2, %esi
	movl	%esi, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-12(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movl	-16(%rbp), %r9d         # 4-byte Reload
	movl	$10, (%rsp)
	movl	$2, 8(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sanity_check_cairo, .Lfunc_end3-sanity_check_cairo
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_pango,@function
sanity_check_pango:                     # @sanity_check_pango
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	movl	$29, %esi
	movl	$4, %edx
	callq	pango_version_check
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	callq	pango_version
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	callq	pango_version
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%edx, -32(%rbp)
	callq	pango_version
	movabsq	$.L.str.3, %rdi
	movl	$1, %edx
	movl	$29, %ecx
	movl	$4, %r8d
	movl	$100, %esi
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	idivl	%esi
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %r11d        # 4-byte Reload
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$29, 24(%rsp)
	movl	$4, 32(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	$0, -16(%rbp)
.LBB4_3:                                # %return
	movq	-16(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sanity_check_pango, .Lfunc_end4-sanity_check_pango
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_fontconfig,@function
sanity_check_fontconfig:                # @sanity_check_fontconfig
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
	subq	$48, %rsp
	callq	FcGetVersion
	movl	%eax, -12(%rbp)
	cmpl	$20200, -12(%rbp)       # imm = 0x4EE8
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	-12(%rbp), %esi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -32(%rbp)         # 4-byte Spill
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cltd
	idivl	%esi
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	%esi
	cltd
	idivl	%esi
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB5_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sanity_check_fontconfig, .Lfunc_end5-sanity_check_fontconfig
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_freetype,@function
sanity_check_freetype:                  # @sanity_check_freetype
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
	leaq	-16(%rbp), %rdi
	callq	FT_Init_FreeType
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_error
.LBB6_2:                                # %if.end
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FT_Library_Version
	movq	-16(%rbp), %rdi
	callq	FT_Done_FreeType
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	g_error
.LBB6_4:                                # %if.end.4
	imull	$10000, -20(%rbp), %eax # imm = 0x2710
	imull	$100, -24(%rbp), %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	shll	$0, %ecx
	addl	%ecx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$20107, -32(%rbp)       # imm = 0x4E8B
	jge	.LBB6_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.7, %rdi
	movl	$2, %esi
	movl	$1, %edx
	movl	$7, %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-28(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$2, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.end.11
	movq	$0, -8(%rbp)
.LBB6_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sanity_check_freetype, .Lfunc_end6-sanity_check_freetype
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_gdk_pixbuf,@function
sanity_check_gdk_pixbuf:                # @sanity_check_gdk_pixbuf
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
	subq	$48, %rsp
	movl	$2, %esi
	movl	$24, %ecx
	movl	$1, %r9d
	movl	gdk_pixbuf_major_version, %edi
	movl	gdk_pixbuf_minor_version, %edx
	movl	gdk_pixbuf_micro_version, %r8d
	callq	sanity_check_version
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movl	$2, %esi
	movl	$24, %edx
	movl	$1, %ecx
	movl	gdk_pixbuf_major_version, %r8d
	movl	gdk_pixbuf_minor_version, %r9d
	movl	gdk_pixbuf_micro_version, %eax
	movl	%eax, (%rsp)
	movl	$2, 8(%rsp)
	movl	$24, 16(%rsp)
	movl	$1, 24(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sanity_check_gdk_pixbuf, .Lfunc_end7-sanity_check_gdk_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_babl,@function
sanity_check_babl:                      # @sanity_check_babl
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
	subq	$64, %rsp
	leaq	-12(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	callq	babl_get_version
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$10, %r9d
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r8d
	callq	sanity_check_version
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$10, %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-20(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$10, 24(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sanity_check_babl, .Lfunc_end8-sanity_check_babl
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_gegl,@function
sanity_check_gegl:                      # @sanity_check_gegl
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
	leaq	-12(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	callq	gegl_get_version
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	%eax, %esi
	movl	%eax, %r9d
	callq	sanity_check_version
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	xorl	%eax, %eax
	movl	$2, %edx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-20(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$0, 24(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB9_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sanity_check_gegl, .Lfunc_end9-sanity_check_gegl
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_filename_encoding,@function
sanity_check_filename_encoding:         # @sanity_check_filename_encoding
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
	subq	$48, %rsp
	movabsq	$.L.str.12, %rdi
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-24(%rbp), %r8
	movq	$0, -24(%rbp)
	movq	%rcx, %rdx
	callq	g_filename_to_utf8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_error_free
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_free
	callq	gimp_directory
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-24(%rbp), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_error_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.11
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
.LBB10_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sanity_check_filename_encoding, .Lfunc_end10-sanity_check_filename_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB11_3
# BB#2:                                 # %entry
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
.LBB11_3:                               # %entry
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
	movabsq	$.L.str.8, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB11_1
.Lfunc_end11:
	.size	g_error, .Lfunc_end11-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	sanity_check_version,@function
sanity_check_version:                   # @sanity_check_version
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-8(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jbe	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB12_11
.LBB12_2:                               # %if.end
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB12_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB12_11
.LBB12_4:                               # %if.end.3
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jbe	.LBB12_6
# BB#5:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB12_11
.LBB12_6:                               # %if.end.6
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB12_8
# BB#7:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB12_11
.LBB12_8:                               # %if.end.9
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.LBB12_10
# BB#9:                                 # %if.then.11
	movl	$1, -4(%rbp)
	jmp	.LBB12_11
.LBB12_10:                              # %if.end.12
	movl	$0, -4(%rbp)
.LBB12_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sanity_check_version, .Lfunc_end12-sanity_check_version
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Libgimp version mismatch!\n\nThe GIMP binary cannot run with a libgimp version\nother than its own. This is GIMP %d.%d.%d, but the\nlibgimp version is %d.%d.%d.\n\nMaybe you have GIMP versions in both /usr and /usr/local ?"
	.size	.L.str, 217

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n\nGIMP requires GLib version %d.%d.%d or later.\nInstalled GLib version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older GLib version.\n\nPlease upgrade to GLib version %d.%d.%d or later."
	.size	.L.str.1, 228

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The Cairo version being used is too old!\n\nGIMP requires Cairo version %d.%d.%d or later.\nInstalled Cairo version is %s.\n\nSomehow you or your software packager managed\nto install GIMP with an older Cairo version.\n\nPlease upgrade to Cairo version %d.%d.%d or later."
	.size	.L.str.2, 264

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s\n\nGIMP requires Pango version %d.%d.%d or later.\nInstalled Pango version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older Pango version.\n\nPlease upgrade to Pango version %d.%d.%d or later."
	.size	.L.str.3, 232

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The Fontconfig version being used is too old!\n\nGIMP requires Fontconfig version %d.%d.%d or later.\nThe Fontconfig version loaded by GIMP is %d.%d.%d.\n\nThis may be caused by another instance of libfontconfig.so.1\nbeing installed in the system, probably in /usr/X11R6/lib.\nPlease correct the situation or report it to someone who can."
	.size	.L.str.4, 333

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FT_Init_FreeType() failed"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FT_Done_FreeType() failed"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FreeType version too old!\n\nGIMP requires FreeType version %d.%d.%d or later.\nInstalled FreeType version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older FreeType version.\n\nPlease upgrade to FreeType version %d.%d.%d or later."
	.size	.L.str.7, 267

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GdkPixbuf version too old!\n\nGIMP requires GdkPixbuf version %d.%d.%d or later.\nInstalled GdkPixbuf version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older GdkPixbuf version.\n\nPlease upgrade to GdkPixbuf version %d.%d.%d or later."
	.size	.L.str.9, 272

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"BABL version too old!\n\nGIMP requires BABL version %d.%d.%d or later.\nInstalled BABL version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older BABL version.\n\nPlease upgrade to BABL version %d.%d.%d or later."
	.size	.L.str.10, 247

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GEGL version too old!\n\nGIMP requires GEGL version %d.%d.%d or later.\nInstalled GEGL version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older GEGL version.\n\nPlease upgrade to GEGL version %d.%d.%d or later."
	.size	.L.str.11, 247

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The configured filename encoding cannot be converted to UTF-8: %s\n\nPlease check the value of the environment variable G_FILENAME_ENCODING."
	.size	.L.str.13, 139

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The name of the directory holding the GIMP user configuration cannot be converted to UTF-8: %s\n\nYour filesystem probably stores files in an encoding other than UTF-8 and you didn't tell GLib about this. Please set the environment variable G_FILENAME_ENCODING."
	.size	.L.str.14, 260


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
