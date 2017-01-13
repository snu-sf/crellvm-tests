	.text
	.file	"version.bc"
	.globl	gimp_version_show
	.align	16, 0x90
	.type	gimp_version_show,@function
gimp_version_show:                      # @gimp_version_show
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
	movabsq	$.L.str, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_print
	cmpl	$0, -4(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_print
	callq	gimp_show_library_versions
.LBB0_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_version_show, .Lfunc_end0-gimp_version_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_show_library_versions,@function
gimp_show_library_versions:             # @gimp_show_library_versions
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
	subq	$80, %rsp
	leaq	-4(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	callq	gegl_get_version
	movabsq	$.L.str.6, %rdi
	xorl	%eax, %eax
	movl	$2, %edx
	movl	-4(%rbp), %r8d
	movl	-8(%rbp), %r9d
	movl	-12(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-16(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_show_library_version
	movabsq	$.L.str.7, %rdi
	movl	$2, %eax
	movl	$42, %edx
	movl	glib_major_version, %r8d
	movl	glib_minor_version, %r9d
	movl	glib_micro_version, %ecx
	movl	%eax, %esi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_show_library_version
	movabsq	$.L.str.8, %rdi
	movl	$2, %esi
	movl	$31, %edx
	movl	$6, %ecx
	movl	gdk_pixbuf_major_version, %r8d
	movl	gdk_pixbuf_minor_version, %r9d
	movl	gdk_pixbuf_micro_version, %eax
	movl	%eax, (%rsp)
	callq	gimp_show_library_version
	callq	pango_version
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pango_version
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%edx, -28(%rbp)         # 4-byte Spill
	callq	pango_version
	movabsq	$.L.str.9, %rdi
	movl	$1, %esi
	movl	$36, %edx
	movl	$8, %ecx
	movl	$100, %r8d
	movl	%edx, -32(%rbp)         # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-24(%rbp), %r8d         # 4-byte Reload
	movl	-28(%rbp), %r9d         # 4-byte Reload
	movl	-36(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gimp_show_library_version
	callq	FcGetVersion
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	FcGetVersion
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	callq	FcGetVersion
	movabsq	$.L.str.10, %rdi
	movl	$2, %esi
	movl	$10, %edx
	movl	$95, %ecx
	movl	$100, %r8d
	movl	%edx, -48(%rbp)         # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-40(%rbp), %r8d         # 4-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gimp_show_library_version
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	cairo_version_string
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_print
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_show_library_versions, .Lfunc_end1-gimp_show_library_versions
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_show_library_version,@function
gimp_show_library_version:              # @gimp_show_library_version
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
	subq	$48, %rsp
	movl	16(%rbp), %eax
	movabsq	$.L.str.14, %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%r10, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.14, %rdi
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.11, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_print
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_show_library_version, .Lfunc_end2-gimp_show_library_version
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s version %s"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.8.18"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"git-describe: %s"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_2_8_16-114-gcd2bbf7"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GEGL"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GLib"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GdkPixbuf"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pango"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Fontconfig"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"using %s version %s (compiled against version %s)"
	.size	.L.str.11, 50

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Cairo"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1.14.2"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d.%d.%d"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
