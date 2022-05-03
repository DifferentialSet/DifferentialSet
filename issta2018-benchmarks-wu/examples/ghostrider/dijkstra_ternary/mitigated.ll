

422:                                              ; preds = %356, %402, %408
  %423 = phi i64 [ %409, %408 ], [ %365, %402 ], [ %365, %356 ]
  %424 = phi i64 [ %410, %408 ], [ %357, %402 ], [ %357, %356 ]
  %425 = phi i64 [ %411, %408 ], [ %358, %402 ], [ %358, %356 ]
  %426 = phi i64 [ %412, %408 ], [ %359, %402 ], [ %359, %356 ]
  %427 = phi i64 [ %413, %408 ], [ %360, %402 ], [ %360, %356 ]
  %428 = phi i64 [ %414, %408 ], [ %361, %402 ], [ %361, %356 ]
  %429 = phi i64 [ %415, %408 ], [ %362, %402 ], [ %362, %356 ]
  %430 = phi i32 [ %417, %408 ], [ %364, %402 ], [ %364, %356 ]
  br i1 %32, label %446, label %431

431:                                              ; preds = %368, %422
  %432 = phi i32 [ %430, %422 ], [ -1, %368 ]
  %433 = phi i64 [ %429, %422 ], [ %39, %368 ]
  %434 = phi i64 [ %428, %422 ], [ %78, %368 ]
  %435 = phi i64 [ %427, %422 ], [ %131, %368 ]
  %436 = phi i64 [ %426, %422 ], [ %186, %368 ]
  %437 = phi i64 [ %425, %422 ], [ %244, %368 ]
  %438 = phi i64 [ %424, %422 ], [ %305, %368 ]
  %439 = phi i64 [ %423, %422 ], [ %369, %368 ]
  %440 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %441 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %442 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %443 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %444 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %445 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

446:                                              ; preds = %422
  %447 = sext i32 %430 to i64
  %448 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %447
  %449 = bitcast i32* %448 to i64*
  %450 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %449, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %451 = trunc i64 %450 to i32
  %452 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %447, i64 0
  %453 = bitcast i32* %452 to i64*
  %454 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %453, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %455 = trunc i64 %454 to i32
  %456 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %457 = trunc i64 %456 to i32
  %458 = add nsw i32 %455, %451
  %459 = icmp slt i32 %458, %457
  br i1 %459, label %464, label %460

460:                                              ; preds = %446
  %461 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %462 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %463 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

464:                                              ; preds = %446
  %465 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %449, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %466 = trunc i64 %465 to i32
  %467 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %453, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %468 = trunc i64 %467 to i32
  %469 = add nsw i32 %468, %466
  store volatile i32 %469, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

470:                                              ; preds = %460, %464, %431
  %471 = phi i32 [ %430, %460 ], [ %430, %464 ], [ %432, %431 ]
  %472 = phi i64 [ %429, %460 ], [ %429, %464 ], [ %433, %431 ]
  %473 = phi i64 [ %428, %460 ], [ %428, %464 ], [ %434, %431 ]
  %474 = phi i64 [ %427, %460 ], [ %427, %464 ], [ %435, %431 ]
  %475 = phi i64 [ %426, %460 ], [ %426, %464 ], [ %436, %431 ]
  %476 = phi i64 [ %425, %460 ], [ %425, %464 ], [ %437, %431 ]
  %477 = phi i64 [ %424, %460 ], [ %424, %464 ], [ %438, %431 ]
  %478 = phi i64 [ %423, %460 ], [ %423, %464 ], [ %439, %431 ]
  %479 = trunc i64 %472 to i32
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %470
  %482 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %483 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %484 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %485 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %486 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %487 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

488:                                              ; preds = %470
  %489 = sext i32 %471 to i64
  %490 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %489
  %491 = bitcast i32* %490 to i64*
  %492 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %491, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %493 = trunc i64 %492 to i32
  %494 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %489, i64 1
  %495 = bitcast i32* %494 to i64*
  %496 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %495, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %497 = trunc i64 %496 to i32
  %498 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %499 = trunc i64 %498 to i32
  %500 = add nsw i32 %497, %493
  %501 = icmp slt i32 %500, %499
  br i1 %501, label %506, label %502

502:                                              ; preds = %488
  %503 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %504 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %505 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

