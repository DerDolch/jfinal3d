	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbAppArgs
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFind
	extrn	_bbStringFromDouble
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringSlice
	extrn	_bbStringSplit
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_StripDir
	extrn	_brl_retro_RSet
	extrn	_brl_standardio_Print
	extrn	_brl_stream_CloseStream
	extrn	_brl_stream_Eof
	extrn	_brl_stream_OpenStream
	extrn	_brl_stream_ReadLine
	extrn	_brl_stream_WriteLine
	extrn	_brl_stream_WriteStream
	public	__bb_TAGFX_Face_Delete
	public	__bb_TAGFX_Face_New
	public	__bb_TAGFX_MaterialList_Delete
	public	__bb_TAGFX_MaterialList_LoadFromFile
	public	__bb_TAGFX_MaterialList_New
	public	__bb_TAGFX_MaterialList_SaveToFile
	public	__bb_TAGFX_Material_Delete
	public	__bb_TAGFX_Material_New
	public	__bb_TAGFX_NormalList_Add
	public	__bb_TAGFX_NormalList_Delete
	public	__bb_TAGFX_NormalList_Get
	public	__bb_TAGFX_NormalList_New
	public	__bb_TAGFX_UVList_Add
	public	__bb_TAGFX_UVList_Delete
	public	__bb_TAGFX_UVList_Get
	public	__bb_TAGFX_UVList_New
	public	__bb_TAGFX_Vector2_Delete
	public	__bb_TAGFX_Vector2_New
	public	__bb_TAGFX_Vector3_Delete
	public	__bb_TAGFX_Vector3_New
	public	__bb_TAGFX_VertexList_Add
	public	__bb_TAGFX_VertexList_Delete
	public	__bb_TAGFX_VertexList_Get
	public	__bb_TAGFX_VertexList_New
	public	__bb_TAGFX_Wavefront_obj_Delete
	public	__bb_TAGFX_Wavefront_obj_Dump
	public	__bb_TAGFX_Wavefront_obj_LoadFromFile
	public	__bb_TAGFX_Wavefront_obj_New
	public	__bb_TAGFX_Wavefront_obj_SaveToFile
	public	__bb_TAGFX_Wavefront_obj_SaveToJava
	public	__bb_TAGFX_object_AddFace
	public	__bb_TAGFX_object_Delete
	public	__bb_TAGFX_object_New
	public	__bb_main
	public	_bb_Format
	public	_bb_InName
	public	_bb_MESHdata
	public	_bb_TAGFX_Face
	public	_bb_TAGFX_Material
	public	_bb_TAGFX_MaterialList
	public	_bb_TAGFX_NormalList
	public	_bb_TAGFX_UVList
	public	_bb_TAGFX_Vector2
	public	_bb_TAGFX_Vector3
	public	_bb_TAGFX_VertexList
	public	_bb_TAGFX_Wavefront_obj
	public	_bb_TAGFX_object
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_478],0
	je	_479
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_479:
	mov	dword [_478],1
	push	ebp
	push	_463
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_TAGFX_Vector3
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_VertexList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_NormalList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_UVList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Face
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_object
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Material
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_MaterialList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Wavefront_obj
	call	_bbObjectRegisterType
	add	esp,4
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bbAppArgs]
	cmp	dword [eax+20],2
	jne	_434
	push	ebp
	push	_455
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bbAppArgs]
	cmp	ebx,dword [eax+20]
	jb	_437
	call	_brl_blitz_ArrayBoundsError
_437:
	mov	eax,dword [_bbAppArgs]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_InName]
	dec	dword [eax+4]
	jnz	_441
	push	eax
	call	_bbGCFree
	add	esp,4
_441:
	mov	dword [_bb_InName],ebx
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Wavefront_obj
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_MESHdata]
	dec	dword [eax+4]
	jnz	_446
	push	eax
	call	_bbGCFree
	add	esp,4
_446:
	mov	dword [_bb_MESHdata],ebx
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_202
	call	_brl_standardio_Print
	add	esp,4
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_MESHdata]
	cmp	ebx,_bbNullObject
	jne	_450
	call	_brl_blitz_NullObjectError
_450:
	push	_203
	push	dword [_bb_InName]
	push	_67
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_MESHdata]
	cmp	ebx,_bbNullObject
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	push	dword [_bb_InName]
	push	_204
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,12
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_205
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_456
_434:
	push	ebp
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_206
	call	_brl_standardio_Print
	add	esp,4
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_207
	call	_brl_standardio_Print
	add	esp,4
	push	_459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_206
	call	_brl_standardio_Print
	add	esp,4
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_208
	call	_brl_standardio_Print
	add	esp,4
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_206
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_456:
	mov	ebx,0
	jmp	_296
_296:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector3_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Vector3
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	push	ebp
	push	_493
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	fldz
	fstp	dword [ebx+8]
	push	_485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	fldz
	fstp	dword [ebx+12]
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	fldz
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_299
_299:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector3_Delete:
	push	ebp
	mov	ebp,esp
_302:
	mov	eax,0
	jmp	_496
_496:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector2_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_507
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Vector2
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	push	ebp
	push	_506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	fldz
	fstp	dword [ebx+8]
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	fldz
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_305
_305:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector2_Delete:
	push	ebp
	mov	ebp,esp
_308:
	mov	eax,0
	jmp	_509
_509:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_518
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_VertexList
	push	200000
	push	_510
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_515
	call	_brl_blitz_NullObjectError
_515:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_311
_311:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_314:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_521
	push	eax
	call	_bbGCFree
	add	esp,4
_521:
	mov	eax,0
	jmp	_519
_519:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_524
	call	_brl_blitz_NullObjectError
_524:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_529
	call	_brl_blitz_ArrayBoundsError
_529:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_534
	push	eax
	call	_bbGCFree
	add	esp,4
_534:
	mov	dword [esi+24],ebx
	push	_535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_540
	call	_brl_blitz_NullObjectError
_540:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_542
	call	_brl_blitz_ArrayBoundsError
_542:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_551
	call	_brl_blitz_NullObjectError
_551:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_553
	call	_brl_blitz_ArrayBoundsError
_553:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_555
	call	_brl_blitz_NullObjectError
_555:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_559
	call	_brl_blitz_NullObjectError
_559:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_564
	call	_brl_blitz_ArrayBoundsError
_564:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	fld	dword [ebp-16]
	fstp	dword [ebx+16]
	push	_568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_320
_320:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_581
	call	_brl_blitz_ArrayBoundsError
_581:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_324
_324:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_NormalList
	push	200000
	push	_584
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_327
_327:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_330:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_595
	push	eax
	call	_bbGCFree
	add	esp,4
_595:
	mov	eax,0
	jmp	_593
_593:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_603
	call	_brl_blitz_ArrayBoundsError
_603:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_608
	push	eax
	call	_bbGCFree
	add	esp,4
_608:
	mov	dword [esi+24],ebx
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_616
	call	_brl_blitz_ArrayBoundsError
_616:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_622
	call	_brl_blitz_NullObjectError
_622:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_625
	call	_brl_blitz_NullObjectError
_625:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_627
	call	_brl_blitz_ArrayBoundsError
_627:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_629
	call	_brl_blitz_NullObjectError
_629:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_638
	call	_brl_blitz_ArrayBoundsError
_638:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	fld	dword [ebp-16]
	fstp	dword [ebx+16]
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_336
_336:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_652
	call	_brl_blitz_ArrayBoundsError
_652:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_340
_340:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_662
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_UVList
	push	200000
	push	_654
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_661
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_659
	call	_brl_blitz_NullObjectError
_659:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_343
_343:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_346:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_665
	push	eax
	call	_bbGCFree
	add	esp,4
_665:
	mov	eax,0
	jmp	_663
_663:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_705
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_673
	call	_brl_blitz_ArrayBoundsError
_673:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_678
	push	eax
	call	_bbGCFree
	add	esp,4
_678:
	mov	dword [esi+24],ebx
	push	_679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_686
	call	_brl_blitz_ArrayBoundsError
_686:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_697
	call	_brl_blitz_ArrayBoundsError
_697:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_351
_351:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_712
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_708
	call	_brl_blitz_NullObjectError
_708:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_711
	call	_brl_blitz_ArrayBoundsError
_711:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_355
_355:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Face_New:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Face
	push	3
	push	_713
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	push	3
	push	_715
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	3
	push	_717
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,ebp
	push	eax
	push	_746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_723
_24:
	mov	eax,ebp
	push	eax
	push	_745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_726
	call	_brl_blitz_NullObjectError
_726:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_729
	call	_brl_blitz_ArrayBoundsError
_729:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_736
	call	_brl_blitz_ArrayBoundsError
_736:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_743
	call	_brl_blitz_ArrayBoundsError
_743:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	call	dword [_bbOnDebugLeaveScope]
_22:
	add	dword [ebp-8],1
_723:
	cmp	dword [ebp-8],2
	jle	_24
_23:
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_358
_358:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Face_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_361:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_751
	push	eax
	call	_bbGCFree
	add	esp,4
_751:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_753
	push	eax
	call	_bbGCFree
	add	esp,4
_753:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_755
	push	eax
	call	_bbGCFree
	add	esp,4
_755:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_757
	push	eax
	call	_bbGCFree
	add	esp,4
_757:
	mov	eax,0
	jmp	_749
_749:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_object
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	120000
	push	_762
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,ebp
	push	eax
	push	_793
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
	mov	dword [ebx+28],0
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	_bb_TAGFX_VertexList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_776
	push	eax
	call	_bbGCFree
	add	esp,4
_776:
	mov	dword [esi+12],ebx
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	push	_bb_TAGFX_NormalList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_784
	push	eax
	call	_bbGCFree
	add	esp,4
_784:
	mov	dword [esi+16],ebx
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	push	_bb_TAGFX_UVList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_792
	push	eax
	call	_bbGCFree
	add	esp,4
_792:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_364
_364:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_367:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_798
	push	eax
	call	_bbGCFree
	add	esp,4
_798:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_800
	push	eax
	call	_bbGCFree
	add	esp,4
_800:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_802
	push	eax
	call	_bbGCFree
	add	esp,4
_802:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_804
	push	eax
	call	_bbGCFree
	add	esp,4
_804:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_806
	push	eax
	call	_bbGCFree
	add	esp,4
_806:
	mov	eax,0
	jmp	_796
_796:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_AddFace:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+40]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp+44]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp+48]
	mov	dword [ebp-44],eax
	mov	eax,ebp
	push	eax
	push	_965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_809
	call	_brl_blitz_NullObjectError
_809:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	mov	ebx,dword [ebx+28]
	cmp	ebx,dword [esi+20]
	jb	_814
	call	_brl_blitz_ArrayBoundsError
_814:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Face
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_819
	push	eax
	call	_bbGCFree
	add	esp,4
_819:
	mov	dword [esi+24],ebx
	push	_820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_825
	call	_brl_blitz_NullObjectError
_825:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_827
	call	_brl_blitz_ArrayBoundsError
_827:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_832
	call	_brl_blitz_ArrayBoundsError
_832:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-8]
	mov	dword [esi+24],eax
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_841
	call	_brl_blitz_ArrayBoundsError
_841:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_846
	call	_brl_blitz_ArrayBoundsError
_846:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-12]
	mov	dword [esi+24],eax
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_855
	call	_brl_blitz_ArrayBoundsError
_855:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_860
	call	_brl_blitz_ArrayBoundsError
_860:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-16]
	mov	dword [esi+24],eax
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_867
	call	_brl_blitz_NullObjectError
_867:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_869
	call	_brl_blitz_ArrayBoundsError
_869:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_874
	call	_brl_blitz_ArrayBoundsError
_874:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-20]
	mov	dword [esi+24],eax
	push	_876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_878
	call	_brl_blitz_NullObjectError
_878:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_881
	call	_brl_blitz_NullObjectError
_881:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_883
	call	_brl_blitz_ArrayBoundsError
_883:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_888
	call	_brl_blitz_ArrayBoundsError
_888:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-24]
	mov	dword [esi+24],eax
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_897
	call	_brl_blitz_ArrayBoundsError
_897:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_902
	call	_brl_blitz_ArrayBoundsError
_902:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-28]
	mov	dword [esi+24],eax
	push	_904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_911
	call	_brl_blitz_ArrayBoundsError
_911:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_916
	call	_brl_blitz_ArrayBoundsError
_916:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-32]
	mov	dword [esi+24],eax
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_923
	call	_brl_blitz_NullObjectError
_923:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_925
	call	_brl_blitz_ArrayBoundsError
_925:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_927
	call	_brl_blitz_NullObjectError
_927:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_930
	call	_brl_blitz_ArrayBoundsError
_930:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-36]
	mov	dword [esi+24],eax
	push	_932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_937
	call	_brl_blitz_NullObjectError
_937:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_939
	call	_brl_blitz_ArrayBoundsError
_939:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_944
	call	_brl_blitz_ArrayBoundsError
_944:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-40]
	mov	dword [esi+24],eax
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_948
	call	_brl_blitz_NullObjectError
_948:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_951
	call	_brl_blitz_NullObjectError
_951:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_953
	call	_brl_blitz_ArrayBoundsError
_953:
	mov	esi,dword [ebx+esi*4+24]
	cmp	esi,_bbNullObject
	jne	_955
	call	_brl_blitz_NullObjectError
_955:
	mov	ebx,dword [ebp-44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_960
	push	eax
	call	_bbGCFree
	add	esp,4
_960:
	mov	dword [esi+20],ebx
	push	_961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_963
	call	_brl_blitz_NullObjectError
_963:
	add	dword [ebx+28],1
	mov	ebx,0
	jmp	_380
_380:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Material_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1019
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Material
	mov	edx,_25
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	eax,ebp
	push	eax
	push	_1018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_993
	push	eax
	call	_bbGCFree
	add	esp,4
_993:
	mov	dword [esi+12],ebx
	push	_994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_996
	call	_brl_blitz_NullObjectError
_996:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1001
	push	eax
	call	_bbGCFree
	add	esp,4
_1001:
	mov	dword [esi+16],ebx
	push	_1002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1004
	call	_brl_blitz_NullObjectError
_1004:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1009
	push	eax
	call	_bbGCFree
	add	esp,4
_1009:
	mov	dword [esi+20],ebx
	push	_1010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1012
	call	_brl_blitz_NullObjectError
_1012:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1017
	push	eax
	call	_bbGCFree
	add	esp,4
_1017:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_383
_383:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Material_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_386:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1023
	push	eax
	call	_bbGCFree
	add	esp,4
_1023:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1025
	push	eax
	call	_bbGCFree
	add	esp,4
_1025:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1027
	push	eax
	call	_bbGCFree
	add	esp,4
_1027:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1029
	push	eax
	call	_bbGCFree
	add	esp,4
_1029:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1031
	push	eax
	call	_bbGCFree
	add	esp,4
_1031:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1033
	push	eax
	call	_bbGCFree
	add	esp,4
_1033:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1035
	push	eax
	call	_bbGCFree
	add	esp,4
_1035:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1037
	push	eax
	call	_bbGCFree
	add	esp,4
_1037:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1039
	push	eax
	call	_bbGCFree
	add	esp,4
_1039:
	mov	eax,0
	jmp	_1021
_1021:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_MaterialList
	push	10
	push	_1040
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_1042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_389
_389:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_392:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_1046
	push	eax
	call	_bbGCFree
	add	esp,4
_1046:
	mov	eax,0
	jmp	_1044
_1044:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_LoadFromFile:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyArray
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	fldz
	fstp	dword [ebp-56]
	fldz
	fstp	dword [ebp-60]
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	mov	eax,ebp
	push	eax
	push	_1387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1
	push	dword [ebp-8]
	call	_brl_stream_OpenStream
	add	esp,12
	mov	dword [ebp-16],eax
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_1054
	mov	eax,ebp
	push	eax
	push	_1386
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_27
_29:
	mov	eax,ebp
	push	eax
	push	_1382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	dword [ebp-24],eax
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_30
	push	dword [ebp-24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1062
	call	_brl_blitz_ArrayBoundsError
_1062:
	push	_31
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1063
	mov	eax,ebp
	push	eax
	push	_1098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1066
	call	_brl_blitz_ArrayBoundsError
_1066:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-12],eax
	push	_1067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-20],eax
	push	_1070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1072
	call	_brl_blitz_NullObjectError
_1072:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1075
	call	_brl_blitz_ArrayBoundsError
_1075:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Material
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1080
	push	eax
	call	_bbGCFree
	add	esp,4
_1080:
	mov	dword [esi+24],ebx
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1086
	call	_brl_blitz_ArrayBoundsError
_1086:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1088
	call	_brl_blitz_NullObjectError
_1088:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1093
	push	eax
	call	_bbGCFree
	add	esp,4
_1093:
	mov	dword [esi+8],ebx
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1096
	call	_brl_blitz_NullObjectError
_1096:
	add	dword [ebx+12],1
	call	dword [_bbOnDebugLeaveScope]
_1063:
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1101
	call	_brl_blitz_ArrayBoundsError
_1101:
	push	_32
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1102
	mov	eax,ebp
	push	eax
	push	_1118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1105
	call	_brl_blitz_NullObjectError
