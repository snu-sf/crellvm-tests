	.text
	.file	"gimpdrawable-convert.bc"
	.globl	gimp_drawable_convert_rgb
	.align	16, 0x90
	.type	gimp_drawable_convert_rgb,@function
gimp_drawable_convert_rgb:              # @gimp_drawable_convert_rgb
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_rgb, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_45
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_rgb, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_45
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB0_29
# BB#18:                                # %if.then.20
	cmpl	$0, -16(%rbp)
	je	.LBB0_20
# BB#19:                                # %lor.lhs.false
	cmpl	$1, -16(%rbp)
	jne	.LBB0_21
.LBB0_20:                               # %cond.true
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_28
.LBB0_21:                               # %cond.false
	cmpl	$2, -16(%rbp)
	je	.LBB0_23
# BB#22:                                # %lor.lhs.false.24
	cmpl	$3, -16(%rbp)
	jne	.LBB0_24
.LBB0_23:                               # %cond.true.26
	movl	$3, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB0_27
.LBB0_24:                               # %cond.false.27
	movb	$1, %al
	cmpl	$4, -16(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB0_26
# BB#25:                                # %lor.rhs
	cmpl	$5, -16(%rbp)
	sete	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB0_26:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB0_27:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_28:                               # %cond.end.31
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
.LBB0_29:                               # %if.end.33
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cmpl	$1, -16(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB0_31
# BB#30:                                # %cond.true.41
	movl	$4, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB0_44
.LBB0_31:                               # %cond.false.42
	cmpl	$0, -16(%rbp)
	jne	.LBB0_33
# BB#32:                                # %cond.true.44
	movl	$3, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_43
.LBB0_33:                               # %cond.false.45
	cmpl	$3, -16(%rbp)
	jne	.LBB0_35
# BB#34:                                # %cond.true.47
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_42
.LBB0_35:                               # %cond.false.48
	cmpl	$2, -16(%rbp)
	jne	.LBB0_37
# BB#36:                                # %cond.true.50
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_41
.LBB0_37:                               # %cond.false.51
	cmpl	$5, -16(%rbp)
	jne	.LBB0_39
# BB#38:                                # %cond.true.53
	movl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB0_40
.LBB0_39:                               # %cond.false.54
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -16(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB0_40:                               # %cond.end.57
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB0_41:                               # %cond.end.59
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB0_42:                               # %cond.end.61
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB0_43:                               # %cond.end.63
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB0_44:                               # %cond.end.65
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %edi         # 4-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_drawable_convert_tiles_rgb
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %r8d
	callq	gimp_drawable_set_tiles
	movq	-24(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_45:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_convert_rgb, .Lfunc_end0-gimp_drawable_convert_rgb
	.cfi_endproc

	.globl	gimp_drawable_convert_tiles_rgb
	.align	16, 0x90
	.type	gimp_drawable_convert_tiles_rgb,@function
gimp_drawable_convert_tiles_rgb:        # @gimp_drawable_convert_tiles_rgb
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_rgb, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_64
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_rgb, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_64
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -160(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -164(%rbp)
# BB#18:                                # %do.body.19
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	$3, %ecx
	movl	$4, %edx
	cmpl	$0, -164(%rbp)
	cmovnel	%edx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_20
# BB#19:                                # %if.then.23
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_rgb, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_64
.LBB1_21:                               # %if.end.25
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.26
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -160(%rbp)
	je	.LBB1_24
# BB#23:                                # %lor.lhs.false
	cmpl	$1, -160(%rbp)
	jne	.LBB1_25
.LBB1_24:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB1_32
.LBB1_25:                               # %cond.false
	cmpl	$2, -160(%rbp)
	je	.LBB1_27
# BB#26:                                # %lor.lhs.false.44
	cmpl	$3, -160(%rbp)
	jne	.LBB1_28
.LBB1_27:                               # %cond.true.46
	movl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB1_31
.LBB1_28:                               # %cond.false.47
	movb	$1, %al
	cmpl	$4, -160(%rbp)
	movb	%al, -317(%rbp)         # 1-byte Spill
	je	.LBB1_30
# BB#29:                                # %lor.rhs
	cmpl	$5, -160(%rbp)
	sete	%al
	movb	%al, -317(%rbp)         # 1-byte Spill
.LBB1_30:                               # %lor.end
	movb	-317(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB1_31:                               # %cond.end
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB1_32:                               # %cond.end.52
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_65
.LBB1_65:                               # %cond.end.52
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	je	.LBB1_48
	jmp	.LBB1_63
.LBB1_33:                               # %sw.bb
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -216(%rbp)
.LBB1_34:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
                                        #       Child Loop BB1_38 Depth 3
	cmpq	$0, -216(%rbp)
	je	.LBB1_47
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -148(%rbp)
.LBB1_36:                               # %for.cond.57
                                        #   Parent Loop BB1_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_38 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB1_45
# BB#37:                                # %for.body.59
                                        #   in Loop: Header=BB1_36 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -152(%rbp)
.LBB1_38:                               # %for.cond.60
                                        #   Parent Loop BB1_34 Depth=1
                                        #     Parent Loop BB1_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-152(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB1_43
# BB#39:                                # %for.body.62
                                        #   in Loop: Header=BB1_38 Depth=3
	movq	-184(%rbp), %rax
	movb	(%rax), %cl
	movq	-200(%rbp), %rax
	movb	%cl, (%rax)
	movq	-184(%rbp), %rax
	movb	(%rax), %cl
	movq	-200(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-184(%rbp), %rax
	movb	(%rax), %cl
	movq	-200(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-200(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -200(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB1_41
# BB#40:                                # %if.then.66
                                        #   in Loop: Header=BB1_38 Depth=3
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	(%rax), %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%dl, (%rax)
.LBB1_41:                               # %if.end.69
                                        #   in Loop: Header=BB1_38 Depth=3
	jmp	.LBB1_42
.LBB1_42:                               # %for.inc
                                        #   in Loop: Header=BB1_38 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB1_38
.LBB1_43:                               # %for.end
                                        #   in Loop: Header=BB1_36 Depth=2
	movl	-48(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-112(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#44:                                # %for.inc.74
                                        #   in Loop: Header=BB1_36 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB1_36
.LBB1_45:                               # %for.end.76
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_46
.LBB1_46:                               # %for.inc.77
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -216(%rbp)
	jmp	.LBB1_34
.LBB1_47:                               # %for.end.79
	jmp	.LBB1_64
.LBB1_48:                               # %sw.bb.80
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -216(%rbp)
.LBB1_49:                               # %for.cond.82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_51 Depth 2
                                        #       Child Loop BB1_53 Depth 3
	cmpq	$0, -216(%rbp)
	je	.LBB1_62
# BB#50:                                # %for.body.84
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -148(%rbp)
.LBB1_51:                               # %for.cond.87
                                        #   Parent Loop BB1_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_53 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB1_60
# BB#52:                                # %for.body.90
                                        #   in Loop: Header=BB1_51 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -152(%rbp)
.LBB1_53:                               # %for.cond.91
                                        #   Parent Loop BB1_49 Depth=1
                                        #     Parent Loop BB1_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-152(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB1_58
# BB#54:                                # %for.body.94
                                        #   in Loop: Header=BB1_53 Depth=3
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movzbl	(%rax), %edx
	imull	$3, %edx, %edx
	movl	%edx, -156(%rbp)
	movl	-156(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-200(%rbp), %rax
	movb	%sil, (%rax)
	movl	-156(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-200(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-156(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-200(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-200(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -200(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB1_56
# BB#55:                                # %if.then.108
                                        #   in Loop: Header=BB1_53 Depth=3
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	(%rax), %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%dl, (%rax)
.LBB1_56:                               # %if.end.111
                                        #   in Loop: Header=BB1_53 Depth=3
	jmp	.LBB1_57
.LBB1_57:                               # %for.inc.112
                                        #   in Loop: Header=BB1_53 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB1_53
.LBB1_58:                               # %for.end.114
                                        #   in Loop: Header=BB1_51 Depth=2
	movl	-48(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-112(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#59:                                # %for.inc.121
                                        #   in Loop: Header=BB1_51 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB1_51
.LBB1_60:                               # %for.end.123
                                        #   in Loop: Header=BB1_49 Depth=1
	jmp	.LBB1_61
.LBB1_61:                               # %for.inc.124
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -216(%rbp)
	jmp	.LBB1_49
.LBB1_62:                               # %for.end.126
	jmp	.LBB1_64
.LBB1_63:                               # %sw.default
	jmp	.LBB1_64
.LBB1_64:                               # %sw.epilog
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_convert_tiles_rgb, .Lfunc_end1-gimp_drawable_convert_tiles_rgb
	.cfi_endproc

	.globl	gimp_drawable_convert_grayscale
	.align	16, 0x90
	.type	gimp_drawable_convert_grayscale,@function
gimp_drawable_convert_grayscale:        # @gimp_drawable_convert_grayscale
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_grayscale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_45
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.14
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_grayscale, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_45
.LBB2_16:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.17
	movl	$2, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB2_29
# BB#18:                                # %if.then.20
	cmpl	$0, -16(%rbp)
	je	.LBB2_20
# BB#19:                                # %lor.lhs.false
	cmpl	$1, -16(%rbp)
	jne	.LBB2_21
.LBB2_20:                               # %cond.true
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB2_28
.LBB2_21:                               # %cond.false
	cmpl	$2, -16(%rbp)
	je	.LBB2_23
# BB#22:                                # %lor.lhs.false.24
	cmpl	$3, -16(%rbp)
	jne	.LBB2_24
.LBB2_23:                               # %cond.true.26
	movl	$3, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB2_27
.LBB2_24:                               # %cond.false.27
	movb	$1, %al
	cmpl	$4, -16(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB2_26
# BB#25:                                # %lor.rhs
	cmpl	$5, -16(%rbp)
	sete	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB2_26:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB2_27:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB2_28:                               # %cond.end.31
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
.LBB2_29:                               # %if.end.33
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cmpl	$1, -16(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB2_31
# BB#30:                                # %cond.true.41
	movl	$4, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB2_44
.LBB2_31:                               # %cond.false.42
	cmpl	$0, -16(%rbp)
	jne	.LBB2_33
# BB#32:                                # %cond.true.44
	movl	$3, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_43
.LBB2_33:                               # %cond.false.45
	cmpl	$3, -16(%rbp)
	jne	.LBB2_35
# BB#34:                                # %cond.true.47
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB2_42
.LBB2_35:                               # %cond.false.48
	cmpl	$2, -16(%rbp)
	jne	.LBB2_37
# BB#36:                                # %cond.true.50
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB2_41
.LBB2_37:                               # %cond.false.51
	cmpl	$5, -16(%rbp)
	jne	.LBB2_39
# BB#38:                                # %cond.true.53
	movl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB2_40
.LBB2_39:                               # %cond.false.54
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -16(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB2_40:                               # %cond.end.57
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB2_41:                               # %cond.end.59
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB2_42:                               # %cond.end.61
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB2_43:                               # %cond.end.63
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB2_44:                               # %cond.end.65
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %edi         # 4-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_drawable_convert_tiles_grayscale
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %r8d
	callq	gimp_drawable_set_tiles
	movq	-24(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_45:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_convert_grayscale, .Lfunc_end2-gimp_drawable_convert_grayscale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
.LCPI3_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI3_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI3_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.globl	gimp_drawable_convert_tiles_grayscale
	.align	16, 0x90
	.type	gimp_drawable_convert_tiles_grayscale,@function
gimp_drawable_convert_tiles_grayscale:  # @gimp_drawable_convert_tiles_grayscale
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_grayscale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_64
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_grayscale, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_64
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -164(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -168(%rbp)
# BB#18:                                # %do.body.19
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	$1, %ecx
	movl	$2, %edx
	cmpl	$0, -168(%rbp)
	cmovnel	%edx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.23
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_tiles_grayscale, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_64
.LBB3_21:                               # %if.end.25
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.26
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -164(%rbp)
	je	.LBB3_24
# BB#23:                                # %lor.lhs.false
	cmpl	$1, -164(%rbp)
	jne	.LBB3_25
.LBB3_24:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB3_32
.LBB3_25:                               # %cond.false
	cmpl	$2, -164(%rbp)
	je	.LBB3_27
# BB#26:                                # %lor.lhs.false.44
	cmpl	$3, -164(%rbp)
	jne	.LBB3_28
.LBB3_27:                               # %cond.true.46
	movl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB3_31
.LBB3_28:                               # %cond.false.47
	movb	$1, %al
	cmpl	$4, -164(%rbp)
	movb	%al, -317(%rbp)         # 1-byte Spill
	je	.LBB3_30
# BB#29:                                # %lor.rhs
	cmpl	$5, -164(%rbp)
	sete	%al
	movb	%al, -317(%rbp)         # 1-byte Spill
.LBB3_30:                               # %lor.end
	movb	-317(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB3_31:                               # %cond.end
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB3_32:                               # %cond.end.52
	movl	-312(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB3_33
	jmp	.LBB3_65
.LBB3_65:                               # %cond.end.52
	movl	-324(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB3_48
	jmp	.LBB3_63
.LBB3_33:                               # %sw.bb
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -216(%rbp)
.LBB3_34:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_38 Depth 3
	cmpq	$0, -216(%rbp)
	je	.LBB3_47
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB3_34 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -148(%rbp)
.LBB3_36:                               # %for.cond.57
                                        #   Parent Loop BB3_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_38 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB3_45
# BB#37:                                # %for.body.59
                                        #   in Loop: Header=BB3_36 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -152(%rbp)
.LBB3_38:                               # %for.cond.60
                                        #   Parent Loop BB3_34 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-152(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_43
# BB#39:                                # %for.body.62
                                        #   in Loop: Header=BB3_38 Depth=3
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm3         # xmm3 = mem[0],zero
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-184(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-184(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movl	%ecx, -160(%rbp)
	movl	-160(%rbp), %ecx
	movb	%cl, %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -200(%rbp)
	movb	%dl, (%rax)
	movq	-184(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_41
# BB#40:                                # %if.then.77
                                        #   in Loop: Header=BB3_38 Depth=3
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	(%rax), %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%dl, (%rax)
.LBB3_41:                               # %if.end.80
                                        #   in Loop: Header=BB3_38 Depth=3
	jmp	.LBB3_42
.LBB3_42:                               # %for.inc
                                        #   in Loop: Header=BB3_38 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB3_38
.LBB3_43:                               # %for.end
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	-48(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-112(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#44:                                # %for.inc.85
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB3_36
.LBB3_45:                               # %for.end.87
                                        #   in Loop: Header=BB3_34 Depth=1
	jmp	.LBB3_46
.LBB3_46:                               # %for.inc.88
                                        #   in Loop: Header=BB3_34 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -216(%rbp)
	jmp	.LBB3_34
.LBB3_47:                               # %for.end.90
	jmp	.LBB3_64
.LBB3_48:                               # %sw.bb.91
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -216(%rbp)
.LBB3_49:                               # %for.cond.93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_51 Depth 2
                                        #       Child Loop BB3_53 Depth 3
	cmpq	$0, -216(%rbp)
	je	.LBB3_62
# BB#50:                                # %for.body.96
                                        #   in Loop: Header=BB3_49 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -148(%rbp)
.LBB3_51:                               # %for.cond.99
                                        #   Parent Loop BB3_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_53 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB3_60
# BB#52:                                # %for.body.103
                                        #   in Loop: Header=BB3_51 Depth=2
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -152(%rbp)
.LBB3_53:                               # %for.cond.104
                                        #   Parent Loop BB3_49 Depth=1
                                        #     Parent Loop BB3_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-152(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_58
# BB#54:                                # %for.body.108
                                        #   in Loop: Header=BB3_53 Depth=3
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm3         # xmm3 = mem[0],zero
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movzbl	(%rax), %edx
	imull	$3, %edx, %edx
	movl	%edx, -156(%rbp)
	movl	-156(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm4
	mulsd	%xmm3, %xmm4
	movl	-156(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movl	-156(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %edx
	movl	%edx, -160(%rbp)
	movl	-160(%rbp), %edx
	movb	%dl, %sil
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%sil, (%rax)
	cmpl	$0, -168(%rbp)
	je	.LBB3_56
# BB#55:                                # %if.then.136
                                        #   in Loop: Header=BB3_53 Depth=3
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	(%rax), %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%dl, (%rax)
.LBB3_56:                               # %if.end.139
                                        #   in Loop: Header=BB3_53 Depth=3
	jmp	.LBB3_57
.LBB3_57:                               # %for.inc.140
                                        #   in Loop: Header=BB3_53 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB3_53
.LBB3_58:                               # %for.end.142
                                        #   in Loop: Header=BB3_51 Depth=2
	movl	-48(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movl	-112(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#59:                                # %for.inc.149
                                        #   in Loop: Header=BB3_51 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB3_51
.LBB3_60:                               # %for.end.151
                                        #   in Loop: Header=BB3_49 Depth=1
	jmp	.LBB3_61
.LBB3_61:                               # %for.inc.152
                                        #   in Loop: Header=BB3_49 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -216(%rbp)
	jmp	.LBB3_49
.LBB3_62:                               # %for.end.154
	jmp	.LBB3_64
.LBB3_63:                               # %sw.default
	jmp	.LBB3_64
.LBB3_64:                               # %sw.epilog
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_convert_tiles_grayscale, .Lfunc_end3-gimp_drawable_convert_tiles_grayscale
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_convert_rgb,@object # @__func__.gimp_drawable_convert_rgb
.L__func__.gimp_drawable_convert_rgb:
	.asciz	"gimp_drawable_convert_rgb"
	.size	.L__func__.gimp_drawable_convert_rgb, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"! gimp_drawable_is_rgb (drawable)"
	.size	.L.str.2, 34

	.type	.L__func__.gimp_drawable_convert_grayscale,@object # @__func__.gimp_drawable_convert_grayscale
.L__func__.gimp_drawable_convert_grayscale:
	.asciz	"gimp_drawable_convert_grayscale"
	.size	.L__func__.gimp_drawable_convert_grayscale, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"! gimp_drawable_is_gray (drawable)"
	.size	.L.str.3, 35

	.type	.L__func__.gimp_drawable_convert_tiles_rgb,@object # @__func__.gimp_drawable_convert_tiles_rgb
.L__func__.gimp_drawable_convert_tiles_rgb:
	.asciz	"gimp_drawable_convert_tiles_rgb"
	.size	.L__func__.gimp_drawable_convert_tiles_rgb, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"new_tiles != NULL"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tile_manager_bpp (new_tiles) == (has_alpha ? 4 : 3)"
	.size	.L.str.5, 52

	.type	.L__func__.gimp_drawable_convert_tiles_grayscale,@object # @__func__.gimp_drawable_convert_tiles_grayscale
.L__func__.gimp_drawable_convert_tiles_grayscale:
	.asciz	"gimp_drawable_convert_tiles_grayscale"
	.size	.L__func__.gimp_drawable_convert_tiles_grayscale, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tile_manager_bpp (new_tiles) == (has_alpha ? 2 : 1)"
	.size	.L.str.6, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
