	.text
	.file	"bmp.bc"
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
	subq	$168, %rsp
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
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rdx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movl	$1, %esi
	movl	$3, %r10d
	movabsq	$query.load_args, %r11
	movabsq	$query.load_return_vals, %rbx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$5, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r11
	xorl	%r13d, %r13d
	movl	%r13d, %ebx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -140(%rbp)        # 4-byte Spill
	addq	$168, %rsp
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
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
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
	jne	.LBB1_15
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_41
.LBB1_41:                               # %if.then
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_8
.LBB1_4:                                # %sw.bb
	movl	$1, interactive
	jmp	.LBB1_9
.LBB1_5:                                # %sw.bb.5
	cmpl	$3, -12(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.7
	movl	$1, -48(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_14
# BB#10:                                # %if.then.9
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ReadBMP
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.14
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_13:                               # %if.end.15
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.16
	jmp	.LBB1_34
.LBB1_15:                               # %if.else.17
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_32
# BB#16:                                # %if.then.20
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_39
.LBB1_39:                               # %if.then.20
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_40
.LBB1_40:                               # %if.then.20
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_18
	jmp	.LBB1_26
.LBB1_17:                               # %sw.bb.27
	movl	$1, interactive
.LBB1_18:                               # %sw.bb.28
	cmpl	$2, -44(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.30
	movl	$1, lastvals
.LBB1_20:                               # %if.end.31
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.27, %rdx
	movl	$23, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.34
	movl	$4, run.values+8
	jmp	.LBB1_38
.LBB1_22:                               # %if.end.35
	jmp	.LBB1_27
.LBB1_23:                               # %sw.bb.36
	cmpl	$5, -12(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.38
	movl	$1, -48(%rbp)
.LBB1_25:                               # %if.end.39
	jmp	.LBB1_27
.LBB1_26:                               # %sw.default.40
	jmp	.LBB1_27
.LBB1_27:                               # %sw.epilog.41
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#28:                                # %if.then.43
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	WriteBMP
	movl	%eax, -48(%rbp)
.LBB1_29:                               # %if.end.48
	cmpl	$2, -60(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.50
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.52
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.53
	movl	$1, -48(%rbp)
.LBB1_33:                               # %if.end.54
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.55
	cmpl	$3, -48(%rbp)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.57
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_37:                               # %if.end.58
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_38:                               # %return
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

	.type	filename,@object        # @filename
	.bss
	.globl	filename
	.align	8
filename:
	.quad	0
	.size	filename, 8

	.type	interactive,@object     # @interactive
	.globl	interactive
	.align	4
interactive:
	.long	0                       # 0x0
	.size	interactive, 4

	.type	lastvals,@object        # @lastvals
	.globl	lastvals
	.align	4
lastvals:
	.long	0                       # 0x0
	.size	lastvals, 4

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

	.type	Bitmap_File_Head,@object # @Bitmap_File_Head
	.bss
	.globl	Bitmap_File_Head
	.align	8
Bitmap_File_Head:
	.zero	40
	.size	Bitmap_File_Head, 40

	.type	Bitmap_Head,@object     # @Bitmap_Head
	.globl	Bitmap_Head
	.align	8
Bitmap_Head:
	.zero	88
	.size	Bitmap_Head, 88

	.type	query.load_args,@object # @query.load_args
	.section	.rodata,"a",@progbits
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
	.asciz	"file-bmp-load"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Loads files of Windows BMP file format"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Alexander Schulz"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1997"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Windows BMP image"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"image/bmp"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"bmp"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"0,string,BM"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-bmp-save"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Saves files in Windows BMP file format"
	.size	.L.str.22, 39

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"INDEXED, GRAY, RGB*"
	.size	.L.str.23, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-bmp"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"BMP"
	.size	.L.str.27, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
