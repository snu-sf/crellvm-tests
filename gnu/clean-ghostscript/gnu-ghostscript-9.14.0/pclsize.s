	.text
	.file	"pclsize.bc"
	.globl	pcl3_page_size
	.align	16, 0x90
	.type	pcl3_page_size,@function
pcl3_page_size:                         # @pcl3_page_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movb	pcl3_page_size.initialized(%rip), %al
	andb	$1, %al
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$code_map, %edi
	movl	$29, %esi
	movl	$8, %edx
	movl	$cmp_by_size, %ecx
	callq	qsort
	movb	$1, pcl3_page_size.initialized(%rip)
.LBB0_2:                                # %if.end
	andl	$-64769, %ebx           # imm = 0xFFFFFFFFFFFF02FF
	movl	%ebx, 8(%rsp)
	leaq	8(%rsp), %rdi
	movl	$code_map, %esi
	movl	$29, %edx
	movl	$8, %ecx
	movl	$cmp_by_size, %r8d
	callq	bsearch
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_4
# BB#3:                                 # %cond.false
	movl	4(%rcx), %eax
.LBB0_4:                                # %cond.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	pcl3_page_size, .Lfunc_end0-pcl3_page_size
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_by_size,@function
cmp_by_size:                            # @cmp_by_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	subl	(%rsi), %eax
	retq
.Lfunc_end1:
	.size	cmp_by_size, .Lfunc_end1-cmp_by_size
	.cfi_endproc

	.globl	pcl3_media_code
	.align	16, 0x90
	.type	pcl3_media_code,@function
pcl3_media_code:                        # @pcl3_media_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movb	pcl3_media_code.initialized(%rip), %al
	andb	$1, %al
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$pcl3_media_code.inverse_map, %edi
	movl	$code_map, %esi
	movl	$232, %edx
	callq	memcpy
	movl	$pcl3_media_code.inverse_map, %edi
	movl	$29, %esi
	movl	$8, %edx
	movl	$cmp_by_code, %ecx
	callq	qsort
	movb	$1, pcl3_media_code.initialized(%rip)
.LBB2_2:                                # %if.end
	movl	%ebx, 12(%rsp)
	leaq	8(%rsp), %rdi
	movl	$pcl3_media_code.inverse_map, %esi
	movl	$29, %edx
	movl	$8, %ecx
	movl	$cmp_by_code, %r8d
	callq	bsearch
	testq	%rax, %rax
	jne	.LBB2_4
# BB#3:                                 # %if.end.5
	negl	%ebx
	movl	%ebx, 12(%rsp)
	leaq	8(%rsp), %rdi
	movl	$pcl3_media_code.inverse_map, %esi
	movl	$29, %edx
	movl	$8, %ecx
	movl	$cmp_by_code, %r8d
	callq	bsearch
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB2_5
.LBB2_4:                                # %cond.false
	movl	(%rax), %ecx
.LBB2_5:                                # %cond.end
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	pcl3_media_code, .Lfunc_end2-pcl3_media_code
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_by_code,@function
cmp_by_code:                            # @cmp_by_code
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	subl	4(%rsi), %eax
	retq
.Lfunc_end3:
	.size	cmp_by_code, .Lfunc_end3-cmp_by_code
	.cfi_endproc

	.globl	pcl3_size_description
	.align	16, 0x90
	.type	pcl3_size_description,@function
pcl3_size_description:                  # @pcl3_size_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 16
	callq	pcl3_media_code
	movl	%eax, %edi
	popq	%rax
	jmp	ms_find_size_from_code  # TAILCALL
.Lfunc_end4:
	.size	pcl3_size_description, .Lfunc_end4-pcl3_size_description
	.cfi_endproc

	.type	pcl3_page_size.initialized,@object # @pcl3_page_size.initialized
	.local	pcl3_page_size.initialized
	.comm	pcl3_page_size.initialized,1,1
	.type	code_map,@object        # @code_map
	.data
	.align	16
code_map:
	.long	38                      # 0x26
	.long	1                       # 0x1
	.long	42                      # 0x2a
	.long	2                       # 0x2
	.long	43                      # 0x2b
	.long	3                       # 0x3
	.long	51                      # 0x33
	.long	6                       # 0x6
	.long	32                      # 0x20
	.long	15                      # 0xf
	.long	56                      # 0x38
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	24                      # 0x18
	.long	34                      # 0x22
	.long	25                      # 0x19
	.long	39                      # 0x27
	.long	26                      # 0x1a
	.long	52                      # 0x34
	.long	27                      # 0x1b
	.long	37                      # 0x25
	.long	45                      # 0x2d
	.long	50                      # 0x32
	.long	46                      # 0x2e
	.long	21                      # 0x15
	.long	71                      # 0x47
	.long	33                      # 0x21
	.long	72                      # 0x48
	.long	536                     # 0x218
	.long	73                      # 0x49
	.long	22                      # 0x16
	.long	74                      # 0x4a
	.long	30                      # 0x1e
	.long	75                      # 0x4b
	.long	14                      # 0xe
	.long	78                      # 0x4e
	.long	19                      # 0x13
	.long	80                      # 0x50
	.long	23                      # 0x17
	.long	81                      # 0x51
	.long	25                      # 0x19
	.long	90                      # 0x5a
	.long	35                      # 0x23
	.long	91                      # 0x5b
	.long	27                      # 0x1b
	.long	92                      # 0x5c
	.long	36                      # 0x24
	.long	100                     # 0x64
	.long	76                      # 0x4c
	.long	101                     # 0x65
	.long	26                      # 0x1a
	.long	109                     # 0x6d
	.long	28                      # 0x1c
	.long	110                     # 0x6e
	.long	17                      # 0x11
	.long	111                     # 0x6f
	.long	48                      # 0x30
	.long	113                     # 0x71
	.size	code_map, 232

	.type	pcl3_media_code.inverse_map,@object # @pcl3_media_code.inverse_map
	.local	pcl3_media_code.inverse_map
	.comm	pcl3_media_code.inverse_map,232,16
	.type	pcl3_media_code.initialized,@object # @pcl3_media_code.initialized
	.local	pcl3_media_code.initialized
	.comm	pcl3_media_code.initialized,1,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
