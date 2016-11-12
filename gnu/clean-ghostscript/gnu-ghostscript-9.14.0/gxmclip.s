	.text
	.file	"gxmclip.bc"
	.align	16, 0x90
	.type	device_mask_clip_enum_ptrs,@function
device_mask_clip_enum_ptrs:             # @device_mask_clip_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB0_3
# BB#1:                                 # %if.end
	cmpl	$3, %ecx
	jg	.LBB0_2
# BB#4:                                 # %if.then.2
	decl	%ecx
	addq	$1784, %rsi             # imm = 0x6F8
	movl	$2792, %edx             # imm = 0xAE8
	movl	$st_device_memory, %r9d
	jmpq	*st_device_memory+32(%rip) # TAILCALL
.LBB0_3:                                # %if.then
	addq	$1736, %rsi             # imm = 0x6C8
	movl	$48, %edx
	movl	$st_gx_strip_bitmap, %r9d
	jmpq	*st_gx_strip_bitmap+32(%rip) # TAILCALL
.LBB0_2:                                # %if.end.4
	addl	$-4, %ecx
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_mask_clip_enum_ptrs, .Lfunc_end0-device_mask_clip_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_mask_clip_reloc_ptrs,@function
device_mask_clip_reloc_ptrs:            # @device_mask_clip_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_device_forward, %edx
	callq	*st_device_forward+40(%rip)
	leaq	1736(%rbx), %rdi
	movl	$48, %esi
	movl	$st_gx_strip_bitmap, %edx
	movq	%r14, %rcx
	callq	*st_gx_strip_bitmap+40(%rip)
	leaq	1784(%rbx), %rdi
	movl	$2792, %esi             # imm = 0xAE8
	movl	$st_device_memory, %edx
	movq	%r14, %rcx
	callq	*st_device_memory+40(%rip)
	cmpq	$0, 3528(%rbx)
	je	.LBB1_8
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	subq	%rbx, %rax
	movslq	2620(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB1_7
# BB#2:                                 # %for.body.lr.ph
	leaq	-1(%rcx), %r8
	xorl	%edx, %edx
	testb	$3, %cl
	je	.LBB1_5
# BB#3:                                 # %for.body.prol.preheader
	movl	%ecx, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	4360(%rbx), %rsi
	addq	%rax, (%rsi,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB1_4
.LBB1_5:                                # %for.body.lr.ph.split
	cmpq	$3, %r8
	jb	.LBB1_7
	.align	16, 0x90
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	4360(%rbx), %rsi
	addq	%rax, (%rsi,%rdx,8)
	movq	4360(%rbx), %rsi
	addq	%rax, 8(%rsi,%rdx,8)
	movq	4360(%rbx), %rsi
	addq	%rax, 16(%rsi,%rdx,8)
	movq	4360(%rbx), %rsi
	addq	%rax, 24(%rsi,%rdx,8)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB1_6
.LBB1_7:                                # %for.end
	movq	4360(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 3528(%rbx)
	addq	%rcx, %rax
	movq	%rax, 4360(%rbx)
.LBB1_8:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	device_mask_clip_reloc_ptrs, .Lfunc_end1-device_mask_clip_reloc_ptrs
	.cfi_endproc

	.globl	gx_mask_clip_initialize
	.align	16, 0x90
	.type	gx_mask_clip_initialize,@function
gx_mask_clip_initialize:                # @gx_mask_clip_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movl	%r8d, %r13d
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	80(%rsp), %r8
	movl	12(%r12), %r14d
	movslq	8(%r12), %rcx
	addq	$8, %rcx
	movl	$16384, %eax            # imm = 0x4000
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rbp
	testq	%r8, %r8
	je	.LBB2_1
# BB#2:                                 # %if.else
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	gx_device_init
	jmp	.LBB2_3
.LBB2_1:                                # %if.then
	movq	24(%r15), %rdx
	movq	%rbx, %rdi
	callq	gx_device_init_on_stack
.LBB2_3:                                # %if.end
	movl	832(%r15), %eax
	movl	%eax, 832(%rbx)
	movl	836(%r15), %eax
	movl	%eax, 836(%rbx)
	leaq	96(%rbx), %rdi
	leaq	96(%r15), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
	negl	%r13d
	movl	%r13d, 4576(%rbx)
	movl	12(%rsp), %eax          # 4-byte Reload
	negl	%eax
	movl	%eax, 4580(%rbx)
	movl	16(%r12), %eax
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
	leaq	1784(%rbx), %r15
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	gs_make_mem_mono_device
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB2_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	$-1, 16(%rsp)
	testl	%ebp, %ebp
	jle	.LBB2_5
# BB#6:                                 # %cleanup
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	%r14d, 2616(%rbx)
	movl	%ebp, 2620(%rbx)
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	gdev_mem_data_size
	movq	16(%rsp), %rax
	cmpq	$16384, %rax            # imm = 0x4000
	seta	%cl
	movzbl	%cl, %ecx
	subl	%ecx, %ebp
	cmpq	$16384, %rax            # imm = 0x4000
	ja	.LBB2_4
# BB#7:                                 # %for.end
	leaq	4584(%rbx), %rax
	movq	%rax, 3528(%rbx)
	movq	%r15, %rdi
	callq	*2928(%rbx)
	jmp	.LBB2_8
.LBB2_5:                                # %cleanup.thread
	movq	$0, 3528(%rbx)
	movl	$-25, %eax
.LBB2_8:                                # %cleanup.40
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_mask_clip_initialize, .Lfunc_end2-gx_mask_clip_initialize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_mask_clip"
	.size	.L.str, 20

	.type	st_device_mask_clip,@object # @st_device_mask_clip
	.section	.rodata,"a",@progbits
	.globl	st_device_mask_clip
	.align	8
st_device_mask_clip:
	.long	20968                   # 0x51e8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_mask_clip_enum_ptrs
	.quad	device_mask_clip_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_mask_clip, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
