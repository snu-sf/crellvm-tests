	.text
	.file	"gimpbrushcache.bc"
	.globl	gimp_brush_cache_get_type
	.align	16, 0x90
	.type	gimp_brush_cache_get_type,@function
gimp_brush_cache_get_type:              # @gimp_brush_cache_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_brush_cache_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_cache_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_brush_cache_class_intern_init, %rdi
	movl	$96, %r8d
	movabsq	$gimp_brush_cache_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_brush_cache_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_cache_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_cache_get_type, .Lfunc_end0-gimp_brush_cache_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_class_intern_init,@function
gimp_brush_cache_class_intern_init:     # @gimp_brush_cache_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_brush_cache_parent_class
	cmpl	$0, GimpBrushCache_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushCache_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_cache_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_cache_class_intern_init, .Lfunc_end1-gimp_brush_cache_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_init,@function
gimp_brush_cache_init:                  # @gimp_brush_cache_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_cache_init, .Lfunc_end2-gimp_brush_cache_init
	.cfi_endproc

	.globl	gimp_brush_cache_new
	.align	16, 0x90
	.type	gimp_brush_cache_new,@function
gimp_brush_cache_new:                   # @gimp_brush_cache_new
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
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -16(%rbp)
	movb	%cl, -17(%rbp)
	movb	%al, -18(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_cache_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_brush_cache_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movb	-17(%rbp), %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 88(%rax)
	movb	-18(%rbp), %r8b
	movq	-32(%rbp), %rax
	movb	%r8b, 89(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_cache_new, .Lfunc_end3-gimp_brush_cache_new
	.cfi_endproc

	.globl	gimp_brush_cache_clear
	.align	16, 0x90
	.type	gimp_brush_cache_clear,@function
gimp_brush_cache_clear:                 # @gimp_brush_cache_clear
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_brush_cache_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_cache_clear, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
.LBB4_14:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_cache_clear, .Lfunc_end4-gimp_brush_cache_clear
	.cfi_endproc

	.globl	gimp_brush_cache_get
	.align	16, 0x90
	.type	gimp_brush_cache_get,@function
gimp_brush_cache_get:                   # @gimp_brush_cache_get
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_brush_cache_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_cache_get, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_22
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB5_22
# BB#14:                                # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jne	.LBB5_22
# BB#15:                                # %land.lhs.true.16
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB5_22
	jp	.LBB5_22
# BB#16:                                # %land.lhs.true.18
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jne	.LBB5_22
	jp	.LBB5_22
# BB#17:                                # %land.lhs.true.20
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB5_22
	jp	.LBB5_22
# BB#18:                                # %land.lhs.true.22
	movq	-16(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB5_22
	jp	.LBB5_22
# BB#19:                                # %if.then.24
	movl	gimp_log_flags, %eax
	andl	$262144, %eax           # imm = 0x40000
	cmpl	$0, %eax
	je	.LBB5_21
# BB#20:                                # %if.then.26
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rax
	movsbl	88(%rax), %esi
	movb	$0, %al
	callq	g_printerr
.LBB5_21:                               # %if.end.27
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_25
.LBB5_22:                               # %if.end.29
	movl	gimp_log_flags, %eax
	andl	$262144, %eax           # imm = 0x40000
	cmpl	$0, %eax
	je	.LBB5_24
# BB#23:                                # %if.then.32
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rax
	movsbl	89(%rax), %esi
	movb	$0, %al
	callq	g_printerr
.LBB5_24:                               # %if.end.34
	movq	$0, -8(%rbp)
.LBB5_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_cache_get, .Lfunc_end5-gimp_brush_cache_get
	.cfi_endproc

	.globl	gimp_brush_cache_add
	.align	16, 0x90
	.type	gimp_brush_cache_add,@function
gimp_brush_cache_add:                   # @gimp_brush_cache_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_brush_cache_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_cache_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_22
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_cache_add, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_22
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.18
	jmp	.LBB6_22
.LBB6_19:                               # %if.end.19
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_21
# BB#20:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	*%rax
.LBB6_21:                               # %if.end.24
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 80(%rax)
.LBB6_22:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_cache_add, .Lfunc_end6-gimp_brush_cache_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_class_init,@function
gimp_brush_cache_class_init:            # @gimp_brush_cache_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %ecx
	movabsq	$gimp_brush_cache_get_property, %rdx
	movabsq	$gimp_brush_cache_set_property, %r8
	movabsq	$gimp_brush_cache_finalize, %r9
	movabsq	$gimp_brush_cache_constructed, %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_param_spec_pointer
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_cache_class_init, .Lfunc_end7-gimp_brush_cache_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_constructed,@function
gimp_brush_cache_constructed:           # @gimp_brush_cache_constructed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_cache_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_brush_cache_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_cache_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB8_2:                                # %if.end
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_5
# BB#4:                                 # %if.then.5
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$87, %edx
	movabsq	$.L__func__.gimp_brush_cache_constructed, %rcx
	movabsq	$.L.str.8, %r8
	callq	g_assertion_message_expr
.LBB8_6:                                # %if.end.6
	jmp	.LBB8_7
.LBB8_7:                                # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_cache_constructed, .Lfunc_end8-gimp_brush_cache_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_finalize,@function
gimp_brush_cache_finalize:              # @gimp_brush_cache_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_cache_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_cache_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_cache_finalize, .Lfunc_end9-gimp_brush_cache_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_set_property,@function
gimp_brush_cache_set_property:          # @gimp_brush_cache_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_cache_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_pointer
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$119, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_cache_set_property, .Lfunc_end10-gimp_brush_cache_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_cache_get_property,@function
gimp_brush_cache_get_property:          # @gimp_brush_cache_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_cache_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_2
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer
	jmp	.LBB11_5
.LBB11_2:                               # %sw.default
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$139, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB11_5
.LBB11_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_cache_get_property, .Lfunc_end11-gimp_brush_cache_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.type	gimp_brush_cache_get_type.g_define_type_id__volatile,@object # @gimp_brush_cache_get_type.g_define_type_id__volatile
	.local	gimp_brush_cache_get_type.g_define_type_id__volatile
	.comm	gimp_brush_cache_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushCache"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_brush_cache_new,@object # @__func__.gimp_brush_cache_new
.L__func__.gimp_brush_cache_new:
	.asciz	"gimp_brush_cache_new"
	.size	.L__func__.gimp_brush_cache_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"data_destroy != NULL"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"data-destroy"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_brush_cache_clear,@object # @__func__.gimp_brush_cache_clear
.L__func__.gimp_brush_cache_clear:
	.asciz	"gimp_brush_cache_clear"
	.size	.L__func__.gimp_brush_cache_clear, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_BRUSH_CACHE (cache)"
	.size	.L.str.4, 28

	.type	.L__func__.gimp_brush_cache_get,@object # @__func__.gimp_brush_cache_get
.L__func__.gimp_brush_cache_get:
	.asciz	"gimp_brush_cache_get"
	.size	.L__func__.gimp_brush_cache_get, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%c"
	.size	.L.str.5, 3

	.type	.L__func__.gimp_brush_cache_add,@object # @__func__.gimp_brush_cache_add
.L__func__.gimp_brush_cache_add:
	.asciz	"gimp_brush_cache_add"
	.size	.L__func__.gimp_brush_cache_add, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"data != NULL"
	.size	.L.str.6, 13

	.type	gimp_brush_cache_parent_class,@object # @gimp_brush_cache_parent_class
	.local	gimp_brush_cache_parent_class
	.comm	gimp_brush_cache_parent_class,8,8
	.type	GimpBrushCache_private_offset,@object # @GimpBrushCache_private_offset
	.local	GimpBrushCache_private_offset
	.comm	GimpBrushCache_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimpbrushcache.c"
	.size	.L.str.7, 17

	.type	.L__func__.gimp_brush_cache_constructed,@object # @__func__.gimp_brush_cache_constructed
.L__func__.gimp_brush_cache_constructed:
	.asciz	"gimp_brush_cache_constructed"
	.size	.L__func__.gimp_brush_cache_constructed, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cache->data_destroy != NULL"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
