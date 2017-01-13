	.text
	.file	"gxclfile.bc"
	.globl	gs_gxclfile_init
	.align	16, 0x90
	.type	gs_gxclfile_init,@function
gs_gxclfile_init:                       # @gs_gxclfile_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$clist_io_procs_file, clist_io_procs_file_global(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_gxclfile_init, .Lfunc_end0-gs_gxclfile_init
	.cfi_endproc

	.align	16, 0x90
	.type	clist_fopen,@function
clist_fopen:                            # @clist_fopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	cmpb	$0, (%rbx)
	je	.LBB1_1
# BB#3:                                 # %if.else
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	gp_fopen
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	movzbl	(%rcx), %edx
	movl	$-9, %eax
	cmpl	$114, %edx
	je	.LBB1_6
# BB#2:                                 # %if.end
	movl	$gp_scratch_file_name_prefix, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gp_open_scratch_file_64
.LBB1_4:                                # %if.end.7
	movq	%rax, %rcx
	movq	%rcx, (%r15)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB1_6
# BB#5:                                 # %if.then.10
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	errprintf
	movl	$-9, %eax
.LBB1_6:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	clist_fopen, .Lfunc_end1-clist_fopen
	.cfi_endproc

	.align	16, 0x90
	.type	clist_fclose,@function
clist_fclose:                           # @clist_fclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	callq	fclose
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	jne	.LBB2_3
# BB#1:                                 # %cond.false
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB2_3
# BB#2:                                 # %cond.true.1
	movq	%rbx, %rdi
	callq	unlink
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
.LBB2_3:                                # %cond.end.4
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	clist_fclose, .Lfunc_end2-clist_fclose
	.cfi_endproc

	.align	16, 0x90
	.type	clist_unlink,@function
clist_unlink:                           # @clist_unlink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 16
	callq	unlink
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	clist_unlink, .Lfunc_end3-clist_unlink
	.cfi_endproc

	.align	16, 0x90
	.type	clist_fwrite_chars,@function
clist_fwrite_chars:                     # @clist_fwrite_chars
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	%esi, %edx
	movl	$1, %esi
	movq	%rax, %rcx
	jmp	fwrite                  # TAILCALL
.Lfunc_end4:
	.size	clist_fwrite_chars, .Lfunc_end4-clist_fwrite_chars
	.cfi_endproc

	.align	16, 0x90
	.type	clist_fread_chars,@function
clist_fread_chars:                      # @clist_fread_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leal	-1(%r14), %eax
	cmpl	$7, %eax
	jbe	.LBB5_1
# BB#2:                                 # %sw.default
	movl	%r14d, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	fread
	movq	%rax, %r14
	jmp	.LBB5_11
.LBB5_1:                                # %entry
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_3:                                # %sw.bb
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_4:                                # %sw.bb.4
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_5:                                # %sw.bb.8
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_6:                                # %sw.bb.12
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_7:                                # %sw.bb.16
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_8:                                # %sw.bb.20
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_9:                                # %sw.bb.24
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
	incq	%rbx
.LBB5_10:                               # %sw.bb.28
	movq	%r15, %rdi
	callq	_IO_getc
	movb	%al, (%rbx)
.LBB5_11:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	clist_fread_chars, .Lfunc_end5-clist_fread_chars
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_10
	.quad	.LBB5_9
	.quad	.LBB5_8
	.quad	.LBB5_7
	.quad	.LBB5_6
	.quad	.LBB5_5
	.quad	.LBB5_4
	.quad	.LBB5_3

	.text
	.align	16, 0x90
	.type	clist_set_memory_warning,@function
clist_set_memory_warning:               # @clist_set_memory_warning
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	clist_set_memory_warning, .Lfunc_end6-clist_set_memory_warning
	.cfi_endproc

	.align	16, 0x90
	.type	clist_ferror_code,@function
clist_ferror_code:                      # @clist_ferror_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 16
	callq	ferror
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end7:
	.size	clist_ferror_code, .Lfunc_end7-clist_ferror_code
	.cfi_endproc

	.align	16, 0x90
	.type	clist_ftell,@function
clist_ftell:                            # @clist_ftell
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gp_ftell_64             # TAILCALL
.Lfunc_end8:
	.size	clist_ftell, .Lfunc_end8-clist_ftell
	.cfi_endproc

	.align	16, 0x90
	.type	clist_rewind,@function
clist_rewind:                           # @clist_rewind
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testl	%esi, %esi
	je	.LBB9_2
# BB#1:                                 # %if.end
	movl	$gp_fmode_wb, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	freopen64
	leaq	12(%rsp), %r15
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%r15, %rdi
	callq	strcat
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	freopen64
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB9_2:                                # %if.else
	movq	%rbx, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	rewind                  # TAILCALL
.Lfunc_end9:
	.size	clist_rewind, .Lfunc_end9-clist_rewind
	.cfi_endproc

	.align	16, 0x90
	.type	clist_fseek,@function
clist_fseek:                            # @clist_fseek
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gp_fseek_64             # TAILCALL
.Lfunc_end10:
	.size	clist_fseek, .Lfunc_end10-clist_fseek
	.cfi_endproc

	.type	clist_io_procs_file,@object # @clist_io_procs_file
	.data
	.align	8
clist_io_procs_file:
	.quad	clist_fopen
	.quad	clist_fclose
	.quad	clist_unlink
	.quad	clist_fwrite_chars
	.quad	clist_fread_chars
	.quad	clist_set_memory_warning
	.quad	clist_ferror_code
	.quad	clist_ftell
	.quad	clist_rewind
	.quad	clist_fseek
	.size	clist_io_procs_file, 80

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not open the scratch file %s.\n"
	.size	.L.str, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w+"
	.size	.L.str.1, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