506:                                              ; preds = %488
  %507 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %491, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %508 = trunc i64 %507 to i32
  %509 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %495, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %510 = trunc i64 %509 to i32
  %511 = add nsw i32 %510, %508
  store volatile i32 %511, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

512:                                              ; preds = %502, %506, %481
  %513 = trunc i64 %473 to i32
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %522, label %515

515:                                              ; preds = %512
  %516 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %517 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %518 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %519 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %520 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %521 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

522:                                              ; preds = %512
  %523 = sext i32 %471 to i64
  %524 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %523
  %525 = bitcast i32* %524 to i64*
  %526 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %525, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %527 = trunc i64 %526 to i32
  %528 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %523, i64 2
  %529 = bitcast i32* %528 to i64*
  %530 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %529, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %531 = trunc i64 %530 to i32
  %532 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %533 = trunc i64 %532 to i32
  %534 = add nsw i32 %531, %527
  %535 = icmp slt i32 %534, %533
  br i1 %535, label %540, label %536

536:                                              ; preds = %522
  %537 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %538 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %539 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

540:                                              ; preds = %522
  %541 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %525, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %542 = trunc i64 %541 to i32
  %543 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %529, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %544 = trunc i64 %543 to i32
  %545 = add nsw i32 %544, %542
  store volatile i32 %545, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

546:                                              ; preds = %536, %540, %515
  %547 = trunc i64 %474 to i32
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %556, label %549

549:                                              ; preds = %546
  %550 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %551 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %552 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %553 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %554 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %555 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

556:                                              ; preds = %546
  %557 = sext i32 %471 to i64
  %558 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %557
  %559 = bitcast i32* %558 to i64*
  %560 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %559, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %561 = trunc i64 %560 to i32
  %562 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %557, i64 3
  %563 = bitcast i32* %562 to i64*
  %564 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %563, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %565 = trunc i64 %564 to i32
  %566 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %567 = trunc i64 %566 to i32
  %568 = add nsw i32 %565, %561
  %569 = icmp slt i32 %568, %567
  br i1 %569, label %574, label %570

570:                                              ; preds = %556
  %571 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %572 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %573 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

574:                                              ; preds = %556
  %575 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %559, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %576 = trunc i64 %575 to i32
  %577 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %563, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %578 = trunc i64 %577 to i32
  %579 = add nsw i32 %578, %576
  store volatile i32 %579, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

580:                                              ; preds = %570, %574, %549
  %581 = trunc i64 %475 to i32
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %590, label %583

583:                                              ; preds = %580
  %584 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %585 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %586 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %587 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %588 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %589 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

590:                                              ; preds = %580
  %591 = sext i32 %471 to i64
  %592 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %591
  %593 = bitcast i32* %592 to i64*
  %594 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %593, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %595 = trunc i64 %594 to i32
  %596 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %591, i64 4
  %597 = bitcast i32* %596 to i64*
  %598 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %597, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %599 = trunc i64 %598 to i32
  %600 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %601 = trunc i64 %600 to i32
  %602 = add nsw i32 %599, %595
  %603 = icmp slt i32 %602, %601
  br i1 %603, label %608, label %604

604:                                              ; preds = %590
  %605 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %606 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %607 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

608:                                              ; preds = %590
  %609 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %593, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %610 = trunc i64 %609 to i32
  %611 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %597, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %612 = trunc i64 %611 to i32
  %613 = add nsw i32 %612, %610
  store volatile i32 %613, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

614:                                              ; preds = %604, %608, %583
  %615 = trunc i64 %476 to i32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %624, label %617

617:                                              ; preds = %614
  %618 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %619 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %620 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %621 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %622 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %623 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

624:                                              ; preds = %614
  %625 = sext i32 %471 to i64
  %626 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %625
  %627 = bitcast i32* %626 to i64*
  %628 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %627, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %629 = trunc i64 %628 to i32
  %630 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %625, i64 5
  %631 = bitcast i32* %630 to i64*
  %632 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %631, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %633 = trunc i64 %632 to i32
  %634 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %635 = trunc i64 %634 to i32
  %636 = add nsw i32 %633, %629
  %637 = icmp slt i32 %636, %635
  br i1 %637, label %642, label %638

638:                                              ; preds = %624
  %639 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %640 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %641 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

642:                                              ; preds = %624
  %643 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %627, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %644 = trunc i64 %643 to i32
  %645 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %631, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %646 = trunc i64 %645 to i32
  %647 = add nsw i32 %646, %644
  store volatile i32 %647, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

