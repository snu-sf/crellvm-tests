	.text
	.file	"gimpreloc.bc"
	.hidden	_gimp_reloc_init
	.globl	_gimp_reloc_init
	.align	16, 0x90
	.type	_gimp_reloc_init,@function
_gimp_reloc_init:                       # @_gimp_reloc_init
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
	subq	$32, %rsp
	leaq	-20(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rax, %rdi
	callq	_br_find_exe
	movq	%rax, exe(%rip)
	cmpq	$0, exe(%rip)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	set_gerror
	movl	$0, -4(%rbp)
.LBB0_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_reloc_init, .Lfunc_end0-_gimp_reloc_init
	.cfi_endproc

	.align	16, 0x90
	.type	_br_find_exe,@function
_br_find_exe:                           # @_br_find_exe
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_br_find_exe, .Lfunc_end1-_br_find_exe
	.cfi_endproc

	.align	16, 0x90
	.type	set_gerror,@function
set_gerror:                             # @set_gerror
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_10
.LBB2_2:                                # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	ja	.LBB2_8
# BB#11:                                # %if.end
	leaq	.LJTI2_0(%rip), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB2_3:                                # %sw.bb
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_9
.LBB2_4:                                # %sw.bb.1
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_9
.LBB2_5:                                # %sw.bb.2
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_9
.LBB2_6:                                # %sw.bb.3
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_9
.LBB2_7:                                # %sw.bb.4
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %sw.default
	leaq	.L.str.14(%rip), %rax
	movq	%rax, -24(%rbp)
.LBB2_9:                                # %sw.epilog
	leaq	.L.str.15(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_quark_from_static_string@PLT
	leaq	.L.str.16(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_set_error@PLT
.LBB2_10:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_gerror, .Lfunc_end2-set_gerror
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI2_0:
	.long	.LBB2_3-.LJTI2_0
	.long	.LBB2_4-.LJTI2_0
	.long	.LBB2_5-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
	.long	.LBB2_7-.LJTI2_0

	.text
	.hidden	_gimp_reloc_init_lib
	.globl	_gimp_reloc_init_lib
	.align	16, 0x90
	.type	_gimp_reloc_init_lib,@function
_gimp_reloc_init_lib:                   # @_gimp_reloc_init_lib
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
	leaq	.L.str(%rip), %rax
	leaq	-20(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rax, %rdi
	callq	_br_find_exe_for_symbol
	movq	%rax, exe(%rip)
	cmpq	$0, exe(%rip)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	set_gerror
	cmpq	$0, exe(%rip)
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	%esi, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_reloc_init_lib, .Lfunc_end3-_gimp_reloc_init_lib
	.cfi_endproc

	.align	16, 0x90
	.type	_br_find_exe_for_symbol,@function
_br_find_exe_for_symbol:                # @_br_find_exe_for_symbol
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$4, (%rax)
.LBB4_2:                                # %if.end
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_br_find_exe_for_symbol, .Lfunc_end4-_br_find_exe_for_symbol
	.cfi_endproc

	.hidden	_gimp_reloc_find_exe
	.globl	_gimp_reloc_find_exe
	.align	16, 0x90
	.type	_gimp_reloc_find_exe,@function
_gimp_reloc_find_exe:                   # @_gimp_reloc_find_exe
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, exe(%rip)
	jne	.LBB5_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB5_5
.LBB5_3:                                # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB5_5
.LBB5_4:                                # %if.end
	movq	exe(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
.LBB5_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gimp_reloc_find_exe, .Lfunc_end5-_gimp_reloc_find_exe
	.cfi_endproc

	.hidden	_gimp_reloc_find_exe_dir
	.globl	_gimp_reloc_find_exe_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_exe_dir,@function
_gimp_reloc_find_exe_dir:               # @_gimp_reloc_find_exe_dir
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, exe(%rip)
	jne	.LBB6_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB6_5
.LBB6_3:                                # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.end
	movq	exe(%rip), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -8(%rbp)
.LBB6_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_reloc_find_exe_dir, .Lfunc_end6-_gimp_reloc_find_exe_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_prefix
	.globl	_gimp_reloc_find_prefix
	.align	16, 0x90
	.type	_gimp_reloc_find_prefix,@function
_gimp_reloc_find_prefix:                # @_gimp_reloc_find_prefix
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, exe(%rip)
	jne	.LBB7_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_3:                                # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.end
	movq	exe(%rip), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_gimp_reloc_find_prefix, .Lfunc_end7-_gimp_reloc_find_prefix
	.cfi_endproc

	.hidden	_gimp_reloc_find_bin_dir
	.globl	_gimp_reloc_find_bin_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_bin_dir,@function
_gimp_reloc_find_bin_dir:               # @_gimp_reloc_find_bin_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_3:                                # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end
	leaq	.L.str.1(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gimp_reloc_find_bin_dir, .Lfunc_end8-_gimp_reloc_find_bin_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_data_dir
	.globl	_gimp_reloc_find_data_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_data_dir,@function
_gimp_reloc_find_data_dir:              # @_gimp_reloc_find_data_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB9_5
.LBB9_3:                                # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.end
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	leaq	.L.str.4(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_reloc_find_data_dir, .Lfunc_end9-_gimp_reloc_find_data_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_plugin_dir
	.globl	_gimp_reloc_find_plugin_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_plugin_dir,@function
_gimp_reloc_find_plugin_dir:            # @_gimp_reloc_find_plugin_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_lib_dir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_3:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.end
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_gimp_reloc_find_plugin_dir, .Lfunc_end10-_gimp_reloc_find_plugin_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_lib_dir
	.globl	_gimp_reloc_find_lib_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_lib_dir,@function
_gimp_reloc_find_lib_dir:               # @_gimp_reloc_find_lib_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_3:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.end
	leaq	.L.str.6(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gimp_reloc_find_lib_dir, .Lfunc_end11-_gimp_reloc_find_lib_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_locale_dir
	.globl	_gimp_reloc_find_locale_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_locale_dir,@function
_gimp_reloc_find_locale_dir:            # @_gimp_reloc_find_locale_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_data_dir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB12_5
.LBB12_3:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.end
	leaq	.L.str.5(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_gimp_reloc_find_locale_dir, .Lfunc_end12-_gimp_reloc_find_locale_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_libexec_dir
	.globl	_gimp_reloc_find_libexec_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_libexec_dir,@function
_gimp_reloc_find_libexec_dir:           # @_gimp_reloc_find_libexec_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_3:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB13_5
.LBB13_4:                               # %if.end
	leaq	.L.str.7(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_gimp_reloc_find_libexec_dir, .Lfunc_end13-_gimp_reloc_find_libexec_dir
	.cfi_endproc

	.hidden	_gimp_reloc_find_etc_dir
	.globl	_gimp_reloc_find_etc_dir
	.align	16, 0x90
	.type	_gimp_reloc_find_etc_dir,@function
_gimp_reloc_find_etc_dir:               # @_gimp_reloc_find_etc_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB14_5
.LBB14_3:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.end
	leaq	.L.str.8(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	leaq	.L.str.4(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_gimp_reloc_find_etc_dir, .Lfunc_end14-_gimp_reloc_find_etc_dir
	.cfi_endproc

	.type	exe,@object             # @exe
	.local	exe
	.comm	exe,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"bin"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"share"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.0"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"locale"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"lib"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"libexec"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"etc"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot allocate memory."
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unable to open /proc/self/maps for reading."
	.size	.L.str.10, 44

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unable to read from /proc/self/maps."
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The file format of /proc/self/maps is invalid."
	.size	.L.str.12, 47

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Binary relocation support is disabled."
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unknown error."
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GBinReloc"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s"
	.size	.L.str.16, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