_1105:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1108
	call	_brl_blitz_ArrayBoundsError
_1108:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1113
	call	_brl_blitz_ArrayBoundsError
_1113:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1117
	push	eax
	call	_bbGCFree
	add	esp,4
_1117:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
_1102:
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1121
	call	_brl_blitz_ArrayBoundsError
_1121:
	push	_33
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1122
	mov	eax,ebp
	push	eax
	push	_1138
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1125
	call	_brl_blitz_NullObjectError
_1125:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1128
	call	_brl_blitz_ArrayBoundsError
_1128:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1130
	call	_brl_blitz_NullObjectError
_1130:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1133
	call	_brl_blitz_ArrayBoundsError
_1133:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_1137
	push	eax
	call	_bbGCFree
	add	esp,4
_1137:
	mov	dword [esi+36],ebx
	call	dword [_bbOnDebugLeaveScope]
_1122:
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1141
	call	_brl_blitz_ArrayBoundsError
_1141:
	push	_34
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1142
	mov	eax,ebp
	push	eax
	push	_1158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1148
	call	_brl_blitz_ArrayBoundsError
_1148:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1153
	call	_brl_blitz_ArrayBoundsError
_1153:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1157
	push	eax
	call	_bbGCFree
	add	esp,4
_1157:
	mov	dword [esi+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1142:
	push	_1159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1161
	call	_brl_blitz_ArrayBoundsError
_1161:
	push	_35
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1162
	mov	eax,ebp
	push	eax
	push	_1178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1165
	call	_brl_blitz_NullObjectError
_1165:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1168
	call	_brl_blitz_ArrayBoundsError
_1168:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1170
	call	_brl_blitz_NullObjectError
_1170:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1173
	call	_brl_blitz_ArrayBoundsError
_1173:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_1177
	push	eax
	call	_bbGCFree
	add	esp,4
_1177:
	mov	dword [esi+32],ebx
	call	dword [_bbOnDebugLeaveScope]
_1162:
	push	_1179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1181
	call	_brl_blitz_ArrayBoundsError
_1181:
	push	_36
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1182
	mov	eax,ebp
	push	eax
	push	_1228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1185
	call	_brl_blitz_ArrayBoundsError
_1185:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-32]
	push	_1187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1189
	call	_brl_blitz_ArrayBoundsError
_1189:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-36]
	push	_1191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1193
	call	_brl_blitz_ArrayBoundsError
_1193:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-40]
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1197
	call	_brl_blitz_NullObjectError
_1197:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1200
	call	_brl_blitz_ArrayBoundsError
_1200:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1202
	call	_brl_blitz_NullObjectError
_1202:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1204
	call	_brl_blitz_NullObjectError
_1204:
	fld	dword [ebp-32]
	fstp	dword [ebx+8]
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1208
	call	_brl_blitz_NullObjectError
_1208:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1211
	call	_brl_blitz_ArrayBoundsError
_1211:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1213
	call	_brl_blitz_NullObjectError
_1213:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1215
	call	_brl_blitz_NullObjectError
_1215:
	fld	dword [ebp-36]
	fstp	dword [ebx+12]
	push	_1217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1219
	call	_brl_blitz_NullObjectError
_1219:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1222
	call	_brl_blitz_ArrayBoundsError
_1222:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1224
	call	_brl_blitz_NullObjectError
_1224:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1226
	call	_brl_blitz_NullObjectError
_1226:
	fld	dword [ebp-40]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1182:
	push	_1232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1234
	call	_brl_blitz_ArrayBoundsError
_1234:
	push	_37
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1235
	mov	eax,ebp
	push	eax
	push	_1281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1238
	call	_brl_blitz_ArrayBoundsError
_1238:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-44]
	push	_1240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1242
	call	_brl_blitz_ArrayBoundsError
_1242:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-48]
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1246
	call	_brl_blitz_ArrayBoundsError
_1246:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-52]
	push	_1248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1250
	call	_brl_blitz_NullObjectError
_1250:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1253
	call	_brl_blitz_ArrayBoundsError
_1253:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1255
	call	_brl_blitz_NullObjectError
_1255:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	fld	dword [ebp-44]
	fstp	dword [ebx+8]
	push	_1259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1261
	call	_brl_blitz_NullObjectError
_1261:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1264
	call	_brl_blitz_ArrayBoundsError
_1264:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1266
	call	_brl_blitz_NullObjectError
_1266:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	fld	dword [ebp-48]
	fstp	dword [ebx+12]
	push	_1270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1272
	call	_brl_blitz_NullObjectError
_1272:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1275
	call	_brl_blitz_ArrayBoundsError
_1275:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1277
	call	_brl_blitz_NullObjectError
_1277:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1279
	call	_brl_blitz_NullObjectError
_1279:
	fld	dword [ebp-52]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1235:
	push	_1282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1284
	call	_brl_blitz_ArrayBoundsError
_1284:
	push	_38
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1285
	mov	eax,ebp
	push	eax
	push	_1331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1288
	call	_brl_blitz_ArrayBoundsError
_1288:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-56]
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1292
	call	_brl_blitz_ArrayBoundsError
_1292:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-60]
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1296
	call	_brl_blitz_ArrayBoundsError
_1296:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-64]
	push	_1298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1300
	call	_brl_blitz_NullObjectError
_1300:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1303
	call	_brl_blitz_ArrayBoundsError
_1303:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1305
	call	_brl_blitz_NullObjectError
_1305:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1307
	call	_brl_blitz_NullObjectError
_1307:
	fld	dword [ebp-56]
	fstp	dword [ebx+8]
	push	_1309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1311
	call	_brl_blitz_NullObjectError
_1311:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1314
	call	_brl_blitz_ArrayBoundsError
_1314:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1316
	call	_brl_blitz_NullObjectError
_1316:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1318
	call	_brl_blitz_NullObjectError
_1318:
	fld	dword [ebp-60]
	fstp	dword [ebx+12]
	push	_1320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1322
	call	_brl_blitz_NullObjectError
_1322:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1325
	call	_brl_blitz_ArrayBoundsError
_1325:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1329
	call	_brl_blitz_NullObjectError
_1329:
	fld	dword [ebp-64]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1285:
	push	_1332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1334
	call	_brl_blitz_ArrayBoundsError
_1334:
	push	_39
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1335
	mov	eax,ebp
	push	eax
	push	_1381
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1338
	call	_brl_blitz_ArrayBoundsError
_1338:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-68]
	push	_1340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1342
	call	_brl_blitz_ArrayBoundsError
_1342:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-72]
	push	_1344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1346
	call	_brl_blitz_ArrayBoundsError
_1346:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-76]
	push	_1348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1350
	call	_brl_blitz_NullObjectError
_1350:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1353
	call	_brl_blitz_ArrayBoundsError
_1353:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1355
	call	_brl_blitz_NullObjectError
_1355:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	fld	dword [ebp-68]
	fstp	dword [ebx+8]
	push	_1359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1361
	call	_brl_blitz_NullObjectError
_1361:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1364
	call	_brl_blitz_ArrayBoundsError
_1364:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1366
	call	_brl_blitz_NullObjectError
_1366:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1368
	call	_brl_blitz_NullObjectError
_1368:
	fld	dword [ebp-72]
	fstp	dword [ebx+12]
	push	_1370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1372
	call	_brl_blitz_NullObjectError
_1372:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1375
	call	_brl_blitz_ArrayBoundsError
_1375:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1377
	call	_brl_blitz_NullObjectError
_1377:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1379
	call	_brl_blitz_NullObjectError
_1379:
	fld	dword [ebp-76]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1335:
	call	dword [_bbOnDebugLeaveScope]
_27:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_29
_28:
	call	dword [_bbOnDebugLeaveScope]
_1054:
	mov	ebx,0
	jmp	_396
_396:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_SaveToFile:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_1450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1400
	call	_brl_blitz_NullObjectError
_1400:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	edi,eax
	jmp	_1401
_43:
	mov	eax,ebp
	push	eax
	push	_1448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_45
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1407
	call	_brl_blitz_NullObjectError
_1407:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1410
	call	_brl_blitz_ArrayBoundsError
_1410:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1412
	call	_brl_blitz_NullObjectError
_1412:
	push	dword [ebx+8]
	push	_46
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_47
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_48
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1417
	call	_brl_blitz_NullObjectError
_1417:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1420
	call	_brl_blitz_ArrayBoundsError
_1420:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1422
	call	_brl_blitz_NullObjectError
_1422:
	push	dword [ebx+28]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_49
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1425
	call	_brl_blitz_NullObjectError
_1425:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1428
	call	_brl_blitz_ArrayBoundsError
_1428:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1430
	call	_brl_blitz_NullObjectError
_1430:
	push	dword [ebx+40]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_50
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1433
	call	_brl_blitz_NullObjectError
_1433:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1436
	call	_brl_blitz_ArrayBoundsError
_1436:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1438
	call	_brl_blitz_NullObjectError
_1438:
	push	dword [ebx+32]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_51
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_52
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_53
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_54
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_55
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_56
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_57
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_58
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_59
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_41:
	add	dword [ebp-16],1
_1401:
	cmp	dword [ebp-16],edi
	jle	_43
_42:
	push	_1449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_400
_400:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Wavefront_obj
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_25
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	push	1000
	push	_1455
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+28],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	eax,ebp
	push	eax
	push	_1499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	mov	esi,dword [ebx+28]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_1464
	call	_brl_blitz_ArrayBoundsError
_1464:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_object
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1469
	push	eax
	call	_bbGCFree
	add	esp,4
_1469:
	mov	dword [esi+24],ebx
	push	_1470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	mov	esi,dword [ebx+28]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_1475
	call	_brl_blitz_ArrayBoundsError
_1475:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1477
	call	_brl_blitz_NullObjectError
_1477:
	mov	ebx,_61
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1482
	push	eax
	call	_bbGCFree
	add	esp,4
_1482:
	mov	dword [esi+8],ebx
	push	_1483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1485
	call	_brl_blitz_NullObjectError
_1485:
	push	_bb_TAGFX_MaterialList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_1490
	push	eax
	call	_bbGCFree
	add	esp,4
_1490:
	mov	dword [esi+32],ebx
	push	_1491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1493
	call	_brl_blitz_NullObjectError
_1493:
	mov	dword [ebx+24],1
	push	_1495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1497
	call	_brl_blitz_NullObjectError
_1497:
	mov	dword [ebx+8],1
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_403
_403:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_406:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1503
	push	eax
	call	_bbGCFree
	add	esp,4
_1503:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1505
	push	eax
	call	_bbGCFree
	add	esp,4
_1505:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1507
	push	eax
	call	_bbGCFree
	add	esp,4
_1507:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1509
	push	eax
	call	_bbGCFree
	add	esp,4
_1509:
	mov	eax,0
	jmp	_1501
_1501:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_LoadFromFile:
	push	ebp
	mov	ebp,esp
	sub	esp,104
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbEmptyArray
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	fldz
	fstp	dword [ebp-56]
	mov	dword [ebp-60],_bbEmptyArray
	mov	dword [ebp-64],_bbEmptyArray
	mov	dword [ebp-68],_bbEmptyArray
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	eax,ebp
	push	eax
	push	_1815
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1
	push	dword [ebp-8]
	call	_brl_stream_OpenStream
	add	esp,12
	mov	dword [ebp-12],eax
	push	_1512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_1515
	mov	eax,ebp
	push	eax
	push	_1798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1518
	call	_brl_blitz_NullObjectError
_1518:
	mov	dword [ebx+12],1
	push	_1520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1522
	call	_brl_blitz_NullObjectError
_1522:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-16],eax
	push	_1523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_62
_64:
	mov	eax,ebp
	push	eax
	push	_1796
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	dword [ebp-20],eax
	push	_1526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_30
	push	dword [ebp-20]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-24],eax
	push	_1528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1530
	call	_brl_blitz_ArrayBoundsError
_1530:
	push	_65
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1531
	mov	eax,ebp
	push	eax
	push	_1569
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1534
	call	_brl_blitz_NullObjectError
_1534:
	mov	dword [ebx+8],0
	push	_1536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1538
	call	_brl_blitz_NullObjectError
_1538:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-16],eax
	push	_1539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1541
	call	_brl_blitz_NullObjectError
_1541:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1544
	call	_brl_blitz_ArrayBoundsError
_1544:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_object
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1549
	push	eax
	call	_bbGCFree
	add	esp,4
_1549:
	mov	dword [esi+24],ebx
	push	_1550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1552
	call	_brl_blitz_NullObjectError
_1552:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1555
	call	_brl_blitz_ArrayBoundsError
_1555:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1557
	call	_brl_blitz_NullObjectError
_1557:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1560
	call	_brl_blitz_ArrayBoundsError
_1560:
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1564
	push	eax
	call	_bbGCFree
	add	esp,4
_1564:
	mov	dword [esi+8],ebx
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1567
	call	_brl_blitz_NullObjectError
_1567:
	add	dword [ebx+24],1
	call	dword [_bbOnDebugLeaveScope]
_1531:
	push	_1570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1572
	call	_brl_blitz_ArrayBoundsError
_1572:
	push	_66
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1573
	mov	eax,ebp
	push	eax
	push	_1584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1576
	call	_brl_blitz_NullObjectError
_1576:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1579
	call	_brl_blitz_ArrayBoundsError
_1579:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	push	_67
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1583
	push	eax
	call	_bbGCFree
	add	esp,4
_1583:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_1573:
	push	_1585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1587
	call	_brl_blitz_ArrayBoundsError
_1587:
	push	_68
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1588
	mov	eax,ebp
	push	eax
	push	_1611
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1591
	call	_brl_blitz_ArrayBoundsError
_1591:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-28]
	push	_1593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1595
	call	_brl_blitz_ArrayBoundsError
_1595:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-32]
	push	_1597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1599
	call	_brl_blitz_ArrayBoundsError
_1599:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-36]
	push	_1601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1603
	call	_brl_blitz_NullObjectError
_1603:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1606
	call	_brl_blitz_ArrayBoundsError
_1606:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1608
	call	_brl_blitz_NullObjectError
_1608:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1610
	call	_brl_blitz_NullObjectError
_1610:
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_1588:
	push	_1612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1614
	call	_brl_blitz_ArrayBoundsError
_1614:
	push	_69
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1615
	mov	eax,ebp
	push	eax
	push	_1638
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1618
	call	_brl_blitz_ArrayBoundsError
_1618:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-40]
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1622
	call	_brl_blitz_ArrayBoundsError
_1622:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-44]
	push	_1624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1626
	call	_brl_blitz_ArrayBoundsError
_1626:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-48]
	push	_1628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1630
	call	_brl_blitz_NullObjectError
_1630:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1633
	call	_brl_blitz_ArrayBoundsError
_1633:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1635
	call	_brl_blitz_NullObjectError
_1635:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1637
	call	_brl_blitz_NullObjectError
_1637:
	push	dword [ebp-48]
	push	dword [ebp-44]
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_1615:
	push	_1639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1641
	call	_brl_blitz_ArrayBoundsError
_1641:
	push	_70
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1642
	mov	eax,ebp
	push	eax
	push	_1661
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1645
	call	_brl_blitz_ArrayBoundsError
_1645:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-52]
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1649
	call	_brl_blitz_ArrayBoundsError
_1649:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-56]
	push	_1651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1653
	call	_brl_blitz_NullObjectError
_1653:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1656
	call	_brl_blitz_ArrayBoundsError
_1656:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1658
	call	_brl_blitz_NullObjectError
_1658:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_1642:
	push	_1662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1664
	call	_brl_blitz_ArrayBoundsError
_1664:
	push	_71
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1665
	mov	eax,ebp
	push	eax
	push	_1676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1668
	call	_brl_blitz_NullObjectError
_1668:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1671
	call	_brl_blitz_ArrayBoundsError
_1671:
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1675
	push	eax
	call	_bbGCFree
	add	esp,4
_1675:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_1665:
	push	_1677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1679
	call	_brl_blitz_ArrayBoundsError
_1679:
	push	_72
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1680
	mov	eax,ebp
	push	eax
	push	_1792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1683
	call	_brl_blitz_ArrayBoundsError
_1683:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-60],eax
	push	_1685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1687
	call	_brl_blitz_ArrayBoundsError
_1687:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-64],eax
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1691
	call	_brl_blitz_ArrayBoundsError
_1691:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-68],eax
	push	_1693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
	cmp	eax,0
	jne	_1694
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
_1694:
	cmp	eax,0
	jne	_1696
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
_1696:
	cmp	eax,0
	je	_1698
	mov	eax,ebp
	push	eax
	push	_1700
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1698:
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],-1
	push	_1703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],-1
	push	_1705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],-1
	push	_1707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],-1
	push	_1709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],-1
	push	_1711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],-1
	push	_1713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],-1
	push	_1715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],-1
	push	_1717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],-1
	push	_1719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],1
	jne	_1720
	mov	eax,ebp
	push	eax
	push	_1730
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1723
	call	_brl_blitz_ArrayBoundsError
_1723:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1726
	call	_brl_blitz_ArrayBoundsError
_1726:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1729
	call	_brl_blitz_ArrayBoundsError
