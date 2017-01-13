	.text
	.file	"gimpdrawable-combine.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_drawable_real_apply_region
	.align	16, 0x90
	.type	gimp_drawable_real_apply_region,@function
gimp_drawable_real_apply_region:        # @gimp_drawable_real_apply_region
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
	pushq	%r12
	pushq	%rbx
	subq	$768, %rsp              # imm = 0x300
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r11, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-40(%rbp), %rax
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	-128(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB0_3
.LBB0_2:                                # %if.then
	movq	$0, -128(%rbp)
.LBB0_3:                                # %if.end
	leaq	-304(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_get_active_components
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_type
	movq	-48(%rbp), %rsi
	movl	52(%rsi), %esi
	movl	%eax, %edi
	callq	gimp_image_get_combination_mode
	movl	%eax, -284(%rbp)
	cmpl	$-1, -284(%rbp)
	jne	.LBB0_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_real_apply_region, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB0_67
.LBB0_5:                                # %if.end.11
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-100(%rbp), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-532(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_7
# BB#6:                                 # %cond.true
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB0_11
.LBB0_7:                                # %cond.false
	cmpl	$0, -100(%rbp)
	jge	.LBB0_9
# BB#8:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false.17
	movl	-100(%rbp), %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB0_10:                               # %cond.end
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB0_11:                               # %cond.end.18
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-104(%rbp), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-544(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_13
# BB#12:                                # %cond.true.22
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB0_17
.LBB0_13:                               # %cond.false.24
	cmpl	$0, -104(%rbp)
	jge	.LBB0_15
# BB#14:                                # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false.27
	movl	-104(%rbp), %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB0_16:                               # %cond.end.28
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB0_17:                               # %cond.end.30
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	44(%rcx), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-556(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB0_19
# BB#18:                                # %cond.true.34
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB0_23
.LBB0_19:                               # %cond.false.36
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	44(%rcx), %eax
	cmpl	$0, %eax
	jge	.LBB0_21
# BB#20:                                # %cond.true.40
	xorl	%eax, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               # %cond.false.41
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	44(%rcx), %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
.LBB0_22:                               # %cond.end.44
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB0_23:                               # %cond.end.46
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-104(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	48(%rcx), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-568(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB0_25
# BB#24:                                # %cond.true.51
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB0_29
.LBB0_25:                               # %cond.false.53
	movl	-104(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	48(%rcx), %eax
	cmpl	$0, %eax
	jge	.LBB0_27
# BB#26:                                # %cond.true.57
	xorl	%eax, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %cond.false.58
	movl	-104(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	48(%rcx), %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB0_28:                               # %cond.end.61
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB0_29:                               # %cond.end.63
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_55
# BB#30:                                # %if.then.66
	movq	-128(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -312(%rbp)
	movl	-132(%rbp), %ecx
	movq	-312(%rbp), %rdi
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	subl	-148(%rbp), %eax
	movl	-588(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_32
# BB#31:                                # %cond.true.71
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-148(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB0_36
.LBB0_32:                               # %cond.false.74
	xorl	%eax, %eax
	movl	-132(%rbp), %ecx
	subl	-148(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_34
# BB#33:                                # %cond.true.77
	xorl	%eax, %eax
	subl	-148(%rbp), %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB0_35
.LBB0_34:                               # %cond.false.79
	movl	-132(%rbp), %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB0_35:                               # %cond.end.80
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB0_36:                               # %cond.end.82
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -600(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	subl	-152(%rbp), %eax
	movl	-600(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_38
# BB#37:                                # %cond.true.87
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-152(%rbp), %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB0_42
.LBB0_38:                               # %cond.false.90
	xorl	%eax, %eax
	movl	-136(%rbp), %ecx
	subl	-152(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_40
# BB#39:                                # %cond.true.93
	xorl	%eax, %eax
	subl	-152(%rbp), %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.95
	movl	-136(%rbp), %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB0_41:                               # %cond.end.96
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB0_42:                               # %cond.end.98
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	-140(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -612(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	subl	-148(%rbp), %eax
	movl	-612(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_44
# BB#43:                                # %cond.true.103
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-148(%rbp), %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB0_48
.LBB0_44:                               # %cond.false.106
	xorl	%eax, %eax
	movl	-140(%rbp), %ecx
	subl	-148(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_46
# BB#45:                                # %cond.true.109
	xorl	%eax, %eax
	subl	-148(%rbp), %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB0_47
.LBB0_46:                               # %cond.false.111
	movl	-140(%rbp), %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB0_47:                               # %cond.end.112
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB0_48:                               # %cond.end.114
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-144(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -624(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	subl	-152(%rbp), %eax
	movl	-624(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_50
# BB#49:                                # %cond.true.119
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-152(%rbp), %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB0_54
.LBB0_50:                               # %cond.false.122
	xorl	%eax, %eax
	movl	-144(%rbp), %ecx
	subl	-152(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_52
# BB#51:                                # %cond.true.125
	xorl	%eax, %eax
	subl	-152(%rbp), %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jmp	.LBB0_53
.LBB0_52:                               # %cond.false.127
	movl	-144(%rbp), %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
.LBB0_53:                               # %cond.end.128
	movl	-632(%rbp), %eax        # 4-byte Reload
	movl	%eax, -628(%rbp)        # 4-byte Spill
.LBB0_54:                               # %cond.end.130
	movl	-628(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
.LBB0_55:                               # %if.end.132
	cmpl	$0, -52(%rbp)
	je	.LBB0_59
# BB#56:                                # %if.then.134
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	subl	-132(%rbp), %r9d
	movl	-144(%rbp), %r10d
	subl	-136(%rbp), %r10d
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	gimp_drawable_push_undo
	movq	-120(%rbp), %rdi
	callq	gimp_image_undo_get_fadeable
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	je	.LBB0_58
# BB#57:                                # %if.then.141
	movl	-76(%rbp), %eax
	movq	-320(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-320(%rbp), %rcx
	movsd	%xmm0, 128(%rcx)
	movl	-140(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	-144(%rbp), %edx
	subl	-136(%rbp), %edx
	movq	-48(%rbp), %rcx
	movl	52(%rcx), %esi
	movl	%eax, %edi
	movl	%esi, -660(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-660(%rbp), %edx        # 4-byte Reload
	callq	tile_manager_new
	leaq	-384(%rbp), %rcx
	movl	$64, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-320(%rbp), %r8
	movq	%rax, 112(%r8)
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%r8, %rdi
	movq	%rax, %rsi
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	36(%rax), %r9d
	movl	-132(%rbp), %r10d
	subl	-100(%rbp), %r10d
	addl	%r10d, %r9d
	movq	-48(%rbp), %rax
	movl	40(%rax), %r10d
	movl	-136(%rbp), %r11d
	subl	-104(%rbp), %r11d
	addl	%r11d, %r10d
	movl	-140(%rbp), %r11d
	subl	-132(%rbp), %r11d
	movl	-144(%rbp), %ebx
	subl	-136(%rbp), %ebx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r10d, %edx
	movl	%r11d, %ecx
	movl	%ebx, %r8d
	callq	pixel_region_resize
	leaq	-448(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-320(%rbp), %rax
	movq	112(%rax), %rsi
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	%edx, -676(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-384(%rbp), %rdi
	leaq	-448(%rbp), %rsi
	callq	copy_region
.LBB0_58:                               # %if.end.158
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.159
	cmpq	$0, -88(%rbp)
	je	.LBB0_61
# BB#60:                                # %if.then.161
	leaq	-216(%rbp), %rdi
	xorl	%eax, %eax
	movq	-88(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -680(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	jmp	.LBB0_62
.LBB0_61:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	%esi, -684(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-684(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -688(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
.LBB0_62:                               # %if.end.167
	cmpq	$0, -96(%rbp)
	jne	.LBB0_64
# BB#63:                                # %if.then.169
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-280(%rbp), %rdi
	movl	$1, %ecx
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	%esi, -692(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-692(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-280(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_64:                               # %if.end.173
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movl	-132(%rbp), %edx
	subl	-100(%rbp), %edx
	addl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	40(%rax), %edx
	movl	-136(%rbp), %esi
	subl	-104(%rbp), %esi
	addl	%esi, %edx
	movl	-140(%rbp), %esi
	subl	-132(%rbp), %esi
	movl	-144(%rbp), %r8d
	subl	-136(%rbp), %r8d
	movl	%esi, -700(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-700(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_resize
	cmpq	$0, -128(%rbp)
	je	.LBB0_66
# BB#65:                                # %if.then.183
	leaq	-216(%rbp), %rdi
	leaq	-512(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-304(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%r8, -728(%rbp)         # 8-byte Spill
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-132(%rbp), %r9d
	movl	-148(%rbp), %r10d
	movl	%r9d, %r11d
	addl	%r10d, %r11d
	movl	-136(%rbp), %r10d
	movl	-152(%rbp), %ebx
	movl	%r10d, %r14d
	addl	%ebx, %r14d
	movl	-140(%rbp), %ebx
	subl	%r9d, %ebx
	movl	-144(%rbp), %r9d
	subl	%r10d, %r9d
	movq	%rsp, %rcx
	movl	$0, (%rcx)
	leaq	-512(%rbp), %rdi
	movq	%rax, %rsi
	movl	%r11d, %edx
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	callq	pixel_region_init
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	-76(%rbp), %r8d
	movl	-284(%rbp), %r9d
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	-728(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -752(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movl	-748(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -756(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	-752(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	-736(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	-756(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	combine_regions
	jmp	.LBB0_67
.LBB0_66:                               # %if.else.192
	leaq	-216(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-304(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %r8
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9
	movl	%r9d, %eax
	movl	-76(%rbp), %r10d
	movl	-284(%rbp), %r11d
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movq	-776(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movl	%r10d, (%rsp)
	movq	-768(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	combine_regions
.LBB0_67:                               # %if.end.196
	addq	$768, %rsp              # imm = 0x300
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_real_apply_region, .Lfunc_end0-gimp_drawable_real_apply_region
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_drawable_real_replace_region
	.align	16, 0x90
	.type	gimp_drawable_real_replace_region,@function
gimp_drawable_real_replace_region:      # @gimp_drawable_real_replace_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movl	%eax, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-48(%rbp), %rax
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	-120(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB2_3
.LBB2_2:                                # %if.then
	movq	$0, -120(%rbp)
.LBB2_3:                                # %if.end
	leaq	-304(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_get_active_components
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_type
	movq	-56(%rbp), %rsi
	movl	52(%rsi), %esi
	movl	%eax, %edi
	callq	gimp_image_get_combination_mode
	movl	%eax, -276(%rbp)
	cmpl	$-1, -276(%rbp)
	jne	.LBB2_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_real_replace_region, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB2_60
.LBB2_5:                                # %if.end.11
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-92(%rbp), %eax
	movq	-104(%rbp), %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-468(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB2_11
.LBB2_7:                                # %cond.false
	cmpl	$0, -92(%rbp)
	jge	.LBB2_9
# BB#8:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.17
	movl	-92(%rbp), %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB2_10:                               # %cond.end
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB2_11:                               # %cond.end.18
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-96(%rbp), %eax
	movq	-104(%rbp), %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-480(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_13
# BB#12:                                # %cond.true.22
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB2_17
.LBB2_13:                               # %cond.false.24
	cmpl	$0, -96(%rbp)
	jge	.LBB2_15
# BB#14:                                # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %cond.false.27
	movl	-96(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB2_16:                               # %cond.end.28
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB2_17:                               # %cond.end.30
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-92(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	44(%rcx), %eax
	movq	-104(%rbp), %rdi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-492(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB2_19
# BB#18:                                # %cond.true.34
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB2_23
.LBB2_19:                               # %cond.false.36
	movl	-92(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	44(%rcx), %eax
	cmpl	$0, %eax
	jge	.LBB2_21
# BB#20:                                # %cond.true.40
	xorl	%eax, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.41
	movl	-92(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	44(%rcx), %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB2_22:                               # %cond.end.44
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB2_23:                               # %cond.end.46
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-96(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %eax
	movq	-104(%rbp), %rdi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-504(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB2_25
# BB#24:                                # %cond.true.51
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB2_29
.LBB2_25:                               # %cond.false.53
	movl	-96(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %eax
	cmpl	$0, %eax
	jge	.LBB2_27
# BB#26:                                # %cond.true.57
	xorl	%eax, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB2_28
.LBB2_27:                               # %cond.false.58
	movl	-96(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB2_28:                               # %cond.end.61
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB2_29:                               # %cond.end.63
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_55
# BB#30:                                # %if.then.66
	movq	-120(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -312(%rbp)
	movl	-124(%rbp), %ecx
	movq	-312(%rbp), %rdi
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	subl	-140(%rbp), %eax
	movl	-524(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_32
# BB#31:                                # %cond.true.71
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-140(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jmp	.LBB2_36
.LBB2_32:                               # %cond.false.74
	xorl	%eax, %eax
	movl	-124(%rbp), %ecx
	subl	-140(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB2_34
# BB#33:                                # %cond.true.77
	xorl	%eax, %eax
	subl	-140(%rbp), %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB2_35
.LBB2_34:                               # %cond.false.79
	movl	-124(%rbp), %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB2_35:                               # %cond.end.80
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB2_36:                               # %cond.end.82
	movl	-528(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -536(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	subl	-144(%rbp), %eax
	movl	-536(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_38
# BB#37:                                # %cond.true.87
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-144(%rbp), %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB2_42
.LBB2_38:                               # %cond.false.90
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	subl	-144(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB2_40
# BB#39:                                # %cond.true.93
	xorl	%eax, %eax
	subl	-144(%rbp), %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB2_41
.LBB2_40:                               # %cond.false.95
	movl	-128(%rbp), %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB2_41:                               # %cond.end.96
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB2_42:                               # %cond.end.98
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	subl	-140(%rbp), %eax
	movl	-548(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_44
# BB#43:                                # %cond.true.103
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_width
	subl	-140(%rbp), %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB2_48
.LBB2_44:                               # %cond.false.106
	xorl	%eax, %eax
	movl	-132(%rbp), %ecx
	subl	-140(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB2_46
# BB#45:                                # %cond.true.109
	xorl	%eax, %eax
	subl	-140(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB2_47
.LBB2_46:                               # %cond.false.111
	movl	-132(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB2_47:                               # %cond.end.112
	movl	-556(%rbp), %eax        # 4-byte Reload
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB2_48:                               # %cond.end.114
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	movq	-312(%rbp), %rdi
	movl	%eax, -560(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	subl	-144(%rbp), %eax
	movl	-560(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB2_50
# BB#49:                                # %cond.true.119
	movq	-312(%rbp), %rdi
	callq	gimp_item_get_height
	subl	-144(%rbp), %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB2_54
.LBB2_50:                               # %cond.false.122
	xorl	%eax, %eax
	movl	-136(%rbp), %ecx
	subl	-144(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB2_52
# BB#51:                                # %cond.true.125
	xorl	%eax, %eax
	subl	-144(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB2_53
.LBB2_52:                               # %cond.false.127
	movl	-136(%rbp), %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB2_53:                               # %cond.end.128
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	%eax, -564(%rbp)        # 4-byte Spill
.LBB2_54:                               # %cond.end.130
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
.LBB2_55:                               # %if.end.132
	cmpl	$0, -60(%rbp)
	je	.LBB2_57
# BB#56:                                # %if.then.134
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	subl	-124(%rbp), %r9d
	movl	-136(%rbp), %r10d
	subl	-128(%rbp), %r10d
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	gimp_drawable_push_undo
.LBB2_57:                               # %if.end.137
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	%esi, -584(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-584(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-272(%rbp), %rdi
	movl	$1, %ecx
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	subl	-124(%rbp), %r9d
	movl	-136(%rbp), %r10d
	subl	-128(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -592(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	36(%rax), %ecx
	movl	-124(%rbp), %edx
	subl	-92(%rbp), %edx
	addl	%edx, %ecx
	movq	-56(%rbp), %rax
	movl	40(%rax), %edx
	movl	-128(%rbp), %r8d
	subl	-96(%rbp), %r8d
	addl	%r8d, %edx
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	pixel_region_resize
	cmpq	$0, -120(%rbp)
	je	.LBB2_59
# BB#58:                                # %if.then.153
	leaq	-208(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	leaq	-440(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-304(%rbp), %rsi
	movq	-120(%rbp), %r9
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	movq	%r8, -624(%rbp)         # 8-byte Spill
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%r9, -640(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-124(%rbp), %r10d
	movl	-140(%rbp), %r11d
	movl	%r10d, %ebx
	addl	%r11d, %ebx
	movl	-128(%rbp), %r11d
	movl	-144(%rbp), %r14d
	movl	%r11d, %r15d
	addl	%r14d, %r15d
	movl	-132(%rbp), %r14d
	subl	%r10d, %r14d
	movl	-136(%rbp), %r10d
	subl	%r11d, %r10d
	movq	%rsp, %rcx
	movl	$0, (%rcx)
	leaq	-376(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	%ebx, %edx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movl	%r10d, %r9d
	callq	pixel_region_init
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	subl	%edx, %ecx
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %r8d
	subl	%r8d, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -448(%rbp)
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	subl	%edx, %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %r8d
	subl	%r8d, %edx
	movq	%rsp, %rsi
	movl	%edx, 8(%rsi)
	movl	%ecx, (%rsi)
	leaq	-440(%rbp), %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	%rsi, %rdi
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -660(%rbp)        # 4-byte Spill
	movl	%r8d, -664(%rbp)        # 4-byte Spill
	movl	-664(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init_data
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	-656(%rbp), %rsi        # 8-byte Reload
	callq	copy_region
	movq	-448(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	subl	%edx, %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %r8d
	subl	%r8d, %edx
	movq	%rsp, %rax
	movl	%edx, 8(%rax)
	movl	%ecx, (%rax)
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	-660(%rbp), %edx        # 4-byte Reload
	movl	-664(%rbp), %r8d        # 4-byte Reload
	movl	-664(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init_data
	movq	-88(%rbp), %rsi
	movl	$255, %edx
	movq	-656(%rbp), %rdi        # 8-byte Reload
	callq	apply_mask_to_region
	movq	-448(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movl	-124(%rbp), %edx
	subl	%edx, %ecx
	movl	-136(%rbp), %edx
	movl	-128(%rbp), %r8d
	subl	%r8d, %edx
	movq	%rsp, %rax
	movl	%edx, 8(%rax)
	movl	%ecx, (%rax)
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	-660(%rbp), %edx        # 4-byte Reload
	movl	-664(%rbp), %r8d        # 4-byte Reload
	movl	-664(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init_data
	movq	-56(%rbp), %rsi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	-276(%rbp), %edx
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	%edx, -668(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-616(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movq	-624(%rbp), %r8         # 8-byte Reload
	movl	-672(%rbp), %r9d        # 4-byte Reload
	movq	-632(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movl	-668(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	callq	combine_regions_replace
	movq	-448(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_60
.LBB2_59:                               # %if.else
	leaq	-208(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-304(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %r9
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r10
	movl	%r10d, %eax
	movl	-276(%rbp), %r11d
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movl	%eax, %r9d
	movq	-680(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	combine_regions_replace
.LBB2_60:                               # %if.end.179
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_real_replace_region, .Lfunc_end2-gimp_drawable_real_replace_region
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: illegal parameters."
	.size	.L.str, 24

	.type	.L__func__.gimp_drawable_real_apply_region,@object # @__func__.gimp_drawable_real_apply_region
.L__func__.gimp_drawable_real_apply_region:
	.asciz	"gimp_drawable_real_apply_region"
	.size	.L__func__.gimp_drawable_real_apply_region, 32

	.type	.L__func__.gimp_drawable_real_replace_region,@object # @__func__.gimp_drawable_real_replace_region
.L__func__.gimp_drawable_real_replace_region:
	.asciz	"gimp_drawable_real_replace_region"
	.size	.L__func__.gimp_drawable_real_replace_region, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
