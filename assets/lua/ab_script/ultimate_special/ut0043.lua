--1025090：バーダック_ファイナルスピリットキャノン(アクティブ)_ut0043
--sp_effect_a2_00192

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 160756	--開幕〜フィニッシュ	ef_001
SP_02 = 160757	--開幕〜フィニッシュ	ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

-- setDisp( 0, 1, 0);
-- changeAnime( 0, 1, 100);
-- setAlphaKey( 0, 1, 255 );

-- setMoveKey(   0,   1,    0, -5000,   0);
-- setMoveKey(   1,   1,    0, -5000,   0);
-- setMoveKey(   2,   1,    0, -5000,   0);
-- setMoveKey(   3,   1,    0, -5000,   0);
-- setMoveKey(   4,   1,    0, -5000,   0);
-- setMoveKey(   5,   1,    0, -5000,   0);
-- setMoveKey(   6,   1,    0, -5000,   0);
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 644 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 756 -4);      -- スキップ先フレーム指定

           --爆発
           SE020 = playSeVer2( spep_0 + 752, 1159, "", 0, 0, 0, -1);
           SE021 = playSeVer2( spep_0 + 770, 1067, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕～フィニッシュ
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --敵へ気弾命中　前面	ef_002
setEffMoveKey( spep_0 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1132 -4, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1132 -4, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 1132 -4, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 1132 -4, finish_f, 255 );

finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --敵へ気弾命中　背面	ef_003
setEffMoveKey( spep_0 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1132 -4, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1132 -4, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 1132 -4, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 1132 -4, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1132, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 140.7, -24.6 , 0 );
setMoveKey( spep_0 + 1, 1, 140.8, -24.7 , 0 );
setMoveKey( spep_0 + 2, 1, 140.8, -24.7 , 0 );
setMoveKey( spep_0 + 3, 1, 141, -24.7 , 0 );
setMoveKey( spep_0 + 4, 1, 141, -24.7 , 0 );
setMoveKey( spep_0 + 5, 1, 141.2, -24.7 , 0 );
setMoveKey( spep_0 + 6, 1, 141.2, -24.7 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 141.4, -24.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 141.5, -24.8 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 141.7, -24.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 141.9, -24.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 142, -24.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 142.2, -24.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 142.4, -25 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 142.5, -25 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 142.7, -25 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 142.9, -25.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 143.1, -25.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 143.2, -25.1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 143.4, -25.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 143.6, -25.2 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 143.7, -25.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 143.9, -25.3 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 144.1, -25.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 144.2, -25.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 144.4, -25.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 144.4, -25.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 3, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 4, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 5, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 6, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 12, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 14, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 20, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 22, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 28, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 30, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 36, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 38, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 44, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 46, 1, 1.96, 1.96 );

setRotateKey( spep_0 + 0, 1, -7.1 );
setRotateKey( spep_0 + 1, 1, -7.1 );
setRotateKey( spep_0 + 2, 1, -7.1 );
setRotateKey( spep_0 + 3, 1, -7.1 );
setRotateKey( spep_0 + 4, 1, -7.1 );
setRotateKey( spep_0 + 5, 1, -7.1 );
setRotateKey( spep_0 + 6, 1, -7.1 );
setRotateKey( spep_0 -3 + 48, 1, -7.1 );

setDisp( spep_0 -3 + 626, 1, 1 );

changeAnime( spep_0 -3 + 626, 1, 117 );

setMoveKey( spep_0 -3 + 626, 1, 309.3, -60.9 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 302.9, -60.9 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 296.4, -60.9 , 0 );
setMoveKey( spep_0 -3 + 632, 1, 290, -60.9 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 283.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 636, 1, 277.1, -60.9 , 0 );
setMoveKey( spep_0 -3 + 638, 1, 273.7, -60.9 , 0 );
setMoveKey( spep_0 -3 + 640, 1, 270.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 642, 1, 267.6, -60.9 , 0 );
setMoveKey( spep_0 -3 + 644, 1, 265, -60.9 , 0 );
setMoveKey( spep_0 -3 + 646, 1, 262.6, -60.9 , 0 );

setScaleKey( spep_0 -3 + 626, 1, 0.2, 0.2 );

setRotateKey( spep_0 -3 + 626, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--画面遷移
SE005 = playSeVer2( spep_0 + 306, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE005, 79 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 46, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE003, 63 );

--環境音
SE004 = playSeVer2( spep_0 + 186, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE004, 43 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 444, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE006, 54 );
SE007 = playSeVer2( spep_0 + 444, 1200, "",spep_0 + 546, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 444, SE007, 146 );
SE008 = playSeVer2( spep_0 + 444, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE008, 68 );
SE009 = playSeVer2( spep_0 + 444, 1325, "",spep_0 + 658, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 444, SE009, 73 );
setPitch( spep_0 + 444, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_0 + 456, 1202, "",spep_0 + 486, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 456, SE010, 140 );
SE011 = playSeVer2( spep_0 + 468, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE011, 191 );

--振りかぶる
SE012 = playSeVer2( spep_0 + 522, 1116, "",spep_0 + 570, 0, 20, -1);

--気弾発射
SE013 = playSeVer2( spep_0 + 634, 1193, "",spep_0 + 766, 10, 28, -1);
setStartTimeMs( SE013,  700 );
setPitch( spep_0 + 634, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_0 + 634, 1145, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 634, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE015, 74 );
SE016 = playSeVer2( spep_0 + 634, 1109, "", 0, 0, 0, -1);

--ボイス
-- これで全てが変わる…
playVoice( spep_0 + 46, 517 );
setVoiceVolume( spep_0 + 46, 517, 100 );

-- このオレの運命…
playVoice( spep_0 + 190, 518 );
setVoiceVolume( spep_0 + 190, 518, 100 );

-- そしてキサマの運命も…
playVoice( spep_0 + 316, 519 );
setVoiceVolume( spep_0 + 316, 519, 100 );

-- これで最後だー！！
playVoice( spep_0 + 530, 520 );
setVoiceVolume( spep_0 + 530, 520, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 644; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 10, SE013, 0);
stopSe( SP_dodge - 10, SE014, 0);
stopSe( SP_dodge - 10, SE015, 0);
stopSe( SP_dodge - 10, SE016, 0);
setVoiceVolume( SP_dodge - 10, 520, 0 );
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 262.6, -60.9 , 0 );
setMoveKey( SP_dodge + 2, 1, 260.5, -60.9 , 0 );
setMoveKey( SP_dodge + 4, 1, 258.6, -60.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 257, -60.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 255.6, -60.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 254.5, -60.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.2, 0.2 );
setScaleKey( SP_dodge + 10, 1, 0.2, 0.2 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 754, 1, 0 );

changeAnime( spep_0 -3 + 694, 1, 106 );

setBlendColor( spep_0 -3 + 694, 1, 0, 1, 1, 1, 0.5 );
setBlendColor( spep_0 -3 + 753, 1, 0, 1, 1, 1, 0.5 );
setBlendColor( spep_0 -3 + 754, 1, 0, 0, 0, 0, 0 );
setBlendColor( spep_0 -2 + 754, 1, 0, 0, 0, 0, 0 );

setMoveKey( spep_0 -3 + 648, 1, 260.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 650, 1, 258.6, -60.9 , 0 );
setMoveKey( spep_0 -3 + 652, 1, 257, -60.9 , 0 );
setMoveKey( spep_0 -3 + 654, 1, 255.6, -60.9 , 0 );
setMoveKey( spep_0 -3 + 656, 1, 254.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 658, 1, 253.6, -60.9 , 0 );
setMoveKey( spep_0 -3 + 660, 1, 253, -60.9 , 0 );
setMoveKey( spep_0 -3 + 662, 1, 252.6, -60.9 , 0 );
setMoveKey( spep_0 -3 + 664, 1, 252.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 665, 1, 252.5, -60.9 , 0 );
setMoveKey( spep_0 -3 + 666, 1, -8.4, -24.4 , 0 );
setMoveKey( spep_0 -3 + 684, 1, -8.4, -24.4 , 0 );
setMoveKey( spep_0 -3 + 686, 1, -2.5, -19.4 , 0 );
setMoveKey( spep_0 -3 + 688, 1, -13.4, -28.9 , 0 );
setMoveKey( spep_0 -3 + 690, 1, -3.8, -29 , 0 );
setMoveKey( spep_0 -3 + 693, 1, 21.1, 34.3 , 0 );
setMoveKey( spep_0 -3 + 694, 1, 32, 33.9 , 0 );
setMoveKey( spep_0 -3 + 696, 1, 21.1, 24.3 , 0 );
setMoveKey( spep_0 -3 + 698, 1, 30.7, 24.3 , 0 );
setMoveKey( spep_0 -3 + 700, 1, 21.1, 34.3 , 0 );
setMoveKey( spep_0 -3 + 702, 1, 32, 33.9 , 0 );
setMoveKey( spep_0 -3 + 704, 1, 21.1, 24.3 , 0 );
setMoveKey( spep_0 -3 + 706, 1, 30.7, 24.3 , 0 );
setMoveKey( spep_0 -3 + 708, 1, 21.1, 34.3 , 0 );
setMoveKey( spep_0 -3 + 710, 1, 32, 33.9 , 0 );
setMoveKey( spep_0 -3 + 712, 1, 21.1, 24.3 , 0 );
setMoveKey( spep_0 -3 + 714, 1, 30.7, 24.3 , 0 );
setMoveKey( spep_0 -3 + 716, 1, 30.1, 44.6 , 0 );
setMoveKey( spep_0 -3 + 718, 1, 50, 54.6 , 0 );
setMoveKey( spep_0 -3 + 720, 1, 48.1, 55.4 , 0 );
setMoveKey( spep_0 -3 + 722, 1, 66.7, 65.7 , 0 );
setMoveKey( spep_0 -3 + 724, 1, 66.2, 86.1 , 0 );
setMoveKey( spep_0 -3 + 726, 1, 86, 96 , 0 );
setMoveKey( spep_0 -3 + 728, 1, 84.2, 96.8 , 0 );
setMoveKey( spep_0 -3 + 730, 1, 102.8, 107.1 , 0 );
setMoveKey( spep_0 -3 + 732, 1, 102.2, 127.5 , 0 );
setMoveKey( spep_0 -3 + 734, 1, 122.1, 137.4 , 0 );
setMoveKey( spep_0 -3 + 736, 1, 120.2, 138.2 , 0 );
setMoveKey( spep_0 -3 + 738, 1, 138.8, 148.5 , 0 );
setMoveKey( spep_0 -3 + 740, 1, 131.9, 161.6 , 0 );
setMoveKey( spep_0 -3 + 742, 1, 150.7, 170.3 , 0 );
setMoveKey( spep_0 -3 + 744, 1, 153, 175.8 , 0 );
setMoveKey( spep_0 -3 + 746, 1, 181, 197 , 0 );
setMoveKey( spep_0 -3 + 748, 1, 195.2, 234.2 , 0 );
setMoveKey( spep_0 -3 + 750, 1, 235.1, 267.2 , 0 );
setMoveKey( spep_0 -3 + 752, 1, 258.6, 297 , 0 );
setMoveKey( spep_0 -3 + 754, 1, 303.2, 346.9 , 0 );

setScaleKey( spep_0 -3 + 664, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 665, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 666, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 690, 1, 2.81, 2.81 );
setScaleKey( spep_0 -3 + 693, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 754, 1, 2.8, 2.8 );

setRotateKey( spep_0 -3 + 690, 1, 0 );
setRotateKey( spep_0 -3 + 693, 1, 0 );
setRotateKey( spep_0 -3 + 694, 1, -33.7 );
setRotateKey( spep_0 -3 + 754, 1, -33.7 );

-- ** 音 ** --
--敵飲まれる
SE017 = playSeVer2( spep_0 + 690, 1024, "",spep_0 + 770, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 690, 1161, "",spep_0 + 770, 0, 14, -1);

--爆発
SE019 = playSeVer2( spep_0 + 740, 1069, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 752, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 770, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 756 -4 );
--entryFade( spep_0 + 876 -14, 2,  8, 2, 0, 0, 0, 255);  -- black fade
endPhase( spep_0 + 876 -4 -4 );

else end