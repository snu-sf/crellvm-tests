	.text
	.file	"xcf-read.bc"
	.globl	xcf_read_int32
	.align	16, 0x90
	.type	xcf_read_int32,@function
xcf_read_int32:                         # @xcf_read_int32
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB0_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	xcf_read_int8
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	andl	$65280, %edx            # imm = 0xFF00
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	shrl	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	andl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_2
.LBB0_4:                                # %while.end
	jmp	.LBB0_5
.LBB0_5:                                # %if.end
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_read_int32, .Lfunc_end0-xcf_read_int32
	.cfi_endproc

	.globl	xcf_read_int8
	.align	16, 0x90
	.type	xcf_read_int8,@function
xcf_read_int8:                          # @xcf_read_int8
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB1_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_5
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	jmp	.LBB1_1
.LBB1_5:                                # %while.end
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xcf_read_int8, .Lfunc_end1-xcf_read_int8
	.cfi_endproc

	.globl	xcf_read_float
	.align	16, 0x90
	.type	xcf_read_float,@function
xcf_read_float:                         # @xcf_read_float
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	xcf_read_int32
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xcf_read_float, .Lfunc_end2-xcf_read_float
	.cfi_endproc

	.globl	xcf_read_string
	.align	16, 0x90
	.type	xcf_read_string,@function
xcf_read_string:                        # @xcf_read_string
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	xcf_read_int32
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	cmpq	$16777216, %rsi         # imm = 0x1000000
	jle	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str, %rdi
	movl	$16777216, %eax         # imm = 0x1000000
	movl	%eax, %esi
	movb	$0, %al
	callq	g_warning
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	$0, (%rdi,%rsi,8)
	jmp	.LBB3_10
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -32(%rbp)
	jbe	.LBB3_8
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-32(%rbp), %edx
	callq	xcf_read_int8
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movsbl	(%rdi,%rsi), %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.16
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	$-1, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.24
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
.LBB3_9:                                # %if.end.27
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.28
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_12:                               # %for.end
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcf_read_string, .Lfunc_end3-xcf_read_string
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Maximum string length (%ld bytes) exceeded. Possibly corrupt XCF file."
	.size	.L.str, 71

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid UTF-8 string in XCF file"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-XCF"
	.size	.L.str.2, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