_1729:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	call	dword [_bbOnDebugLeaveScope]
_1720:
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],2
	jne	_1732
	mov	eax,ebp
	push	eax
	push	_1751
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1735
	call	_brl_blitz_ArrayBoundsError
_1735:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1738
	call	_brl_blitz_ArrayBoundsError
_1738:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1741
	call	_brl_blitz_ArrayBoundsError
_1741:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	push	_1742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1744
	call	_brl_blitz_ArrayBoundsError
_1744:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-84],eax
	push	_1745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1747
	call	_brl_blitz_ArrayBoundsError
_1747:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-88],eax
	push	_1748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1750
	call	_brl_blitz_ArrayBoundsError
_1750:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-92],eax
	call	dword [_bbOnDebugLeaveScope]
_1732:
	push	_1752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],3
	jne	_1753
	mov	eax,ebp
	push	eax
	push	_1781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1756
	call	_brl_blitz_ArrayBoundsError
_1756:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1759
	call	_brl_blitz_ArrayBoundsError
_1759:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1762
	call	_brl_blitz_ArrayBoundsError
_1762:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	push	_1763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1765
	call	_brl_blitz_ArrayBoundsError
_1765:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-84],eax
	push	_1766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1768
	call	_brl_blitz_ArrayBoundsError
_1768:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-88],eax
	push	_1769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1771
	call	_brl_blitz_ArrayBoundsError
_1771:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-92],eax
	push	_1772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1774
	call	_brl_blitz_ArrayBoundsError
_1774:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-96],eax
	push	_1775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1777
	call	_brl_blitz_ArrayBoundsError
_1777:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-100],eax
	push	_1778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1780
	call	_brl_blitz_ArrayBoundsError
_1780:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-104],eax
	call	dword [_bbOnDebugLeaveScope]
_1753:
	push	_1782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1784
	call	_brl_blitz_NullObjectError
_1784:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1787
	call	_brl_blitz_ArrayBoundsError
_1787:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1789
	call	_brl_blitz_NullObjectError
_1789:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1791
	call	_brl_blitz_NullObjectError
_1791:
	push	dword [ebx+20]
	push	dword [ebp-92]
	push	dword [ebp-88]
	push	dword [ebp-84]
	push	dword [ebp-104]
	push	dword [ebp-100]
	push	dword [ebp-96]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,44
	call	dword [_bbOnDebugLeaveScope]
_1680:
	call	dword [_bbOnDebugLeaveScope]
_62:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_64
_63:
	push	_1797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_CloseStream
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1515:
	push	_1799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1801
	call	_brl_blitz_NullObjectError
_1801:
	cmp	dword [ebx+8],0
	jne	_1802
	mov	eax,ebp
	push	eax
	push	_1807
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1805
	call	_brl_blitz_NullObjectError
_1805:
	sub	dword [ebx+24],1
	call	dword [_bbOnDebugLeaveScope]
_1802:
	push	_1808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1810
	call	_brl_blitz_NullObjectError
_1810:
	mov	esi,dword [ebx+32]
	cmp	esi,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1814
	call	_brl_blitz_NullObjectError
_1814:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	mov	ebx,0
	jmp	_410
_410:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_Dump:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_2072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	cmp	dword [ebx+12],0
	je	_1820
	mov	eax,ebp
	push	eax
	push	_2071
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1824
	call	_brl_blitz_NullObjectError
_1824:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	jmp	_1825
_77:
	mov	eax,ebp
	push	eax
	push	_2069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1829
	call	_brl_blitz_NullObjectError
_1829:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1832
	call	_brl_blitz_ArrayBoundsError
_1832:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1834
	call	_brl_blitz_NullObjectError
_1834:
	push	dword [ebx+8]
	push	_78
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_1835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1841
	call	_brl_blitz_ArrayBoundsError
_1841:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1843
	call	_brl_blitz_NullObjectError
_1843:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1845
	call	_brl_blitz_NullObjectError
_1845:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-48],eax
	jmp	_1846
_81:
	mov	eax,ebp
	push	eax
	push	_1891
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1850
	call	_brl_blitz_NullObjectError
_1850:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1853
	call	_brl_blitz_ArrayBoundsError
_1853:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1855
	call	_brl_blitz_NullObjectError
_1855:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1860
	call	_brl_blitz_ArrayBoundsError
_1860:
	mov	eax,dword [esi+ebx*4+24]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_1862
	call	_brl_blitz_NullObjectError
_1862:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1864
	call	_brl_blitz_NullObjectError
_1864:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1867
	call	_brl_blitz_ArrayBoundsError
_1867:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1869
	call	_brl_blitz_NullObjectError
_1869:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1871
	call	_brl_blitz_NullObjectError
_1871:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1874
	call	_brl_blitz_ArrayBoundsError
_1874:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1876
	call	_brl_blitz_NullObjectError
_1876:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1881
	call	_brl_blitz_ArrayBoundsError
_1881:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1883
	call	_brl_blitz_NullObjectError
_1883:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1885
	call	_brl_blitz_NullObjectError
_1885:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1888
	call	_brl_blitz_ArrayBoundsError
_1888:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1890
	call	_brl_blitz_NullObjectError
_1890:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	mov	eax,dword [ebp-32]
	push	dword [eax+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_83
	push	dword [ebp-12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_82
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_79:
	add	dword [ebp-12],1
_1846:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-12],eax
	jle	_81
_80:
	push	_1892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1895
	call	_brl_blitz_NullObjectError
_1895:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1898
	call	_brl_blitz_ArrayBoundsError
_1898:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1900
	call	_brl_blitz_NullObjectError
_1900:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1902
	call	_brl_blitz_NullObjectError
_1902:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-44],eax
	jmp	_1903
_87:
	mov	eax,ebp
	push	eax
	push	_1948
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1907
	call	_brl_blitz_NullObjectError
_1907:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1910
	call	_brl_blitz_ArrayBoundsError
_1910:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1912
	call	_brl_blitz_NullObjectError
_1912:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1914
	call	_brl_blitz_NullObjectError
_1914:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1917
	call	_brl_blitz_ArrayBoundsError
_1917:
	mov	eax,dword [esi+ebx*4+24]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_1919
	call	_brl_blitz_NullObjectError
_1919:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1921
	call	_brl_blitz_NullObjectError
_1921:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1924
	call	_brl_blitz_ArrayBoundsError
_1924:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1926
	call	_brl_blitz_NullObjectError
_1926:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1928
	call	_brl_blitz_NullObjectError
_1928:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1931
	call	_brl_blitz_ArrayBoundsError
_1931:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1933
	call	_brl_blitz_NullObjectError
_1933:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1935
	call	_brl_blitz_NullObjectError
_1935:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1938
	call	_brl_blitz_ArrayBoundsError
_1938:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1940
	call	_brl_blitz_NullObjectError
_1940:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1942
	call	_brl_blitz_NullObjectError
_1942:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1945
	call	_brl_blitz_ArrayBoundsError
_1945:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	mov	eax,dword [ebp-36]
	push	dword [eax+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_88
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_85:
	add	dword [ebp-16],1
_1903:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-16],eax
	jle	_87
_86:
	push	_1949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1952
	call	_brl_blitz_NullObjectError
_1952:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1955
	call	_brl_blitz_ArrayBoundsError
_1955:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1957
	call	_brl_blitz_NullObjectError
_1957:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1959
	call	_brl_blitz_NullObjectError
_1959:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-40],eax
	jmp	_1960
_91:
	mov	eax,ebp
	push	eax
	push	_1991
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1964
	call	_brl_blitz_NullObjectError
_1964:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1967
	call	_brl_blitz_ArrayBoundsError
_1967:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1969
	call	_brl_blitz_NullObjectError
_1969:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1971
	call	_brl_blitz_NullObjectError
_1971:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1974
	call	_brl_blitz_ArrayBoundsError
_1974:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1976
	call	_brl_blitz_NullObjectError
_1976:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1978
	call	_brl_blitz_NullObjectError
_1978:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1981
	call	_brl_blitz_ArrayBoundsError
_1981:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1983
	call	_brl_blitz_NullObjectError
_1983:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1985
	call	_brl_blitz_NullObjectError
_1985:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1988
	call	_brl_blitz_ArrayBoundsError
_1988:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1990
	call	_brl_blitz_NullObjectError
_1990:
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_92
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_89:
	add	dword [ebp-20],1
_1960:
	mov	eax,dword [ebp-40]
	cmp	dword [ebp-20],eax
	jle	_91
_90:
	push	_1992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1995
	call	_brl_blitz_NullObjectError
_1995:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1998
	call	_brl_blitz_ArrayBoundsError
_1998:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2000
	call	_brl_blitz_NullObjectError
_2000:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	edi,eax
	jmp	_2001
_95:
	mov	eax,ebp
	push	eax
	push	_2068
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2005
	call	_brl_blitz_NullObjectError
_2005:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2008
	call	_brl_blitz_ArrayBoundsError
_2008:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2010
	call	_brl_blitz_NullObjectError
_2010:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2013
	call	_brl_blitz_ArrayBoundsError
_2013:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2015
	call	_brl_blitz_NullObjectError
_2015:
	push	dword [ebx+20]
	push	_97
	push	dword [ebp-24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_96
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_2018
_100:
	mov	eax,ebp
	push	eax
	push	_2067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2021
	call	_brl_blitz_NullObjectError
_2021:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2024
	call	_brl_blitz_ArrayBoundsError
_2024:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2026
	call	_brl_blitz_NullObjectError
_2026:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2029
	call	_brl_blitz_ArrayBoundsError
_2029:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2034
	call	_brl_blitz_ArrayBoundsError
_2034:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_101
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2040
	call	_brl_blitz_ArrayBoundsError
_2040:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2042
	call	_brl_blitz_NullObjectError
_2042:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2045
	call	_brl_blitz_ArrayBoundsError
_2045:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2047
	call	_brl_blitz_NullObjectError
_2047:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2050
	call	_brl_blitz_ArrayBoundsError
_2050:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_103
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2053
	call	_brl_blitz_NullObjectError
_2053:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2056
	call	_brl_blitz_ArrayBoundsError
_2056:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2058
	call	_brl_blitz_NullObjectError
_2058:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2061
	call	_brl_blitz_ArrayBoundsError
_2061:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2063
	call	_brl_blitz_NullObjectError
_2063:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2066
	call	_brl_blitz_ArrayBoundsError
_2066:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_104
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_98:
	add	dword [ebp-28],1
_2018:
	cmp	dword [ebp-28],2
	jle	_100
_99:
	call	dword [_bbOnDebugLeaveScope]
_93:
	add	dword [ebp-24],1
_2001:
	cmp	dword [ebp-24],edi
	jle	_95
_94:
	call	dword [_bbOnDebugLeaveScope]
_75:
	add	dword [ebp-8],1
_1825:
	mov	eax,dword [ebp-52]
	cmp	dword [ebp-8],eax
	jle	_77
_76:
	call	dword [_bbOnDebugLeaveScope]
_1820:
	mov	ebx,0
	jmp	_413
_413:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_SaveToFile:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	eax,ebp
	push	eax
	push	_2436
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_2075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2081
	call	_brl_blitz_NullObjectError
_2081:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-64],eax
	jmp	_2082
_107:
	mov	eax,ebp
	push	eax
	push	_2434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2086
	call	_brl_blitz_NullObjectError
_2086:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2089
	call	_brl_blitz_ArrayBoundsError
_2089:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2091
	call	_brl_blitz_NullObjectError
_2091:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-60],eax
	jmp	_2092
_110:
	mov	eax,ebp
	push	eax
	push	_2427
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	push	_2098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_2100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_2102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_2108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_2110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	push	_2112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_2113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2117
	call	_brl_blitz_NullObjectError
_2117:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2120
	call	_brl_blitz_ArrayBoundsError
_2120:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2122
	call	_brl_blitz_NullObjectError
_2122:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2125
	call	_brl_blitz_ArrayBoundsError
_2125:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2127
	call	_brl_blitz_NullObjectError
_2127:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2130
	call	_brl_blitz_ArrayBoundsError
_2130:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2133
	call	_brl_blitz_NullObjectError
_2133:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2136
	call	_brl_blitz_ArrayBoundsError
_2136:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2138
	call	_brl_blitz_NullObjectError
_2138:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2141
	call	_brl_blitz_ArrayBoundsError
_2141:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2143
	call	_brl_blitz_NullObjectError
_2143:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2146
	call	_brl_blitz_ArrayBoundsError
_2146:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2149
	call	_brl_blitz_NullObjectError
_2149:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2152
	call	_brl_blitz_ArrayBoundsError
_2152:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2154
	call	_brl_blitz_NullObjectError
_2154:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2157
	call	_brl_blitz_ArrayBoundsError
_2157:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2159
	call	_brl_blitz_NullObjectError
_2159:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2162
	call	_brl_blitz_ArrayBoundsError
_2162:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2165
	call	_brl_blitz_NullObjectError
_2165:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2168
	call	_brl_blitz_ArrayBoundsError
_2168:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2170
	call	_brl_blitz_NullObjectError
_2170:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2172
	call	_brl_blitz_NullObjectError
_2172:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2175
	call	_brl_blitz_NullObjectError
_2175:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2178
	call	_brl_blitz_ArrayBoundsError
_2178:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2180
	call	_brl_blitz_NullObjectError
_2180:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2182
	call	_brl_blitz_NullObjectError
_2182:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_2183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2185
	call	_brl_blitz_NullObjectError
_2185:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2188
	call	_brl_blitz_ArrayBoundsError
_2188:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2190
	call	_brl_blitz_NullObjectError
_2190:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2192
	call	_brl_blitz_NullObjectError
_2192:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_2196
	call	_brl_blitz_NullObjectError
_2196:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_2198
	call	_brl_blitz_NullObjectError
_2198:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2200
	call	_brl_blitz_NullObjectError
_2200:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_111
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-28]
	cmp	edi,_bbNullObject
	jne	_2203
	call	_brl_blitz_NullObjectError
_2203:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2205
	call	_brl_blitz_NullObjectError
_2205:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2207
	call	_brl_blitz_NullObjectError
_2207:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_112
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2210
	call	_brl_blitz_NullObjectError
_2210:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2212
	call	_brl_blitz_NullObjectError
_2212:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_113
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2217
	call	_brl_blitz_NullObjectError
_2217:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2220
	call	_brl_blitz_ArrayBoundsError
_2220:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2222
	call	_brl_blitz_NullObjectError
_2222:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2225
	call	_brl_blitz_ArrayBoundsError
_2225:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2227
	call	_brl_blitz_NullObjectError
_2227:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2230
	call	_brl_blitz_ArrayBoundsError
_2230:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2233
	call	_brl_blitz_NullObjectError
_2233:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2236
	call	_brl_blitz_ArrayBoundsError
_2236:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2238
	call	_brl_blitz_NullObjectError
_2238:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2241
	call	_brl_blitz_ArrayBoundsError
_2241:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2243
	call	_brl_blitz_NullObjectError
_2243:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2246
	call	_brl_blitz_ArrayBoundsError
_2246:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2249
	call	_brl_blitz_NullObjectError
_2249:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2252
	call	_brl_blitz_ArrayBoundsError
_2252:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2254
	call	_brl_blitz_NullObjectError
_2254:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2257
	call	_brl_blitz_ArrayBoundsError
_2257:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2259
	call	_brl_blitz_NullObjectError
_2259:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2262
	call	_brl_blitz_ArrayBoundsError
_2262:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2265
	call	_brl_blitz_NullObjectError
_2265:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2268
	call	_brl_blitz_ArrayBoundsError
_2268:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2270
	call	_brl_blitz_NullObjectError
_2270:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2272
	call	_brl_blitz_NullObjectError
_2272:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2275
	call	_brl_blitz_NullObjectError
_2275:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2278
	call	_brl_blitz_ArrayBoundsError
_2278:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2282
	call	_brl_blitz_NullObjectError
_2282:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_2283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2285
	call	_brl_blitz_NullObjectError
_2285:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2288
	call	_brl_blitz_ArrayBoundsError
_2288:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2290
	call	_brl_blitz_NullObjectError
_2290:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2292
	call	_brl_blitz_NullObjectError
_2292:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_2295
	call	_brl_blitz_NullObjectError
_2295:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_2297
	call	_brl_blitz_NullObjectError
_2297:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_114
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-28]
	cmp	edi,_bbNullObject
	jne	_2302
	call	_brl_blitz_NullObjectError
_2302:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2304
	call	_brl_blitz_NullObjectError
_2304:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2306
	call	_brl_blitz_NullObjectError
_2306:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_115
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2309
	call	_brl_blitz_NullObjectError
_2309:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2311
	call	_brl_blitz_NullObjectError
_2311:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_116
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_117
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_118
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_119
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-44],eax
	push	_2320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2322
	call	_brl_blitz_NullObjectError
_2322:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2325
	call	_brl_blitz_ArrayBoundsError
_2325:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2327
	call	_brl_blitz_NullObjectError
_2327:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2330
	call	_brl_blitz_ArrayBoundsError
_2330:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2332
	call	_brl_blitz_NullObjectError
_2332:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2335
	call	_brl_blitz_ArrayBoundsError