648:                                              ; preds = %638, %642, %617
  %649 = trunc i64 %477 to i32
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %658, label %651

651:                                              ; preds = %648
  %652 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %653 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %654 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %655 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %656 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %657 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

658:                                              ; preds = %648
  %659 = sext i32 %471 to i64
  %660 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %659
  %661 = bitcast i32* %660 to i64*
  %662 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %661, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %663 = trunc i64 %662 to i32
  %664 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %659, i64 6
  %665 = bitcast i32* %664 to i64*
  %666 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %665, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %667 = trunc i64 %666 to i32
  %668 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %669 = trunc i64 %668 to i32
  %670 = add nsw i32 %667, %663
  %671 = icmp slt i32 %670, %669
  br i1 %671, label %676, label %672

672:                                              ; preds = %658
  %673 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %674 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %675 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

676:                                              ; preds = %658
  %677 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %661, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %678 = trunc i64 %677 to i32
  %679 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %665, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %680 = trunc i64 %679 to i32
  %681 = add nsw i32 %680, %678
  store volatile i32 %681, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

682:                                              ; preds = %672, %676, %651
  %683 = trunc i64 %478 to i32
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %682
  %686 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %687 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %688 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %689 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %690 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %691 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

692:                                              ; preds = %682
  %693 = sext i32 %471 to i64
  %694 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %693
  %695 = bitcast i32* %694 to i64*
  %696 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %695, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %697 = trunc i64 %696 to i32
  %698 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %693, i64 7
  %699 = bitcast i32* %698 to i64*
  %700 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %699, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %701 = trunc i64 %700 to i32
  %702 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %703 = trunc i64 %702 to i32
  %704 = add nsw i32 %701, %697
  %705 = icmp slt i32 %704, %703
  br i1 %705, label %710, label %706

706:                                              ; preds = %692
  %707 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %708 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %709 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

710:                                              ; preds = %692
  %711 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %695, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %712 = trunc i64 %711 to i32
  %713 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %699, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %714 = trunc i64 %713 to i32
  %715 = add nsw i32 %714, %712
  store volatile i32 %715, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

716:                                              ; preds = %706, %710, %685
  br i1 %32, label %717, label %747

717:                                              ; preds = %716
  %718 = icmp sgt i32 %471, -1
  %719 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  br i1 %718, label %727, label %720

720:                                              ; preds = %717
  %721 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %722 = shl nsw i32 %471, 2
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %723
  %725 = bitcast i8* %724 to i32*
  %726 = load volatile i32, i32* %725, align 4, !tbaa !33
  br label %741

727:                                              ; preds = %717
  %728 = trunc i64 %719 to i32
  %729 = zext i32 %471 to i64
  %730 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %729
  %731 = bitcast i32* %730 to i64*
  %732 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %731, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %733 = trunc i64 %732 to i32
  %734 = icmp slt i32 %728, %733
  br i1 %734, label %741, label %735

735:                                              ; preds = %727
  %736 = shl nsw i32 %471, 2
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %737
  %739 = bitcast i8* %738 to i32*
  %740 = load volatile i32, i32* %739, align 4, !tbaa !33
  br label %747

741:                                              ; preds = %720, %727
  %742 = load i32, i32* @secret, align 4, !tbaa !33
  %743 = shl nsw i32 %742, 2
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %744
  %746 = bitcast i8* %745 to i32*
  store volatile i32 1, i32* %746, align 4, !tbaa !33
  br label %747

747:                                              ; preds = %716, %735, %741
  %748 = phi i32 [ %742, %741 ], [ %471, %735 ], [ %471, %716 ]
  br i1 %480, label %749, label %780

749:                                              ; preds = %747
  %750 = icmp sgt i32 %748, -1
  %751 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  br i1 %750, label %759, label %752

752:                                              ; preds = %749
  %753 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %754 = shl nsw i32 %748, 2
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %755
  %757 = bitcast i8* %756 to i32*
  %758 = load volatile i32, i32* %757, align 4, !tbaa !33
  br label %773

759:                                              ; preds = %749
  %760 = trunc i64 %751 to i32
  %761 = zext i32 %748 to i64
  %762 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %761
  %763 = bitcast i32* %762 to i64*
  %764 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %763, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %765 = trunc i64 %764 to i32
  %766 = icmp slt i32 %760, %765
  br i1 %766, label %773, label %767

