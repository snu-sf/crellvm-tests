	.text
	.file	"gimpimage-contiguous-region.bc"
	.globl	gimp_image_contiguous_region_by_seed
	.align	16, 0x90
	.type	gimp_image_contiguous_region_by_seed,@function
gimp_image_contiguous_region_by_seed:   # @gimp_image_contiguous_region_by_seed
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
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movl	%r10d, -72(%rbp)
	movl	%eax, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -276(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_contiguous_region_by_seed, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_63
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -300(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -300(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_contiguous_region_by_seed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_63
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	cmpl	$0, -52(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.40
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -216(%rbp)
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.44
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -216(%rbp)
.LBB0_27:                               # %if.end.47
	movq	-216(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-216(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movb	$1, %cl
	movl	%eax, -236(%rbp)
	cmpl	$1, -236(%rbp)
	movb	%cl, -337(%rbp)         # 1-byte Spill
	je	.LBB0_30
# BB#28:                                # %lor.lhs.false
	movb	$1, %al
	cmpl	$3, -236(%rbp)
	movb	%al, -337(%rbp)         # 1-byte Spill
	je	.LBB0_30
# BB#29:                                # %lor.rhs
	cmpl	$5, -236(%rbp)
	sete	%al
	movb	%al, -337(%rbp)         # 1-byte Spill
.LBB0_30:                               # %lor.end
	movb	-337(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -240(%rbp)
	cmpl	$1, -236(%rbp)
	jne	.LBB0_32
# BB#31:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB0_45
.LBB0_32:                               # %cond.false
	cmpl	$0, -236(%rbp)
	jne	.LBB0_34
# BB#33:                                # %cond.true.54
	movl	$3, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_44
.LBB0_34:                               # %cond.false.55
	cmpl	$3, -236(%rbp)
	jne	.LBB0_36
# BB#35:                                # %cond.true.57
	movl	$2, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_36:                               # %cond.false.58
	cmpl	$2, -236(%rbp)
	jne	.LBB0_38
# BB#37:                                # %cond.true.60
	movl	$1, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB0_42
.LBB0_38:                               # %cond.false.61
	cmpl	$5, -236(%rbp)
	jne	.LBB0_40
# BB#39:                                # %cond.true.63
	movl	$2, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.64
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -236(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB0_41:                               # %cond.end
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB0_42:                               # %cond.end.67
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB0_43:                               # %cond.end.69
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB0_44:                               # %cond.end.71
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB0_45:                               # %cond.end.73
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)
	movq	-216(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rsi
	movq	-224(%rbp), %rdi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	tile_manager_width
	movq	-224(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	gimp_channel_new_mask
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-232(%rbp), %rsi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-232(%rbp), %rsi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB0_62
# BB#46:                                # %if.then.91
	movq	-256(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -312(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_52
# BB#47:                                # %if.then.96
	cmpl	$0, -64(%rbp)
	je	.LBB0_51
# BB#48:                                # %if.then.98
	movl	-244(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-312(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jle	.LBB0_50
# BB#49:                                # %if.then.101
	movl	$0, -64(%rbp)
.LBB0_50:                               # %if.end.102
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.103
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.104
	movl	$0, -64(%rbp)
.LBB0_53:                               # %if.end.105
	cmpl	$4, -236(%rbp)
	je	.LBB0_55
# BB#54:                                # %lor.lhs.false.108
	cmpl	$5, -236(%rbp)
	jne	.LBB0_56
.LBB0_55:                               # %if.then.111
	leaq	-316(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	-236(%rbp), %esi
	movq	-312(%rbp), %rdx
	callq	gimp_image_get_color
	jmp	.LBB0_61
.LBB0_56:                               # %if.else.112
	movl	$0, -320(%rbp)
.LBB0_57:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-320(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB0_60
# BB#58:                                # %for.body
                                        #   in Loop: Header=BB0_57 Depth=1
	movslq	-320(%rbp), %rax
	movq	-312(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-320(%rbp), %rax
	movb	%dl, -316(%rbp,%rax)
# BB#59:                                # %for.inc
                                        #   in Loop: Header=BB0_57 Depth=1
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB0_57
.LBB0_60:                               # %for.end
	jmp	.LBB0_61
.LBB0_61:                               # %if.end.120
	leaq	-208(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-316(%rbp), %rax
	movq	-40(%rbp), %rdi
	movl	-236(%rbp), %ecx
	movl	-240(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-56(%rbp), %r11d
	movl	-60(%rbp), %ebx
	movl	-72(%rbp), %r14d
	movl	-76(%rbp), %r15d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	find_contiguous_region_helper
	xorl	%esi, %esi
	movq	-256(%rbp), %rdi
	callq	tile_release
.LBB0_62:                               # %if.end.122
	movq	-232(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_63:                               # %return
	movq	-32(%rbp), %rax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_contiguous_region_by_seed, .Lfunc_end0-gimp_image_contiguous_region_by_seed
	.cfi_endproc

	.align	16, 0x90
	.type	find_contiguous_region_helper,@function
find_contiguous_region_helper:          # @find_contiguous_region_helper
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movl	48(%rbp), %r10d
	movl	40(%rbp), %r11d
	movl	32(%rbp), %ebx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r15d, -80(%rbp)
	movl	%r14d, -84(%rbp)
	movl	%ebx, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r10d, -96(%rbp)
	movq	%rax, -104(%rbp)
	callq	g_queue_new
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movslq	-96(%rbp), %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	g_queue_push_tail
.LBB1_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	-144(%rbp), %rdi
	callq	g_queue_pop_head
	movl	%eax, %ecx
	movl	%ecx, -96(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_queue_pop_head
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_queue_pop_head
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movl	-108(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -92(%rbp)
.LBB1_2:                                # %for.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB1_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	tile_data_pointer
	xorl	%esi, %esi
	movzbl	(%rax), %ecx
	movl	%ecx, -124(%rbp)
	movq	-136(%rbp), %rdi
	callq	tile_release
	cmpl	$0, -124(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=2
	jmp	.LBB1_12
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=2
	leaq	-116(%rbp), %rax
	leaq	-120(%rbp), %rcx
	movl	-92(%rbp), %edx
	movq	-64(%rbp), %rsi
	movl	%edx, 36(%rsi)
	movl	-96(%rbp), %edx
	movq	-64(%rbp), %rsi
	movl	%edx, 40(%rsi)
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movl	44(%r9), %r10d
	movq	-64(%rbp), %r9
	movl	52(%r9), %r9d
	movl	-68(%rbp), %r11d
	movl	-72(%rbp), %ebx
	movl	-76(%rbp), %r14d
	movl	-80(%rbp), %r15d
	movl	-84(%rbp), %r12d
	movl	-88(%rbp), %r13d
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	-92(%rbp), %esi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r10d, %r8d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 48(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	callq	find_contiguous_segment
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.19
                                        #   in Loop: Header=BB1_2 Depth=2
	jmp	.LBB1_12
.LBB1_7:                                # %if.end.20
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movq	-64(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB1_9
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	-144(%rbp), %rdi
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movslq	-116(%rbp), %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movslq	-120(%rbp), %rsi
	callq	g_queue_push_tail
.LBB1_9:                                # %if.end.29
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-96(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jl	.LBB1_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB1_2 Depth=2
	movq	-144(%rbp), %rdi
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movslq	-116(%rbp), %rsi
	callq	g_queue_push_tail
	movq	-144(%rbp), %rdi
	movslq	-120(%rbp), %rsi
	callq	g_queue_push_tail
.LBB1_11:                               # %if.end.38
                                        #   in Loop: Header=BB1_2 Depth=2
	jmp	.LBB1_12
.LBB1_12:                               # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_2
.LBB1_13:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_14
.LBB1_14:                               # %do.cond
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-144(%rbp), %rdi
	callq	g_queue_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB1_1
# BB#15:                                # %do.end
	movq	-144(%rbp), %rdi
	callq	g_queue_free
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	find_contiguous_region_helper, .Lfunc_end1-find_contiguous_region_helper
	.cfi_endproc

	.globl	gimp_image_contiguous_region_by_color
	.align	16, 0x90
	.type	gimp_image_contiguous_region_by_color,@function
gimp_image_contiguous_region_by_color:  # @gimp_image_contiguous_region_by_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -276(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_contiguous_region_by_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_43
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -300(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -300(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_contiguous_region_by_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_43
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.41
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_contiguous_region_by_color, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_43
.LBB2_28:                               # %if.end.43
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.44
	leaq	-256(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, %rcx
	addq	$36, %rcx
	movq	%rax, %rdx
	addq	$36, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$36, %rsi
	addq	$2, %rsi
	addq	$36, %rax
	addq	$3, %rax
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_rgba_get_uchar
	cmpl	$0, -28(%rbp)
	je	.LBB2_31
# BB#30:                                # %if.then.56
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.60
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
.LBB2_32:                               # %if.end.63
	movq	-64(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-64(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movb	$1, %cl
	movl	%eax, -248(%rbp)
	cmpl	$1, -248(%rbp)
	movb	%cl, -329(%rbp)         # 1-byte Spill
	je	.LBB2_35
# BB#33:                                # %lor.lhs.false
	movb	$1, %al
	cmpl	$3, -248(%rbp)
	movb	%al, -329(%rbp)         # 1-byte Spill
	je	.LBB2_35
# BB#34:                                # %lor.rhs
	cmpl	$5, -248(%rbp)
	sete	%al
	movb	%al, -329(%rbp)         # 1-byte Spill
.LBB2_35:                               # %lor.end
	movb	-329(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -224(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -212(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_height
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -216(%rbp)
	movq	-72(%rbp), %rsi
	movl	-212(%rbp), %r8d
	movl	-216(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -224(%rbp)
	je	.LBB2_41
# BB#36:                                # %if.then.76
	cmpl	$0, -40(%rbp)
	je	.LBB2_40
# BB#37:                                # %if.then.78
	movzbl	-217(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB2_39
# BB#38:                                # %if.then.82
	movl	$0, -40(%rbp)
.LBB2_39:                               # %if.end.83
	jmp	.LBB2_40
.LBB2_40:                               # %if.end.84
	jmp	.LBB2_42
.LBB2_41:                               # %if.else.85
	movl	$0, -40(%rbp)
.LBB2_42:                               # %if.end.86
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	movq	-16(%rbp), %rdi
	movl	-212(%rbp), %esi
	movl	-216(%rbp), %edx
	callq	gimp_channel_new_mask
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-212(%rbp), %r8d
	movl	-216(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movabsq	$contiguous_region_by_color, %rax
	movl	$2, %edx
	leaq	-144(%rbp), %rcx
	leaq	-208(%rbp), %r8
	leaq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	movq	-80(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB2_43:                               # %return
	movq	-8(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_contiguous_region_by_color, .Lfunc_end2-gimp_image_contiguous_region_by_color
	.cfi_endproc

	.align	16, 0x90
	.type	contiguous_region_by_color,@function
contiguous_region_by_color:             # @contiguous_region_by_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp20:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -52(%rbp)
.LBB3_3:                                # %for.cond.2
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB3_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB3_3 Depth=2
	leaq	-76(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-64(%rbp), %rdx
	callq	gimp_image_get_color
	movl	$3, %esi
	movl	$4, %r8d
	leaq	-76(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$36, %rcx
	movq	-16(%rbp), %rdx
	movl	16(%rdx), %edx
	movq	-16(%rbp), %rdi
	movl	20(%rdi), %r9d
	movq	-16(%rbp), %rdi
	cmpl	$0, 32(%rdi)
	cmovnel	%r8d, %esi
	movq	-16(%rbp), %rdi
	movl	32(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	24(%rdi), %r10d
	movq	-16(%rbp), %rdi
	movl	28(%rdi), %r11d
	movq	%rcx, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	%r9d, %ecx
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %bl
	movq	-72(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -72(%rbp)
	movb	%bl, (%rsi)
	movq	-24(%rbp), %rsi
	movl	52(%rsi), %eax
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %for.inc.14
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end.16
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	contiguous_region_by_color, .Lfunc_end3-contiguous_region_by_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4609434218613702656     # double 1.5
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_2:
	.long	1140850688              # float 512
	.text
	.align	16, 0x90
	.type	pixel_difference,@function
pixel_difference:                       # @pixel_difference
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
	subq	$128, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB4_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -40(%rbp)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true.2
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_39
.LBB4_4:                                # %if.end
	cmpl	$0, -44(%rbp)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true.5
	cmpl	$0, -40(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.7
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-36(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	jmp	.LBB4_29
.LBB4_7:                                # %if.else
	cmpl	$0, -40(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.18
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
.LBB4_9:                                # %if.end.19
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	ja	.LBB4_28
# BB#40:                                # %if.end.19
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_10:                               # %sw.bb
	movl	$0, -60(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, %edi
	callq	abs
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB4_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB4_14:                               # %if.end.33
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_11
.LBB4_16:                               # %for.end
	jmp	.LBB4_28
.LBB4_17:                               # %sw.bb.34
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	jmp	.LBB4_28
.LBB4_18:                               # %sw.bb.41
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	jmp	.LBB4_28
.LBB4_19:                               # %sw.bb.48
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	jmp	.LBB4_28
.LBB4_20:                               # %sw.bb.55
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -84(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-76(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	movl	-64(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %eax
	subl	$360, %eax              # imm = 0x168
	subl	-76(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -92(%rbp)
	movl	-64(%rbp), %eax
	subl	-76(%rbp), %eax
	addl	$360, %eax              # imm = 0x168
	movl	%eax, %edi
	callq	abs
	movl	%eax, -96(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB4_22
# BB#21:                                # %cond.true
	movl	-88(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false
	movl	-92(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_23:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB4_25
# BB#24:                                # %if.then.79
	movl	-96(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB4_25:                               # %if.end.80
	jmp	.LBB4_28
.LBB4_26:                               # %sw.bb.81
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -84(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-76(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	movl	-68(%rbp), %ecx
	subl	-80(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	jmp	.LBB4_28
.LBB4_27:                               # %sw.bb.96
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -84(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-76(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	callq	gimp_rgb_to_hsv_int
	movl	-72(%rbp), %ecx
	subl	-84(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -52(%rbp)
.LBB4_28:                               # %sw.epilog
	jmp	.LBB4_29
.LBB4_29:                               # %if.end.111
	cmpl	$0, -28(%rbp)
	je	.LBB4_36
# BB#30:                                # %land.lhs.true.113
	cmpl	$0, -32(%rbp)
	jle	.LBB4_36
# BB#31:                                # %if.then.116
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	cvtsi2ssl	-52(%rbp), %xmm2
	cvtsi2ssl	-32(%rbp), %xmm3
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -100(%rbp)
	cvtss2sd	-100(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_33
# BB#32:                                # %if.then.125
	movl	$0, -4(%rbp)
	jmp	.LBB4_39
.LBB4_33:                               # %if.else.126
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-100(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_35
# BB#34:                                # %if.then.130
	movss	-100(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_39
.LBB4_35:                               # %if.else.133
	movl	$255, -4(%rbp)
	jmp	.LBB4_39
.LBB4_36:                               # %if.else.134
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB4_38
# BB#37:                                # %if.then.137
	movl	$0, -4(%rbp)
	jmp	.LBB4_39
.LBB4_38:                               # %if.else.138
	movl	$255, -4(%rbp)
.LBB4_39:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pixel_difference, .Lfunc_end4-pixel_difference
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_10
	.quad	.LBB4_17
	.quad	.LBB4_18
	.quad	.LBB4_19
	.quad	.LBB4_20
	.quad	.LBB4_26
	.quad	.LBB4_27

	.text
	.align	16, 0x90
	.type	find_contiguous_segment,@function
find_contiguous_segment:                # @find_contiguous_segment
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movq	80(%rbp), %rax
	movq	72(%rbp), %r10
	movl	64(%rbp), %r11d
	movl	56(%rbp), %ebx
	movl	48(%rbp), %r14d
	movl	40(%rbp), %r15d
	movl	32(%rbp), %r12d
	movl	24(%rbp), %r13d
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	16(%rbp), %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	leaq	-184(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	leaq	-144(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	leaq	-152(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%r13d, -96(%rbp)
	movl	%r12d, -100(%rbp)
	movl	%r15d, -104(%rbp)
	movl	%r14d, -108(%rbp)
	movl	%ebx, -112(%rbp)
	movl	%r11d, -116(%rbp)
	movq	%r10, -128(%rbp)
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -136(%rbp)
	movl	-88(%rbp), %esi
	movl	%esi, -164(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	-72(%rbp), %rdx
	movl	36(%rdx), %r8d
	movq	-72(%rbp), %rdx
	movl	40(%rdx), %r9d
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	ref_tiles
	cmpl	$4, -92(%rbp)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$5, -92(%rbp)
	jne	.LBB5_3
.LBB5_2:                                # %if.then
	leaq	-156(%rbp), %rcx
	movl	$3, %eax
	movl	$4, %edx
	cmpl	$0, -96(%rbp)
	cmovnel	%edx, %eax
	movl	%eax, -164(%rbp)
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-144(%rbp), %rdx
	callq	gimp_image_get_color
	leaq	-156(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
.LBB5_4:                                # %if.end
	cmpb	$0, -157(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	xorl	%esi, %esi
	movq	-176(%rbp), %rdi
	callq	tile_release
	movl	$1, %esi
	movq	-184(%rbp), %rdi
	callq	tile_release
	movl	$0, -44(%rbp)
	jmp	.LBB5_36
.LBB5_6:                                # %if.end.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	-157(%rbp), %dl
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$-1, %rdi
	movq	%rdi, -152(%rbp)
	movb	%dl, (%rsi)
	movl	-88(%rbp), %eax
	movq	-144(%rbp), %rsi
	movslq	%eax, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -144(%rbp)
	movl	-116(%rbp), %eax
	subl	$1, %eax
	movq	-128(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB5_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jl	.LBB5_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB5_7 Depth=1
	movzbl	-157(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB5_9:                                # %land.end
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_10
	jmp	.LBB5_19
.LBB5_10:                               # %while.body
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	$64, %eax
	movq	-128(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-240(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB5_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	-176(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-144(%rbp), %rax
	leaq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-80(%rbp), %r8
	movq	8(%r8), %r8
	movq	-128(%rbp), %r9
	movl	(%r9), %r10d
	movq	-72(%rbp), %r9
	movl	40(%r9), %r9d
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	ref_tiles
.LBB5_12:                               # %if.end.18
                                        #   in Loop: Header=BB5_7 Depth=1
	cmpl	$4, -92(%rbp)
	je	.LBB5_14
# BB#13:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB5_7 Depth=1
	cmpl	$5, -92(%rbp)
	jne	.LBB5_15
.LBB5_14:                               # %if.then.24
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	-156(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-144(%rbp), %rdx
	callq	gimp_image_get_color
	leaq	-156(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.29
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
.LBB5_16:                               # %if.end.32
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	-157(%rbp), %al
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB5_18
# BB#17:                                # %if.then.35
                                        #   in Loop: Header=BB5_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-88(%rbp), %eax
	movq	-144(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -144(%rbp)
	movq	-128(%rbp), %rcx
	movl	(%rcx), %eax
	addl	$-1, %eax
	movl	%eax, (%rcx)
.LBB5_18:                               # %if.end.39
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_7
.LBB5_19:                               # %while.end
	movl	$64, %eax
	movb	$1, -157(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movq	-136(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-136(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-252(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB5_22
# BB#20:                                # %land.lhs.true
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-84(%rbp), %ecx
	jge	.LBB5_22
# BB#21:                                # %if.then.45
	leaq	-176(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-144(%rbp), %rax
	leaq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-80(%rbp), %r8
	movq	8(%r8), %r8
	movq	-136(%rbp), %r9
	movl	(%r9), %r10d
	movq	-72(%rbp), %r9
	movl	40(%r9), %r9d
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	ref_tiles
.LBB5_22:                               # %if.end.49
	jmp	.LBB5_23
.LBB5_23:                               # %while.cond.50
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-84(%rbp), %eax
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jge	.LBB5_25
# BB#24:                                # %land.rhs.53
                                        #   in Loop: Header=BB5_23 Depth=1
	movzbl	-157(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -265(%rbp)         # 1-byte Spill
.LBB5_25:                               # %land.end.56
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_26
	jmp	.LBB5_35
.LBB5_26:                               # %while.body.57
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	$64, %eax
	movq	-136(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-272(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB5_28
# BB#27:                                # %if.then.60
                                        #   in Loop: Header=BB5_23 Depth=1
	leaq	-176(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-144(%rbp), %rax
	leaq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-80(%rbp), %r8
	movq	8(%r8), %r8
	movq	-136(%rbp), %r9
	movl	(%r9), %r10d
	movq	-72(%rbp), %r9
	movl	40(%r9), %r9d
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	ref_tiles
.LBB5_28:                               # %if.end.64
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$4, -92(%rbp)
	je	.LBB5_30
# BB#29:                                # %lor.lhs.false.67
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$5, -92(%rbp)
	jne	.LBB5_31
.LBB5_30:                               # %if.then.70
                                        #   in Loop: Header=BB5_23 Depth=1
	leaq	-156(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-144(%rbp), %rdx
	callq	gimp_image_get_color
	leaq	-156(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.75
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_difference
	movb	%al, %r11b
	movb	%r11b, -157(%rbp)
.LBB5_32:                               # %if.end.78
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-157(%rbp), %al
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%al, (%rcx)
	cmpb	$0, %al
	je	.LBB5_34
# BB#33:                                # %if.then.81
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-88(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	movq	-136(%rbp), %rcx
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
.LBB5_34:                               # %if.end.84
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_23
.LBB5_35:                               # %while.end.85
	xorl	%esi, %esi
	movq	-176(%rbp), %rdi
	callq	tile_release
	movl	$1, %esi
	movq	-184(%rbp), %rdi
	callq	tile_release
	movl	$1, -44(%rbp)
.LBB5_36:                               # %return
	movl	-44(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_contiguous_segment, .Lfunc_end5-find_contiguous_segment
	.cfi_endproc

	.align	16, 0x90
	.type	ref_tiles,@function
ref_tiles:                              # @ref_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_release
.LBB6_2:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_release
.LBB6_4:                                # %if.end.3
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	tile_manager_get_tile
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	tile_manager_get_tile
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	tile_data_pointer
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	tile_data_pointer
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ref_tiles, .Lfunc_end6-ref_tiles
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_contiguous_region_by_seed,@object # @__func__.gimp_image_contiguous_region_by_seed
.L__func__.gimp_image_contiguous_region_by_seed:
	.asciz	"gimp_image_contiguous_region_by_seed"
	.size	.L__func__.gimp_image_contiguous_region_by_seed, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 28

	.type	.L__func__.gimp_image_contiguous_region_by_color,@object # @__func__.gimp_image_contiguous_region_by_color
.L__func__.gimp_image_contiguous_region_by_color:
	.asciz	"gimp_image_contiguous_region_by_color"
	.size	.L__func__.gimp_image_contiguous_region_by_color, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
