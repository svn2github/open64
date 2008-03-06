	.file	"et-forest.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	splay, @function
splay:
.LFB17:
	.file 1 "../../../kgccfe/gnu/et-forest.c"
	.loc 1 107 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$100, %esp
.LCFI2:
	jmp	.L61
.L2:
.L61:
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 115 0
	cmpl	$0, -88(%ebp)
	jne	.L3
	.loc 1 116 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L5
.L3:
	.loc 1 118 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 120 0
	cmpl	$0, -84(%ebp)
	je	.L6
	.loc 1 125 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L8
	.loc 1 127 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L10
.LBB2:
	.loc 1 132 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 134 0
	movl	-88(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 135 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 137 0
	movl	-84(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 138 0
	movl	-84(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 139 0
	cmpl	$0, -76(%ebp)
	je	.L12
	.loc 1 140 0
	movl	-76(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
.L12:
	.loc 1 141 0
	movl	-88(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 142 0
	movl	-88(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 143 0
	cmpl	$0, -80(%ebp)
	je	.L14
	.loc 1 144 0
	movl	-80(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L14:
	.loc 1 145 0
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 146 0
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	addl	-68(%ebp), %eax
	leal	1(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 147 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 148 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	addl	-72(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 150 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 151 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 152 0
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 154 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L18
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2
.L18:
	.loc 1 159 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L2
.L10:
.LBE2:
.LBB3:
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 173 0
	movl	-84(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 174 0
	movl	-84(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 175 0
	cmpl	$0, -64(%ebp)
	je	.L21
	.loc 1 176 0
	movl	-64(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
.L21:
	.loc 1 177 0
	movl	-88(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 178 0
	movl	-88(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 179 0
	cmpl	$0, -60(%ebp)
	je	.L23
	.loc 1 180 0
	movl	-60(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L23:
	.loc 1 181 0
	movl	8(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 182 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	addl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 183 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 184 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	addl	-52(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 186 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 187 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 188 0
	movl	-84(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 190 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L26
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2
.L26:
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L2
.L8:
.LBE3:
	.loc 1 202 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L29
.LBB4:
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 208 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 212 0
	movl	-88(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 213 0
	movl	-88(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 214 0
	cmpl	$0, -48(%ebp)
	je	.L31
	.loc 1 215 0
	movl	-48(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L31:
	.loc 1 216 0
	movl	-84(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 217 0
	movl	-84(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 218 0
	cmpl	$0, -44(%ebp)
	je	.L33
	.loc 1 219 0
	movl	-44(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
.L33:
	.loc 1 220 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 221 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	addl	-40(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 222 0
	movl	8(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 223 0
	movl	-84(%ebp), %eax
	movl	16(%eax), %eax
	addl	-36(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 225 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 226 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 227 0
	movl	-84(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L37
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2
.L37:
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L2
.L29:
.LBE4:
.LBB5:
	.loc 1 243 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 245 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 246 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 248 0
	movl	-84(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 249 0
	movl	-84(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 250 0
	cmpl	$0, -28(%ebp)
	je	.L39
	.loc 1 251 0
	movl	-28(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
.L39:
	.loc 1 252 0
	movl	-88(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 253 0
	movl	-88(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 254 0
	cmpl	$0, -32(%ebp)
	je	.L41
	.loc 1 255 0
	movl	-32(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L41:
	.loc 1 256 0
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 257 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	addl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 258 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 259 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	addl	-24(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 261 0
	movl	-84(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 262 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 263 0
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 267 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-84(%ebp), %eax
	jne	.L44
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L2
.L44:
	.loc 1 270 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 275 0
	jmp	.L2
.L6:
.LBE5:
	.loc 1 280 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L46
.LBB6:
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 288 0
	movl	-88(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 289 0
	movl	-88(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 290 0
	cmpl	$0, -16(%ebp)
	je	.L48
	.loc 1 291 0
	movl	-16(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L48:
	.loc 1 292 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 293 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	addl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 294 0
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 295 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 299 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L52
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L54
.L52:
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L54
.L46:
.LBE6:
.LBB7:
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 312 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 314 0
	movl	-88(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 315 0
	movl	-88(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 316 0
	cmpl	$0, -8(%ebp)
	je	.L55
	.loc 1 317 0
	movl	-8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
.L55:
	.loc 1 318 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 319 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	addl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 320 0
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 321 0
	movl	-88(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-88(%ebp), %eax
	jne	.L58
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L54
.L58:
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
.L54:
.LBE7:
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
.L5:
	movl	-100(%ebp), %eax
	.loc 1 333 0
	leave
	ret
.LFE17:
	.size	splay, .-splay
	.type	remove_all_occurrences, @function
remove_all_occurrences:
.LFB18:
	.loc 1 339 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	pushl	%ebx
.LCFI5:
	subl	$36, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 344 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 346 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L63
	.loc 1 347 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
.L63:
	.loc 1 348 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 349 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L65:
	.loc 1 351 0
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L67
	.loc 1 353 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 355 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L69
	.loc 1 356 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
.L69:
	.loc 1 357 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L67
	.loc 1 358 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L67:
	.loc 1 361 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L72
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L72
.LBB8:
	.loc 1 366 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_rightmost_node
	movl	%eax, (%esp)
	call	splay
	movl	%eax, -16(%ebp)
	.loc 1 367 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	find_leftmost_node
	movl	%eax, (%esp)
	call	splay
	movl	%eax, -12(%ebp)
	.loc 1 370 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L75
	.loc 1 371 0
	call	abort@PLT
.L75:
	.loc 1 373 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 374 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 375 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 376 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L77
	.loc 1 377 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L77:
	.loc 1 379 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L79
	.loc 1 380 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L79:
	.loc 1 382 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L72:
.LBE8:
	.loc 1 385 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L81
	.loc 1 387 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 389 0
	jmp	.L83
.L84:
.LBB9:
	.loc 1 393 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 395 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 396 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
.L85:
	.loc 1 397 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 398 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
.L87:
	.loc 1 400 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 401 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 402 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L83:
.LBE9:
	.loc 1 389 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L84
.L81:
	.loc 1 406 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 407 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L91
	.loc 1 408 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L91:
	.loc 1 409 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	remove_all_occurrences, .-remove_all_occurrences
	.type	find_rightmost_node, @function
find_rightmost_node:
.LFB16:
	.loc 1 96 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	.loc 1 97 0
	jmp	.L93
.L94:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%ebp)
.L93:
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L94
	.loc 1 99 0
	movl	8(%ebp), %eax
	.loc 1 100 0
	popl	%ebp
	ret
.LFE16:
	.size	find_rightmost_node, .-find_rightmost_node
	.type	find_leftmost_node, @function
find_leftmost_node:
.LFB15:
	.loc 1 85 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	.loc 1 86 0
	jmp	.L98
.L99:
	.loc 1 87 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L98:
	.loc 1 86 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	.loc 1 89 0
	movl	8(%ebp), %eax
	.loc 1 90 0
	popl	%ebp
	ret
.LFE15:
	.size	find_leftmost_node, .-find_leftmost_node
.globl et_forest_create
	.type	et_forest_create, @function
et_forest_create:
.LFB20:
	.loc 1 435 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$20, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 437 0
	movl	$4, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 439 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 440 0
	movl	-8(%ebp), %eax
	.loc 1 441 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	et_forest_create, .-et_forest_create
.globl et_forest_delete
	.type	et_forest_delete, @function
et_forest_delete:
.LFB21:
	.loc 1 449 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$4, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L105
	.loc 1 451 0
	call	abort@PLT
.L105:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 454 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	et_forest_delete, .-et_forest_delete
.globl et_forest_add_node
	.type	et_forest_add_node, @function
et_forest_add_node:
.LFB22:
	.loc 1 462 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$20, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 467 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 468 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 470 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 471 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 474 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 475 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 476 0
	movl	-8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 477 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 478 0
	movl	-12(%ebp), %eax
	.loc 1 479 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	et_forest_add_node, .-et_forest_add_node
.globl et_forest_add_edge
	.type	et_forest_add_edge, @function
et_forest_add_edge:
.LFB23:
	.loc 1 488 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 491 0
	cmpl	$0, 12(%ebp)
	je	.L111
	cmpl	$0, 16(%ebp)
	jne	.L113
.L111:
	.loc 1 492 0
	call	abort@PLT
.L113:
	.loc 1 494 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 495 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 497 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 498 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 500 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L114
	.loc 1 501 0
	movl	$0, -24(%ebp)
	jmp	.L116
.L114:
	.loc 1 503 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L117
	.loc 1 504 0
	call	abort@PLT
.L117:
	.loc 1 506 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 508 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 509 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 510 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 511 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 512 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 513 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 514 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 515 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 516 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 517 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 518 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 519 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L119
	.loc 1 520 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L119:
	.loc 1 522 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L121
	.loc 1 523 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
.L121:
	.loc 1 524 0
	movl	$1, -24(%ebp)
.L116:
	movl	-24(%ebp), %eax
	.loc 1 525 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	et_forest_add_edge, .-et_forest_add_edge
.globl et_forest_remove_node
	.type	et_forest_remove_node, @function
et_forest_remove_node:
.LFB24:
	.loc 1 532 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$4, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 533 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_all_occurrences
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 536 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 537 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	et_forest_remove_node, .-et_forest_remove_node
.globl et_forest_remove_edge
	.type	et_forest_remove_edge, @function
et_forest_remove_edge:
.LFB25:
	.loc 1 546 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$36, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 549 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 551 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L127
	.loc 1 552 0
	movl	$0, -24(%ebp)
	jmp	.L129
.L127:
	.loc 1 554 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_rightmost_node
	movl	%eax, -12(%ebp)
	.loc 1 555 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L130
	.loc 1 556 0
	call	abort@PLT
.L130:
	.loc 1 558 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 559 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, (%eax)
	.loc 1 561 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 562 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 564 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, (%eax)
	.loc 1 566 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 567 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 568 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L132
	.loc 1 569 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L132:
	.loc 1 571 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 573 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L134
	.loc 1 574 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
.L134:
	.loc 1 576 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 577 0
	movl	$1, -24(%ebp)
.L129:
	movl	-24(%ebp), %eax
	.loc 1 578 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	et_forest_remove_edge, .-et_forest_remove_edge
.globl et_forest_parent
	.type	et_forest_parent, @function
et_forest_parent:
.LFB26:
	.loc 1 585 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$8, %esp
.LCFI37:
	.loc 1 586 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 588 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L138
	.loc 1 589 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_rightmost_node
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L140
.L138:
	.loc 1 591 0
	movl	$0, -4(%ebp)
.L140:
	movl	-4(%ebp), %eax
	.loc 1 592 0
	leave
	ret
.LFE26:
	.size	et_forest_parent, .-et_forest_parent
.globl et_forest_common_ancestor
	.type	et_forest_common_ancestor, @function
et_forest_common_ancestor:
.LFB27:
	.loc 1 602 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 606 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L143
	.loc 1 607 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L145
.L143:
	.loc 1 609 0
	cmpl	$0, 12(%ebp)
	je	.L146
	cmpl	$0, 16(%ebp)
	jne	.L148
.L146:
	.loc 1 610 0
	call	abort@PLT
.L148:
	.loc 1 612 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 613 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 615 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L149
	.loc 1 616 0
	movl	$0, -24(%ebp)
	jmp	.L145
.L149:
	.loc 1 618 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	calculate_value
	movl	%eax, -16(%ebp)
	.loc 1 619 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	calculate_value
	movl	%eax, -20(%ebp)
	.loc 1 621 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jge	.L151
	.loc 1 623 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 624 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L154
.L151:
	.loc 1 628 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 629 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 632 0
	jmp	.L154
.L155:
	.loc 1 635 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 636 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	find_rightmost_node
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
.L154:
	.loc 1 632 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	calculate_value
	cmpl	-12(%ebp), %eax
	jl	.L155
	.loc 1 639 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L145:
	movl	-24(%ebp), %eax
	.loc 1 640 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	et_forest_common_ancestor, .-et_forest_common_ancestor
	.type	calculate_value, @function
calculate_value:
.LFB19:
	.loc 1 415 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	subl	$16, %esp
.LCFI44:
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 418 0
	jmp	.L159
.L160:
	.loc 1 420 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L161
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	addl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
.L161:
	.loc 1 423 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L159:
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L160
	.loc 1 426 0
	movl	-4(%ebp), %eax
	.loc 1 427 0
	leave
	ret
.LFE19:
	.size	calculate_value, .-calculate_value
.globl et_forest_node_value
	.type	et_forest_node_value, @function
et_forest_node_value:
.LFB28:
	.loc 1 647 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	subl	$4, %esp
.LCFI47:
	.loc 1 649 0
	cmpl	$0, 12(%ebp)
	jne	.L166
	.loc 1 650 0
	movl	$0, -4(%ebp)
	jmp	.L168
.L166:
	.loc 1 651 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L168:
	movl	-4(%ebp), %eax
	.loc 1 652 0
	leave
	ret
.LFE28:
	.size	et_forest_node_value, .-et_forest_node_value
.globl et_forest_enumerate_sons
	.type	et_forest_enumerate_sons, @function
et_forest_enumerate_sons:
.LFB29:
	.loc 1 661 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	subl	$20, %esp
.LCFI50:
	.loc 1 662 0
	movl	$0, -16(%ebp)
	.loc 1 663 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 668 0
	jmp	.L171
.L172:
	.loc 1 670 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	splay
	.loc 1 671 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L173
	.loc 1 673 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	find_leftmost_node
	movl	%eax, -4(%ebp)
	.loc 1 674 0
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L173
	.loc 1 675 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -16(%ebp)
.L173:
	.loc 1 677 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L171:
	.loc 1 668 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L172
	.loc 1 679 0
	movl	-16(%ebp), %eax
	.loc 1 680 0
	leave
	ret
.LFE29:
	.size	et_forest_enumerate_sons, .-et_forest_enumerate_sons
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI11-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI15-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI19-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI23-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI27-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI31-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI35-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI38-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI42-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI45-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI48-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
	.file 2 "../../../kgccfe/gnu/et-forest.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB17-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB18-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB16-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB15-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB20-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB21-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB22-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB23-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB24-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB25-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB26-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB27-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB19-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa3a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/et-forest.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.string	"et_forest_t"
	.byte	0x2
	.byte	0x3a
	.long	0x15f
	.uleb128 0x6
	.byte	0x4
	.long	0x165
	.uleb128 0x7
	.long	0x189
	.string	"et_forest"
	.byte	0x4
	.byte	0x2
	.byte	0x3a
	.uleb128 0x8
	.string	"nnodes"
	.byte	0x1
	.byte	0x25
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.string	"et_forest_node_t"
	.byte	0x2
	.byte	0x3b
	.long	0x1a1
	.uleb128 0x6
	.byte	0x4
	.long	0x1a7
	.uleb128 0x7
	.long	0x1fc
	.string	"et_forest_node"
	.byte	0x10
	.byte	0x2
	.byte	0x3b
	.uleb128 0x9
	.long	.LASF1
	.byte	0x1
	.byte	0x41
	.long	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"value"
	.byte	0x1
	.byte	0x42
	.long	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"first"
	.byte	0x1
	.byte	0x45
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"last"
	.byte	0x1
	.byte	0x45
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.string	"et_forest_occurrence_t"
	.byte	0x1
	.byte	0x1f
	.long	0x21a
	.uleb128 0x6
	.byte	0x4
	.long	0x220
	.uleb128 0x7
	.long	0x2b6
	.string	"et_forest_occurrence"
	.byte	0x1c
	.byte	0x1
	.byte	0x1e
	.uleb128 0x8
	.string	"parent"
	.byte	0x1
	.byte	0x2e
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"left"
	.byte	0x1
	.byte	0x31
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"right"
	.byte	0x1
	.byte	0x31
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"count_left"
	.byte	0x1
	.byte	0x34
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"count_right"
	.byte	0x1
	.byte	0x34
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"next"
	.byte	0x1
	.byte	0x37
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF2
	.byte	0x1
	.byte	0x3a
	.long	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x47e
	.string	"splay"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x1fc
	.long	.LFB17
	.long	.LFE17
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x6a
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"parent"
	.byte	0x1
	.byte	0x6c
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.string	"grandparent"
	.byte	0x1
	.byte	0x6d
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xd
	.long	0x355
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0x81
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0x81
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF5
	.byte	0x1
	.byte	0x82
	.long	0xa6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0x82
	.long	0xa6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0xd
	.long	0x39d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xa5
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0xa5
	.long	0x1fc
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xe
	.long	.LASF5
	.byte	0x1
	.byte	0xa6
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0xa6
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0xd
	.long	0x3e3
	.long	.LBB4
	.long	.LBE4
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xcc
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0xcc
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF5
	.byte	0x1
	.byte	0xcd
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0xcd
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0xd
	.long	0x429
	.long	.LBB5
	.long	.LBE5
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xf0
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0xf0
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF5
	.byte	0x1
	.byte	0xf1
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0xf1
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0xd
	.long	0x455
	.long	.LBB6
	.long	.LBE6
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.value	0x11a
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF5
	.byte	0x1
	.value	0x11b
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	.LBB7
	.long	.LBE7
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.value	0x134
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.long	.LASF5
	.byte	0x1
	.value	0x135
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x53d
	.string	"remove_all_occurrences"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST1
	.uleb128 0x12
	.string	"forest_node"
	.byte	0x1
	.value	0x152
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"first"
	.byte	0x1
	.value	0x154
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"last"
	.byte	0x1
	.value	0x155
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.value	0x156
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	0x523
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x13
	.string	"prev_node"
	.byte	0x1
	.value	0x16c
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF7
	.byte	0x1
	.value	0x16c
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9
	.uleb128 0xf
	.long	.LASF7
	.byte	0x1
	.value	0x187
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x578
	.string	"find_rightmost_node"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0x1fc
	.long	.LFB16
	.long	.LFE16
	.long	.LLST2
	.uleb128 0x14
	.string	"occ"
	.byte	0x1
	.byte	0x5f
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x5b2
	.string	"find_leftmost_node"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x1fc
	.long	.LFB15
	.long	.LFE15
	.long	.LLST3
	.uleb128 0x14
	.string	"occ"
	.byte	0x1
	.byte	0x54
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.long	0x5ed
	.byte	0x1
	.string	"et_forest_create"
	.byte	0x1
	.value	0x1b3
	.byte	0x1
	.long	0x14c
	.long	.LFB20
	.long	.LFE20
	.long	.LLST4
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.value	0x1b5
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x624
	.byte	0x1
	.string	"et_forest_delete"
	.byte	0x1
	.value	0x1c1
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x1c0
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.long	0x690
	.byte	0x1
	.string	"et_forest_add_node"
	.byte	0x1
	.value	0x1ce
	.byte	0x1
	.long	0x189
	.long	.LFB22
	.long	.LFE22
	.long	.LLST6
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x1cc
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"value"
	.byte	0x1
	.value	0x1cd
	.long	0x14a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.value	0x1d0
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"occ"
	.byte	0x1
	.value	0x1d1
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x15
	.long	0x729
	.byte	0x1
	.string	"et_forest_add_edge"
	.byte	0x1
	.value	0x1e8
	.byte	0x1
	.long	0xa6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST7
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x1e5
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x1e6
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x1e7
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"new_occ"
	.byte	0x1
	.value	0x1e9
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"parent_occ"
	.byte	0x1
	.value	0x1e9
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"child_occ"
	.byte	0x1
	.value	0x1e9
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x774
	.byte	0x1
	.string	"et_forest_remove_node"
	.byte	0x1
	.value	0x214
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST8
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x212
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x213
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0x807
	.byte	0x1
	.string	"et_forest_remove_edge"
	.byte	0x1
	.value	0x222
	.byte	0x1
	.long	0xa6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST9
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x21f
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF8
	.byte	0x1
	.value	0x220
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF9
	.byte	0x1
	.value	0x221
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"parent_pre_occ"
	.byte	0x1
	.value	0x223
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"parent_post_occ"
	.byte	0x1
	.value	0x223
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x15
	.long	0x851
	.byte	0x1
	.string	"et_forest_parent"
	.byte	0x1
	.value	0x249
	.byte	0x1
	.long	0x189
	.long	.LFB26
	.long	.LFE26
	.long	.LLST10
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x247
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x248
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0x900
	.byte	0x1
	.string	"et_forest_common_ancestor"
	.byte	0x1
	.value	0x25a
	.byte	0x1
	.long	0x189
	.long	.LFB27
	.long	.LFE27
	.long	.LLST11
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x257
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF3
	.byte	0x1
	.value	0x258
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF4
	.byte	0x1
	.value	0x259
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"value1"
	.byte	0x1
	.value	0x25b
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"value2"
	.byte	0x1
	.value	0x25b
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"max_value"
	.byte	0x1
	.value	0x25b
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"ancestor"
	.byte	0x1
	.value	0x25c
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x94a
	.string	"calculate_value"
	.byte	0x1
	.value	0x19f
	.byte	0x1
	.long	0xa6
	.long	.LFB19
	.long	.LFE19
	.long	.LLST12
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x19e
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"value"
	.byte	0x1
	.value	0x1a0
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x15
	.long	0x998
	.byte	0x1
	.string	"et_forest_node_value"
	.byte	0x1
	.value	0x287
	.byte	0x1
	.long	0x14a
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x285
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x286
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0xa37
	.byte	0x1
	.string	"et_forest_enumerate_sons"
	.byte	0x1
	.value	0x295
	.byte	0x1
	.long	0xa6
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x17
	.long	.LASF1
	.byte	0x1
	.value	0x292
	.long	0x14c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x293
	.long	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"array"
	.byte	0x1
	.value	0x294
	.long	0xa37
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.value	0x296
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"occ"
	.byte	0x1
	.value	0x297
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"stop"
	.byte	0x1
	.value	0x297
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.string	"occ1"
	.byte	0x1
	.value	0x297
	.long	0x1fc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x189
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x103
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa3e
	.long	0x5b2
	.string	"et_forest_create"
	.long	0x5ed
	.string	"et_forest_delete"
	.long	0x624
	.string	"et_forest_add_node"
	.long	0x690
	.string	"et_forest_add_edge"
	.long	0x729
	.string	"et_forest_remove_node"
	.long	0x774
	.string	"et_forest_remove_edge"
	.long	0x807
	.string	"et_forest_parent"
	.long	0x851
	.string	"et_forest_common_ancestor"
	.long	0x94a
	.string	"et_forest_node_value"
	.long	0x998
	.string	"et_forest_enumerate_sons"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF4:
	.string	"node2"
.LASF5:
	.string	"count1"
.LASF2:
	.string	"node"
.LASF1:
	.string	"forest"
.LASF6:
	.string	"count2"
.LASF7:
	.string	"next_node"
.LASF9:
	.string	"child_node"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"parent_node"
.LASF3:
	.string	"node1"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