767:                                              ; preds = %759
  %768 = shl nsw i32 %748, 2
  %769 = zext i32 %768 to i64
  %770 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %769
  %771 = bitcast i8* %770 to i32*
  %772 = load volatile i32, i32* %771, align 4, !tbaa !33
  br label %780

773:                                              ; preds = %752, %759
  %774 = load i32, i32* @secret, align 4, !tbaa !33
  %775 = add nsw i32 %774, 1
  %776 = shl nsw i32 %775, 2
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %777
  %779 = bitcast i8* %778 to i32*
  store volatile i32 1, i32* %779, align 4, !tbaa !33
  br label %780

780:                                              ; preds = %747, %767, %773
  %781 = phi i32 [ %775, %773 ], [ %748, %767 ], [ %748, %747 ]
  br i1 %514, label %782, label %813

782:                                              ; preds = %780
  %783 = icmp sgt i32 %781, -1
  %784 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  br i1 %783, label %792, label %785

785:                                              ; preds = %782
  %786 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %787 = shl nsw i32 %781, 2
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %788
  %790 = bitcast i8* %789 to i32*
  %791 = load volatile i32, i32* %790, align 4, !tbaa !33
  br label %806

792:                                              ; preds = %782
  %793 = trunc i64 %784 to i32
  %794 = zext i32 %781 to i64
  %795 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %794
  %796 = bitcast i32* %795 to i64*
  %797 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %796, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %798 = trunc i64 %797 to i32
  %799 = icmp slt i32 %793, %798
  br i1 %799, label %806, label %800

800:                                              ; preds = %792
  %801 = shl nsw i32 %781, 2
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %802
  %804 = bitcast i8* %803 to i32*
  %805 = load volatile i32, i32* %804, align 4, !tbaa !33
  br label %813

806:                                              ; preds = %785, %792
  %807 = load i32, i32* @secret, align 4, !tbaa !33
  %808 = add nsw i32 %807, 2
  %809 = shl nsw i32 %808, 2
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %810
  %812 = bitcast i8* %811 to i32*
  store volatile i32 1, i32* %812, align 4, !tbaa !33
  br label %813

813:                                              ; preds = %780, %800, %806
  %814 = phi i32 [ %808, %806 ], [ %781, %800 ], [ %781, %780 ]
  br i1 %548, label %815, label %846

815:                                              ; preds = %813
  %816 = icmp sgt i32 %814, -1
  %817 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  br i1 %816, label %825, label %818

818:                                              ; preds = %815
  %819 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %820 = shl nsw i32 %814, 2
  %821 = zext i32 %820 to i64
  %822 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %821
  %823 = bitcast i8* %822 to i32*
  %824 = load volatile i32, i32* %823, align 4, !tbaa !33
  br label %839

825:                                              ; preds = %815
  %826 = trunc i64 %817 to i32
  %827 = zext i32 %814 to i64
  %828 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %827
  %829 = bitcast i32* %828 to i64*
  %830 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %829, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %826, %831
  br i1 %832, label %839, label %833

833:                                              ; preds = %825
  %834 = shl nsw i32 %814, 2
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %835
  %837 = bitcast i8* %836 to i32*
  %838 = load volatile i32, i32* %837, align 4, !tbaa !33
  br label %846

839:                                              ; preds = %818, %825
  %840 = load i32, i32* @secret, align 4, !tbaa !33
  %841 = add nsw i32 %840, 3
  %842 = shl nsw i32 %841, 2
  %843 = zext i32 %842 to i64
  %844 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %843
  %845 = bitcast i8* %844 to i32*
  store volatile i32 1, i32* %845, align 4, !tbaa !33
  br label %846

846:                                              ; preds = %813, %833, %839
  %847 = phi i32 [ %841, %839 ], [ %814, %833 ], [ %814, %813 ]
  br i1 %582, label %848, label %879

848:                                              ; preds = %846
  %849 = icmp sgt i32 %847, -1
  %850 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  br i1 %849, label %858, label %851

851:                                              ; preds = %848
  %852 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %853 = shl nsw i32 %847, 2
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %854
  %856 = bitcast i8* %855 to i32*
  %857 = load volatile i32, i32* %856, align 4, !tbaa !33
  br label %872

858:                                              ; preds = %848
  %859 = trunc i64 %850 to i32
  %860 = zext i32 %847 to i64
  %861 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %860
  %862 = bitcast i32* %861 to i64*
  %863 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %862, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %864 = trunc i64 %863 to i32
  %865 = icmp slt i32 %859, %864
  br i1 %865, label %872, label %866

