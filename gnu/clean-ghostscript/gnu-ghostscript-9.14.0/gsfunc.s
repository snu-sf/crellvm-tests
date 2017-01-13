	.text
	.file	"gsfunc.bc"
	.globl	alloc_function_array
	.align	16, 0x90
	.type	alloc_function_array,@function
alloc_function_array:                   # @alloc_function_array
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	movq	%rsi, %r14
	movl	%edi, %ebp
	movl	$-15, %ebx
	testl	%ebp, %ebp
	je	.LBB0_3
# BB#1:                                 # %if.end
	movl	$st_function_ptr_element, %edx
	movl	$.L.str.1, %ecx
	movq	%rax, %rdi
	movl	%ebp, %esi
	callq	*104(%rax)
	movq	%rax, %r15
	movl	$-25, %ebx
	testq	%r15, %r15
	je	.LBB0_3
# BB#2:                                 # %if.end.3
	movl	%ebp, %edx
	shlq	$3, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movq	%r15, (%r14)
.LBB0_3:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	alloc_function_array, .Lfunc_end0-alloc_function_array
	.cfi_endproc

	.globl	fn_common_free_params
	.align	16, 0x90
	.type	fn_common_free_params,@function
fn_common_free_params:                  # @fn_common_free_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	gs_free_const_object
	movq	8(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_free_const_object    # TAILCALL
.Lfunc_end1:
	.size	fn_common_free_params, .Lfunc_end1-fn_common_free_params
	.cfi_endproc

	.globl	fn_common_free
	.align	16, 0x90
	.type	fn_common_free,@function
fn_common_free:                         # @fn_common_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	testl	%esi, %esi
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	72(%r14), %rdi
	movq	%rbx, %rsi
	callq	*48(%r14)
.LBB2_2:                                # %if.end
	movq	24(%rbx), %rax
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	fn_common_free, .Lfunc_end2-fn_common_free
	.cfi_endproc

	.globl	fn_check_mnDR
	.align	16, 0x90
	.type	fn_check_mnDR,@function
fn_check_mnDR:                          # @fn_check_mnDR
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jle	.LBB3_11
# BB#1:                                 # %entry
	testl	%edx, %edx
	jle	.LBB3_11
# BB#2:                                 # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB3_6
# BB#3:                                 # %for.body.lr.ph
	movq	8(%rdi), %r9
	movslq	%esi, %r8
	movl	$1, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rsi), %eax
	cltq
	movss	(%r9,%rax,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rax
	ucomiss	(%r9,%rax,4), %xmm0
	ja	.LBB3_11
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB3_5 Depth=1
	incq	%rcx
	addl	$2, %esi
	cmpq	%r8, %rcx
	jl	.LBB3_5
.LBB3_6:                                # %for.end
	movq	24(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB3_12
# BB#7:                                 # %for.end
	testl	%edx, %edx
	jle	.LBB3_12
# BB#8:                                 # %for.body.14.lr.ph
	movslq	%edx, %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_10:                               # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rsi), %eax
	cltq
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	%esi, %rax
	ucomiss	(%rcx,%rax,4), %xmm0
	ja	.LBB3_11
# BB#9:                                 # %for.cond.12
                                        #   in Loop: Header=BB3_10 Depth=1
	incq	%rdi
	addl	$2, %esi
	xorl	%eax, %eax
	cmpq	%rdx, %rdi
	jl	.LBB3_10
	jmp	.LBB3_12
.LBB3_11:
	movl	$-15, %eax
.LBB3_12:                               # %cleanup
	retq
.Lfunc_end3:
	.size	fn_check_mnDR, .Lfunc_end3-fn_check_mnDR
	.cfi_endproc

	.globl	gs_function_get_info_default
	.align	16, 0x90
	.type	gs_function_get_info_default,@function
gs_function_get_info_default:           # @gs_function_get_info_default
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rsi)
	movq	$0, 16(%rsi)
	retq
.Lfunc_end4:
	.size	gs_function_get_info_default, .Lfunc_end4-gs_function_get_info_default
	.cfi_endproc

	.globl	fn_common_get_params
	.align	16, 0x90
	.type	fn_common_get_params,@function
fn_common_get_params:                   # @fn_common_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int
	movl	%eax, %ebp
	movq	80(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	72(%rbx), %ecx
	addl	%ecx, %ecx
	movl	$.L.str.3, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB5_2:                                # %if.end.6
	movq	96(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_4
# BB#3:                                 # %if.then.9
	movl	88(%rbx), %ecx
	addl	%ecx, %ecx
	movl	$.L.str.2, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	param_write_float_values
	testl	%eax, %eax
	cmovnsl	%ebp, %eax
	jmp	.LBB5_5
.LBB5_4:                                # %if.end.18
	movl	%ebp, %eax
.LBB5_5:                                # %if.end.18
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fn_common_get_params, .Lfunc_end5-fn_common_get_params
	.cfi_endproc

	.globl	fn_copy_values
	.align	16, 0x90
	.type	fn_copy_values,@function
fn_copy_values:                         # @fn_copy_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB6_3
# BB#1:                                 # %if.then
	movl	$.L.str.6, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	callq	*88(%rbx)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	imull	%r14d, %ebp
	movslq	%ebp, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%rbx, %rax
.LBB6_3:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fn_copy_values, .Lfunc_end6-fn_copy_values
	.cfi_endproc

	.globl	fn_scale_pairs
	.align	16, 0x90
	.type	fn_scale_pairs,@function
fn_scale_pairs:                         # @fn_scale_pairs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r12, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r12
	testq	%r14, %r14
	je	.LBB7_1
# BB#2:                                 # %if.else
	leal	(%rbx,%rbx), %esi
	movl	$4, %edx
	movl	$.L.str.7, %ecx
	movq	%r8, %rdi
	callq	*88(%r8)
	movq	%rax, (%r12)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB7_9
# BB#3:                                 # %if.end
	testq	%r15, %r15
	je	.LBB7_7
# BB#4:                                 # %for.cond.preheader
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	jle	.LBB7_9
# BB#5:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r15,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	4(%r15,%rdx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	movslq	%edx, %rsi
	movss	(%r14,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, (%rax,%rsi,4)
	incl	%esi
	movslq	%esi, %rsi
	movss	(%r14,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rax,%rsi,4)
	addq	$2, %rdx
	decl	%ebx
	jne	.LBB7_6
	jmp	.LBB7_9
.LBB7_1:                                # %if.then
	movq	$0, (%r12)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.29
	movslq	%ebx, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcpy
.LBB7_8:                                # %return
	xorl	%ecx, %ecx
.LBB7_9:                                # %return
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	fn_scale_pairs, .Lfunc_end7-fn_scale_pairs
	.cfi_endproc

	.globl	fn_common_scale
	.align	16, 0x90
	.type	fn_common_scale,@function
fn_common_scale:                        # @fn_common_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 64
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	64(%r12), %rax
	movq	%rax, 64(%rbx)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 96(%rbx)
	movq	80(%r12), %r13
	testq	%r13, %r13
	je	.LBB8_1
# BB#2:                                 # %if.else.i
	movslq	72(%r12), %rbp
	leal	(%rbp,%rbp), %esi
	movl	$4, %edx
	movl	$.L.str.7, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB8_5
# BB#3:                                 # %if.end.i
	shlq	$3, %rbp
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	jmp	.LBB8_4
.LBB8_1:                                # %if.then.i
	movq	$0, 80(%rbx)
.LBB8_4:                                # %lor.lhs.false
	addq	$96, %rbx
	movq	96(%r12), %rsi
	movl	88(%r12), %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	fn_scale_pairs
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	jmp	.LBB8_6
.LBB8_5:                                # %cleanup
	movl	$-25, %eax
.LBB8_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fn_common_scale, .Lfunc_end8-fn_common_scale
	.cfi_endproc

	.globl	fn_common_serialize
	.align	16, 0x90
	.type	fn_common_serialize,@function
fn_common_serialize:                    # @fn_common_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -24
.Ltmp60:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_7
# BB#1:                                 # %if.end
	leaq	72(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_7
# BB#2:                                 # %if.end.4
	movq	80(%rbx), %rsi
	movl	72(%rbx), %edx
	shll	$3, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_7
# BB#3:                                 # %if.end.12
	leaq	88(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB9_7
# BB#4:                                 # %if.end.18
	movq	96(%rbx), %rcx
	movl	88(%rbx), %edx
	testq	%rcx, %rcx
	jne	.LBB9_6
# BB#5:                                 # %if.end.18
	movl	$-28, %eax
	leal	(%rdx,%rdx), %esi
	sarl	%esi
	addl	%esi, %esi
	sarl	%esi
	cmpl	$4, %esi
	jg	.LBB9_7
.LBB9_6:                                # %if.end.26
	testq	%rcx, %rcx
	movl	$fn_common_serialize.dummy, %esi
	cmovneq	%rcx, %rsi
	shll	$3, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
.LBB9_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	fn_common_serialize, .Lfunc_end9-fn_common_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	function_ptr_element_enum_ptrs,@function
function_ptr_element_enum_ptrs:         # @function_ptr_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	je	.LBB10_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.LBB10_3
# BB#2:                                 # %sw.bb.i
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB10_3:                               # %cleanup
	retq
.Lfunc_end10:
	.size	function_ptr_element_enum_ptrs, .Lfunc_end10-function_ptr_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	function_ptr_element_reloc_ptrs,@function
function_ptr_element_reloc_ptrs:        # @function_ptr_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-8, %ebp
	je	.LBB11_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	addq	$8, %rbx
	incl	%ebp
	jne	.LBB11_2
.LBB11_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	function_ptr_element_reloc_ptrs, .Lfunc_end11-function_ptr_element_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_function_t"
	.size	.L.str, 14

	.type	function_reloc_ptrs,@object # @function_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
function_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	function_enum_ptrs
	.size	function_reloc_ptrs, 24

	.type	st_function,@object     # @st_function
	.globl	st_function
	.align	8
st_function:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	function_reloc_ptrs
	.size	st_function, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Functions"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Range"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Domain"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"fn_common_free"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FunctionType"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fn_copy_values"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fn_scale_pairs"
	.size	.L.str.7, 15

	.type	fn_common_serialize.dummy,@object # @fn_common_serialize.dummy
	.section	.rodata,"a",@progbits
	.align	16
fn_common_serialize.dummy:
	.zero	32
	.size	fn_common_serialize.dummy, 32

	.type	function_enum_ptrs,@object # @function_enum_ptrs
	.align	2
function_enum_ptrs:
	.short	0                       # 0x0
	.short	80                      # 0x50
	.short	0                       # 0x0
	.short	96                      # 0x60
	.size	function_enum_ptrs, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_function_t *[]"
	.size	.L.str.8, 18

	.type	st_function_ptr_element,@object # @st_function_ptr_element
	.section	.rodata,"a",@progbits
	.align	8
st_function_ptr_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	function_ptr_element_enum_ptrs
	.quad	function_ptr_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_function_ptr_element, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