_2335:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2338
	call	_brl_blitz_NullObjectError
_2338:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2341
	call	_brl_blitz_ArrayBoundsError
_2341:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2343
	call	_brl_blitz_NullObjectError
_2343:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2346
	call	_brl_blitz_ArrayBoundsError
_2346:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2348
	call	_brl_blitz_NullObjectError
_2348:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2351
	call	_brl_blitz_ArrayBoundsError
_2351:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2354
	call	_brl_blitz_NullObjectError
_2354:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2357
	call	_brl_blitz_ArrayBoundsError
_2357:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2359
	call	_brl_blitz_NullObjectError
_2359:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2362
	call	_brl_blitz_ArrayBoundsError
_2362:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2364
	call	_brl_blitz_NullObjectError
_2364:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2367
	call	_brl_blitz_ArrayBoundsError
_2367:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2370
	call	_brl_blitz_NullObjectError
_2370:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2373
	call	_brl_blitz_ArrayBoundsError
_2373:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2375
	call	_brl_blitz_NullObjectError
_2375:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_2378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2380
	call	_brl_blitz_NullObjectError
_2380:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2383
	call	_brl_blitz_ArrayBoundsError
_2383:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2385
	call	_brl_blitz_NullObjectError
_2385:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2387
	call	_brl_blitz_NullObjectError
_2387:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_2388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2390
	call	_brl_blitz_NullObjectError
_2390:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2393
	call	_brl_blitz_ArrayBoundsError
_2393:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2395
	call	_brl_blitz_NullObjectError
_2395:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2397
	call	_brl_blitz_NullObjectError
_2397:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_2398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2400
	call	_brl_blitz_NullObjectError
_2400:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2402
	call	_brl_blitz_NullObjectError
_2402:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_120
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2405
	call	_brl_blitz_NullObjectError
_2405:
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_2407
	call	_brl_blitz_NullObjectError
_2407:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_121
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2410
	call	_brl_blitz_NullObjectError
_2410:
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_122
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2415
	call	_brl_blitz_NullObjectError
_2415:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2418
	call	_brl_blitz_ArrayBoundsError
_2418:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2420
	call	_brl_blitz_NullObjectError
_2420:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2423
	call	_brl_blitz_ArrayBoundsError
_2423:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2425
	call	_brl_blitz_NullObjectError
_2425:
	push	dword [ebx+20]
	push	_123
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_108:
	add	dword [ebp-16],1
_2092:
	mov	eax,dword [ebp-60]
	cmp	dword [ebp-16],eax
	jle	_110
_109:
	call	dword [_bbOnDebugLeaveScope]
_105:
	add	dword [ebp-12],1
_2082:
	mov	eax,dword [ebp-64]
	cmp	dword [ebp-12],eax
	jle	_107
_106:
	push	_2435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_417
_417:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_SaveToJava:
	push	ebp
	mov	ebp,esp
	sub	esp,132
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	mov	eax,ebp
	push	eax
	push	_2926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_2443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_2445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_125
	push	dword [ebp-12]
	push	_124
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_126
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_127
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_128
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_129
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_130
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_132
	push	dword [ebp-12]
	push	_131
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_133
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-132],eax
	jmp	_2462
_136:
	mov	eax,ebp
	push	eax
	push	_2589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2466
	call	_brl_blitz_NullObjectError
_2466:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2469
	call	_brl_blitz_ArrayBoundsError
_2469:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2471
	call	_brl_blitz_NullObjectError
_2471:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-116],eax
	jmp	_2472
_139:
	mov	eax,ebp
	push	eax
	push	_2588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_2476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_2478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_2480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_2482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_2484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_2486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2491
	call	_brl_blitz_NullObjectError
_2491:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2494
	call	_brl_blitz_ArrayBoundsError
_2494:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2496
	call	_brl_blitz_NullObjectError
_2496:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2499
	call	_brl_blitz_ArrayBoundsError
_2499:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2501
	call	_brl_blitz_NullObjectError
_2501:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2504
	call	_brl_blitz_ArrayBoundsError
_2504:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-44],eax
	push	_2505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2507
	call	_brl_blitz_NullObjectError
_2507:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2510
	call	_brl_blitz_ArrayBoundsError
_2510:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2512
	call	_brl_blitz_NullObjectError
_2512:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2515
	call	_brl_blitz_ArrayBoundsError
_2515:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2520
	call	_brl_blitz_ArrayBoundsError
_2520:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2523
	call	_brl_blitz_NullObjectError
_2523:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2526
	call	_brl_blitz_ArrayBoundsError
_2526:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2528
	call	_brl_blitz_NullObjectError
_2528:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2531
	call	_brl_blitz_ArrayBoundsError
_2531:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2533
	call	_brl_blitz_NullObjectError
_2533:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2536
	call	_brl_blitz_ArrayBoundsError
_2536:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2539
	call	_brl_blitz_NullObjectError
_2539:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2542
	call	_brl_blitz_ArrayBoundsError
_2542:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2544
	call	_brl_blitz_NullObjectError
_2544:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2546
	call	_brl_blitz_NullObjectError
_2546:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2549
	call	_brl_blitz_NullObjectError
_2549:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2552
	call	_brl_blitz_ArrayBoundsError
_2552:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2554
	call	_brl_blitz_NullObjectError
_2554:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_2557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2559
	call	_brl_blitz_NullObjectError
_2559:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2562
	call	_brl_blitz_ArrayBoundsError
_2562:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2564
	call	_brl_blitz_NullObjectError
_2564:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2566
	call	_brl_blitz_NullObjectError
_2566:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_2567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2569
	call	_brl_blitz_NullObjectError
_2569:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2571
	call	_brl_blitz_NullObjectError
_2571:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2573
	call	_brl_blitz_NullObjectError
_2573:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-36]
	cmp	edi,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2578
	call	_brl_blitz_NullObjectError
_2578:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2580
	call	_brl_blitz_NullObjectError
_2580:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-40]
	cmp	edi,_bbNullObject
	jne	_2583
	call	_brl_blitz_NullObjectError
_2583:
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2587
	call	_brl_blitz_NullObjectError
_2587:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_137:
	add	dword [ebp-24],1
_2472:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-24],eax
	jle	_139
_138:
	call	dword [_bbOnDebugLeaveScope]
_134:
	add	dword [ebp-20],1
_2462:
	mov	eax,dword [ebp-132]
	cmp	dword [ebp-20],eax
	jle	_136
_135:
	push	_2590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_144
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-128],eax
	jmp	_2595
_147:
	mov	eax,ebp
	push	eax
	push	_2722
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2599
	call	_brl_blitz_NullObjectError
_2599:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2602
	call	_brl_blitz_ArrayBoundsError
_2602:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2604
	call	_brl_blitz_NullObjectError
_2604:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-120],eax
	jmp	_2605
_150:
	mov	eax,ebp
	push	eax
	push	_2721
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	push	_2609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	push	_2611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	push	_2613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_2615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_2617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	push	_2619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-56],eax
	push	_2620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-60],eax
	push	_2621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-64],eax
	push	_2622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2624
	call	_brl_blitz_NullObjectError
_2624:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2627
	call	_brl_blitz_ArrayBoundsError
_2627:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2629
	call	_brl_blitz_NullObjectError
_2629:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2632
	call	_brl_blitz_ArrayBoundsError
_2632:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2634
	call	_brl_blitz_NullObjectError
_2634:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2637
	call	_brl_blitz_ArrayBoundsError
_2637:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-68],eax
	push	_2638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2640
	call	_brl_blitz_NullObjectError
_2640:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2643
	call	_brl_blitz_ArrayBoundsError
_2643:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2645
	call	_brl_blitz_NullObjectError
_2645:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2648
	call	_brl_blitz_ArrayBoundsError
_2648:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2650
	call	_brl_blitz_NullObjectError
_2650:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2653
	call	_brl_blitz_ArrayBoundsError
_2653:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-72],eax
	push	_2654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2656
	call	_brl_blitz_NullObjectError
_2656:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2659
	call	_brl_blitz_ArrayBoundsError
_2659:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2661
	call	_brl_blitz_NullObjectError
_2661:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2664
	call	_brl_blitz_ArrayBoundsError
_2664:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2666
	call	_brl_blitz_NullObjectError
_2666:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2669
	call	_brl_blitz_ArrayBoundsError
_2669:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-76],eax
	push	_2670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2672
	call	_brl_blitz_NullObjectError
_2672:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2675
	call	_brl_blitz_ArrayBoundsError
_2675:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2677
	call	_brl_blitz_NullObjectError
_2677:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2679
	call	_brl_blitz_NullObjectError
_2679:
	push	dword [ebp-68]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-56],eax
	push	_2680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2682
	call	_brl_blitz_NullObjectError
_2682:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2685
	call	_brl_blitz_ArrayBoundsError
_2685:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2687
	call	_brl_blitz_NullObjectError
_2687:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2689
	call	_brl_blitz_NullObjectError
_2689:
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_2690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2692
	call	_brl_blitz_NullObjectError
_2692:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2695
	call	_brl_blitz_ArrayBoundsError
_2695:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2697
	call	_brl_blitz_NullObjectError
_2697:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2699
	call	_brl_blitz_NullObjectError
_2699:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_2700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-56]
	cmp	edi,_bbNullObject
	jne	_2702
	call	_brl_blitz_NullObjectError
_2702:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_2704
	call	_brl_blitz_NullObjectError
_2704:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2706
	call	_brl_blitz_NullObjectError
_2706:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-60]
	cmp	edi,_bbNullObject
	jne	_2709
	call	_brl_blitz_NullObjectError
_2709:
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_2711
	call	_brl_blitz_NullObjectError
_2711:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2713
	call	_brl_blitz_NullObjectError
_2713:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-64]
	cmp	edi,_bbNullObject
	jne	_2716
	call	_brl_blitz_NullObjectError
_2716:
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_2718
	call	_brl_blitz_NullObjectError
_2718:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2720
	call	_brl_blitz_NullObjectError
_2720:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_148:
	add	dword [ebp-24],1
_2605:
	mov	eax,dword [ebp-120]
	cmp	dword [ebp-24],eax
	jle	_150
_149:
	call	dword [_bbOnDebugLeaveScope]
_145:
	add	dword [ebp-20],1
_2595:
	mov	eax,dword [ebp-128]
	cmp	dword [ebp-20],eax
	jle	_147
_146:
	push	_2723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_151
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2727
	call	_brl_blitz_NullObjectError
_2727:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-124],eax
	jmp	_2728
_154:
	mov	eax,ebp
	push	eax
	push	_2849
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2732
	call	_brl_blitz_NullObjectError
_2732:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2735
	call	_brl_blitz_ArrayBoundsError
_2735:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2737
	call	_brl_blitz_NullObjectError
_2737:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	edi,eax
	jmp	_2738
_157:
	mov	eax,ebp
	push	eax
	push	_2848
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	push	_2742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	push	_2744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_bbNullObject
	push	_2746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],0
	push	_2748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	push	_2750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],0
	push	_2752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-80],eax
	push	_2753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-84],eax
	push	_2754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-88],eax
	push	_2755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2757
	call	_brl_blitz_NullObjectError
_2757:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2760
	call	_brl_blitz_ArrayBoundsError
_2760:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2762
	call	_brl_blitz_NullObjectError
_2762:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2765
	call	_brl_blitz_ArrayBoundsError
_2765:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2767
	call	_brl_blitz_NullObjectError
_2767:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2770
	call	_brl_blitz_ArrayBoundsError
_2770:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-92],eax
	push	_2771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2773
	call	_brl_blitz_NullObjectError
_2773:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2776
	call	_brl_blitz_ArrayBoundsError
_2776:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2778
	call	_brl_blitz_NullObjectError
_2778:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2781
	call	_brl_blitz_ArrayBoundsError
_2781:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2783
	call	_brl_blitz_NullObjectError
_2783:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2786
	call	_brl_blitz_ArrayBoundsError
_2786:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-96],eax
	push	_2787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2789
	call	_brl_blitz_NullObjectError
_2789:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2792
	call	_brl_blitz_ArrayBoundsError
_2792:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2794
	call	_brl_blitz_NullObjectError
_2794:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2797
	call	_brl_blitz_ArrayBoundsError
_2797:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2799
	call	_brl_blitz_NullObjectError
_2799:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2802
	call	_brl_blitz_ArrayBoundsError
_2802:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-100],eax
	push	_2803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2805
	call	_brl_blitz_NullObjectError
_2805:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2808
	call	_brl_blitz_ArrayBoundsError
_2808:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2810
	call	_brl_blitz_NullObjectError
_2810:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2812
	call	_brl_blitz_NullObjectError
_2812:
	push	dword [ebp-92]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2815
	call	_brl_blitz_NullObjectError
_2815:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2818
	call	_brl_blitz_ArrayBoundsError
_2818:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2820
	call	_brl_blitz_NullObjectError
_2820:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2822
	call	_brl_blitz_NullObjectError
_2822:
	push	dword [ebp-96]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2825
	call	_brl_blitz_NullObjectError
_2825:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2828
	call	_brl_blitz_ArrayBoundsError
_2828:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2830
	call	_brl_blitz_NullObjectError
_2830:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2832
	call	_brl_blitz_NullObjectError
_2832:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_2835
	call	_brl_blitz_NullObjectError
_2835:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2837
	call	_brl_blitz_NullObjectError
_2837:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_2840
	call	_brl_blitz_NullObjectError
_2840:
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_2842
	call	_brl_blitz_NullObjectError
_2842:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2845
	call	_brl_blitz_NullObjectError
_2845:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2847
	call	_brl_blitz_NullObjectError
_2847:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_155:
	add	dword [ebp-24],1
_2738:
	cmp	dword [ebp-24],edi
	jle	_157
_156:
	call	dword [_bbOnDebugLeaveScope]
_152:
	add	dword [ebp-20],1
_2728:
	mov	eax,dword [ebp-124]
	cmp	dword [ebp-20],eax
	jle	_154
_153:
	push	_2850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_158
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2854
	call	_brl_blitz_NullObjectError
_2854:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	edi,eax
	jmp	_2855
_161:
	mov	eax,ebp
	push	eax
	push	_2878
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2859
	call	_brl_blitz_NullObjectError
_2859:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2862
	call	_brl_blitz_ArrayBoundsError
_2862:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2864
	call	_brl_blitz_NullObjectError
_2864:
	mov	ebx,dword [ebx+28]
	sub	ebx,1
	jmp	_2865
_164:
	mov	eax,ebp
	push	eax
	push	_2877
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],0
	push	_2869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],0
	push	_2871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	push	_2873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	mov	dword [ebp-104],eax
	push	_2874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	add	eax,1
	mov	dword [ebp-108],eax
	push	_2875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	add	eax,2
	mov	dword [ebp-112],eax
	push	_2876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_84
	push	dword [ebp-112]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_84
	push	dword [ebp-108]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_165
	push	dword [ebp-104]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_162:
	add	dword [ebp-24],1
_2865:
	cmp	dword [ebp-24],ebx
	jle	_164
_163:
	call	dword [_bbOnDebugLeaveScope]
_159:
	add	dword [ebp-20],1
_2855:
	cmp	dword [ebp-20],edi
	jle	_161
_160:
	push	_2879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_166
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_167
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_169
	push	dword [ebp-12]
	push	_168
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2891
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_174
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_175
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_176
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_177
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_178
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_179
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_180
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_181
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_182
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_183
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_184
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_185
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_186
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_187
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_188
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_189
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_190
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_191
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_192
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_193
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_194
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_195
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_181
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_422
_422:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Format:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	push	ebp
	push	_2963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_2930
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	setg	al
	movzx	eax,al
_2930:
	cmp	eax,0
	je	_2932
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	setg	al
	movzx	eax,al
_2932:
	cmp	eax,0
	jne	_2934
	push	_196
	call	_brl_blitz_RuntimeError
	add	esp,4
_2934:
	push	_2935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbStringFromDouble
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_197
	push	dword [ebp-24]
	call	_bbStringFind
	add	esp,12
	mov	dword [ebp-28],eax
	push	_2939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	jne	_2940
	push	ebp
	push	_2942
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],-1
	call	dword [_bbOnDebugLeaveScope]
_2940:
	push	_2943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	add	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-24],eax
	push	_2944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_2945
	push	ebp
	push	_2950
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_198
_200:
	push	ebp
	push	_2949
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-16]
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_84
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-16]
	push	eax
	push	0
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	sub	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_198:
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-28],eax
	jg	_200
_199:
	call	dword [_bbOnDebugLeaveScope]
_2945:
	push	_2951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],0
	je	_2952
	push	ebp
	push	_2960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-12]
	add	eax,1
	mov	dword [ebp-32],eax
	push	_2955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	cmp	dword [ebp-32],eax
	jge	_2956
	push	ebp
	push	_2958
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_201
	call	dword [_bbOnDebugLeaveScope]
_2956:
	push	_2959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_brl_retro_RSet
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2952:
	push	_2962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_428
_428:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_478:
	dd	0
_464:
	db	"convert_obj2java",0
_465:
	db	"MAX_VERTEX_COUNT",0
_225:
	db	"i",0
	align	4