866:                                              ; preds = %858
  %867 = shl nsw i32 %847, 2
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %868
  %870 = bitcast i8* %869 to i32*
  %871 = load volatile i32, i32* %870, align 4, !tbaa !33
  br label %879

872:                                              ; preds = %851, %858
  %873 = load i32, i32* @secret, align 4, !tbaa !33
  %874 = add nsw i32 %873, 4
  %875 = shl nsw i32 %874, 2
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %876
  %878 = bitcast i8* %877 to i32*
  store volatile i32 1, i32* %878, align 4, !tbaa !33
  br label %879

879:                                              ; preds = %846, %866, %872
  %880 = phi i32 [ %874, %872 ], [ %847, %866 ], [ %847, %846 ]
  br i1 %616, label %881, label %912

881:                                              ; preds = %879
  %882 = icmp sgt i32 %880, -1
  %883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  br i1 %882, label %891, label %884

884:                                              ; preds = %881
  %885 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %886 = shl nsw i32 %880, 2
  %887 = zext i32 %886 to i64
  %888 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %887
  %889 = bitcast i8* %888 to i32*
  %890 = load volatile i32, i32* %889, align 4, !tbaa !33
  br label %905

891:                                              ; preds = %881
  %892 = trunc i64 %883 to i32
  %893 = zext i32 %880 to i64
  %894 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %893
  %895 = bitcast i32* %894 to i64*
  %896 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %895, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %897 = trunc i64 %896 to i32
  %898 = icmp slt i32 %892, %897
  br i1 %898, label %905, label %899

899:                                              ; preds = %891
  %900 = shl nsw i32 %880, 2
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %901
  %903 = bitcast i8* %902 to i32*
  %904 = load volatile i32, i32* %903, align 4, !tbaa !33
  br label %912

905:                                              ; preds = %884, %891
  %906 = load i32, i32* @secret, align 4, !tbaa !33
  %907 = add nsw i32 %906, 5
  %908 = shl nsw i32 %907, 2
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %909
  %911 = bitcast i8* %910 to i32*
  store volatile i32 1, i32* %911, align 4, !tbaa !33
  br label %912

912:                                              ; preds = %879, %899, %905
  %913 = phi i32 [ %907, %905 ], [ %880, %899 ], [ %880, %879 ]
  br i1 %650, label %914, label %945

914:                                              ; preds = %912
  %915 = icmp sgt i32 %913, -1
  %916 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  br i1 %915, label %924, label %917

917:                                              ; preds = %914
  %918 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %919 = shl nsw i32 %913, 2
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %920
  %922 = bitcast i8* %921 to i32*
  %923 = load volatile i32, i32* %922, align 4, !tbaa !33
  br label %938

924:                                              ; preds = %914
  %925 = trunc i64 %916 to i32
  %926 = zext i32 %913 to i64
  %927 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %926
  %928 = bitcast i32* %927 to i64*
  %929 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %928, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %930 = trunc i64 %929 to i32
  %931 = icmp slt i32 %925, %930
  br i1 %931, label %938, label %932

932:                                              ; preds = %924
  %933 = shl nsw i32 %913, 2
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %934
  %936 = bitcast i8* %935 to i32*
  %937 = load volatile i32, i32* %936, align 4, !tbaa !33
  br label %945

938:                                              ; preds = %917, %924
  %939 = load i32, i32* @secret, align 4, !tbaa !33
  %940 = add nsw i32 %939, 6
  %941 = shl nsw i32 %940, 2
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %942
  %944 = bitcast i8* %943 to i32*
  store volatile i32 1, i32* %944, align 4, !tbaa !33
  br label %945

945:                                              ; preds = %912, %932, %938
  %946 = phi i32 [ %940, %938 ], [ %913, %932 ], [ %913, %912 ]
  br i1 %684, label %947, label %978

947:                                              ; preds = %945
  %948 = icmp sgt i32 %946, -1
  %949 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  br i1 %948, label %957, label %950

950:                                              ; preds = %947
  %951 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %952 = shl nsw i32 %946, 2
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %953
  %955 = bitcast i8* %954 to i32*
  %956 = load volatile i32, i32* %955, align 4, !tbaa !33
  br label %971

