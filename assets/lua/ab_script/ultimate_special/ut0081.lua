--1030020:LR_超サイヤ人3ゴテンクス_アクティブ必殺技：スーパーゴーストカミカゼアタック
--sp_effect_a8_00046
--ut0081

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163433; --開幕〜ゴースト産む〜爆発 ef_001
SP_01b = 163434; --開幕〜ゴースト産む〜爆発 ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);
 
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );
 
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );
 
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
 
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );
 
ENABLE_AUTO_TIME_STRETCH(0.9);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
 
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 496 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 546 - 1);  -- スキップ先フレーム指定

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
  
  
-------------------------------------------------
-- 開幕〜ゴースト産む〜爆発
-------------------------------------------------
 
MAX_FRAME_0 = 898;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜ゴースト産む〜爆発 (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜ゴースト産む〜爆発 (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
  
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 546 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 642 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 546 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 556 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 546 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -9.2, -32.1 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -9.2, -32.1 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 55.8, -16.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 55.8, -16.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -0.2, -27.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -0.2, -27.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 3.3, -24.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 3.3, -24.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 35.4, -10.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 53.7, -19.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 53.7, -19.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -21.6, -33.3 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -21.6, -33.3 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 3.3, -26.9 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 37.9, -5.6 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 3.3, -29.9 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 3.3, -29.9 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 67.7, -19.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 67.7, -19.7 , 0 );

setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.87, 1.87 );

setRotateKey( spep_0 + 546 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, -52.4 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 454, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--力む
SE002 = playSeVer2( spep_0 + 2, 1344, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 18, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 63 );

--腕クロス
SE004 = playSeVer2( spep_0 + 96, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 104, 1006, "", 0, 0, 0, -1);

--お化け出す
SE006 = playSeVer2( spep_0 + 190, 1198, "", 0, 12, 0, -1);
setStartTimeMs( SE006,  400 );
SE007 = playSeVer2( spep_0 + 172, 1246, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE007, 62 );
SE008 = playSeVer2( spep_0 + 172, 1291, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 172, 1319, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 141 );
SE010 = playSeVer2( spep_0 + 212, 1398, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 240, 1416, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 292, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE012, 71 );

--集中線
SE013 = playSeVer2( spep_0 + 356, 1237, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 358, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE014, 71 );

--背景音
SE015 = playSeVer2( spep_0 + 398, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE015, 79 );

--お化け突撃
SE016 = playSeVer2( spep_0 + 432, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 468, 1014, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 468, 1116, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 484, 1019, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「スーパーゴーストカミカゼアタック」
playVoice( spep_0 + 18, 888 );
setVoiceVolume( spep_0 + 22, 888, 116 );

--「よっしゃあ。」
playVoice( spep_0 + 396, 889 );
setVoiceVolume( spep_0 + 396, 889, 116 );

--「突撃」
SE_8_890 = playVoice( spep_0 + 476, 890 );
setVoiceVolume( spep_0 + 476, 890, 116 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 496; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 6, SE019, 0);
pauseAll( SP_dodge, 67);
setVoiceVolume( SP_dodge - 12, SE_8_890, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--画面下から出てくる
SE020 = playSeVer2( spep_0 + 516, 1112, "", 0, 0, 0, -1);

--飛んできて爆発
SE021 = playSeVer2( spep_0 + 540, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE021, 214 );
SE022 = playSeVer2( spep_0 + 552, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 560, 1023, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 570, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE024, 178 );
SE025 = playSeVer2( spep_0 + 584, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 606, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE026, 178 );
SE027 = playSeVer2( spep_0 + 624, 1188, "", 0, 0, 0, -1);

--環境音
SE028 = playSeVer2( spep_0 + 646, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE028, 25 );

--爆発
SE029 = playSeVer2( spep_0 + 646, 1159, "", 0, 0, 0, -1);

--空気音
SE030 = playSeVer2( spep_0 + 686, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 686, SE030, 56 );

--髪なびく
SE031 = playSeVer2( spep_0 + 704, 1332, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 744, 1331, "", 0, 0, 0, -1);

--爆発
SE033 = playSeVer2( spep_0 + 772, 1188, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 772, 1067, "", 0, 0, 0, -1);


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 660);
endPhase( spep_0 + MAX_FRAME_0); -- 898f
 
else end