_466:
	dd	_bbStringClass
	dd	2147483646
	dd	6
	dw	50,48,48,48,48,48
_467:
	db	"MAX_NORMAL_COUNT",0
_468:
	db	"MAX_UV_COUNT",0
_469:
	db	"MAX_FACE_COUNT",0
	align	4
_470:
	dd	_bbStringClass
	dd	2147483646
	dd	6
	dw	49,50,48,48,48,48
_471:
	db	"MAX_MATERIAL_COUNT",0
	align	4
_472:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	49,48
_473:
	db	"MAX_OBJECT_COUNT",0
	align	4
_474:
	dd	_bbStringClass
	dd	2147483646
	dd	4
	dw	49,48,48,48
_475:
	db	"InName",0
_248:
	db	"$",0
	align	4
_bb_InName:
	dd	_bbEmptyString
_476:
	db	"MESHdata",0
_477:
	db	":TAGFX_Wavefront_obj",0
	align	4
_bb_MESHdata:
	dd	_bbNullObject
	align	4
_463:
	dd	1
	dd	_464
	dd	1
	dd	_465
	dd	_225
	dd	_466
	dd	1
	dd	_467
	dd	_225
	dd	_466
	dd	1
	dd	_468
	dd	_225
	dd	_466
	dd	1
	dd	_469
	dd	_225
	dd	_470
	dd	1
	dd	_471
	dd	_225
	dd	_472
	dd	1
	dd	_473
	dd	_225
	dd	_474
	dd	4
	dd	_475
	dd	_248
	dd	_bb_InName
	dd	4
	dd	_476
	dd	_477
	dd	_bb_MESHdata
	dd	0
_210:
	db	"TAGFX_Vector3",0
_211:
	db	"x",0
_212:
	db	"f",0
_213:
	db	"y",0
_214:
	db	"z",0
_215:
	db	"New",0
_216:
	db	"()i",0
_217:
	db	"Delete",0
	align	4
_209:
	dd	2
	dd	_210
	dd	3
	dd	_211
	dd	_212
	dd	8
	dd	3
	dd	_213
	dd	_212
	dd	12
	dd	3
	dd	_214
	dd	_212
	dd	16
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	0
	align	4
_bb_TAGFX_Vector3:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_209
	dd	20
	dd	__bb_TAGFX_Vector3_New
	dd	__bb_TAGFX_Vector3_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_219:
	db	"TAGFX_Vector2",0
	align	4
_218:
	dd	2
	dd	_219
	dd	3
	dd	_211
	dd	_212
	dd	8
	dd	3
	dd	_213
	dd	_212
	dd	12
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	0
	align	4
_bb_TAGFX_Vector2:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_218
	dd	16
	dd	__bb_TAGFX_Vector2_New
	dd	__bb_TAGFX_Vector2_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_221:
	db	"TAGFX_VertexList",0
_222:
	db	"Vertex",0
_223:
	db	"[]:TAGFX_Vector3",0
_224:
	db	"VertexCount",0
_226:
	db	"Add",0
_227:
	db	"(f,f,f)i",0
_228:
	db	"Get",0
_229:
	db	"(i):TAGFX_Vector3",0
	align	4
_220:
	dd	2
	dd	_221
	dd	3
	dd	_222
	dd	_223
	dd	8
	dd	3
	dd	_224
	dd	_225
	dd	12
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_226
	dd	_227
	dd	48
	dd	6
	dd	_228
	dd	_229
	dd	52
	dd	0
	align	4
_bb_TAGFX_VertexList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_220
	dd	16
	dd	__bb_TAGFX_VertexList_New
	dd	__bb_TAGFX_VertexList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_VertexList_Add
	dd	__bb_TAGFX_VertexList_Get
_231:
	db	"TAGFX_NormalList",0
_232:
	db	"Normal",0
_233:
	db	"NormalCount",0
	align	4
_230:
	dd	2
	dd	_231
	dd	3
	dd	_232
	dd	_223
	dd	8
	dd	3
	dd	_233
	dd	_225
	dd	12
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_226
	dd	_227
	dd	48
	dd	6
	dd	_228
	dd	_229
	dd	52
	dd	0
	align	4
_bb_TAGFX_NormalList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_230
	dd	16
	dd	__bb_TAGFX_NormalList_New
	dd	__bb_TAGFX_NormalList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_NormalList_Add
	dd	__bb_TAGFX_NormalList_Get
_235:
	db	"TAGFX_UVList",0
_236:
	db	"UV",0
_237:
	db	"[]:TAGFX_Vector2",0
_238:
	db	"UVCount",0
_239:
	db	"(f,f)i",0
_240:
	db	"(i):TAGFX_Vector2",0
	align	4
_234:
	dd	2
	dd	_235
	dd	3
	dd	_236
	dd	_237
	dd	8
	dd	3
	dd	_238
	dd	_225
	dd	12
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_226
	dd	_239
	dd	48
	dd	6
	dd	_228
	dd	_240
	dd	52
	dd	0
	align	4
_bb_TAGFX_UVList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_234
	dd	16
	dd	__bb_TAGFX_UVList_New
	dd	__bb_TAGFX_UVList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_UVList_Add
	dd	__bb_TAGFX_UVList_Get
_242:
	db	"TAGFX_Face",0
_243:
	db	"vertexID",0
_244:
	db	"[]i",0
_245:
	db	"normalID",0
_246:
	db	"uvID",0
_247:
	db	"material_name",0
	align	4
_241:
	dd	2
	dd	_242
	dd	3
	dd	_243
	dd	_244
	dd	8
	dd	3
	dd	_245
	dd	_244
	dd	12
	dd	3
	dd	_246
	dd	_244
	dd	16
	dd	3
	dd	_247
	dd	_248
	dd	20
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	0
	align	4
_bb_TAGFX_Face:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_241
	dd	24
	dd	__bb_TAGFX_Face_New
	dd	__bb_TAGFX_Face_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_250:
	db	"TAGFX_object",0
_251:
	db	"Name",0
_252:
	db	"VertexList",0
_253:
	db	":TAGFX_VertexList",0
_254:
	db	"NormalList",0
_255:
	db	":TAGFX_NormalList",0
_256:
	db	"UVList",0
_257:
	db	":TAGFX_UVList",0
_258:
	db	"FaceList",0
_259:
	db	"[]:TAGFX_Face",0
_260:
	db	"facecount",0
_261:
	db	"AddFace",0
_262:
	db	"(i,i,i,i,i,i,i,i,i,$)i",0
	align	4
_249:
	dd	2
	dd	_250
	dd	3
	dd	_251
	dd	_248
	dd	8
	dd	3
	dd	_252
	dd	_253
	dd	12
	dd	3
	dd	_254
	dd	_255
	dd	16
	dd	3
	dd	_256
	dd	_257
	dd	20
	dd	3
	dd	_258
	dd	_259
	dd	24
	dd	3
	dd	_260
	dd	_225
	dd	28
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_261
	dd	_262
	dd	48
	dd	0
	align	4
_bb_TAGFX_object:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_249
	dd	32
	dd	__bb_TAGFX_object_New
	dd	__bb_TAGFX_object_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_object_AddFace
_264:
	db	"TAGFX_Material",0
_265:
	db	"Kd",0
_266:
	db	":TAGFX_Vector3",0
_267:
	db	"Ks",0
_268:
	db	"Ka",0
_269:
	db	"Kb",0
_270:
	db	"map_Kd",0
_271:
	db	"map_Ks",0
_272:
	db	"map_Ka",0
_273:
	db	"map_Kb",0
	align	4
_263:
	dd	2
	dd	_264
	dd	3
	dd	_251
	dd	_248
	dd	8
	dd	3
	dd	_265
	dd	_266
	dd	12
	dd	3
	dd	_267
	dd	_266
	dd	16
	dd	3
	dd	_268
	dd	_266
	dd	20
	dd	3
	dd	_269
	dd	_266
	dd	24
	dd	3
	dd	_270
	dd	_248
	dd	28
	dd	3
	dd	_271
	dd	_248
	dd	32
	dd	3
	dd	_272
	dd	_248
	dd	36
	dd	3
	dd	_273
	dd	_248
	dd	40
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	0
	align	4
_bb_TAGFX_Material:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_263
	dd	44
	dd	__bb_TAGFX_Material_New
	dd	__bb_TAGFX_Material_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_275:
	db	"TAGFX_MaterialList",0
_276:
	db	"Materials",0
_277:
	db	"[]:TAGFX_Material",0
_278:
	db	"count",0
_279:
	db	"LoadFromFile",0
_280:
	db	"($)i",0
_281:
	db	"SaveToFile",0
	align	4
_274:
	dd	2
	dd	_275
	dd	3
	dd	_276
	dd	_277
	dd	8
	dd	3
	dd	_278
	dd	_225
	dd	12
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_279
	dd	_280
	dd	48
	dd	6
	dd	_281
	dd	_280
	dd	52
	dd	0
	align	4
_bb_TAGFX_MaterialList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_274
	dd	16
	dd	__bb_TAGFX_MaterialList_New
	dd	__bb_TAGFX_MaterialList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_MaterialList_LoadFromFile
	dd	__bb_TAGFX_MaterialList_SaveToFile
_283:
	db	"TAGFX_Wavefront_obj",0
_284:
	db	"singlemesh",0
_285:
	db	"loaded",0
_286:
	db	"MaterialFileName",0
_287:
	db	"UseMtl",0
_288:
	db	"ObjectCount",0
_289:
	db	"ObjectList",0
_290:
	db	"[]:TAGFX_object",0
_291:
	db	"MaterialList",0
_292:
	db	":TAGFX_MaterialList",0
_293:
	db	"Dump",0
_294:
	db	"SaveToJava",0
_295:
	db	"($,$)i",0
	align	4
_282:
	dd	2
	dd	_283
	dd	3
	dd	_284
	dd	_225
	dd	8
	dd	3
	dd	_285
	dd	_225
	dd	12
	dd	3
	dd	_286
	dd	_248
	dd	16
	dd	3
	dd	_287
	dd	_248
	dd	20
	dd	3
	dd	_288
	dd	_225
	dd	24
	dd	3
	dd	_289
	dd	_290
	dd	28
	dd	3
	dd	_291
	dd	_292
	dd	32
	dd	6
	dd	_215
	dd	_216
	dd	16
	dd	6
	dd	_217
	dd	_216
	dd	20
	dd	6
	dd	_279
	dd	_280
	dd	48
	dd	6
	dd	_293
	dd	_216
	dd	52
	dd	6
	dd	_281
	dd	_280
	dd	56
	dd	6
	dd	_294
	dd	_295
	dd	60
	dd	0
	align	4
_bb_TAGFX_Wavefront_obj:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_282
	dd	36
	dd	__bb_TAGFX_Wavefront_obj_New
	dd	__bb_TAGFX_Wavefront_obj_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_Wavefront_obj_LoadFromFile
	dd	__bb_TAGFX_Wavefront_obj_Dump
	dd	__bb_TAGFX_Wavefront_obj_SaveToFile
	dd	__bb_TAGFX_Wavefront_obj_SaveToJava
_431:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/convert_obj2java.bmx",0
	align	4
_430:
	dd	_431
	dd	11
	dd	1
	align	4
_432:
	dd	_431
	dd	12
	dd	1
	align	4
_433:
	dd	_431
	dd	14
	dd	1
	align	4
_455:
	dd	3
	dd	0
	dd	0
	align	4
_435:
	dd	_431
	dd	15
	dd	2
	align	4
_442:
	dd	_431
	dd	17
	dd	2
	align	4
_447:
	dd	_431
	dd	18
	dd	2
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	83,116,97,114,116,32,76,111,97,100,105,110,103,32,46,46
	dw	46,46
	align	4
_448:
	dd	_431
	dd	19
	dd	2
	align	4
_203:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,111,98,106
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	105,109,112,111,114,116,47
	align	4
_451:
	dd	_431
	dd	20
	dd	2
	align	4
_204:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	101,120,112,111,114,116,47,106,97,118,97,47
	align	4
_454:
	dd	_431
	dd	22
	dd	2
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	46,46,46,32,100,111,110,101
	align	4
_462:
	dd	3
	dd	0
	dd	0
	align	4
_457:
	dd	_431
	dd	25
	dd	2
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	56
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42
	align	4
_458:
	dd	_431
	dd	26
	dd	2
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	56
	dw	32,87,97,118,101,102,114,111,110,116,32,79,66,74,32,102
	dw	105,108,101,32,99,111,110,118,101,114,116,111,114,32,116,111
	dw	32,65,110,100,114,111,105,100,51,68,32,69,110,103,105,110
	dw	101,32,50,48,49,48,32,42
	align	4
_459:
	dd	_431
	dd	27
	dd	2
	align	4
_460:
	dd	_431
	dd	28
	dd	2
	align	4
_208:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,69,120,101,99,117,116,101,58,32,99,111,110,118,101,114
	dw	116,95,111,98,106,50,97,51,100,97,46,101,120,101,32,60
	dw	111,98,106,32,102,105,108,101,110,97,109,101,62
	align	4
_461:
	dd	_431
	dd	29
	dd	2
_495:
	db	"Self",0
	align	4
_494:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_266
	dd	-4
	dd	0
	align	4
_493:
	dd	3
	dd	0
	dd	0
_481:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vector3.bmx",0
	align	4
_480:
	dd	_481
	dd	8
	dd	3
	align	4
_485:
	dd	_481
	dd	9
	dd	3
	align	4
_489:
	dd	_481
	dd	10
	dd	3
_508:
	db	":TAGFX_Vector2",0
	align	4
_507:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_508
	dd	-4
	dd	0
	align	4
_506:
	dd	3
	dd	0
	dd	0
_498:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vector2.bmx",0
	align	4
_497:
	dd	_498
	dd	7
	dd	3
	align	4
_502:
	dd	_498
	dd	8
	dd	3
	align	4
_518:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_253
	dd	-4
	dd	0
_510:
	db	":TAGFX_Vector3",0
	align	4
_517:
	dd	3
	dd	0
	dd	0
_513:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vertex.bmx",0
	align	4
_512:
	dd	_513
	dd	10
	dd	3
_573:
	db	"_x",0
_574:
	db	"_y",0
_575:
	db	"_z",0
	align	4
_572:
	dd	1
	dd	_226
	dd	2
	dd	_495
	dd	_253
	dd	-4
	dd	2
	dd	_573
	dd	_212
	dd	-8
	dd	2
	dd	_574
	dd	_212
	dd	-12
	dd	2
	dd	_575
	dd	_212
	dd	-16
	dd	0
	align	4
_522:
	dd	_513
	dd	15
	dd	3
	align	4
_535:
	dd	_513
	dd	16
	dd	3
	align	4
_546:
	dd	_513
	dd	17
	dd	3
	align	4
_557:
	dd	_513
	dd	18
	dd	3
	align	4
_568:
	dd	_513
	dd	19
	dd	3
_583:
	db	"_id",0
	align	4
_582:
	dd	1
	dd	_228
	dd	2
	dd	_495
	dd	_253
	dd	-4
	dd	2
	dd	_583
	dd	_225
	dd	-8
	dd	0
	align	4
_576:
	dd	_513
	dd	24
	dd	3
	align	4
_592:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_255
	dd	-4
	dd	0
_584:
	db	":TAGFX_Vector3",0
	align	4
_591:
	dd	3
	dd	0
	dd	0
_587:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_normal.bmx",0
	align	4
_586:
	dd	_587
	dd	10
	dd	3
	align	4
_646:
	dd	1
	dd	_226
	dd	2
	dd	_495
	dd	_255
	dd	-4
	dd	2
	dd	_573
	dd	_212
	dd	-8
	dd	2
	dd	_574
	dd	_212
	dd	-12
	dd	2
	dd	_575
	dd	_212
	dd	-16
	dd	0
	align	4
_596:
	dd	_587
	dd	15
	dd	3
	align	4
_609:
	dd	_587
	dd	16
	dd	3
	align	4
_620:
	dd	_587
	dd	17
	dd	3
	align	4
_631:
	dd	_587
	dd	18
	dd	3
	align	4
_642:
	dd	_587
	dd	19
	dd	3
	align	4
_653:
	dd	1
	dd	_228
	dd	2
	dd	_495
	dd	_255
	dd	-4
	dd	2
	dd	_583
	dd	_225
	dd	-8
	dd	0
	align	4
_647:
	dd	_587
	dd	24
	dd	3
	align	4
_662:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_257
	dd	-4
	dd	0
_654:
	db	":TAGFX_Vector2",0
	align	4
_661:
	dd	3
	dd	0
	dd	0
_657:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_uv.bmx",0
	align	4
_656:
	dd	_657
	dd	10
	dd	3
	align	4
_705:
	dd	1
	dd	_226
	dd	2
	dd	_495
	dd	_257
	dd	-4
	dd	2
	dd	_573
	dd	_212
	dd	-8
	dd	2
	dd	_574
	dd	_212
	dd	-12
	dd	0
	align	4
_666:
	dd	_657
	dd	15
	dd	3
	align	4
_679:
	dd	_657
	dd	16
	dd	3
	align	4
_690:
	dd	_657
	dd	17
	dd	3
	align	4
_701:
	dd	_657
	dd	18
	dd	3
	align	4