957:                                              ; preds = %947
  %958 = trunc i64 %949 to i32
  %959 = zext i32 %946 to i64
  %960 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %959
  %961 = bitcast i32* %960 to i64*
  %962 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %961, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %963 = trunc i64 %962 to i32
  %964 = icmp slt i32 %958, %963
  br i1 %964, label %971, label %965

965:                                              ; preds = %957
  %966 = shl nsw i32 %946, 2
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %967
  %969 = bitcast i8* %968 to i32*
  %970 = load volatile i32, i32* %969, align 4, !tbaa !33
  br label %978

971:                                              ; preds = %950, %957
  %972 = load i32, i32* @secret, align 4, !tbaa !33
  %973 = add nsw i32 %972, 7
  %974 = shl nsw i32 %973, 2
  %975 = zext i32 %974 to i64
  %976 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %975
  %977 = bitcast i8* %976 to i32*
  store volatile i32 1, i32* %977, align 4, !tbaa !33
  br label %978

978:                                              ; preds = %945, %965, %971
  %979 = phi i32 [ %973, %971 ], [ %946, %965 ], [ %946, %945 ]
  br i1 %32, label %984, label %980

980:                                              ; preds = %978
  %981 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %982 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %983 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  br label %1005

984:                                              ; preds = %978
  %985 = sext i32 %979 to i64
  %986 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %985
  %987 = bitcast i32* %986 to i64*
  %988 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %987, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %989 = trunc i64 %988 to i32
  %990 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %985, i64 0
  %991 = bitcast i32* %990 to i64*
  %992 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %991, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %993 = trunc i64 %992 to i32
  %994 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %995 = trunc i64 %994 to i32
  %996 = add nsw i32 %993, %989
  %997 = icmp slt i32 %996, %995
  br i1 %997, label %998, label %1005

998:                                              ; preds = %984
  %999 = bitcast [1 x %struct.ds_base]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %999, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %2, i64 0, i64 0
  %1001 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %986, %struct.ds_base* nonnull %1000, i32 1, i32 8)
  %1002 = bitcast [1 x %struct.ds_base]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1002, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.360 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1003 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0
  %1004 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %990, %struct.ds_base* nonnull %1003, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 5988, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1005:                                             ; preds = %984, %980
  %1006 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1007 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %1008 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br i1 %480, label %1013, label %1009

1009:                                             ; preds = %1005
  %1010 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1011 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1012 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  br label %1034

1013:                                             ; preds = %1005
  %1014 = sext i32 %979 to i64
  %1015 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1014
  %1016 = bitcast i32* %1015 to i64*
  %1017 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1016, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1018 = trunc i64 %1017 to i32
  %1019 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1014, i64 1
  %1020 = bitcast i32* %1019 to i64*
  %1021 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1020, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1022 = trunc i64 %1021 to i32
  %1023 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %1024 = trunc i64 %1023 to i32
  %1025 = add nsw i32 %1022, %1018
  %1026 = icmp slt i32 %1025, %1024
  br i1 %1026, label %1027, label %1034

1027:                                             ; preds = %1013
  %1028 = bitcast [1 x %struct.ds_base]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1028, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1029 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0
  %1030 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1015, %struct.ds_base* nonnull %1029, i32 1, i32 8)
  %1031 = bitcast [1 x %struct.ds_base]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1031, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.381 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1032 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0
  %1033 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1019, %struct.ds_base* nonnull %1032, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6034, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1034:                                             ; preds = %1013, %1009
  %1035 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1036 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1037 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br i1 %514, label %1042, label %1038

1038:                                             ; preds = %1034
  %1039 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1040 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1041 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  br label %1063

1042:                                             ; preds = %1034
  %1043 = sext i32 %979 to i64
  %1044 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1043
  %1045 = bitcast i32* %1044 to i64*
  %1046 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1045, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1047 = trunc i64 %1046 to i32
  %1048 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1043, i64 2
  %1049 = bitcast i32* %1048 to i64*
  %1050 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1049, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1051 = trunc i64 %1050 to i32
  %1052 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %1053 = trunc i64 %1052 to i32
  %1054 = add nsw i32 %1051, %1047
  %1055 = icmp slt i32 %1054, %1053
  br i1 %1055, label %1056, label %1063

