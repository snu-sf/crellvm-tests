	.text
	.file	"imap_main.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movl	query.nreturn_vals, %r14d
	movq	query.return_vals, %r15
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, _drawable
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_get_name
	movq	%rax, _image_name
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_width
	movl	%eax, _image_width
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edi
	callq	gimp_image_height
	movl	%eax, _image_height
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, _map_info+56
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB1_6
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then.20
	movl	$0, -56(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.21
	cmpl	$3, -56(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.23
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_8:                                # %if.end.24
	movl	$21, run.values
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.globl	get_dialog
	.align	16, 0x90
	.type	get_dialog,@function
get_dialog:                             # @get_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	movq	_dlg, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_dialog, .Lfunc_end3-get_dialog
	.cfi_endproc

	.globl	get_mru
	.align	16, 0x90
	.type	get_mru,@function
get_mru:                                # @get_mru
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	cmpq	$0, _mru
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	mru_create
	movq	%rax, _mru
.LBB4_2:                                # %if.end
	movq	_mru, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	get_mru, .Lfunc_end4-get_mru
	.cfi_endproc

	.globl	get_map_info
	.align	16, 0x90
	.type	get_map_info,@function
get_map_info:                           # @get_map_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	movabsq	$_map_info, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_map_info, .Lfunc_end5-get_map_info
	.cfi_endproc

	.globl	get_preferences
	.align	16, 0x90
	.type	get_preferences,@function
get_preferences:                        # @get_preferences
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	movabsq	$_preferences, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_preferences, .Lfunc_end6-get_preferences
	.cfi_endproc

	.globl	get_image_width
	.align	16, 0x90
	.type	get_image_width,@function
get_image_width:                        # @get_image_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	movl	_image_width, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_image_width, .Lfunc_end7-get_image_width
	.cfi_endproc

	.globl	get_image_height
	.align	16, 0x90
	.type	get_image_height,@function
get_image_height:                       # @get_image_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	movl	_image_height, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_image_height, .Lfunc_end8-get_image_height
	.cfi_endproc

	.globl	set_busy_cursor
	.align	16, 0x90
	.type	set_busy_cursor,@function
set_busy_cursor:                        # @set_busy_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$150, %esi
	movq	_preview, %rdi
	callq	preview_set_cursor
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	set_busy_cursor, .Lfunc_end9-set_busy_cursor
	.cfi_endproc

	.globl	remove_busy_cursor
	.align	16, 0x90
	.type	remove_busy_cursor,@function
remove_busy_cursor:                     # @remove_busy_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	movq	_dlg, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	popq	%rbp
	retq
.Lfunc_end10:
	.size	remove_busy_cursor, .Lfunc_end10-remove_busy_cursor
	.cfi_endproc

	.globl	set_zoom
	.align	16, 0x90
	.type	set_zoom,@function
set_zoom:                               # @set_zoom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	set_busy_cursor
	movl	-4(%rbp), %edi
	movl	%edi, _zoom_factor
	movq	_preview, %rdi
	movl	-4(%rbp), %esi
	callq	preview_zoom
	movq	_statusbar, %rdi
	movl	-4(%rbp), %esi
	callq	statusbar_set_zoom
	callq	remove_busy_cursor
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_zoom, .Lfunc_end11-set_zoom
	.cfi_endproc

	.globl	get_real_coord
	.align	16, 0x90
	.type	get_real_coord,@function
get_real_coord:                         # @get_real_coord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	_zoom_factor
	popq	%rbp
	retq
.Lfunc_end12:
	.size	get_real_coord, .Lfunc_end12-get_real_coord
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	draw_line
	.align	16, 0x90
	.type	draw_line,@function
draw_line:                              # @draw_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	_zoom_factor, %ecx
	imull	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movl	_zoom_factor, %ecx
	imull	-16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	_zoom_factor, %ecx
	imull	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movl	_zoom_factor, %ecx
	imull	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	draw_line, .Lfunc_end13-draw_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	draw_rectangle
	.align	16, 0x90
	.type	draw_rectangle,@function
draw_rectangle:                         # @draw_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	_zoom_factor, %ecx
	imull	-16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	cmpl	$0, -12(%rbp)
	movaps	%xmm0, %xmm3
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movsd	%xmm3, -72(%rbp)        # 8-byte Spill
	jne	.LBB14_5
# BB#4:                                 # %entry
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB14_5:                               # %entry
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movl	_zoom_factor, %eax
	imull	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cmpl	$0, -12(%rbp)
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	jne	.LBB14_7
# BB#6:                                 # %entry
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB14_7:                               # %entry
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movl	_zoom_factor, %eax
	imull	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movl	_zoom_factor, %eax
	imull	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_rectangle
	cmpl	$0, -12(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	cairo_fill
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
.LBB14_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	draw_rectangle, .Lfunc_end14-draw_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	draw_circle
	.align	16, 0x90
	.type	draw_circle,@function
draw_circle:                            # @draw_circle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm3, %xmm3
	movsd	.LCPI15_0, %xmm4        # xmm4 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	_zoom_factor, %ecx
	imull	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	_zoom_factor, %ecx
	imull	-16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	_zoom_factor, %ecx
	imull	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	callq	cairo_arc
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	draw_circle, .Lfunc_end15-draw_circle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	draw_polygon
	.align	16, 0x90
	.type	draw_polygon,@function
draw_polygon:                           # @draw_polygon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	_zoom_factor, %ecx
	movq	-32(%rbp), %rax
	imull	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movl	_zoom_factor, %ecx
	movq	-32(%rbp), %rax
	imull	4(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	cairo_close_path
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	draw_polygon, .Lfunc_end16-draw_polygon
	.cfi_endproc

	.globl	set_preview_color
	.align	16, 0x90
	.type	set_preview_color,@function
set_preview_color:                      # @set_preview_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_radio_action_get_current_value
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, _map_info+60
	movl	_zoom_factor, %edi
	callq	set_zoom
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_preview_color, .Lfunc_end17-set_preview_color
	.cfi_endproc

	.globl	preview_redraw
	.align	16, 0x90
	.type	preview_redraw,@function
preview_redraw:                         # @preview_redraw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	movq	_preview, %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_queue_draw
	popq	%rbp
	retq
.Lfunc_end18:
	.size	preview_redraw, .Lfunc_end18-preview_redraw
	.cfi_endproc

	.globl	set_zoom_factor
	.align	16, 0x90
	.type	set_zoom_factor,@function
set_zoom_factor:                        # @set_zoom_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	callq	set_zoom
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	set_zoom_factor, .Lfunc_end19-set_zoom_factor
	.cfi_endproc

	.globl	get_image_name
	.align	16, 0x90
	.type	get_image_name,@function
get_image_name:                         # @get_image_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	movq	_image_name, %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	get_image_name, .Lfunc_end20-get_image_name
	.cfi_endproc

	.globl	get_filename
	.align	16, 0x90
	.type	get_filename,@function
get_filename:                           # @get_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	_filename, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	get_filename, .Lfunc_end21-get_filename
	.cfi_endproc

	.globl	set_func
	.align	16, 0x90
	.type	set_func,@function
set_func:                               # @set_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$3, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	ja	.LBB22_5
# BB#7:                                 # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI22_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB22_1:                               # %sw.bb
	callq	set_arrow_func
	jmp	.LBB22_6
.LBB22_2:                               # %sw.bb.1
	movabsq	$object_on_button_press, %rdi
	movabsq	$get_rectangle_factory, %rax
	movq	%rax, %rsi
	callq	set_object_func
	jmp	.LBB22_6
.LBB22_3:                               # %sw.bb.2
	movabsq	$object_on_button_press, %rdi
	movabsq	$get_circle_factory, %rax
	movq	%rax, %rsi
	callq	set_object_func
	jmp	.LBB22_6
.LBB22_4:                               # %sw.bb.3
	movabsq	$object_on_button_press, %rdi
	movabsq	$get_polygon_factory, %rax
	movq	%rax, %rsi
	callq	set_object_func
	jmp	.LBB22_6
.LBB22_5:                               # %sw.default
	jmp	.LBB22_6
.LBB22_6:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	set_func, .Lfunc_end22-set_func
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_1
	.quad	.LBB22_2
	.quad	.LBB22_3
	.quad	.LBB22_4

	.text
	.align	16, 0x90
	.type	set_arrow_func,@function
set_arrow_func:                         # @set_arrow_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	movabsq	$arrow_on_button_press, %rax
	movq	%rax, _button_press_func
	movl	$132, _cursor
	popq	%rbp
	retq
.Lfunc_end23:
	.size	set_arrow_func, .Lfunc_end23-set_arrow_func
	.cfi_endproc

	.align	16, 0x90
	.type	set_object_func,@function
set_object_func:                        # @set_object_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, _button_press_func
	movq	-16(%rbp), %rsi
	movq	%rsi, _button_press_param
	movl	$34, _cursor
	popq	%rbp
	retq
.Lfunc_end24:
	.size	set_object_func, .Lfunc_end24-set_object_func
	.cfi_endproc

	.globl	add_shape
	.align	16, 0x90
	.type	add_shape,@function
add_shape:                              # @add_shape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_append
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	add_shape, .Lfunc_end25-add_shape
	.cfi_endproc

	.globl	get_shapes
	.align	16, 0x90
	.type	get_shapes,@function
get_shapes:                             # @get_shapes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	get_shapes, .Lfunc_end26-get_shapes
	.cfi_endproc

	.globl	update_shape
	.align	16, 0x90
	.type	update_shape,@function
update_shape:                           # @update_shape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	update_shape, .Lfunc_end27-update_shape
	.cfi_endproc

	.globl	do_edit_selected_shape
	.align	16, 0x90
	.type	do_edit_selected_shape,@function
do_edit_selected_shape:                 # @do_edit_selected_shape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	object_list_edit_selected
	popq	%rbp
	retq
.Lfunc_end28:
	.size	do_edit_selected_shape, .Lfunc_end28-do_edit_selected_shape
	.cfi_endproc

	.globl	do_popup_menu
	.align	16, 0x90
	.type	do_popup_menu,@function
do_popup_menu:                          # @do_popup_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cvttsd2si	24(%rdi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	cvttsd2si	32(%rdi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -16(%rbp)
	movq	_shapes, %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	callq	object_list_find
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	*%rax
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	do_main_popup_menu
.LBB29_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	do_popup_menu, .Lfunc_end29-do_popup_menu
	.cfi_endproc

	.globl	main_set_dimension
	.align	16, 0x90
	.type	main_set_dimension,@function
main_set_dimension:                     # @main_set_dimension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	_statusbar, %rdi
	movl	-4(%rbp), %eax
	cltd
	idivl	_zoom_factor
	movl	-8(%rbp), %esi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	_zoom_factor
	movl	-12(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	statusbar_set_dimension
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	main_set_dimension, .Lfunc_end30-main_set_dimension
	.cfi_endproc

	.globl	main_clear_dimension
	.align	16, 0x90
	.type	main_clear_dimension,@function
main_clear_dimension:                   # @main_clear_dimension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	movq	_statusbar, %rdi
	callq	statusbar_clear_dimension
	popq	%rbp
	retq
.Lfunc_end31:
	.size	main_clear_dimension, .Lfunc_end31-main_clear_dimension
	.cfi_endproc

	.globl	show_url
	.align	16, 0x90
	.type	show_url,@function
show_url:                               # @show_url
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	movl	$1, _show_url
	popq	%rbp
	retq
.Lfunc_end32:
	.size	show_url, .Lfunc_end32-show_url
	.cfi_endproc

	.globl	hide_url
	.align	16, 0x90
	.type	hide_url,@function
hide_url:                               # @hide_url
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	movl	$0, _show_url
	movq	_statusbar, %rdi
	callq	statusbar_clear_status
	popq	%rbp
	retq
.Lfunc_end33:
	.size	hide_url, .Lfunc_end33-hide_url
	.cfi_endproc

	.globl	select_shape
	.align	16, 0x90
	.type	select_shape,@function
select_shape:                           # @select_shape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-40(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	24(%rsi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	32(%rsi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -32(%rbp)
	movq	_shapes, %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	callq	object_list_near_sash
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	move_sash_command_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	command_execute
	jmp	.LBB34_15
.LBB34_2:                               # %if.else
	movq	_shapes, %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	object_list_find
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_13
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB34_8
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB34_6
# BB#5:                                 # %if.then.13
	movq	-24(%rbp), %rdi
	callq	unselect_command_new
	movq	%rax, -56(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.15
	movq	-24(%rbp), %rdi
	callq	select_command_new
	movq	%rax, -56(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_12
.LBB34_8:                               # %if.else.17
	movq	-24(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB34_10
# BB#9:                                 # %if.then.20
	movq	_shapes, %rdi
	movq	-24(%rbp), %rsi
	callq	unselect_all_command_new
	movq	%rax, -56(%rbp)
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.22
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	subcommand_start
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	_shapes, %rdi
	callq	unselect_all_command_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	command_add_subcommand
	movq	-24(%rbp), %rdi
	callq	select_command_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	command_add_subcommand
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	callq	command_set_name
	callq	subcommand_end
.LBB34_11:                              # %if.end.26
	jmp	.LBB34_12
.LBB34_12:                              # %if.end.27
	movq	-56(%rbp), %rdi
	callq	command_execute
	movq	_preview, %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	move_command_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	command_execute
	jmp	.LBB34_14
.LBB34_13:                              # %if.else.29
	movq	-8(%rbp), %rdi
	movq	_shapes, %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	select_region_command_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	command_execute
.LBB34_14:                              # %if.end.31
	jmp	.LBB34_15
.LBB34_15:                              # %if.end.32
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	select_shape, .Lfunc_end34-select_shape
	.cfi_endproc

	.globl	edit_shape
	.align	16, 0x90
	.type	edit_shape,@function
edit_shape:                             # @edit_shape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -8(%rbp)
	movq	_shapes, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	callq	object_list_find
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	object_select
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	object_edit
.LBB35_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	edit_shape, .Lfunc_end35-edit_shape
	.cfi_endproc

	.globl	do_zoom_in
	.align	16, 0x90
	.type	do_zoom_in,@function
do_zoom_in:                             # @do_zoom_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	zoom_in
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	menu_set_zoom_sensitivity
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	do_zoom_in, .Lfunc_end36-do_zoom_in
	.cfi_endproc

	.align	16, 0x90
	.type	zoom_in,@function
zoom_in:                                # @zoom_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	cmpl	$8, _zoom_factor
	jge	.LBB37_2
# BB#1:                                 # %if.then
	movl	_zoom_factor, %eax
	addl	$1, %eax
	movl	%eax, %edi
	callq	set_zoom
	movl	_zoom_factor, %edi
	callq	menu_set_zoom
.LBB37_2:                               # %if.end
	movl	_zoom_factor, %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	zoom_in, .Lfunc_end37-zoom_in
	.cfi_endproc

	.globl	do_zoom_out
	.align	16, 0x90
	.type	do_zoom_out,@function
do_zoom_out:                            # @do_zoom_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	zoom_out
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	menu_set_zoom_sensitivity
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	do_zoom_out, .Lfunc_end38-do_zoom_out
	.cfi_endproc

	.align	16, 0x90
	.type	zoom_out,@function
zoom_out:                               # @zoom_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	cmpl	$1, _zoom_factor
	jle	.LBB39_2
# BB#1:                                 # %if.then
	movl	_zoom_factor, %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	set_zoom
	movl	_zoom_factor, %edi
	callq	menu_set_zoom
.LBB39_2:                               # %if.end
	movl	_zoom_factor, %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	zoom_out, .Lfunc_end39-zoom_out
	.cfi_endproc

	.globl	draw_shapes
	.align	16, 0x90
	.type	draw_shapes,@function
draw_shapes:                            # @draw_shapes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	callq	object_list_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	draw_shapes, .Lfunc_end40-draw_shapes
	.cfi_endproc

	.globl	do_close
	.align	16, 0x90
	.type	do_close,@function
do_close:                               # @do_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	movabsq	$really_close, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	check_if_changed
	popq	%rbp
	retq
.Lfunc_end41:
	.size	do_close, .Lfunc_end41-do_close
	.cfi_endproc

	.align	16, 0x90
	.type	check_if_changed,@function
check_if_changed:                       # @check_if_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	_shapes, %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	do_data_changed_dialog
	jmp	.LBB42_3
.LBB42_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB42_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	check_if_changed, .Lfunc_end42-check_if_changed
	.cfi_endproc

	.align	16, 0x90
	.type	really_close,@function
really_close:                           # @really_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	close_current
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	really_close, .Lfunc_end43-really_close
	.cfi_endproc

	.globl	do_quit
	.align	16, 0x90
	.type	do_quit,@function
do_quit:                                # @do_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	movabsq	$really_quit, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	check_if_changed
	popq	%rbp
	retq
.Lfunc_end44:
	.size	do_quit, .Lfunc_end44-do_quit
	.cfi_endproc

	.align	16, 0x90
	.type	really_quit,@function
really_quit:                            # @really_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_preferences, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	preferences_save
	movl	$1, run_flag
	movq	_dlg, %rdi
	callq	gtk_widget_destroy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	really_quit, .Lfunc_end45-really_quit
	.cfi_endproc

	.globl	do_undo
	.align	16, 0x90
	.type	do_undo,@function
do_undo:                                # @do_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	movq	_selection, %rdi
	callq	selection_freeze
	callq	last_command_undo
	movq	_selection, %rdi
	callq	selection_thaw
	callq	preview_redraw
	popq	%rbp
	retq
.Lfunc_end46:
	.size	do_undo, .Lfunc_end46-do_undo
	.cfi_endproc

	.globl	do_redo
	.align	16, 0x90
	.type	do_redo,@function
do_redo:                                # @do_redo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	movq	_selection, %rdi
	callq	selection_freeze
	callq	last_command_redo
	movq	_selection, %rdi
	callq	selection_thaw
	callq	preview_redraw
	popq	%rbp
	retq
.Lfunc_end47:
	.size	do_redo, .Lfunc_end47-do_redo
	.cfi_endproc

	.globl	save
	.align	16, 0x90
	.type	save,@function
save:                                   # @save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	cmpq	$0, _filename
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	_filename, %rdi
	callq	save_as
	jmp	.LBB48_3
.LBB48_2:                               # %if.else
	callq	do_file_save_as_dialog
.LBB48_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end48:
	.size	save, .Lfunc_end48-save
	.cfi_endproc

	.globl	save_as
	.align	16, 0x90
	.type	save_as,@function
save_as:                                # @save_as
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movabsq	$save_to_file, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	dump_output
	movq	-16(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.1, %rdi
	movq	_statusbar, %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	statusbar_set_status
	movq	-8(%rbp), %rdi
	callq	main_set_title
	movq	_shapes, %rdx
	movl	$0, 8(%rdx)
	jmp	.LBB49_3
.LBB49_2:                               # %if.else
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_file_error_dialog
.LBB49_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	save_as, .Lfunc_end49-save_as
	.cfi_endproc

	.globl	dump_output
	.align	16, 0x90
	.type	dump_output,@function
dump_output:                            # @dump_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, _map_info
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	save_as_ncsa
	jmp	.LBB50_8
.LBB50_2:                               # %if.else
	cmpl	$1, _map_info
	jne	.LBB50_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	save_as_cern
	jmp	.LBB50_7
.LBB50_4:                               # %if.else.3
	cmpl	$2, _map_info
	jne	.LBB50_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	save_as_csim
.LBB50_6:                               # %if.end
	jmp	.LBB50_7
.LBB50_7:                               # %if.end.6
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	dump_output, .Lfunc_end50-dump_output
	.cfi_endproc

	.align	16, 0x90
	.type	save_as_ncsa,@function
save_as_ncsa:                           # @save_as_ncsa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.32, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movb	$0, %al
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movabsq	$.L.str.35, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movabsq	$.L.str.36, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	_map_info+16, %rdx
	movb	$0, %al
	callq	*%rcx
	movabsq	$.L.str.37, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	_map_info+24, %rdx
	movb	$0, %al
	callq	*%rcx
	movabsq	$.L.str.38, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movq	_map_info+40, %rdi
	callq	g_strdup
	movabsq	$.L.str.39, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -24(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB51_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movabsq	$.L.str.40, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB51_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.39, %rsi
	callq	strtok
	movq	%rax, -24(%rbp)
	jmp	.LBB51_1
.LBB51_4:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	_map_info+32, %rdi
	cmpb	$0, (%rdi)
	je	.LBB51_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.41, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	_map_info+32, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
.LBB51_6:                               # %if.end
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	object_list_write_ncsa
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	save_as_ncsa, .Lfunc_end51-save_as_ncsa
	.cfi_endproc

	.align	16, 0x90
	.type	save_as_cern,@function
save_as_cern:                           # @save_as_cern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.43, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.44, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.45, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.46, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	_map_info+16, %rdx
	movb	$0, %al
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.47, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	_map_info+24, %rdx
	movb	$0, %al
	callq	*%rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.48, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rcx
	movq	_map_info+40, %rdi
	callq	g_strdup
	movabsq	$.L.str.39, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strtok
	movq	%rax, -24(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB52_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_cern_comment
	movabsq	$.L.str.49, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movb	$0, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB52_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.39, %rsi
	callq	strtok
	movq	%rax, -24(%rbp)
	jmp	.LBB52_1
.LBB52_4:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	_map_info+32, %rdi
	cmpb	$0, (%rdi)
	je	.LBB52_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.41, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	_map_info+32, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
.LBB52_6:                               # %if.end
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	object_list_write_cern
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	save_as_cern, .Lfunc_end52-save_as_cern
	.cfi_endproc

	.align	16, 0x90
	.type	save_as_csim,@function
save_as_csim:                           # @save_as_csim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.51, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	_map_info+8, %rdx
	movl	_image_width, %ecx
	movl	_image_height, %r8d
	movq	_map_info+16, %r9
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movb	$0, %al
	movq	-40(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	movabsq	$.L.str.52, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	_map_info+16, %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movb	$0, %al
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	*%r9
	movabsq	$.L.str.53, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rdx
	movabsq	$.L.str.54, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rdx
	movabsq	$.L.str.55, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rdx
	movabsq	$.L.str.56, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	*%rdx
	movabsq	$.L.str.57, %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	_map_info+24, %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movb	$0, %al
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	*%r9
	movq	_map_info+40, %rdi
	callq	g_strdup
	movabsq	$.L.str.39, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strtok
	movq	%rax, -24(%rbp)
.LBB53_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB53_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	movabsq	$.L.str.58, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB53_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.39, %rsi
	callq	strtok
	movq	%rax, -24(%rbp)
	jmp	.LBB53_1
.LBB53_4:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	_shapes, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	object_list_write_csim
	movq	_map_info+32, %rdx
	cmpb	$0, (%rdx)
	je	.LBB53_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.59, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	_map_info+32, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
.LBB53_6:                               # %if.end
	movabsq	$.L.str.60, %rsi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	$0, %al
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	save_as_csim, .Lfunc_end53-save_as_csim
	.cfi_endproc

	.align	16, 0x90
	.type	save_to_file,@function
save_to_file:                           # @save_to_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB54_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB54_2:                               # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	vfprintf
	movl	%eax, -404(%rbp)        # 4-byte Spill
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end54:
	.size	save_to_file, .Lfunc_end54-save_to_file
	.cfi_endproc

	.align	16, 0x90
	.type	main_set_title,@function
main_set_title:                         # @main_set_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$_filename, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	cmpq	$0, -8(%rbp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB55_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB55_3
.LBB55_2:                               # %cond.false
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB55_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.62, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB55_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB55_5:                               # %if.end
	movq	_dlg, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-16(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	main_set_title, .Lfunc_end55-main_set_title
	.cfi_endproc

	.globl	load
	.align	16, 0x90
	.type	load,@function
load:                                   # @load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$load.tmp_filename, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movabsq	$really_load, %rdi
	movq	load.tmp_filename, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	check_if_changed
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	load, .Lfunc_end56-load
	.cfi_endproc

	.align	16, 0x90
	.type	really_load,@function
really_load:                            # @really_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	close_current
	movq	_selection, %rdi
	callq	selection_freeze
	movl	_image_width, %eax
	movl	%eax, _map_info+48
	movl	_image_height, %eax
	movl	%eax, _map_info+52
	movq	-16(%rbp), %rdi
	callq	load_csim
	cmpl	$0, %eax
	je	.LBB57_5
# BB#1:                                 # %if.then
	movl	$2, _map_info
	movl	_image_width, %eax
	cmpl	_map_info+48, %eax
	jne	.LBB57_3
# BB#2:                                 # %lor.lhs.false
	movl	_image_height, %eax
	cmpl	_map_info+52, %eax
	je	.LBB57_4
.LBB57_3:                               # %if.then.2
	callq	do_image_size_changed_dialog
.LBB57_4:                               # %if.end
	jmp	.LBB57_12
.LBB57_5:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	load_ncsa
	cmpl	$0, %eax
	je	.LBB57_7
# BB#6:                                 # %if.then.5
	movl	$0, _map_info
	jmp	.LBB57_11
.LBB57_7:                               # %if.else.6
	movq	-16(%rbp), %rdi
	callq	load_cern
	cmpl	$0, %eax
	je	.LBB57_9
# BB#8:                                 # %if.then.9
	movl	$1, _map_info
	jmp	.LBB57_10
.LBB57_9:                               # %if.else.10
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_file_error_dialog
	movq	_selection, %rdi
	callq	selection_thaw
	callq	close_current
	jmp	.LBB57_13
.LBB57_10:                              # %if.end.12
	jmp	.LBB57_11
.LBB57_11:                              # %if.end.13
	jmp	.LBB57_12
.LBB57_12:                              # %if.end.14
	movq	_mru, %rdi
	movq	-16(%rbp), %rsi
	callq	mru_set_first
	movq	_mru, %rdi
	callq	menu_build_mru_items
	movq	_selection, %rdi
	callq	selection_thaw
	movq	-16(%rbp), %rdi
	callq	main_set_title
	movq	_shapes, %rsi
	movl	$0, 8(%rsi)
	callq	preview_redraw
.LBB57_13:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	really_load, .Lfunc_end57-really_load
	.cfi_endproc

	.globl	toggle_area_list
	.align	16, 0x90
	.type	toggle_area_list,@function
toggle_area_list:                       # @toggle_area_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	movq	_selection, %rdi
	callq	selection_toggle_visibility
	popq	%rbp
	retq
.Lfunc_end58:
	.size	toggle_area_list, .Lfunc_end58-toggle_area_list
	.cfi_endproc

	.globl	imap_help
	.align	16, 0x90
	.type	imap_help,@function
imap_help:                              # @imap_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.3, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_standard_help_func
	popq	%rbp
	retq
.Lfunc_end59:
	.size	imap_help, .Lfunc_end59-imap_help
	.cfi_endproc

	.globl	do_cut
	.align	16, 0x90
	.type	do_cut,@function
do_cut:                                 # @do_cut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	cut_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end60:
	.size	do_cut, .Lfunc_end60-do_cut
	.cfi_endproc

	.globl	do_copy
	.align	16, 0x90
	.type	do_copy,@function
do_copy:                                # @do_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	copy_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end61:
	.size	do_copy, .Lfunc_end61-do_copy
	.cfi_endproc

	.globl	do_paste
	.align	16, 0x90
	.type	do_paste,@function
do_paste:                               # @do_paste
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	paste_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end62:
	.size	do_paste, .Lfunc_end62-do_paste
	.cfi_endproc

	.globl	do_select_all
	.align	16, 0x90
	.type	do_select_all,@function
do_select_all:                          # @do_select_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	select_all_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end63:
	.size	do_select_all, .Lfunc_end63-do_select_all
	.cfi_endproc

	.globl	do_deselect_all
	.align	16, 0x90
	.type	do_deselect_all,@function
do_deselect_all:                        # @do_deselect_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	_shapes, %rdi
	callq	unselect_all_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end64:
	.size	do_deselect_all, .Lfunc_end64-do_deselect_all
	.cfi_endproc

	.globl	do_clear
	.align	16, 0x90
	.type	do_clear,@function
do_clear:                               # @do_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	clear_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end65:
	.size	do_clear, .Lfunc_end65-do_clear
	.cfi_endproc

	.globl	do_move_up
	.align	16, 0x90
	.type	do_move_up,@function
do_move_up:                             # @do_move_up
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	do_move_up, .Lfunc_end66-do_move_up
	.cfi_endproc

	.globl	do_move_down
	.align	16, 0x90
	.type	do_move_down,@function
do_move_down:                           # @do_move_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	do_move_down, .Lfunc_end67-do_move_down
	.cfi_endproc

	.globl	do_move_to_front
	.align	16, 0x90
	.type	do_move_to_front,@function
do_move_to_front:                       # @do_move_to_front
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	move_to_front_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end68:
	.size	do_move_to_front, .Lfunc_end68-do_move_to_front
	.cfi_endproc

	.globl	do_send_to_back
	.align	16, 0x90
	.type	do_send_to_back,@function
do_send_to_back:                        # @do_send_to_back
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	send_to_back_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end69:
	.size	do_send_to_back, .Lfunc_end69-do_send_to_back
	.cfi_endproc

	.globl	do_use_gimp_guides_dialog
	.align	16, 0x90
	.type	do_use_gimp_guides_dialog,@function
do_use_gimp_guides_dialog:              # @do_use_gimp_guides_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	movq	_drawable, %rsi
	callq	gimp_guides_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end70:
	.size	do_use_gimp_guides_dialog, .Lfunc_end70-do_use_gimp_guides_dialog
	.cfi_endproc

	.globl	do_create_guides_dialog
	.align	16, 0x90
	.type	do_create_guides_dialog,@function
do_create_guides_dialog:                # @do_create_guides_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	guides_command_new
	movq	%rax, %rdi
	callq	command_execute
	popq	%rbp
	retq
.Lfunc_end71:
	.size	do_create_guides_dialog, .Lfunc_end71-do_create_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	dialog,@function
dialog:                                 # @dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movabsq	$.L.str.19, %rax
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	callq	set_arrow_func
	callq	make_object_list
	xorl	%edi, %edi
	movq	%rax, _shapes
	callq	gtk_window_new
	movq	%rax, -16(%rbp)
	movq	%rax, _dlg
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	main_set_title
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	callq	gimp_help_connect
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.20, %rsi
	movabsq	$close_callback, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$key_press_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$key_release_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	init_stock_icons
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_menu
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	make_toolbar
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	make_tools
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rdi
	callq	make_preview
	movabsq	$.L.str.24, %rsi
	movabsq	$preview_move, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	xorl	%r9d, %r9d
	movq	%rax, _preview
	movq	_preview, %rax
	movq	16(%rax), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movq	%r10, %r8
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$preview_enter, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	_preview, %rdi
	movq	16(%rdi), %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$preview_leave, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	_preview, %rdi
	movq	16(%rdi), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	_preview, %rdi
	movq	16(%rdi), %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	_preview, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$geometry_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	callq	object_list_add_geometry_cb
	movabsq	$data_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	object_list_add_update_cb
	movabsq	$data_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	object_list_add_add_cb
	movabsq	$data_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	object_list_add_remove_cb
	movabsq	$data_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	object_list_add_move_cb
	movabsq	$data_selected, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	_shapes, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	object_list_add_select_cb
	movq	_shapes, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	make_selection
	movabsq	$factory_move_down, %rdx
	movabsq	$factory_move_up, %rsi
	movq	%rax, _selection
	movq	_selection, %rax
	movq	%rsi, 72(%rax)
	movq	_selection, %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	_selection, %rdx
	movq	16(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_statusbar
	movl	$1, %esi
	movq	%rax, _statusbar
	movq	_statusbar, %rdi
	callq	statusbar_set_zoom
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	mru_create
	movq	%rax, _mru
	callq	init_preferences
	callq	clear_map_info
	movq	_mru, %rax
	cmpq	$0, (%rax)
	je	.LBB72_2
# BB#1:                                 # %if.then
	movq	_mru, %rdi
	callq	menu_build_mru_items
.LBB72_2:                               # %if.end
	callq	gtk_main
	movl	run_flag, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end72:
	.size	dialog, .Lfunc_end72-dialog
	.cfi_endproc

	.align	16, 0x90
	.type	close_callback,@function
close_callback:                         # @close_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	do_quit
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	close_callback, .Lfunc_end73-close_callback
	.cfi_endproc

	.align	16, 0x90
	.type	key_press_cb,@function
key_press_cb:                           # @key_press_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %eax
	andl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %eax
	andl	$4, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, _timeout
	je	.LBB74_2
# BB#1:                                 # %if.then
	movl	_timeout, %edi
	callq	g_source_remove
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB74_2:                               # %if.end
	movl	$0, _timeout(%rip)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65289, %edx            # imm = 0xFF09
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	je	.LBB74_19
	jmp	.LBB74_26
.LBB74_26:                              # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$65361, %eax            # imm = 0xFF51
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB74_3
	jmp	.LBB74_27
.LBB74_27:                              # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$65362, %eax            # imm = 0xFF52
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB74_11
	jmp	.LBB74_28
.LBB74_28:                              # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$65363, %eax            # imm = 0xFF53
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB74_7
	jmp	.LBB74_29
.LBB74_29:                              # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$65364, %eax            # imm = 0xFF54
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB74_15
	jmp	.LBB74_23
.LBB74_3:                               # %sw.bb
	cmpl	$0, -28(%rbp)
	je	.LBB74_5
# BB#4:                                 # %if.then.4
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorl	%esi, %esi
	movl	-24(%rbp), %edx
	callq	move_sash_selected_objects
	jmp	.LBB74_6
.LBB74_5:                               # %if.else
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorl	%esi, %esi
	movl	-24(%rbp), %edx
	callq	move_selected_objects
.LBB74_6:                               # %if.end.5
	movl	$1, -20(%rbp)
	jmp	.LBB74_23
.LBB74_7:                               # %sw.bb.6
	cmpl	$0, -28(%rbp)
	je	.LBB74_9
# BB#8:                                 # %if.then.8
	movl	$1, %edi
	xorl	%esi, %esi
	movl	-24(%rbp), %edx
	callq	move_sash_selected_objects
	jmp	.LBB74_10
.LBB74_9:                               # %if.else.9
	movl	$1, %edi
	xorl	%esi, %esi
	movl	-24(%rbp), %edx
	callq	move_selected_objects
.LBB74_10:                              # %if.end.10
	movl	$1, -20(%rbp)
	jmp	.LBB74_23
.LBB74_11:                              # %sw.bb.11
	cmpl	$0, -28(%rbp)
	je	.LBB74_13
# BB#12:                                # %if.then.13
	xorl	%edi, %edi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-24(%rbp), %edx
	callq	move_sash_selected_objects
	jmp	.LBB74_14
.LBB74_13:                              # %if.else.14
	xorl	%edi, %edi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-24(%rbp), %edx
	callq	move_selected_objects
.LBB74_14:                              # %if.end.15
	movl	$1, -20(%rbp)
	jmp	.LBB74_23
.LBB74_15:                              # %sw.bb.16
	cmpl	$0, -28(%rbp)
	je	.LBB74_17
# BB#16:                                # %if.then.18
	xorl	%edi, %edi
	movl	$1, %esi
	movl	-24(%rbp), %edx
	callq	move_sash_selected_objects
	jmp	.LBB74_18
.LBB74_17:                              # %if.else.19
	xorl	%edi, %edi
	movl	$1, %esi
	movl	-24(%rbp), %edx
	callq	move_selected_objects
.LBB74_18:                              # %if.end.20
	movl	$1, -20(%rbp)
	jmp	.LBB74_23
.LBB74_19:                              # %sw.bb.21
	cmpl	$0, -24(%rbp)
	je	.LBB74_21
# BB#20:                                # %if.then.23
	movq	_shapes, %rdi
	callq	select_prev_command_new
	movq	%rax, -40(%rbp)
	jmp	.LBB74_22
.LBB74_21:                              # %if.else.25
	movq	_shapes, %rdi
	callq	select_next_command_new
	movq	%rax, -40(%rbp)
.LBB74_22:                              # %if.end.27
	movq	-40(%rbp), %rdi
	callq	command_execute
	movl	$1, -20(%rbp)
.LBB74_23:                              # %sw.epilog
	cmpl	$0, -20(%rbp)
	je	.LBB74_25
# BB#24:                                # %if.then.29
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
.LBB74_25:                              # %if.end.30
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	key_press_cb, .Lfunc_end74-key_press_cb
	.cfi_endproc

	.align	16, 0x90
	.type	key_release_cb,@function
key_release_cb:                         # @key_release_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$250, %eax
	movabsq	$key_timeout_cb, %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	28(%rsi), %r8d
	movl	%r8d, _keyval
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	g_timeout_add
	xorl	%edi, %edi
	movl	%eax, _timeout
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	key_release_cb, .Lfunc_end75-key_release_cb
	.cfi_endproc

	.align	16, 0x90
	.type	preview_move,@function
preview_move:                           # @preview_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	24(%rsi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	cvttsd2si	32(%rsi), %eax
	cltd
	idivl	_zoom_factor
	movl	%eax, -24(%rbp)
	movq	_shapes, %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	callq	object_list_find
	movq	%rax, -32(%rbp)
	movq	_statusbar, %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	statusbar_set_xy
	movq	-32(%rbp), %rax
	cmpq	preview_move.prev_obj, %rax
	je	.LBB76_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, preview_move.prev_obj
	cmpq	$0, -32(%rbp)
	je	.LBB76_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, _show_url
	je	.LBB76_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.28, %rdi
	movq	_statusbar, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	statusbar_set_status
	jmp	.LBB76_5
.LBB76_4:                               # %if.else
	movq	_statusbar, %rdi
	callq	statusbar_clear_status
.LBB76_5:                               # %if.end
	jmp	.LBB76_6
.LBB76_6:                               # %if.end.9
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	preview_move, .Lfunc_end76-preview_move
	.cfi_endproc

	.align	16, 0x90
	.type	preview_enter,@function
preview_enter:                          # @preview_enter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	_preview, %rdi
	movl	_cursor, %esi
	callq	preview_set_cursor
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	preview_enter, .Lfunc_end77-preview_enter
	.cfi_endproc

	.align	16, 0x90
	.type	preview_leave,@function
preview_leave:                          # @preview_leave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	_dlg, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	_statusbar, %rdi
	callq	statusbar_clear_xy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	preview_leave, .Lfunc_end78-preview_leave
	.cfi_endproc

	.align	16, 0x90
	.type	button_press,@function
button_press:                           # @button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, _button_press_func
	je	.LBB79_2
# BB#1:                                 # %if.then
	movq	_button_press_func, %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	_button_press_param, %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_3
.LBB79_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB79_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	button_press, .Lfunc_end79-button_press
	.cfi_endproc

	.align	16, 0x90
	.type	geometry_changed,@function
geometry_changed:                       # @geometry_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	preview_redraw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	geometry_changed, .Lfunc_end80-geometry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	data_changed,@function
data_changed:                           # @data_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	preview_redraw
	callq	set_all_sensitivities
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	data_changed, .Lfunc_end81-data_changed
	.cfi_endproc

	.align	16, 0x90
	.type	data_selected,@function
data_selected:                          # @data_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	set_all_sensitivities
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	data_selected, .Lfunc_end82-data_selected
	.cfi_endproc

	.align	16, 0x90
	.type	factory_move_up,@function
factory_move_up:                        # @factory_move_up
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	move_up_command_new
	popq	%rbp
	retq
.Lfunc_end83:
	.size	factory_move_up, .Lfunc_end83-factory_move_up
	.cfi_endproc

	.align	16, 0x90
	.type	factory_move_down,@function
factory_move_down:                      # @factory_move_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	movq	_shapes, %rdi
	callq	move_down_command_new
	popq	%rbp
	retq
.Lfunc_end84:
	.size	factory_move_down, .Lfunc_end84-factory_move_down
	.cfi_endproc

	.align	16, 0x90
	.type	init_preferences,@function
init_preferences:                       # @init_preferences
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	_dlg, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_drawable_get_colormap
	movabsq	$_preferences, %rdi
	movq	%rdi, %rcx
	addq	$48, %rcx
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	movw	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 6(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 18(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 20(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 28(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 30(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 42(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 44(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 64(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 66(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 68(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 52(%rax)
	movq	-16(%rbp), %rax
	movw	$-1, 54(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 56(%rax)
	callq	preferences_load
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gdk_colormap_alloc_color
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$12, %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	gdk_colormap_alloc_color
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gdk_colormap_alloc_color
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$36, %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	gdk_colormap_alloc_color
	movq	_mru, %rdi
	movl	_preferences+44, %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	mru_set_size
	movl	_preferences+40, %edi
	callq	command_list_set_undo_level
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	init_preferences, .Lfunc_end85-init_preferences
	.cfi_endproc

	.align	16, 0x90
	.type	clear_map_info,@function
clear_map_info:                         # @clear_map_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	callq	g_get_real_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB86_2
# BB#1:                                 # %if.then
	callq	g_get_user_name
	movq	%rax, -8(%rbp)
.LBB86_2:                               # %if.end
	movabsq	$_map_info, %rax
	addq	$8, %rax
	movq	_image_name, %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movabsq	$_map_info, %rsi
	addq	$16, %rsi
	movabsq	$.L.str.29, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movabsq	$_map_info, %rsi
	addq	$24, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movabsq	$_map_info, %rsi
	addq	$32, %rsi
	movabsq	$.L.str.11, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movabsq	$_map_info, %rsi
	addq	$40, %rsi
	movabsq	$.L.str.11, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_strreplace
	movl	_preferences, %ecx
	movl	%ecx, _map_info
	movl	$0, _map_info+60
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	clear_map_info, .Lfunc_end86-clear_map_info
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash_selected_objects,@function
move_sash_selected_objects:             # @move_sash_selected_objects
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB87_2
# BB#1:                                 # %if.then
	imull	$5, -4(%rbp), %eax
	movl	%eax, -4(%rbp)
	imull	$5, -8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB87_2:                               # %if.end
	movq	_shapes, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	object_list_move_sash_selected
	callq	preview_redraw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	move_sash_selected_objects, .Lfunc_end87-move_sash_selected_objects
	.cfi_endproc

	.align	16, 0x90
	.type	move_selected_objects,@function
move_selected_objects:                  # @move_selected_objects
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB88_2
# BB#1:                                 # %if.then
	imull	$5, -4(%rbp), %eax
	movl	%eax, -4(%rbp)
	imull	$5, -8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB88_2:                               # %if.end
	movl	-4(%rbp), %eax
	addl	_dx, %eax
	movl	%eax, _dx
	movl	-8(%rbp), %eax
	addl	_dy, %eax
	movl	%eax, _dy
	movq	_shapes, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	object_list_move_selected
	callq	preview_redraw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	move_selected_objects, .Lfunc_end88-move_selected_objects
	.cfi_endproc

	.align	16, 0x90
	.type	key_timeout_cb,@function
key_timeout_cb:                         # @key_timeout_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	_keyval(%rip), %eax
	addl	$-65361, %eax           # imm = 0xFFFFFFFFFFFF00AF
	subl	$3, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	ja	.LBB89_2
	jmp	.LBB89_1
.LBB89_1:                               # %sw.bb
	movq	_shapes, %rdi
	movl	_dx, %esi
	movl	_dy, %edx
	callq	move_selected_command_new
	movq	%rax, %rdi
	callq	command_list_add
	movl	$0, _dy
	movl	$0, _dx
.LBB89_2:                               # %sw.epilog
	callq	preview_redraw
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	key_timeout_cb, .Lfunc_end89-key_timeout_cb
	.cfi_endproc

	.align	16, 0x90
	.type	set_all_sensitivities,@function
set_all_sensitivities:                  # @set_all_sensitivities
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_shapes, %rdi
	callq	object_list_nr_selected
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	menu_shapes_selected
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	set_all_sensitivities, .Lfunc_end90-set_all_sensitivities
	.cfi_endproc

	.align	16, 0x90
	.type	arrow_on_button_press,@function
arrow_on_button_press:                  # @arrow_on_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB91_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	do_popup_menu
	jmp	.LBB91_8
.LBB91_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB91_7
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB91_5
# BB#4:                                 # %if.then.3
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	callq	edit_shape
	jmp	.LBB91_6
.LBB91_5:                               # %if.else.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	select_shape
.LBB91_6:                               # %if.end
	jmp	.LBB91_7
.LBB91_7:                               # %if.end.6
	jmp	.LBB91_8
.LBB91_8:                               # %if.end.7
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	arrow_on_button_press, .Lfunc_end91-arrow_on_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	do_data_changed_dialog,@function
do_data_changed_dialog:                 # @do_data_changed_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.30, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movl	$4, %edx
	movl	%ecx, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_message_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_message_dialog_format_secondary_text
	movq	-24(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-8, %eax
	jne	.LBB92_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB92_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	do_data_changed_dialog, .Lfunc_end92-do_data_changed_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	close_current,@function
close_current:                          # @close_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	movq	_selection, %rdi
	callq	selection_freeze
	movq	_shapes, %rdi
	callq	object_list_remove_all
	movq	_selection, %rdi
	callq	selection_thaw
	callq	clear_map_info
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	main_set_title
	callq	set_all_sensitivities
	callq	preview_redraw
	movq	_shapes, %rdi
	movl	$0, 8(%rdi)
	callq	command_list_remove_all
	popq	%rbp
	retq
.Lfunc_end93:
	.size	close_current, .Lfunc_end93-close_current
	.cfi_endproc

	.align	16, 0x90
	.type	write_cern_comment,@function
write_cern_comment:                     # @write_cern_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.50, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movb	$0, %al
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	write_cern_comment, .Lfunc_end94-write_cern_comment
	.cfi_endproc

	.align	16, 0x90
	.type	do_image_size_changed_dialog,@function
do_image_size_changed_dialog:           # @do_image_size_changed_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movabsq	$.L.str.66, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movl	$4, %edx
	movabsq	$.L.str.64, %r8
	movl	%ecx, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movq	-24(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gtk_message_dialog_new_with_markup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-8, %eax
	jne	.LBB95_2
# BB#1:                                 # %if.then
	imull	$100, _image_width, %eax
	cltd
	idivl	_map_info+48
	movl	%eax, -12(%rbp)
	imull	$100, _image_height, %eax
	cltd
	idivl	_map_info+52
	movl	%eax, -16(%rbp)
	movq	_shapes, %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	callq	object_list_resize
.LBB95_2:                               # %if.end
	callq	preview_redraw
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	do_image_size_changed_dialog, .Lfunc_end95-do_image_size_changed_dialog
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	_dlg,@object            # @_dlg
	.local	_dlg
	.comm	_dlg,8,8
	.type	_mru,@object            # @_mru
	.local	_mru
	.comm	_mru,8,8
	.type	_map_info,@object       # @_map_info
	.local	_map_info
	.comm	_map_info,64,8
	.type	_preferences,@object    # @_preferences
	.data
	.align	8
_preferences:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	4621819117588971520     # double 10
	.long	4                       # 0x4
	.long	0                       # 0x0
	.zero	72
	.size	_preferences, 120

	.type	_image_width,@object    # @_image_width
	.local	_image_width
	.comm	_image_width,4,4
	.type	_image_height,@object   # @_image_height
	.local	_image_height
	.comm	_image_height,4,4
	.type	_preview,@object        # @_preview
	.local	_preview
	.comm	_preview,8,8
	.type	_zoom_factor,@object    # @_zoom_factor
	.align	4
_zoom_factor:
	.long	1                       # 0x1
	.size	_zoom_factor, 4

	.type	_statusbar,@object      # @_statusbar
	.local	_statusbar
	.comm	_statusbar,8,8
	.type	_image_name,@object     # @_image_name
	.local	_image_name
	.comm	_image_name,8,8
	.type	_filename,@object       # @_filename
	.local	_filename
	.comm	_filename,8,8
	.type	_shapes,@object         # @_shapes
	.local	_shapes
	.comm	_shapes,8,8
	.type	_show_url,@object       # @_show_url
	.align	4
_show_url:
	.long	1                       # 0x1
	.size	_show_url, 4

	.type	_selection,@object      # @_selection
	.local	_selection
	.comm	_selection,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"w"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"File \"%s\" saved."
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Couldn't save file:"
	.size	.L.str.2, 20

	.type	load.tmp_filename,@object # @load.tmp_filename
	.local	load.tmp_filename
	.comm	load.tmp_filename,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-imagemap"
	.size	.L.str.3, 17

	.type	_drawable,@object       # @_drawable
	.local	_drawable
	.comm	_drawable,8,8
	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"run-mode"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.5, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Input image (unused)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Input drawable"
	.size	.L.str.9, 15

	.type	query.return_vals,@object # @query.return_vals
	.local	query.return_vals
	.comm	query.return_vals,8,8
	.type	query.nreturn_vals,@object # @query.nreturn_vals
	.local	query.nreturn_vals
	.comm	query.nreturn_vals,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Create a clickable imagemap"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Maurits Rijk"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1998-2005"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Image Map..."
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Filters/Web"
	.size	.L.str.16, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"imagemap"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"delete-event"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"key-press-event"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"key-release-event"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"destroy"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"motion-notify-event"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"enter-notify-event"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"leave-notify-event"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"button-press-event"
	.size	.L.str.27, 19

	.type	run_flag,@object        # @run_flag
	.local	run_flag
	.comm	run_flag,4,4
	.type	_timeout,@object        # @_timeout
	.local	_timeout
	.comm	_timeout,4,4
	.type	_dx,@object             # @_dx
	.local	_dx
	.comm	_dx,4,4
	.type	_dy,@object             # @_dy
	.local	_dy
	.comm	_dy,4,4
	.type	_keyval,@object         # @_keyval
	.local	_keyval
	.comm	_keyval,4,4
	.type	preview_move.prev_obj,@object # @preview_move.prev_obj
	.local	preview_move.prev_obj
	.comm	preview_move.prev_obj,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"URL: %s"
	.size	.L.str.28, 8

	.type	_cursor,@object         # @_cursor
	.data
	.align	4
_cursor:
	.long	132                     # 0x84
	.size	_cursor, 4

	.type	_button_press_func,@object # @_button_press_func
	.local	_button_press_func
	.comm	_button_press_func,8,8
	.type	_button_press_param,@object # @_button_press_param
	.local	_button_press_param
	.comm	_button_press_param,8,8
	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"map"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Some data has been changed!"
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Do you really want to discard your changes?"
	.size	.L.str.31, 44

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"#$-:Image map file created by GIMP Image Map plug-in\n"
	.size	.L.str.32, 54

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"#$-:GIMP Image Map plug-in by Maurits Rijk\n"
	.size	.L.str.33, 44

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"#$-:Please do not edit lines starting with \"#$\"\n"
	.size	.L.str.34, 49

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"#$VERSION:2.3\n"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"#$TITLE:%s\n"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"#$AUTHOR:%s\n"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"#$FORMAT:ncsa\n"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\n"
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"#$DESCRIPTION:%s\n"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"default %s\n"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"-:Image map file created by GIMP Image Map plug-in\n"
	.size	.L.str.42, 52

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"-:GIMP Image Map plug-in by Maurits Rijk\n"
	.size	.L.str.43, 42

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"-:Please do not edit lines starting with \"#$\"\n"
	.size	.L.str.44, 47

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"VERSION:2.3\n"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"TITLE:%s\n"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"AUTHOR:%s\n"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"FORMAT:cern\n"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"DESCRIPTION:%s\n"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"rect (4096,4096) (4096,4096) imap:#$"
	.size	.L.str.50, 37

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"<img src=\"%s\" width=\"%d\" height=\"%d\" border=\"0\" usemap=\"#%s\" />\n\n"
	.size	.L.str.51, 66

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"<map name=\"%s\">\n"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"<!-- #$-:Image map file created by GIMP Image Map plug-in -->\n"
	.size	.L.str.53, 63

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"<!-- #$-:GIMP Image Map plug-in by Maurits Rijk -->\n"
	.size	.L.str.54, 53

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"<!-- #$-:Please do not edit lines starting with \"#$\" -->\n"
	.size	.L.str.55, 58

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"<!-- #$VERSION:2.3 -->\n"
	.size	.L.str.56, 24

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<!-- #$AUTHOR:%s -->\n"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"<!-- #$DESCRIPTION:%s -->\n"
	.size	.L.str.58, 27

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"<area shape=\"default\" href=\"%s\" />\n"
	.size	.L.str.59, 36

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"</map>\n"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<Untitled>"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%s - Image Map"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Couldn't read file:"
	.size	.L.str.63, 20

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"<span weight=\"bold\" size=\"larger\">%s</span>\n\n%s"
	.size	.L.str.64, 48

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Image size has changed."
	.size	.L.str.65, 24

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Resize area's?"
	.size	.L.str.66, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