_712:
	dd	1
	dd	_228
	dd	2
	dd	_495
	dd	_257
	dd	-4
	dd	2
	dd	_583
	dd	_225
	dd	-8
	dd	0
	align	4
_706:
	dd	_657
	dd	23
	dd	3
_748:
	db	":TAGFX_Face",0
	align	4
_747:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_748
	dd	-4
	dd	0
_713:
	db	"i",0
_715:
	db	"i",0
_717:
	db	"i",0
	align	4
_746:
	dd	3
	dd	0
	dd	0
_721:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_face.bmx",0
	align	4
_720:
	dd	_721
	dd	9
	dd	3
	align	4
_745:
	dd	3
	dd	0
	dd	2
	dd	_225
	dd	_225
	dd	-8
	dd	0
	align	4
_724:
	dd	_721
	dd	10
	dd	4
	align	4
_731:
	dd	_721
	dd	11
	dd	4
	align	4
_738:
	dd	_721
	dd	12
	dd	4
_795:
	db	":TAGFX_object",0
	align	4
_794:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_795
	dd	-4
	dd	0
_762:
	db	":TAGFX_Face",0
	align	4
_793:
	dd	3
	dd	0
	dd	0
_765:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_object.bmx",0
	align	4
_764:
	dd	_765
	dd	13
	dd	3
	align	4
_769:
	dd	_765
	dd	14
	dd	3
	align	4
_777:
	dd	_765
	dd	15
	dd	3
	align	4
_785:
	dd	_765
	dd	16
	dd	3
_966:
	db	"avi",0
_967:
	db	"bvi",0
_968:
	db	"cvi",0
_969:
	db	"nai",0
_970:
	db	"nbi",0
_971:
	db	"nci",0
_972:
	db	"auvi",0
_973:
	db	"buvi",0
_974:
	db	"cuvi",0
_975:
	db	"mtl_name",0
	align	4
_965:
	dd	1
	dd	_261
	dd	2
	dd	_495
	dd	_795
	dd	-4
	dd	2
	dd	_966
	dd	_225
	dd	-8
	dd	2
	dd	_967
	dd	_225
	dd	-12
	dd	2
	dd	_968
	dd	_225
	dd	-16
	dd	2
	dd	_969
	dd	_225
	dd	-20
	dd	2
	dd	_970
	dd	_225
	dd	-24
	dd	2
	dd	_971
	dd	_225
	dd	-28
	dd	2
	dd	_972
	dd	_225
	dd	-32
	dd	2
	dd	_973
	dd	_225
	dd	-36
	dd	2
	dd	_974
	dd	_225
	dd	-40
	dd	2
	dd	_975
	dd	_248
	dd	-44
	dd	0
	align	4
_807:
	dd	_765
	dd	21
	dd	3
	align	4
_820:
	dd	_765
	dd	24
	dd	3
	align	4
_834:
	dd	_765
	dd	25
	dd	3
	align	4
_848:
	dd	_765
	dd	26
	dd	3
	align	4
_862:
	dd	_765
	dd	29
	dd	3
	align	4
_876:
	dd	_765
	dd	30
	dd	3
	align	4
_890:
	dd	_765
	dd	31
	dd	3
	align	4
_904:
	dd	_765
	dd	34
	dd	3
	align	4
_918:
	dd	_765
	dd	35
	dd	3
	align	4
_932:
	dd	_765
	dd	36
	dd	3
	align	4
_946:
	dd	_765
	dd	38
	dd	3
	align	4
_961:
	dd	_765
	dd	40
	dd	3
_1020:
	db	":TAGFX_Material",0
	align	4
_1019:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_1020
	dd	-4
	dd	0
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	68,101,102,97,117,108,116
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,111,110,101
	align	4
_1018:
	dd	3
	dd	0
	dd	0
_986:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_Material.bmx",0
	align	4
_985:
	dd	_986
	dd	17
	dd	3
	align	4
_994:
	dd	_986
	dd	18
	dd	3
	align	4
_1002:
	dd	_986
	dd	19
	dd	3
	align	4
_1010:
	dd	_986
	dd	20
	dd	3
	align	4
_1043:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_292
	dd	-4
	dd	0
_1040:
	db	":TAGFX_Material",0
	align	4
_1042:
	dd	3
	dd	0
	dd	0
_1388:
	db	"_filename",0
_1389:
	db	"mname",0
_1390:
	db	"file",0
_1391:
	db	":brl.stream.TStream",0
_1392:
	db	"mtlid",0
	align	4
_1387:
	dd	1
	dd	_279
	dd	2
	dd	_495
	dd	_292
	dd	-4
	dd	2
	dd	_1388
	dd	_248
	dd	-8
	dd	2
	dd	_1389
	dd	_248
	dd	-12
	dd	2
	dd	_1390
	dd	_1391
	dd	-16
	dd	2
	dd	_1392
	dd	_225
	dd	-20
	dd	0
	align	4
_1047:
	dd	_986
	dd	32
	dd	2
	align	4
_1049:
	dd	_986
	dd	33
	dd	2
	align	4
_1051:
	dd	_986
	dd	34
	dd	3
	align	4
_1053:
	dd	_986
	dd	36
	dd	3
	align	4
_1386:
	dd	3
	dd	0
	dd	0
	align	4
_1055:
	dd	_986
	dd	37
	dd	4
_1383:
	db	"Line",0
_1384:
	db	"pline",0
_1385:
	db	"[]$",0
	align	4
_1382:
	dd	3
	dd	0
	dd	2
	dd	_1383
	dd	_248
	dd	-24
	dd	2
	dd	_1384
	dd	_1385
	dd	-28
	dd	0
	align	4
_1056:
	dd	_986
	dd	39
	dd	5
	align	4
_1058:
	dd	_986
	dd	40
	dd	5
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_1060:
	dd	_986
	dd	42
	dd	5
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,101,119,109,116,108
	align	4
_1098:
	dd	3
	dd	0
	dd	0
	align	4
_1064:
	dd	_986
	dd	43
	dd	6
	align	4
_1067:
	dd	_986
	dd	44
	dd	6
	align	4
_1070:
	dd	_986
	dd	45
	dd	6
	align	4
_1081:
	dd	_986
	dd	46
	dd	6
	align	4
_1094:
	dd	_986
	dd	47
	dd	6
	align	4
_1099:
	dd	_986
	dd	50
	dd	5
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,100
	align	4
_1118:
	dd	3
	dd	0
	dd	0
	align	4
_1103:
	dd	_986
	dd	51
	dd	6
	align	4
_1119:
	dd	_986
	dd	54
	dd	5
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,97
	align	4
_1138:
	dd	3
	dd	0
	dd	0
	align	4
_1123:
	dd	_986
	dd	55
	dd	6
	align	4
_1139:
	dd	_986
	dd	58
	dd	5
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,98
	align	4
_1158:
	dd	3
	dd	0
	dd	0
	align	4
_1143:
	dd	_986
	dd	59
	dd	6
	align	4
_1159:
	dd	_986
	dd	62
	dd	5
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,115
	align	4
_1178:
	dd	3
	dd	0
	dd	0
	align	4
_1163:
	dd	_986
	dd	63
	dd	6
	align	4
_1179:
	dd	_986
	dd	66
	dd	5
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,100
_1229:
	db	"r",0
_1230:
	db	"g",0
_1231:
	db	"b",0
	align	4
_1228:
	dd	3
	dd	0
	dd	2
	dd	_1229
	dd	_212
	dd	-32
	dd	2
	dd	_1230
	dd	_212
	dd	-36
	dd	2
	dd	_1231
	dd	_212
	dd	-40
	dd	0
	align	4
_1183:
	dd	_986
	dd	67
	dd	6
	align	4
_1187:
	dd	_986
	dd	68
	dd	6
	align	4
_1191:
	dd	_986
	dd	69
	dd	6
	align	4
_1195:
	dd	_986
	dd	71
	dd	6
	align	4
_1206:
	dd	_986
	dd	72
	dd	6
	align	4
_1217:
	dd	_986
	dd	73
	dd	6
	align	4
_1232:
	dd	_986
	dd	76
	dd	5
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,97
	align	4
_1281:
	dd	3
	dd	0
	dd	2
	dd	_1229
	dd	_212
	dd	-44
	dd	2
	dd	_1230
	dd	_212
	dd	-48
	dd	2
	dd	_1231
	dd	_212
	dd	-52
	dd	0
	align	4
_1236:
	dd	_986
	dd	77
	dd	6
	align	4
_1240:
	dd	_986
	dd	78
	dd	6
	align	4
_1244:
	dd	_986
	dd	79
	dd	6
	align	4
_1248:
	dd	_986
	dd	81
	dd	6
	align	4
_1259:
	dd	_986
	dd	82
	dd	6
	align	4
_1270:
	dd	_986
	dd	83
	dd	6
	align	4
_1282:
	dd	_986
	dd	86
	dd	5
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,98
	align	4
_1331:
	dd	3
	dd	0
	dd	2
	dd	_1229
	dd	_212
	dd	-56
	dd	2
	dd	_1230
	dd	_212
	dd	-60
	dd	2
	dd	_1231
	dd	_212
	dd	-64
	dd	0
	align	4
_1286:
	dd	_986
	dd	87
	dd	6
	align	4
_1290:
	dd	_986
	dd	88
	dd	6
	align	4
_1294:
	dd	_986
	dd	89
	dd	6
	align	4
_1298:
	dd	_986
	dd	91
	dd	6
	align	4
_1309:
	dd	_986
	dd	92
	dd	6
	align	4
_1320:
	dd	_986
	dd	93
	dd	6
	align	4
_1332:
	dd	_986
	dd	96
	dd	5
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,115
	align	4
_1381:
	dd	3
	dd	0
	dd	2
	dd	_1229
	dd	_212
	dd	-68
	dd	2
	dd	_1230
	dd	_212
	dd	-72
	dd	2
	dd	_1231
	dd	_212
	dd	-76
	dd	0
	align	4
_1336:
	dd	_986
	dd	97
	dd	6
	align	4
_1340:
	dd	_986
	dd	98
	dd	6
	align	4
_1344:
	dd	_986
	dd	99
	dd	6
	align	4
_1348:
	dd	_986
	dd	101
	dd	6
	align	4
_1359:
	dd	_986
	dd	102
	dd	6
	align	4
_1370:
	dd	_986
	dd	103
	dd	6
_1451:
	db	"_out",0
_1452:
	db	"m_id",0
	align	4
_1450:
	dd	1
	dd	_281
	dd	2
	dd	_495
	dd	_292
	dd	-4
	dd	2
	dd	_1388
	dd	_248
	dd	-8
	dd	2
	dd	_1451
	dd	_1391
	dd	-12
	dd	2
	dd	_1452
	dd	_225
	dd	-16
	dd	0
	align	4
_1393:
	dd	_986
	dd	113
	dd	3
	align	4
_1395:
	dd	_986
	dd	114
	dd	3
	align	4
_1397:
	dd	_986
	dd	116
	dd	3
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	91,77,65,84,69,82,73,65,76,83,93
	align	4
_1398:
	dd	_986
	dd	117
	dd	3
	align	4
_1448:
	dd	3
	dd	0
	dd	0
	align	4
_1403:
	dd	_986
	dd	120
	dd	4
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_1404:
	dd	_986
	dd	121
	dd	4
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	32,32,32,32,32,32,32,32,32,116,121,112,101,32,58,32
	dw	77,65,84,95,84,69,88,84,85,82,69
	align	4
_1405:
	dd	_986
	dd	122
	dd	4
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,32,32,32,32,32,110,97,109,101,32,58,32
	align	4
_1413:
	dd	_986
	dd	123
	dd	4
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	32,32,32,32,32,32,32,32,99,111,108,111,114,32,58,32
	dw	49,44,49,44,49,44,49
	align	4
_1414:
	dd	_986
	dd	124
	dd	4
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,118,101,114,116,101,120,95,99,111,108,111,114,32,58,32
	dw	102,97,108,115,101
	align	4
_1415:
	dd	_986
	dd	125
	dd	4
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,48,32,58,32
	align	4
_1423:
	dd	_986
	dd	126
	dd	4
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,49,32,58,32
	align	4
_1431:
	dd	_986
	dd	127
	dd	4
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,50,32,58,32
	align	4
_1439:
	dd	_986
	dd	128
	dd	4
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,116,101,120,116,117,114,101,95,51,32,58,32
	dw	110,111,110,101
	align	4
_1440:
	dd	_986
	dd	129
	dd	4
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,48,32,58,32
	dw	110,111,110,101
	align	4
_1441:
	dd	_986
	dd	130
	dd	4
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,49,32,58,32
	dw	110,111,110,101
	align	4
_1442:
	dd	_986
	dd	131
	dd	4
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,50,32,58,32
	dw	110,111,110,101
	align	4
_1443:
	dd	_986
	dd	132
	dd	4
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,51,32,58,32
	dw	110,111,110,101
	align	4
_1444:
	dd	_986
	dd	133
	dd	4
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,100,101,112,116,104,116,101,115,116,32,58,32
	dw	116,114,117,101
	align	4
_1445:
	dd	_986
	dd	134
	dd	4
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,32,32,32,97,108,112,104,97,116,101,115,116,32,58,32
	dw	102,97,108,115,101
	align	4
_1446:
	dd	_986
	dd	135
	dd	4
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,102,97,99,101,99,117,108,108,105,110,103,32,58,32
	dw	116,114,117,101
	align	4
_1447:
	dd	_986
	dd	136
	dd	4
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_1449:
	dd	_986
	dd	138
	dd	3
	align	4
_1500:
	dd	1
	dd	_215
	dd	2
	dd	_495
	dd	_477
	dd	-4
	dd	0
_1455:
	db	":TAGFX_object",0
	align	4
_1499:
	dd	3
	dd	0
	dd	0
_1459:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_Wavefront_obj.bmx",0
	align	4
_1458:
	dd	_1459
	dd	24
	dd	3
	align	4
_1470:
	dd	_1459
	dd	25
	dd	3
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	115,105,110,103,108,101,109,101,115,104
	align	4
_1483:
	dd	_1459
	dd	26
	dd	3
	align	4
_1491:
	dd	_1459
	dd	27
	dd	3
	align	4
_1495:
	dd	_1459
	dd	28
	dd	3
_1816:
	db	"objid",0
	align	4
_1815:
	dd	1
	dd	_279
	dd	2
	dd	_495
	dd	_477
	dd	-4
	dd	2
	dd	_1388
	dd	_248
	dd	-8
	dd	2
	dd	_1390
	dd	_1391
	dd	-12
	dd	2
	dd	_1816
	dd	_225
	dd	-16
	dd	0
	align	4
_1510:
	dd	_1459
	dd	32
	dd	3
	align	4
_1512:
	dd	_1459
	dd	33
	dd	3
	align	4
_1514:
	dd	_1459
	dd	35
	dd	3
	align	4
_1798:
	dd	3
	dd	0
	dd	0
	align	4
_1516:
	dd	_1459
	dd	36
	dd	4
	align	4
_1520:
	dd	_1459
	dd	37
	dd	4
	align	4
_1523:
	dd	_1459
	dd	39
	dd	4
	align	4
_1796:
	dd	3
	dd	0
	dd	2
	dd	_1383
	dd	_248
	dd	-20
	dd	2
	dd	_1384
	dd	_1385
	dd	-24
	dd	0
	align	4
_1524:
	dd	_1459
	dd	41
	dd	5
	align	4
_1526:
	dd	_1459
	dd	42
	dd	5
	align	4
_1528:
	dd	_1459
	dd	46
	dd	5
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	111
	align	4
_1569:
	dd	3
	dd	0
	dd	0
	align	4
_1532:
	dd	_1459
	dd	48
	dd	6
	align	4
_1536:
	dd	_1459
	dd	49
	dd	6
	align	4
_1539:
	dd	_1459
	dd	50
	dd	6
	align	4
_1550:
	dd	_1459
	dd	51
	dd	6
	align	4
_1565:
	dd	_1459
	dd	52
	dd	6
	align	4
_1570:
	dd	_1459
	dd	57
	dd	5
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,116,108,108,105,98
	align	4
_1584:
	dd	3
	dd	0
	dd	0
	align	4
_1574:
	dd	_1459
	dd	59
	dd	6
	align	4
_1585:
	dd	_1459
	dd	63
	dd	5
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	118
	align	4
_1611:
	dd	3
	dd	0
	dd	2
	dd	_211
	dd	_212
	dd	-28
	dd	2
	dd	_213
	dd	_212
	dd	-32
	dd	2
	dd	_214
	dd	_212
	dd	-36
	dd	0
	align	4
_1589:
	dd	_1459
	dd	64
	dd	6
	align	4
_1593:
	dd	_1459
	dd	65
	dd	6
	align	4
_1597:
	dd	_1459
	dd	66
	dd	6
	align	4
_1601:
	dd	_1459
	dd	67
	dd	6
	align	4
_1612:
	dd	_1459
	dd	72
	dd	5
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	118,110
	align	4
_1638:
	dd	3
	dd	0
	dd	2
	dd	_211
	dd	_212
	dd	-40
	dd	2
	dd	_213
	dd	_212
	dd	-44
	dd	2
	dd	_214
	dd	_212
	dd	-48
	dd	0
	align	4