1056:                                             ; preds = %1042
  %1057 = bitcast [1 x %struct.ds_base]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1057, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1058 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0
  %1059 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1044, %struct.ds_base* nonnull %1058, i32 1, i32 8)
  %1060 = bitcast [1 x %struct.ds_base]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1060, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.400 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1061 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0
  %1062 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1048, %struct.ds_base* nonnull %1061, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1063:                                             ; preds = %1042, %1038
  %1064 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1065 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1066 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br i1 %548, label %1074, label %1067

1067:                                             ; preds = %1063
  %1068 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1069 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1070 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %1071 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1072 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1073 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1074:                                             ; preds = %1063
  %1075 = sext i32 %979 to i64
  %1076 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1075
  %1077 = bitcast i32* %1076 to i64*
  %1078 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1077, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1079 = trunc i64 %1078 to i32
  %1080 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1075, i64 3
  %1081 = bitcast i32* %1080 to i64*
  %1082 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1081, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1083 = trunc i64 %1082 to i32
  %1084 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %1085 = trunc i64 %1084 to i32
  %1086 = add nsw i32 %1083, %1079
  %1087 = icmp slt i32 %1086, %1085
  br i1 %1087, label %1092, label %1088

1088:                                             ; preds = %1074
  %1089 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1090 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1091 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1092:                                             ; preds = %1074
  %1093 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1077, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1094 = trunc i64 %1093 to i32
  %1095 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1081, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1096 = trunc i64 %1095 to i32
  %1097 = add nsw i32 %1096, %1094
  store volatile i32 %1097, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1098:                                             ; preds = %1088, %1092, %1067
  br i1 %582, label %1106, label %1099

1099:                                             ; preds = %1098
  %1100 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1101 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1102 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %1103 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1104 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1105 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1106:                                             ; preds = %1098
  %1107 = sext i32 %979 to i64
  %1108 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1107
  %1109 = bitcast i32* %1108 to i64*
  %1110 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1109, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1111 = trunc i64 %1110 to i32
  %1112 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1107, i64 4
  %1113 = bitcast i32* %1112 to i64*
  %1114 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1113, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1115 = trunc i64 %1114 to i32
  %1116 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %1117 = trunc i64 %1116 to i32
  %1118 = add nsw i32 %1115, %1111
  %1119 = icmp slt i32 %1118, %1117
  br i1 %1119, label %1124, label %1120

1120:                                             ; preds = %1106
  %1121 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1122 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1123 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1124:                                             ; preds = %1106
  %1125 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1109, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1126 = trunc i64 %1125 to i32
  %1127 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1113, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1128 = trunc i64 %1127 to i32
  %1129 = add nsw i32 %1128, %1126
  store volatile i32 %1129, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1130:                                             ; preds = %1120, %1124, %1099
  br i1 %616, label %1135, label %1131

1131:                                             ; preds = %1130
  %1132 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1133 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1134 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  br label %1156

1135:                                             ; preds = %1130
  %1136 = sext i32 %979 to i64
  %1137 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1136
  %1138 = bitcast i32* %1137 to i64*
  %1139 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1138, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1140 = trunc i64 %1139 to i32
  %1141 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1136, i64 5
  %1142 = bitcast i32* %1141 to i64*
  %1143 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1142, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1144 = trunc i64 %1143 to i32
  %1145 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %1146 = trunc i64 %1145 to i32
  %1147 = add nsw i32 %1144, %1140
  %1148 = icmp slt i32 %1147, %1146
  br i1 %1148, label %1149, label %1156

1149:                                             ; preds = %1135
  %1150 = bitcast [1 x %struct.ds_base]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1150, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1151 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0
  %1152 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1137, %struct.ds_base* nonnull %1151, i32 1, i32 8)
  %1153 = bitcast [1 x %struct.ds_base]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1153, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.459 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0
  %1155 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1141, %struct.ds_base* nonnull %1154, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1156:                                             ; preds = %1135, %1131
  %1157 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1158 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1159 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  %1160 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.461, i64 0, i64 0), i32 %649)
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #13

attributes #0 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.4"}
!2 = !{!3, !8, i64 20}
!3 = !{!"ds_base", !4, i64 0, !4, i64 8, !7, i64 16, !8, i64 20, !7, i64 24, !7, i64 28}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"_Bool", !5, i64 0}
!9 = !{i8 0, i8 2}
!10 = !{!3, !4, i64 0}
!11 = !{!3, !7, i64 24}
!12 = !{!3, !7, i64 28}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = !{!3, !7, i64 16}
!22 = !{!3, !4, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !5, i64 0}
!36 = !{i64 0, i64 32, !13}
