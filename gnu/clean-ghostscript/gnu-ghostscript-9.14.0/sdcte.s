	.text
	.file	"sdcte.bc"
	.align	16, 0x90
	.type	s_DCTE_init,@function
s_DCTE_init:                            # @s_DCTE_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	$dcte_init_destination, 1064(%rax)
	movq	$dcte_empty_output_buffer, 1072(%rax)
	movq	$dcte_term_destination, 1080(%rax)
	leaq	1048(%rax), %rax
	movq	144(%rdi), %rcx
	movq	152(%rdi), %rdx
	movq	%rcx, 432(%rdx)
	movq	152(%rdi), %rcx
	movq	%rax, 504(%rcx)
	movl	$0, 188(%rdi)
	movb	$0, 168(%rdi)
	movq	$-1, 176(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_DCTE_init, .Lfunc_end0-s_DCTE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_DCTE_process,@function
s_DCTE_process:                         # @s_DCTE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	152(%r13), %r15
	movq	504(%r15), %r12
	movq	8(%r14), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, (%r12)
	movq	16(%r14), %rax
	movq	%rax, %rdx
	subq	%rbp, %rdx
	movq	%rdx, 8(%r12)
	movl	$-2, %ebx
	movl	188(%r13), %edx
	cmpq	$6, %rdx
	ja	.LBB1_40
# BB#1:                                 # %entry
	movq	%rbp, %rdi
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_3:                                # %sw.bb
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_jpeg_start_compress
	testl	%eax, %eax
	js	.LBB1_40
# BB#4:                                 # %do.end.5
	movq	(%r12), %rbp
	decq	%rbp
	movq	%rbp, 8(%r14)
	movl	$1, 188(%r13)
	movq	16(%r14), %rax
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_5:                                # %sw.bb.10
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	subq	%rbp, %rax
	movl	120(%r13), %edx
	movl	$1, %ebx
	cmpq	%rdx, %rax
	jl	.LBB1_40
# BB#6:                                 # %if.end.19
	incq	%rbp
	movq	112(%r13), %rsi
	movq	%rbp, %rdi
	callq	memcpy
	movl	120(%r13), %ebp
	addq	8(%r14), %rbp
	movq	%rbp, 8(%r14)
	movl	$2, 188(%r13)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_7:                                # %sw.bb.33
	cmpl	$0, 136(%r13)
	jne	.LBB1_10
# BB#8:                                 # %if.then.34
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	16(%r14), %rax
	subq	%rbp, %rax
	movl	$1, %ebx
	cmpq	$16, %rax
	jb	.LBB1_40
# BB#9:                                 # %if.end.43
	incq	%rbp
	movl	$s_DCTE_process.Adobe, %esi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	8(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 8(%r14)
	movb	132(%r13), %cl
	movb	%cl, 16(%rax)
	movq	8(%r14), %rbp
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_10:                               # %if.end.51
	leaq	1(%rbp), %rax
	movq	%rax, (%r12)
	movq	16(%r14), %rax
	movq	%rax, %rdx
	subq	%rbp, %rdx
	movq	%rdx, 8(%r12)
	movl	$3, 188(%r13)
	movq	%rbp, %rdi
.LBB1_11:                               # %sw.bb.62
	movq	160(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB1_26
# BB#12:                                # %if.then.65
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movslq	220(%rdx), %r8
	imulq	$-2146926447, %r8, %rsi # imm = 0xFFFFFFFF80088091
	shrq	$32, %rsi
	addl	%r8d, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	sarl	$15, %esi
	addl	%edx, %esi
	movzbl	%sil, %edx
	imull	$65519, %edx, %edx      # imm = 0xFFEF
	cmpl	%r8d, %edx
	jge	.LBB1_14
# BB#13:
	incb	%sil
.LBB1_14:                               # %if.then.65
	movb	%sil, 39(%rsp)
	movzbl	168(%r13), %edx
	movzbl	%sil, %esi
	cmpl	%esi, %edx
	jae	.LBB1_25
# BB#15:                                # %while.body.lr.ph
	movq	%r15, (%rsp)            # 8-byte Spill
	movq	176(%r13), %rax
	jmp	.LBB1_16
.LBB1_23:                               # %cleanup.171.while.body_crit_edge
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	160(%r13), %rax
	movl	220(%rax), %r8d
	movq	$-1, %rax
.LBB1_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	movzbl	%dl, %esi
	imulq	$65519, %rsi, %rbx      # imm = 0xFFEF
	movslq	%r8d, %r15
	subq	%rbx, %r15
	cmpq	$65519, %r15            # imm = 0xFFEF
	movl	$65519, %ecx            # imm = 0xFFEF
	cmovaq	%rcx, %r15
	cmpq	$-1, %rax
	jne	.LBB1_19
# BB#17:                                # %if.then.93
                                        #   in Loop: Header=BB1_16 Depth=1
	incb	%dl
	movb	%dl, 36(%rsp)
	movl	16(%r14), %eax
	subl	%edi, %eax
	andl	$-2, %eax
	cmpq	$17, %rax
	jbe	.LBB1_41
# BB#18:                                # %cleanup.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	leaq	16(%r15), %rbp
	incq	%rdi
	movl	$s_DCTE_process.marker, %esi
	movl	$2, %edx
	callq	memcpy
	movq	%rbp, %rax
	movb	%ah, 37(%rsp)  # NOREX
	movb	%al, 38(%rsp)
	movq	8(%r14), %rdi
	addq	$3, %rdi
	movl	$2, %edx
	leaq	37(%rsp), %rsi
	callq	memcpy
	movq	8(%r14), %rdi
	addq	$5, %rdi
	movl	$.L.str.1, %esi
	movl	$12, %edx
	callq	memcpy
	movq	8(%r14), %rdi
	addq	$17, %rdi
	movl	$1, %edx
	leaq	36(%rsp), %rsi
	callq	memcpy
	movq	8(%r14), %rdi
	addq	$18, %rdi
	movl	$1, %edx
	leaq	39(%rsp), %rsi
	callq	memcpy
	movq	8(%r14), %rbp
	addq	$18, %rbp
	movq	%rbp, 8(%r14)
	movq	$0, 176(%r13)
	xorl	%eax, %eax
	movq	%rbp, %rdi
.LBB1_19:                               # %while.cond.133.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	%rax, %r15
	jbe	.LBB1_22
	.align	16, 0x90
.LBB1_20:                               # %while.body.137
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r14), %rcx
	subq	%rbp, %rcx
	je	.LBB1_41
# BB#21:                                # %cleanup.164.thread
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	%r15, %rbp
	subq	%rax, %rbp
	cmpq	%rcx, %rbp
	cmovaq	%rcx, %rbp
	incq	%rdi
	movq	160(%r13), %rcx
	movq	256(%rcx), %rsi
	addq	%rbx, %rsi
	addq	%rax, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movq	176(%r13), %rax
	addq	%rbp, %rax
	movq	%rax, 176(%r13)
	addq	8(%r14), %rbp
	movq	%rbp, 8(%r14)
	cmpq	%rax, %r15
	movq	%rbp, %rdi
	ja	.LBB1_20
.LBB1_22:                               # %cleanup.171
                                        #   in Loop: Header=BB1_16 Depth=1
	movb	168(%r13), %dl
	incb	%dl
	movb	%dl, 168(%r13)
	movq	$-1, 176(%r13)
	movzbl	%dl, %eax
	movzbl	39(%rsp), %ecx
	cmpl	%ecx, %eax
	jb	.LBB1_23
# BB#24:                                # %while.cond.cleanup.185.thread_crit_edge
	movq	16(%r14), %rax
	movq	(%rsp), %r15            # 8-byte Reload
	movl	20(%rsp), %ecx          # 4-byte Reload
.LBB1_25:                               # %cleanup.185.thread
	incq	%rdi
	movq	%rdi, (%r12)
	subq	%rbp, %rax
	movq	%rax, 8(%r12)
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_26:                               # %if.end.188
	movl	$4, 188(%r13)
.LBB1_27:                               # %while.cond.191.preheader
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	516(%r15), %eax
	cmpl	808(%r15), %eax
	jbe	.LBB1_34
# BB#28:                                # %while.body.196.lr.ph
	movq	(%rsi), %rcx
	movl	184(%r13), %eax
	.align	16, 0x90
.LBB1_29:                               # %while.body.196
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movl	8(%rsi), %edx
	subl	%ecx, %edx
	cmpl	%eax, %edx
	jb	.LBB1_30
# BB#31:                                # %if.end.214
                                        #   in Loop: Header=BB1_29 Depth=1
	movq	%rsi, %rbp
	movl	$1, %edx
	movq	%r13, %rdi
	leaq	24(%rsp), %rsi
	callq	gs_jpeg_write_scanlines
	movl	$-2, %ebx
	testl	%eax, %eax
	js	.LBB1_40
# BB#32:                                # %do.end.222
                                        #   in Loop: Header=BB1_29 Depth=1
	movq	(%r12), %rcx
	decq	%rcx
	movq	%rcx, 8(%r14)
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB1_40
# BB#33:                                # %cleanup.233
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	184(%r13), %eax
	movq	%rax, %rcx
	movq	%rbp, %rsi
	addq	(%rsi), %rcx
	movq	%rcx, (%rsi)
	movl	516(%r15), %edx
	cmpl	808(%r15), %edx
	ja	.LBB1_29
.LBB1_34:                               # %while.end.237
	movl	$5, 188(%r13)
.LBB1_35:                               # %sw.bb.239
	leaq	1088(%r15), %rbp
	movq	%rbp, (%r12)
	movq	$100, 8(%r12)
	movq	%r13, %rdi
	callq	gs_jpeg_finish_compress
	testl	%eax, %eax
	movl	$-2, %ebx
	js	.LBB1_40
# BB#36:                                # %if.end.247
	movl	(%r12), %ecx
	subl	%ebp, %ecx
	movl	%ecx, 1188(%r15)
	movl	$0, 1192(%r15)
	movl	$6, 188(%r13)
	xorl	%eax, %eax
	jmp	.LBB1_37
.LBB1_2:                                # %entry.sw.bb.256_crit_edge
	movl	1188(%r15), %ecx
	movl	1192(%r15), %eax
.LBB1_37:                               # %sw.bb.256
	subl	%eax, %ecx
	jle	.LBB1_39
# BB#38:                                # %if.then.261
	movslq	%ecx, %rbp
	movq	8(%r14), %rdi
	movq	16(%r14), %rcx
	subq	%rdi, %rcx
	cmpq	%rcx, %rbp
	movq	%rcx, %rdx
	cmovleq	%rbp, %rdx
	cmovgel	%ecx, %ebp
	incq	%rdi
	cltq
	leaq	1088(%r15,%rax), %rsi
	movslq	%edx, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	addl	1192(%r15), %ebp
	movl	%ebp, 1192(%r15)
	addq	%rbx, 8(%r14)
	movl	$1, %ebx
	cmpl	1188(%r15), %ebp
	jl	.LBB1_40
.LBB1_39:                               # %if.end.309
	movl	$-1, %ebx
	jmp	.LBB1_40
.LBB1_41:                               # %cleanup.185
	movl	$1, %ebx
	jmp	.LBB1_40
.LBB1_30:                               # %if.then.210
	movl	20(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	$-2, %ebx
	cmovel	%eax, %ebx
.LBB1_40:                               # %cleanup.310
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_DCTE_process, .Lfunc_end1-s_DCTE_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_3
	.quad	.LBB1_5
	.quad	.LBB1_7
	.quad	.LBB1_11
	.quad	.LBB1_27
	.quad	.LBB1_35
	.quad	.LBB1_2

	.text
	.align	16, 0x90
	.type	s_DCTE_set_defaults,@function
s_DCTE_set_defaults:                    # @s_DCTE_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	s_DCT_set_defaults
	movl	$1065353216, 128(%rbx)  # imm = 0x3F800000
	movl	$-1, 132(%rbx)
	movq	$0, 112(%rbx)
	movl	$0, 120(%rbx)
	movl	$1, 136(%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	s_DCTE_set_defaults, .Lfunc_end2-s_DCTE_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	dcte_init_destination,@function
dcte_init_destination:                  # @dcte_init_destination
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end3:
	.size	dcte_init_destination, .Lfunc_end3-dcte_init_destination
	.cfi_endproc

	.align	16, 0x90
	.type	dcte_empty_output_buffer,@function
dcte_empty_output_buffer:               # @dcte_empty_output_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	dcte_empty_output_buffer, .Lfunc_end4-dcte_empty_output_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	dcte_term_destination,@function
dcte_term_destination:                  # @dcte_term_destination
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end5:
	.size	dcte_term_destination, .Lfunc_end5-dcte_term_destination
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JPEG compress data"
	.size	.L.str, 19

	.type	jpeg_compress_data_reloc_ptrs,@object # @jpeg_compress_data_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
jpeg_compress_data_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	jpeg_compress_data_enum_ptrs
	.size	jpeg_compress_data_reloc_ptrs, 24

	.type	st_jpeg_compress_data,@object # @st_jpeg_compress_data
	.globl	st_jpeg_compress_data
	.align	8
st_jpeg_compress_data:
	.long	1200                    # 0x4b0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	jpeg_compress_data_reloc_ptrs
	.size	st_jpeg_compress_data, 64

	.type	s_DCTE_template,@object # @s_DCTE_template
	.globl	s_DCTE_template
	.align	8
s_DCTE_template:
	.quad	st_DCT_state
	.quad	s_DCTE_init
	.quad	s_DCTE_process
	.long	1000                    # 0x3e8
	.long	4000                    # 0xfa0
	.quad	0
	.quad	s_DCTE_set_defaults
	.quad	0
	.size	s_DCTE_template, 56

	.type	jpeg_compress_data_enum_ptrs,@object # @jpeg_compress_data_enum_ptrs
	.align	2
jpeg_compress_data_enum_ptrs:
	.short	0                       # 0x0
	.short	448                     # 0x1c0
	.size	jpeg_compress_data_enum_ptrs, 4

	.type	s_DCTE_process.Adobe,@object # @s_DCTE_process.Adobe
	.align	16
s_DCTE_process.Adobe:
	.asciz	"\377\356\000\016Adobe\000d\000\000\000\000"
	.size	s_DCTE_process.Adobe, 16

	.type	s_DCTE_process.marker,@object # @s_DCTE_process.marker
s_DCTE_process.marker:
	.ascii	"\377\342"
	.size	s_DCTE_process.marker, 2

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"ICC_PROFILE"
	.size	.L.str.1, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