_1616:
	dd	_1459
	dd	73
	dd	6
	align	4
_1620:
	dd	_1459
	dd	74
	dd	6
	align	4
_1624:
	dd	_1459
	dd	75
	dd	6
	align	4
_1628:
	dd	_1459
	dd	76
	dd	6
	align	4
_1639:
	dd	_1459
	dd	81
	dd	5
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	118,116
	align	4
_1661:
	dd	3
	dd	0
	dd	2
	dd	_211
	dd	_212
	dd	-52
	dd	2
	dd	_213
	dd	_212
	dd	-56
	dd	0
	align	4
_1643:
	dd	_1459
	dd	82
	dd	6
	align	4
_1647:
	dd	_1459
	dd	83
	dd	6
	align	4
_1651:
	dd	_1459
	dd	84
	dd	6
	align	4
_1662:
	dd	_1459
	dd	89
	dd	5
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	117,115,101,109,116,108
	align	4
_1676:
	dd	3
	dd	0
	dd	0
	align	4
_1666:
	dd	_1459
	dd	90
	dd	6
	align	4
_1677:
	dd	_1459
	dd	95
	dd	5
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	102
_1793:
	db	"vA",0
_1794:
	db	"vB",0
_1795:
	db	"vC",0
	align	4
_1792:
	dd	3
	dd	0
	dd	2
	dd	_1793
	dd	_1385
	dd	-60
	dd	2
	dd	_1794
	dd	_1385
	dd	-64
	dd	2
	dd	_1795
	dd	_1385
	dd	-68
	dd	2
	dd	_966
	dd	_225
	dd	-72
	dd	2
	dd	_967
	dd	_225
	dd	-76
	dd	2
	dd	_968
	dd	_225
	dd	-80
	dd	2
	dd	_972
	dd	_225
	dd	-84
	dd	2
	dd	_973
	dd	_225
	dd	-88
	dd	2
	dd	_974
	dd	_225
	dd	-92
	dd	2
	dd	_969
	dd	_225
	dd	-96
	dd	2
	dd	_970
	dd	_225
	dd	-100
	dd	2
	dd	_971
	dd	_225
	dd	-104
	dd	0
	align	4
_1681:
	dd	_1459
	dd	97
	dd	6
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_1685:
	dd	_1459
	dd	98
	dd	6
	align	4
_1689:
	dd	_1459
	dd	99
	dd	6
	align	4
_1693:
	dd	_1459
	dd	101
	dd	6
	align	4
_1700:
	dd	3
	dd	0
	dd	0
	align	4
_1699:
	dd	_1459
	dd	102
	dd	7
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	87,65,82,78,78,73,78,71,58,32,109,105,115,115,105,110
	dw	103,32,110,111,114,109,97,108,32,111,114,32,85,86,32,33
	dw	33,33,33
	align	4
_1701:
	dd	_1459
	dd	105
	dd	6
	align	4
_1703:
	dd	_1459
	dd	106
	dd	6
	align	4
_1705:
	dd	_1459
	dd	107
	dd	6
	align	4
_1707:
	dd	_1459
	dd	108
	dd	6
	align	4
_1709:
	dd	_1459
	dd	109
	dd	6
	align	4
_1711:
	dd	_1459
	dd	110
	dd	6
	align	4
_1713:
	dd	_1459
	dd	111
	dd	6
	align	4
_1715:
	dd	_1459
	dd	112
	dd	6
	align	4
_1717:
	dd	_1459
	dd	113
	dd	6
	align	4
_1719:
	dd	_1459
	dd	115
	dd	6
	align	4
_1730:
	dd	3
	dd	0
	dd	0
	align	4
_1721:
	dd	_1459
	dd	116
	dd	7
	align	4
_1724:
	dd	_1459
	dd	117
	dd	7
	align	4
_1727:
	dd	_1459
	dd	118
	dd	7
	align	4
_1731:
	dd	_1459
	dd	121
	dd	6
	align	4
_1751:
	dd	3
	dd	0
	dd	0
	align	4
_1733:
	dd	_1459
	dd	122
	dd	7
	align	4
_1736:
	dd	_1459
	dd	123
	dd	7
	align	4
_1739:
	dd	_1459
	dd	124
	dd	7
	align	4
_1742:
	dd	_1459
	dd	127
	dd	7
	align	4
_1745:
	dd	_1459
	dd	128
	dd	7
	align	4
_1748:
	dd	_1459
	dd	129
	dd	7
	align	4
_1752:
	dd	_1459
	dd	132
	dd	6
	align	4
_1781:
	dd	3
	dd	0
	dd	0
	align	4
_1754:
	dd	_1459
	dd	133
	dd	7
	align	4
_1757:
	dd	_1459
	dd	134
	dd	7
	align	4
_1760:
	dd	_1459
	dd	135
	dd	7
	align	4
_1763:
	dd	_1459
	dd	138
	dd	7
	align	4
_1766:
	dd	_1459
	dd	139
	dd	7
	align	4
_1769:
	dd	_1459
	dd	140
	dd	7
	align	4
_1772:
	dd	_1459
	dd	142
	dd	7
	align	4
_1775:
	dd	_1459
	dd	143
	dd	7
	align	4
_1778:
	dd	_1459
	dd	144
	dd	7
	align	4
_1782:
	dd	_1459
	dd	147
	dd	6
	align	4
_1797:
	dd	_1459
	dd	151
	dd	4
	align	4
_1799:
	dd	_1459
	dd	154
	dd	4
	align	4
_1807:
	dd	3
	dd	0
	dd	0
	align	4
_1803:
	dd	_1459
	dd	155
	dd	5
	align	4
_1808:
	dd	_1459
	dd	159
	dd	3
	align	4
_2072:
	dd	1
	dd	_293
	dd	2
	dd	_495
	dd	_477
	dd	-4
	dd	0
	align	4
_1817:
	dd	_1459
	dd	164
	dd	3
	align	4
_2071:
	dd	3
	dd	0
	dd	0
	align	4
_1821:
	dd	_1459
	dd	165
	dd	4
_2070:
	db	"o",0
	align	4
_2069:
	dd	3
	dd	0
	dd	2
	dd	_2070
	dd	_225
	dd	-8
	dd	0
	align	4
_1827:
	dd	_1459
	dd	167
	dd	5
	align	4
_78:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	79,98,106,101,99,116,32,110,97,109,101,58,32
	align	4
_1835:
	dd	_1459
	dd	169
	dd	5
	align	4
_1891:
	dd	3
	dd	0
	dd	2
	dd	_225
	dd	_225
	dd	-12
	dd	0
	align	4
_1848:
	dd	_1459
	dd	170
	dd	6
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	93,58,32
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,32,32,118,101,114,116,101,120,91
	align	4
_1892:
	dd	_1459
	dd	173
	dd	5
	align	4
_1948:
	dd	3
	dd	0
	dd	2
	dd	_225
	dd	_225
	dd	-16
	dd	0
	align	4
_1905:
	dd	_1459
	dd	174
	dd	6
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,32,32,110,111,114,109,97,108,58,32
	align	4
_1949:
	dd	_1459
	dd	177
	dd	5
	align	4
_1991:
	dd	3
	dd	0
	dd	2
	dd	_225
	dd	_225
	dd	-20
	dd	0
	align	4
_1962:
	dd	_1459
	dd	178
	dd	6
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,32,32,117,118,32,32,32,32,58,32
	align	4
_1992:
	dd	_1459
	dd	181
	dd	5
	align	4
_2068:
	dd	3
	dd	0
	dd	2
	dd	_225
	dd	_225
	dd	-24
	dd	0
	align	4
_2003:
	dd	_1459
	dd	182
	dd	10
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	32,77,65,84,58,32
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,32,32,102,97,99,101,32,32,32,32,58,32
	align	4
_2016:
	dd	_1459
	dd	183
	dd	6
	align	4
_2067:
	dd	3
	dd	0
	dd	2
	dd	_212
	dd	_225
	dd	-28
	dd	0
	align	4
_2019:
	dd	_1459
	dd	184
	dd	7
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	93,32,58,32
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,32,86,91
	align	4
_2035:
	dd	_1459
	dd	185
	dd	7
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,32,78,91
	align	4
_2051:
	dd	_1459
	dd	186
	dd	7
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,85,86,91
_2437:
	db	"o_id",0
_2438:
	db	"f_id",0
	align	4
_2436:
	dd	1
	dd	_281
	dd	2
	dd	_495
	dd	_477
	dd	-4
	dd	2
	dd	_1388
	dd	_248
	dd	-8
	dd	2
	dd	_2437
	dd	_225
	dd	-12
	dd	2
	dd	_2438
	dd	_225
	dd	-16
	dd	2
	dd	_1451
	dd	_1391
	dd	-20
	dd	0
	align	4
_2073:
	dd	_1459
	dd	196
	dd	3
	align	4
_2075:
	dd	_1459
	dd	197
	dd	3
	align	4
_2077:
	dd	_1459
	dd	198
	dd	3
	align	4
_2079:
	dd	_1459
	dd	199
	dd	3
	align	4
_2434:
	dd	3
	dd	0
	dd	0
	align	4
_2084:
	dd	_1459
	dd	201
	dd	4
_2428:
	db	"uA",0
_2429:
	db	"uB",0
_2430:
	db	"uC",0
_2431:
	db	"Ai",0
_2432:
	db	"Bi",0
_2433:
	db	"Ci",0
	align	4
_2427:
	dd	3
	dd	0
	dd	2
	dd	_1793
	dd	_266
	dd	-24
	dd	2
	dd	_1794
	dd	_266
	dd	-28
	dd	2
	dd	_1795
	dd	_266
	dd	-32
	dd	2
	dd	_2428
	dd	_508
	dd	-36
	dd	2
	dd	_2429
	dd	_508
	dd	-40
	dd	2
	dd	_2430
	dd	_508
	dd	-44
	dd	2
	dd	_2431
	dd	_225
	dd	-48
	dd	2
	dd	_2432
	dd	_225
	dd	-52
	dd	2
	dd	_2433
	dd	_225
	dd	-56
	dd	0
	align	4
_2094:
	dd	_1459
	dd	203
	dd	5
	align	4
_2096:
	dd	_1459
	dd	204
	dd	5
	align	4
_2098:
	dd	_1459
	dd	205
	dd	5
	align	4
_2100:
	dd	_1459
	dd	207
	dd	5
	align	4
_2102:
	dd	_1459
	dd	208
	dd	5
	align	4
_2104:
	dd	_1459
	dd	209
	dd	5
	align	4
_2106:
	dd	_1459
	dd	211
	dd	5
	align	4
_2108:
	dd	_1459
	dd	212
	dd	5
	align	4
_2110:
	dd	_1459
	dd	213
	dd	5
	align	4
_2112:
	dd	_1459
	dd	216
	dd	5
	align	4
_2113:
	dd	_1459
	dd	217
	dd	5
	align	4
_2114:
	dd	_1459
	dd	218
	dd	5
	align	4
_2115:
	dd	_1459
	dd	220
	dd	5
	align	4
_2131:
	dd	_1459
	dd	221
	dd	5
	align	4
_2147:
	dd	_1459
	dd	222
	dd	5
	align	4
_2163:
	dd	_1459
	dd	224
	dd	5
	align	4
_2173:
	dd	_1459
	dd	225
	dd	5
	align	4
_2183:
	dd	_1459
	dd	226
	dd	5
	align	4
_2193:
	dd	_1459
	dd	227
	dd	5
	align	4
_2194:
	dd	_1459
	dd	228
	dd	5
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,65,32,58,32
	align	4
_2201:
	dd	_1459
	dd	229
	dd	5
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,66,32,58,32
	align	4
_2208:
	dd	_1459
	dd	230
	dd	5
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,67,32,58,32
	align	4
_2215:
	dd	_1459
	dd	234
	dd	5
	align	4
_2231:
	dd	_1459
	dd	235
	dd	5
	align	4
_2247:
	dd	_1459
	dd	236
	dd	5
	align	4
_2263:
	dd	_1459
	dd	238
	dd	5
	align	4
_2273:
	dd	_1459
	dd	239
	dd	5
	align	4
_2283:
	dd	_1459
	dd	240
	dd	5
	align	4
_2293:
	dd	_1459
	dd	242
	dd	5
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,65,32,58,32
	align	4
_2300:
	dd	_1459
	dd	243
	dd	5
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,66,32,58,32
	align	4
_2307:
	dd	_1459
	dd	244
	dd	5
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,67,32,58,32
	align	4
_2314:
	dd	_1459
	dd	248
	dd	5
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,65,32,58,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2315:
	dd	_1459
	dd	249
	dd	5
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,66,32,58,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2316:
	dd	_1459
	dd	250
	dd	5
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,67,32,58,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2317:
	dd	_1459
	dd	254
	dd	5
	align	4
_2318:
	dd	_1459
	dd	255
	dd	5
	align	4
_2319:
	dd	_1459
	dd	256
	dd	5
	align	4
_2320:
	dd	_1459
	dd	258
	dd	5
	align	4
_2336:
	dd	_1459
	dd	259
	dd	5
	align	4
_2352:
	dd	_1459
	dd	260
	dd	5
	align	4
_2368:
	dd	_1459
	dd	262
	dd	5
	align	4
_2378:
	dd	_1459
	dd	263
	dd	5
	align	4
_2388:
	dd	_1459
	dd	264
	dd	5
	align	4
_2398:
	dd	_1459
	dd	266
	dd	5
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,65,32,58,32
	align	4
_2403:
	dd	_1459
	dd	267
	dd	5
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,66,32,58,32
	align	4
_2408:
	dd	_1459
	dd	268
	dd	5
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,67,32,58,32
	align	4
_2413:
	dd	_1459
	dd	270
	dd	5
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,109,97,116,32,58,32
	align	4
_2426:
	dd	_1459
	dd	271
	dd	5
	align	4
_2435:
	dd	_1459
	dd	276
	dd	3
_2927:
	db	"path",0
_2928:
	db	"id",0
	align	4
_2926:
	dd	1
	dd	_294
	dd	2
	dd	_495
	dd	_477
	dd	-4
	dd	2
	dd	_2927
	dd	_248
	dd	-8
	dd	2
	dd	_1388
	dd	_248
	dd	-12
	dd	2
	dd	_2928
	dd	_225
	dd	-16
	dd	2
	dd	_2437
	dd	_225
	dd	-20
	dd	2
	dd	_2438
	dd	_225
	dd	-24
	dd	2
	dd	_1451
	dd	_1391
	dd	-28
	dd	0
	align	4
_2439:
	dd	_1459
	dd	281
	dd	3
	align	4
_2441:
	dd	_1459
	dd	282
	dd	3
	align	4
_2443:
	dd	_1459
	dd	283
	dd	3
	align	4
_2445:
	dd	_1459
	dd	284
	dd	3
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	46,106,97,118,97
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	84,70,51,68,95
	align	4
_2447:
	dd	_1459
	dd	287
	dd	3
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	112,97,99,107,97,103,101,32,97,103,102,120,46,70,51,68
	dw	46,77,69,83,72,59
	align	4
_2448:
	dd	_1459
	dd	288
	dd	3
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_2449:
	dd	_1459
	dd	289
	dd	3
	align	4
_2450:
	dd	_1459
	dd	290
	dd	3
	align	4
_2451:
	dd	_1459
	dd	291
	dd	3
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	105,109,112,111,114,116,32,65,71,70,88,46,70,51,68,46
	dw	70,51,68,59
	align	4
_2452:
	dd	_1459
	dd	292
	dd	3
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	105,109,112,111,114,116,32,65,71,70,88,46,70,51,68,46
	dw	69,110,116,105,116,121,46,84,70,51,68,95,69,110,116,105
	dw	116,121,59
	align	4
_2453:
	dd	_1459
	dd	293
	dd	3
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	105,109,112,111,114,116,32,115,116,97,116,105,99,32,111,114
	dw	103,46,108,119,106,103,108,46,111,112,101,110,103,108,46,71
	dw	76,49,49,46,42,59
	align	4
_2454:
	dd	_1459
	dd	294
	dd	3
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	105,109,112,111,114,116,32,115,116,97,116,105,99,32,111,114
	dw	103,46,108,119,106,103,108,46,111,112,101,110,103,108,46,71
	dw	76,49,51,46,42,59
	align	4
_2455:
	dd	_1459
	dd	298
	dd	3
	align	4
_2456:
	dd	_1459
	dd	299
	dd	3
	align	4
_132:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,101,120,116,101,110,100,115,32,84,65,51,68,95,69,110
	dw	116,105,116,121
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	112,117,98,108,105,99,32,99,108,97,115,115,32,84,65,51
	dw	68,95
	align	4
_2457:
	dd	_1459
	dd	300
	dd	3
	align	4
_2458:
	dd	_1459
	dd	301
	dd	3
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,118,101,114,116,105,99,101,115,91,93,32,61,32,123
	align	4
_2459:
	dd	_1459
	dd	303
	dd	3
	align	4
_2589:
	dd	3
	dd	0
	dd	0
	align	4
_2464:
	dd	_1459
	dd	304
	dd	4
	align	4
_2588:
	dd	3
	dd	0
	dd	2
	dd	_1793
	dd	_266
	dd	-32
	dd	2
	dd	_1794
	dd	_266
	dd	-36
	dd	2
	dd	_1795
	dd	_266
	dd	-40
	dd	2
	dd	_2431
	dd	_225
	dd	-44
	dd	2
	dd	_2432
	dd	_225
	dd	-48
	dd	2
	dd	_2433
	dd	_225
	dd	-52
	dd	0
	align	4
_2474:
	dd	_1459
	dd	306
	dd	5
	align	4
_2476:
	dd	_1459
	dd	307
	dd	5
	align	4
_2478:
	dd	_1459
	dd	308
	dd	5
	align	4
_2480:
	dd	_1459
	dd	311
	dd	5
	align	4
_2482:
	dd	_1459
	dd	312
	dd	5
	align	4
_2484:
	dd	_1459
	dd	313
	dd	5
	align	4
_2486:
	dd	_1459
	dd	316
	dd	5
	align	4
_2487:
	dd	_1459
	dd	317
	dd	5
	align	4
_2488:
	dd	_1459
	dd	318
	dd	5
	align	4
_2489:
	dd	_1459
	dd	320
	dd	5
	align	4
_2505:
	dd	_1459
	dd	321
	dd	5
	align	4
_2521:
	dd	_1459
	dd	322
	dd	5
	align	4
_2537:
	dd	_1459
	dd	324
	dd	5
	align	4
_2547:
	dd	_1459
	dd	325
	dd	5
	align	4
_2557:
	dd	_1459
	dd	326
	dd	5
	align	4
_2567:
	dd	_1459
	dd	328
	dd	5
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	102,44
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,44,32
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	align	4
_2574:
	dd	_1459
	dd	329
	dd	5
	align	4
_2581:
	dd	_1459
	dd	330
	dd	5
	align	4
_2590:
	dd	_1459
	dd	336
	dd	3
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,125
	dw	59
	align	4
_2591:
	dd	_1459
	dd	338
	dd	3
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,110,111,114,109,97,108,115,91,93,32,61,32,123
	align	4
_2592:
	dd	_1459
	dd	340
	dd	3
	align	4
_2722:
	dd	3
	dd	0
	dd	0
	align	4
_2597:
	dd	_1459
	dd	341
	dd	4
	align	4
_2721:
	dd	3
	dd	0
	dd	2
	dd	_1793
	dd	_266
	dd	-56
	dd	2
	dd	_1794
	dd	_266
	dd	-60
	dd	2
	dd	_1795
	dd	_266
	dd	-64
	dd	2
	dd	_2431
	dd	_225
	dd	-68
	dd	2
	dd	_2432
	dd	_225
	dd	-72
	dd	2
	dd	_2433
	dd	_225
	dd	-76
	dd	0
	align	4
_2607:
	dd	_1459
	dd	343
	dd	5
	align	4
_2609:
	dd	_1459
	dd	344
	dd	5
	align	4
_2611:
	dd	_1459
	dd	345
	dd	5
	align	4
_2613:
	dd	_1459
	dd	347
	dd	5
	align	4
_2615:
	dd	_1459
	dd	348
	dd	5
	align	4
_2617:
	dd	_1459
	dd	349
	dd	5
	align	4
_2619:
	dd	_1459
	dd	352
	dd	5
	align	4
_2620:
	dd	_1459
	dd	353
	dd	5
	align	4
_2621:
	dd	_1459
	dd	354
	dd	5
	align	4
_2622:
	dd	_1459
	dd	356
	dd	5
	align	4
_2638:
	dd	_1459
	dd	357
	dd	5
	align	4
_2654:
	dd	_1459
	dd	358
	dd	5
	align	4
_2670:
	dd	_1459
	dd	360
	dd	5
	align	4
_2680:
	dd	_1459
	dd	361
	dd	5
	align	4
_2690:
	dd	_1459
	dd	362
	dd	5
	align	4
_2700:
	dd	_1459
	dd	364
	dd	5
	align	4
_2707:
	dd	_1459
	dd	365
	dd	5
	align	4
_2714:
	dd	_1459
	dd	366
	dd	5
	align	4
_2723:
	dd	_1459
	dd	372
	dd	3
	align	4
_2724:
	dd	_1459
	dd	376
	dd	3
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,116,101,120,116,117,114,101,91,93,32,61,32,123
	align	4
_2725:
	dd	_1459
	dd	378
	dd	3
	align	4
_2849:
	dd	3
	dd	0
	dd	0
	align	4
_2730:
	dd	_1459
	dd	379
	dd	4
	align	4
_2848:
	dd	3
	dd	0
	dd	2
	dd	_2428
	dd	_508
	dd	-80
	dd	2
	dd	_2429
	dd	_508
	dd	-84
	dd	2
	dd	_2430
	dd	_508
	dd	-88
	dd	2
	dd	_2431
	dd	_225
	dd	-92
	dd	2
	dd	_2432
	dd	_225
	dd	-96
	dd	2
	dd	_2433
	dd	_225
	dd	-100
	dd	0
	align	4
_2740:
	dd	_1459
	dd	382
	dd	5
	align	4
_2742:
	dd	_1459
	dd	383
	dd	5
	align	4
_2744:
	dd	_1459
	dd	384
	dd	5
	align	4
_2746:
	dd	_1459
	dd	386
	dd	5
	align	4
_2748:
	dd	_1459
	dd	387
	dd	5
	align	4
_2750:
	dd	_1459
	dd	388
	dd	5
	align	4
_2752:
	dd	_1459
	dd	392
	dd	5
	align	4
_2753:
	dd	_1459
	dd	393
	dd	5
	align	4
_2754:
	dd	_1459
	dd	394
	dd	5
	align	4
_2755:
	dd	_1459
	dd	396
	dd	5
	align	4
_2771:
	dd	_1459
	dd	397
	dd	5
	align	4
_2787:
	dd	_1459
	dd	398
	dd	5
	align	4
_2803:
	dd	_1459
	dd	400
	dd	5
	align	4
_2813:
	dd	_1459
	dd	401
	dd	5
	align	4
_2823:
	dd	_1459
	dd	402
	dd	5
	align	4
_2833:
	dd	_1459
	dd	404
	dd	5
	align	4
_2838:
	dd	_1459
	dd	405
	dd	5
	align	4
_2843:
	dd	_1459
	dd	406
	dd	5
	align	4
_2850:
	dd	_1459
	dd	412
	dd	3
	align	4
_2851:
	dd	_1459
	dd	414
	dd	3
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,32,32,112,114,105,118,97,116,101,32,105,110,116,32
	dw	105,110,100,105,99,101,115,91,93,32,61,32,123
	align	4
_2852:
	dd	_1459
	dd	418
	dd	3
	align	4
_2878:
	dd	3
	dd	0
	dd	0
	align	4
_2857:
	dd	_1459
	dd	419
	dd	4
	align	4
_2877:
	dd	3
	dd	0
	dd	2
	dd	_2431
	dd	_225
	dd	-104
	dd	2
	dd	_2432
	dd	_225
	dd	-108
	dd	2
	dd	_2433
	dd	_225
	dd	-112
	dd	0
	align	4
_2867:
	dd	_1459
	dd	421
	dd	5
	align	4
_2869:
	dd	_1459
	dd	422
	dd	5
	align	4
_2871:
	dd	_1459
	dd	423
	dd	5
	align	4
_2873:
	dd	_1459
	dd	425
	dd	5
	align	4
_2874:
	dd	_1459
	dd	426
	dd	5
	align	4
_2875:
	dd	_1459
	dd	427
	dd	5
	align	4
_2876:
	dd	_1459
	dd	429
	dd	5
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_2879:
	dd	_1459
	dd	435
	dd	3
	align	4
_2880:
	dd	_1459
	dd	437
	dd	3
	align	4
_2881:
	dd	_1459
	dd	438
	dd	3
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	112,117,98,108,105,99,32,105,110,116,32,109,97,116,101,114
	dw	105,97,108,95,105,100,59
	align	4
_2882:
	dd	_1459
	dd	439
	dd	3
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	112,117,98,108,105,99,32,84,70,51,68,95,86,66,79,32
	dw	118,98,111,59
	align	4
_2883:
	dd	_1459
	dd	440
	dd	3
	align	4
_2884:
	dd	_1459
	dd	441
	dd	1
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,41
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,112,117,98,108,105,99,32,84,70,51,68,95
	align	4
_2885:
	dd	_1459
	dd	442
	dd	1
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,123
	align	4
_2886:
	dd	_1459
	dd	443
	dd	1
	align	4
_2891:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	32,32,116,104,105,115,46,99,108,97,115,115,110,97,109,101
	dw	32,61,32,34,67,76,65,83,83,95,77,69,83,72,34,59
	align	4
_2892:
	dd	_1459
	dd	444
	dd	1
	align	4
_174:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	32,32,116,104,105,115,46,118,98,111,32,61,32,110,101,119
	dw	32,84,70,51,68,95,86,66,79,40,41,59
	align	4
_2893:
	dd	_1459
	dd	445
	dd	1
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,86,101,114,116,101,120,66,117,102,102,101,114,40,116,104
	dw	105,115,46,118,101,114,116,105,99,101,115,41,59
	align	4
_2894:
	dd	_1459
	dd	446
	dd	1
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	44
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,78,111,114,109,97,108,66,117,102,102,101,114,40,116,104
	dw	105,115,46,110,111,114,109,97,108,115,41,59
	align	4
_2895:
	dd	_1459
	dd	447
	dd	1
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	57
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,84,101,120,116,117,114,101,66,117,102,102,101,114,40,116
	dw	104,105,115,46,116,101,120,116,117,114,101,44,71,76,95,84
	dw	69,88,84,85,82,69,48,41,59
	align	4
_2896:
	dd	_1459
	dd	448
	dd	1
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	57
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,84,101,120,116,117,114,101,66,117,102,102,101,114,40,116
	dw	104,105,115,46,116,101,120,116,117,114,101,44,71,76,95,84
	dw	69,88,84,85,82,69,49,41,59
	align	4
_2897:
	dd	_1459
	dd	449
	dd	1
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,73,110,100,105,99,101,115,66,117,102,102,101,114,40,116
	dw	104,105,115,46,105,110,100,105,99,101,115,41,59
	align	4
_2898:
	dd	_1459
	dd	450
	dd	1
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	32,32,116,104,105,115,46,118,98,111,46,66,117,105,108,100
	dw	40,41,59
	align	4
_2899:
	dd	_1459
	dd	451
	dd	1
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,125
	align	4
_2900:
	dd	_1459
	dd	452
	dd	1
	align	4
_2901:
	dd	_1459
	dd	453
	dd	1
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	32,112,117,98,108,105,99,32,118,111,105,100,32,100,114,97
	dw	119,40,41
	align	4
_2902:
	dd	_1459
	dd	454
	dd	1
	align	4
_2903:
	dd	_1459
	dd	455
	dd	1
	align	4
_2904:
	dd	_1459
	dd	456
	dd	1
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,105,102,32,40,116,104,105,115,46,109,97,116,101,114
	dw	105,97,108,95,105,100,32,33,61,32,45,49,41
	align	4
_2905:
	dd	_1459
	dd	457
	dd	1
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,123
	align	4
_2906:
	dd	_1459
	dd	458
	dd	1
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	51
	dw	32,32,32,32,32,32,70,51,68,46,83,117,114,102,97,99
	dw	101,115,46,65,112,112,108,121,77,97,116,101,114,105,97,108
	dw	40,116,104,105,115,46,109,97,116,101,114,105,97,108,95,105
	dw	100,41,59
	align	4
_2907:
	dd	_1459
	dd	459
	dd	1
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,125
	align	4
_2908:
	dd	_1459
	dd	460
	dd	1
	align	4
_2909:
	dd	_1459
	dd	461
	dd	1
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	32,32,103,108,80,117,115,104,77,97,116,114,105,120,40,41
	dw	59
	align	4
_2910:
	dd	_1459
	dd	462
	dd	1
	align	4
_2911:
	dd	_1459
	dd	463
	dd	1
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	53
	dw	32,32,103,108,83,99,97,108,101,102,40,116,104,105,115,46
	dw	115,99,97,108,101,46,120,44,32,116,104,105,115,46,115,99
	dw	97,108,101,46,121,44,32,116,104,105,115,46,115,99,97,108
	dw	101,46,122,41,59
	align	4
_2912:
	dd	_1459
	dd	464
	dd	1
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	66
	dw	32,32,103,108,84,114,97,110,115,108,97,116,101,102,40,116
	dw	104,105,115,46,112,111,115,105,116,105,111,110,46,120,44,32
	dw	116,104,105,115,46,112,111,115,105,116,105,111,110,46,121,44
	dw	32,116,104,105,115,46,112,111,115,105,116,105,111,110,46,122
	dw	41,59
	align	4
_2913:
	dd	_1459
	dd	465
	dd	1
	align	4
_2914:
	dd	_1459
	dd	466
	dd	1
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,120,44,32,49,46,48
	dw	102,44,32,48,46,48,102,44,32,48,46,48,102,41,59
	align	4
_2915:
	dd	_1459
	dd	467
	dd	1
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,121,44,32,48,46,48
	dw	102,44,32,49,46,48,102,44,32,48,46,48,102,41,59
	align	4
_2916:
	dd	_1459
	dd	468
	dd	1
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,122,44,32,48,46,48
	dw	102,44,32,48,46,48,102,44,32,49,46,48,102,41,59
	align	4
_2917:
	dd	_1459
	dd	469
	dd	1
	align	4
_2918:
	dd	_1459
	dd	470
	dd	1
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	32,32,116,104,105,115,46,118,98,111,46,68,114,97,119,86
	dw	101,114,116,101,120,66,117,102,102,101,114,40,41,59
	align	4
_2919:
	dd	_1459
	dd	471
	dd	1
	align	4
_2920:
	dd	_1459
	dd	472
	dd	1
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,103,108,83,99,97,108,101,102,40,49,44,32,49,44
	dw	32,49,41,59
	align	4
_2921:
	dd	_1459
	dd	473
	dd	1
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,103,108,80,111,112,77,97,116,114,105,120,40,41,59
	align	4
_2922:
	dd	_1459
	dd	474
	dd	1
	align	4
_2923:
	dd	_1459
	dd	475
	dd	1
	align	4
_2924:
	dd	_1459
	dd	476
	dd	1
	align	4
_2925:
	dd	_1459
	dd	478
	dd	3
_2964:
	db	"Format",0
_2965:
	db	"number",0
_2966:
	db	"d",0
_2967:
	db	"decimal",0
_2968:
	db	"comma",0
_2969:
	db	"padleft",0
_2970:
	db	"str",0
_2971:
	db	"dl",0
	align	4
_2963:
	dd	1
	dd	_2964
	dd	2
	dd	_2965
	dd	_2966
	dd	-8
	dd	2
	dd	_2967
	dd	_225
	dd	-12
	dd	2
	dd	_2968
	dd	_225
	dd	-16
	dd	2
	dd	_2969
	dd	_225
	dd	-20
	dd	2
	dd	_2970
	dd	_248
	dd	-24
	dd	2
	dd	_2971
	dd	_225
	dd	-28
	dd	0
	align	4
_2929:
	dd	_1459
	dd	486
	dd	3
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	78,101,103,97,116,105,118,101,32,110,117,109,98,101,114,115
	dw	32,110,111,116,32,97,108,108,111,119,101,100,32,105,110,32
	dw	70,111,114,109,97,116,40,41
	align	4
_2935:
	dd	_1459
	dd	488
	dd	3
	align	4
_2937:
	dd	_1459
	dd	489
	dd	3
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_2939:
	dd	_1459
	dd	490
	dd	3
	align	4
_2942:
	dd	3
	dd	0
	dd	0
	align	4
_2941:
	dd	_1459
	dd	490
	dd	23
	align	4
_2943:
	dd	_1459
	dd	491
	dd	3
	align	4
_2944:
	dd	_1459
	dd	492
	dd	3
	align	4
_2950:
	dd	3
	dd	0
	dd	0
	align	4
_2946:
	dd	_1459
	dd	493
	dd	4
	align	4
_2949:
	dd	3
	dd	0
	dd	0
	align	4
_2947:
	dd	_1459
	dd	494
	dd	5
	align	4
_2948:
	dd	_1459
	dd	495
	dd	5
	align	4
_2951:
	dd	_1459
	dd	498
	dd	3
_2961:
	db	"paddedLength",0
	align	4
_2960:
	dd	3
	dd	0
	dd	2
	dd	_2961
	dd	_225
	dd	-32
	dd	0
	align	4
_2953:
	dd	_1459
	dd	499
	dd	4
	align	4
_2955:
	dd	_1459
	dd	500
	dd	4
	align	4
_2958:
	dd	3
	dd	0
	dd	0
	align	4
_2957:
	dd	_1459
	dd	500
	dd	38
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,114,114,111,114
	align	4
_2959:
	dd	_1459
	dd	501
	dd	4
	align	4
_2962:
	dd	_1459
	dd	503
	dd	3
