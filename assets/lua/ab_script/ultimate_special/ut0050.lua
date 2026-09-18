--1026250：UR_超サイヤ人ゴッド孫悟空_ゴッドの世界を吸収したサイヤ人(アクティブ)
--sp_effect_b1_00244
--ut0050

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

--エフェクト(味方)
SP_01 = 161685;	--全篇：手前	ef_001		ef_002とセット。敵の手前に配置　※反転無し
SP_01b = 161686; --全篇：奥	ef_002		ef_001とセット。敵の奥に配置　※反転無し


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 700 -12);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1026);  -- スキップ先フレーム指定

           ----敵吹き飛ばす
           SE060 = playSeVer2( spep_0 + 1026, 1027, "", 0, 0, 0, -1);

           ----敵飛んでいく
           SE064 = playSeVer2( spep_0 + 1026, 1121, "",spep_0 + 1092, 0, 36, -1);
           SE065 = playSeVer2( spep_0 + 1026, 1183, "",spep_0 + 1092, 0, 46, -1);
           setSeVolumeByWorkId( spep_0 + 1026, SE065, 135 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 全篇
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 全篇：手前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1142, base_0f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1142, base_0f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0f, 0 );
setEffRotateKey( spep_0 + 1142, base_0f, 0 );
setEffAlphaKey( spep_0 + 0, base_0f, 255 );
setEffAlphaKey( spep_0 + 1142, base_0f, 255 );

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 全篇：奥 ef_002
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 1142, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 1142, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 1142, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 1142, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1142 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--かがむ
SE001 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 2, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 83 );

--集中線
SE003 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 0, 1168, "", 0, 40, 0, -1);
setStartTimeMs( SE004,  1200 );
SE005 = playSeVer2( spep_0 + 18, 1278, "",spep_0 + 138, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 65 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);

--気ダメ
SE007 = playSeVer2( spep_0 + 138, 1011, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 138, 1068, "", 0, 0, 0, -1);

--岩爆発
SE010 = playSeVer2( spep_0 + 170, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 82 );
SE011 = playSeVer2( spep_0 + 192, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 68 );

--岩の中飛び出す
SE012 = playSeVer2( spep_0 + 236, 1304, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 236, 1068, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 236, 1117, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 236, 1044, "",spep_0 + 472, 0, 26, -1);

--岩の中飛んでいく
SE016 = playSeVer2( spep_0 + 286, 1116, "",spep_0 + 332, 0, 20, -1);
SE017 = playSeVer2( spep_0 + 286, 1277, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 332, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE018, 63 );
setTimeStretch( SE018, 1.43, 30, 4 );

--地面盛り上がる
SE019 = playSeVer2( spep_0 + 412, 1068, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 420, 1023, "", 0, 0, 0, -1);

--地面から飛び出す
SE021 = playSeVer2( spep_0 + 450, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE021, 89 );
SE022 = playSeVer2( spep_0 + 454, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE022, 79 );

--煙から飛び出す
SE023 = playSeVer2( spep_0 + 498, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 506, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE024, 79 );
SE025 = playSeVer2( spep_0 + 506, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 532, 1232, "", 0, 0, 0, -1);

--上空に飛びあがる
SE027 = playSeVer2( spep_0 + 574, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 580, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE028, 72 );
SE029 = playSeVer2( spep_0 + 586, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE029, 170 );

--飛行中
SE030 = playSeVer2( spep_0 + 586, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE030, 79 );
SE031 = playSeVer2( spep_0 + 586, 1176, "",spep_0 + 772, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 586, SE031, 87 );

--上空に飛びあがる
SE032 = playSeVer2( spep_0 + 606, 44, "", 0, 0, 0, -1);

--飛行中
SE033 = playSeVer2( spep_0 + 650, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE033, 79 );

--画面手前に
SE034 = playSeVer2( spep_0 + 652, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE034, 170 );

--ボイス
-- 「破壊を楽しんでんじゃねぇぞー!!」
playVoice( spep_0 + 21, 611 );
setVoiceVolume( spep_0 + 21, 611, 141 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 700; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
pauseAll( SP_dodge, 67);

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
-- 敵の動き_1
setDisp( spep_0 - 3 + 720, 1, 1 );
setDisp( spep_0 - 3 + 1012, 1, 0 );

changeAnime( spep_0 -3 + 720, 1, 117 );
changeAnime( spep_0 -3 + 740, 1, 108 );
changeAnime( spep_0 -3 + 768, 1, 106 );
changeAnime( spep_0 -3 + 772, 1, 105 );
changeAnime( spep_0 -3 + 820, 1, 106 );
changeAnime( spep_0 -3 + 824, 1, 108 );
changeAnime( spep_0 -3 + 866, 1, 106 );
changeAnime( spep_0 -3 + 898, 1, 108 );
changeAnime( spep_0 -3 + 956, 1, 106 );
changeAnime( spep_0 -3 + 996, 1, 108 );

setMoveKey( spep_0 -3 + 720, 1, 139.6, 264.1 , 0 );
setMoveKey( spep_0 -3 + 722, 1, 139.4, 263.7 , 0 );
setMoveKey( spep_0 -3 + 724, 1, 138.4, 262.7 , 0 );
setMoveKey( spep_0 -3 + 726, 1, 136.3, 260.6 , 0 );
setMoveKey( spep_0 -3 + 728, 1, 131, 255.1 , 0 );
setMoveKey( spep_0 -3 + 730, 1, 119.2, 242.8 , 0 );
setMoveKey( spep_0 -3 + 732, 1, 102.3, 225.1 , 0 );
setMoveKey( spep_0 -3 + 734, 1, 83.2, 205.3 , 0 );
setMoveKey( spep_0 -3 + 736, 1, 60.2, 181.3 , 0 );
setMoveKey( spep_0 -3 + 737, 1, 60.2, 181.3 , 0 );
setMoveKey( spep_0 -3 + 738, 1, 27.6, 146.4 , 0 );
setMoveKey( spep_0 -3 + 739, 1, 27.6, 146.4 , 0 );
setMoveKey( spep_0 -3 + 740, 1, 133.7, 163.5 , 0 );
setMoveKey( spep_0 -3 + 741, 1, 133.7, 163.5 , 0 );
setMoveKey( spep_0 -3 + 742, 1, 110.9, 165.1 , 0 );
setMoveKey( spep_0 -3 + 743, 1, 110.9, 165.1 , 0 );
setMoveKey( spep_0 -3 + 744, 1, 66.4, 163.8 , 0 );
setMoveKey( spep_0 -3 + 745, 1, 66.4, 163.8 , 0 );
setMoveKey( spep_0 -3 + 746, 1, 56.5, 137.7 , 0 );
setMoveKey( spep_0 -3 + 747, 1, 56.5, 137.7 , 0 );
setMoveKey( spep_0 -3 + 748, 1, 43.7, 134.1 , 0 );
setMoveKey( spep_0 -3 + 749, 1, 43.7, 134.1 , 0 );
setMoveKey( spep_0 -3 + 750, 1, 58.8, 141.7 , 0 );
setMoveKey( spep_0 -3 + 751, 1, 58.8, 141.7 , 0 );
setMoveKey( spep_0 -3 + 752, 1, 54.4, 132.5 , 0 );
setMoveKey( spep_0 -3 + 753, 1, 54.4, 132.5 , 0 );
setMoveKey( spep_0 -3 + 754, 1, 61.2, 145.7 , 0 );
setMoveKey( spep_0 -3 + 755, 1, 61.2, 145.7 , 0 );
setMoveKey( spep_0 -3 + 756, 1, 51.1, 139.3 , 0 );
setMoveKey( spep_0 -3 + 757, 1, 51.1, 139.3 , 0 );
setMoveKey( spep_0 -3 + 758, 1, 63.5, 149.8 , 0 );
setMoveKey( spep_0 -3 + 759, 1, 63.5, 149.8 , 0 );
setMoveKey( spep_0 -3 + 760, 1, 61.9, 143.4 , 0 );
setMoveKey( spep_0 -3 + 761, 1, 61.9, 143.4 , 0 );
setMoveKey( spep_0 -3 + 762, 1, 65.9, 153.8 , 0 );
setMoveKey( spep_0 -3 + 763, 1, 65.9, 153.8 , 0 );
setMoveKey( spep_0 -3 + 764, 1, 67, 155.8 , 0 );
setMoveKey( spep_0 -3 + 765, 1, 67, 155.8 , 0 );
setMoveKey( spep_0 -3 + 766, 1, 68.2, 157.8 , 0 );
setMoveKey( spep_0 -3 + 767, 1, 68.2, 157.8 , 0 );
setMoveKey( spep_0 -3 + 768, 1, 75.4, 195.8 , 0 );
setMoveKey( spep_0 -3 + 770, 1, 108.2, 259.1 , 0 );
setMoveKey( spep_0 -3 + 772, 1, 124.2, 284.1 , 0 );
setMoveKey( spep_0 -3 + 774, 1, 127.8, 292 , 0 );
setMoveKey( spep_0 -3 + 776, 1, 132.9, 303 , 0 );
setMoveKey( spep_0 -3 + 778, 1, 139.7, 317.3 , 0 );
setMoveKey( spep_0 -3 + 780, 1, 148.1, 334.6 , 0 );
setMoveKey( spep_0 -3 + 782, 1, 148.1, 336.4 , 0 );
setMoveKey( spep_0 -3 + 784, 1, 148.1, 338 , 0 );
setMoveKey( spep_0 -3 + 786, 1, 148.1, 339.6 , 0 );
setMoveKey( spep_0 -3 + 788, 1, 148.1, 341.1 , 0 );
setMoveKey( spep_0 -3 + 790, 1, 148.1, 342.5 , 0 );
setMoveKey( spep_0 -3 + 792, 1, 148.1, 343.8 , 0 );
setMoveKey( spep_0 -3 + 794, 1, 148.1, 345.1 , 0 );
setMoveKey( spep_0 -3 + 796, 1, 148.1, 346.2 , 0 );
setMoveKey( spep_0 -3 + 798, 1, 148.1, 347.3 , 0 );
setMoveKey( spep_0 -3 + 800, 1, 148.1, 348.3 , 0 );
setMoveKey( spep_0 -3 + 802, 1, 148.1, 349.2 , 0 );
setMoveKey( spep_0 -3 + 804, 1, 148.1, 350.1 , 0 );
setMoveKey( spep_0 -3 + 806, 1, 148.1, 350.8 , 0 );
setMoveKey( spep_0 -3 + 808, 1, 148.1, 351.5 , 0 );
setMoveKey( spep_0 -3 + 810, 1, 148.1, 352.1 , 0 );
setMoveKey( spep_0 -3 + 812, 1, 148.1, 352.6 , 0 );
setMoveKey( spep_0 -3 + 814, 1, 148.1, 353.1 , 0 );
setMoveKey( spep_0 -3 + 816, 1, 148.1, 353.4 , 0 );
setMoveKey( spep_0 -3 + 819, 1, 148.1, 353.7 , 0 );
setMoveKey( spep_0 -3 + 820, 1, 55.8, 132.8 , 0 );
setMoveKey( spep_0 -3 + 822, 1, 56.9, 134.2 , 0 );
setMoveKey( spep_0 -3 + 823, 1, 56.9, 134.2 , 0 );
setMoveKey( spep_0 -3 + 824, 1, 56.7, 113.7 , 0 );
setMoveKey( spep_0 -3 + 825, 1, 56.7, 113.7 , 0 );
setMoveKey( spep_0 -3 + 826, 1, 69.2, 128.4 , 0 );
setMoveKey( spep_0 -3 + 827, 1, 69.2, 128.4 , 0 );
setMoveKey( spep_0 -3 + 828, 1, 62.7, 141.1 , 0 );
setMoveKey( spep_0 -3 + 829, 1, 62.7, 141.1 , 0 );
setMoveKey( spep_0 -3 + 830, 1, 78.2, 135.9 , 0 );
setMoveKey( spep_0 -3 + 831, 1, 78.2, 135.9 , 0 );
setMoveKey( spep_0 -3 + 832, 1, 76.7, 134.3 , 0 );
setMoveKey( spep_0 -3 + 833, 1, 76.7, 134.3 , 0 );
setMoveKey( spep_0 -3 + 834, 1, 87.2, 142.6 , 0 );
setMoveKey( spep_0 -3 + 835, 1, 87.2, 142.6 , 0 );
setMoveKey( spep_0 -3 + 836, 1, 101, 189.2 , 0 );
setMoveKey( spep_0 -3 + 837, 1, 101, 189.2 , 0 );
setMoveKey( spep_0 -3 + 838, 1, 95.5, 183.5 , 0 );
setMoveKey( spep_0 -3 + 839, 1, 95.5, 183.5 , 0 );
setMoveKey( spep_0 -3 + 840, 1, 110, 199.7 , 0 );
setMoveKey( spep_0 -3 + 841, 1, 110, 199.7 , 0 );
setMoveKey( spep_0 -3 + 842, 1, 97.5, 216 , 0 );
setMoveKey( spep_0 -3 + 843, 1, 97.5, 216 , 0 );
setMoveKey( spep_0 -3 + 844, 1, 119, 209.5 , 0 );
setMoveKey( spep_0 -3 + 845, 1, 119, 209.5 , 0 );
setMoveKey( spep_0 -3 + 846, 1, 114.5, 204 , 0 );
setMoveKey( spep_0 -3 + 847, 1, 114.5, 204 , 0 );
setMoveKey( spep_0 -3 + 848, 1, 121.4, 215.3 , 0 );
setMoveKey( spep_0 -3 + 849, 1, 121.4, 215.3 , 0 );
setMoveKey( spep_0 -3 + 850, 1, 121.2, 213.1 , 0 );
setMoveKey( spep_0 -3 + 851, 1, 121.2, 213.1 , 0 );
setMoveKey( spep_0 -3 + 852, 1, 134.9, 227 , 0 );
setMoveKey( spep_0 -3 + 853, 1, 134.9, 227 , 0 );
setMoveKey( spep_0 -3 + 854, 1, 129.6, 227.8 , 0 );
setMoveKey( spep_0 -3 + 855, 1, 129.6, 227.8 , 0 );
setMoveKey( spep_0 -3 + 856, 1, 148.4, 238.7 , 0 );
setMoveKey( spep_0 -3 + 857, 1, 148.4, 238.7 , 0 );
setMoveKey( spep_0 -3 + 858, 1, 149.1, 253.5 , 0 );
setMoveKey( spep_0 -3 + 859, 1, 149.1, 253.5 , 0 );
setMoveKey( spep_0 -3 + 860, 1, 156.6, 246.7 , 0 );
setMoveKey( spep_0 -3 + 861, 1, 156.6, 246.7 , 0 );
setMoveKey( spep_0 -3 + 862, 1, 158.1, 249 , 0 );
setMoveKey( spep_0 -3 + 863, 1, 158.1, 249 , 0 );
setMoveKey( spep_0 -3 + 864, 1, 159.6, 251.2 , 0 );
setMoveKey( spep_0 -3 + 865, 1, 159.6, 251.2 , 0 );
setMoveKey( spep_0 -3 + 866, 1, 113, -102.4 , 0 );
setMoveKey( spep_0 -3 + 867, 1, 113, -102.4 , 0 );
setMoveKey( spep_0 -3 + 868, 1, 148.4, -324.1 , 0 );
setMoveKey( spep_0 -3 + 869, 1, 148.4, -324.1 , 0 );
setMoveKey( spep_0 -3 + 870, 1, 144.2, -192.6 , 0 );
setMoveKey( spep_0 -3 + 871, 1, 144.2, -192.6 , 0 );
setMoveKey( spep_0 -3 + 872, 1, 113.4, -99 , 0 );
setMoveKey( spep_0 -3 + 873, 1, 113.4, -99 , 0 );
setMoveKey( spep_0 -3 + 874, 1, 124.3, -77.6 , 0 );
setMoveKey( spep_0 -3 + 875, 1, 124.3, -77.6 , 0 );
setMoveKey( spep_0 -3 + 876, 1, 113.2, -74.4 , 0 );
setMoveKey( spep_0 -3 + 877, 1, 113.2, -74.4 , 0 );
setMoveKey( spep_0 -3 + 878, 1, 130, -65.2 , 0 );
setMoveKey( spep_0 -3 + 879, 1, 130, -65.2 , 0 );
setMoveKey( spep_0 -3 + 880, 1, 125.8, -65.9 , 0 );
setMoveKey( spep_0 -3 + 881, 1, 125.8, -65.9 , 0 );
setMoveKey( spep_0 -3 + 882, 1, 135.7, -52.7 , 0 );
setMoveKey( spep_0 -3 + 883, 1, 135.7, -52.7 , 0 );
setMoveKey( spep_0 -3 + 884, 1, 127.5, -50.5 , 0 );
setMoveKey( spep_0 -3 + 885, 1, 127.5, -50.5 , 0 );
setMoveKey( spep_0 -3 + 886, 1, 141.3, -40.3 , 0 );
setMoveKey( spep_0 -3 + 887, 1, 141.3, -40.3 , 0 );
setMoveKey( spep_0 -3 + 888, 1, 139.2, -44.1 , 0 );
setMoveKey( spep_0 -3 + 889, 1, 139.2, -44.1 , 0 );
setMoveKey( spep_0 -3 + 890, 1, 147, -27.9 , 0 );
setMoveKey( spep_0 -3 + 891, 1, 147, -27.9 , 0 );
setMoveKey( spep_0 -3 + 892, 1, 149.8, -21.7 , 0 );
setMoveKey( spep_0 -3 + 893, 1, 149.8, -21.7 , 0 );
setMoveKey( spep_0 -3 + 894, 1, 25.7, 82.3 , 0 );
setMoveKey( spep_0 -3 + 895, 1, 25.7, 82.3 , 0 );
setMoveKey( spep_0 -3 + 896, 1, 40.1, 101 , 0 );
setMoveKey( spep_0 -3 + 897, 1, 40.1, 101 , 0 );
setMoveKey( spep_0 -3 + 898, 1, 45.4, 93.1 , 0 );
setMoveKey( spep_0 -3 + 899, 1, 45.4, 93.1 , 0 );
setMoveKey( spep_0 -3 + 900, 1, 60.5, 104.8 , 0 );
setMoveKey( spep_0 -3 + 901, 1, 60.5, 104.8 , 0 );
setMoveKey( spep_0 -3 + 902, 1, 59.7, 119.4 , 0 );
setMoveKey( spep_0 -3 + 903, 1, 59.7, 119.4 , 0 );
setMoveKey( spep_0 -3 + 904, 1, 75, 105.9 , 0 );
setMoveKey( spep_0 -3 + 905, 1, 75, 105.9 , 0 );
setMoveKey( spep_0 -3 + 906, 1, 73.3, 100 , 0 );
setMoveKey( spep_0 -3 + 907, 1, 73.3, 100 , 0 );
setMoveKey( spep_0 -3 + 908, 1, 81.6, 104 , 0 );
setMoveKey( spep_0 -3 + 909, 1, 81.6, 104 , 0 );
setMoveKey( spep_0 -3 + 910, 1, 78.3, 182.6 , 0 );
setMoveKey( spep_0 -3 + 911, 1, 78.3, 182.6 , 0 );
setMoveKey( spep_0 -3 + 912, 1, 95.7, 171.2 , 0 );
setMoveKey( spep_0 -3 + 913, 1, 95.7, 171.2 , 0 );
setMoveKey( spep_0 -3 + 914, 1, 91.3, 163.9 , 0 );
setMoveKey( spep_0 -3 + 915, 1, 91.3, 163.9 , 0 );
setMoveKey( spep_0 -3 + 916, 1, 102.8, 178.6 , 0 );
setMoveKey( spep_0 -3 + 917, 1, 102.8, 178.6 , 0 );
setMoveKey( spep_0 -3 + 918, 1, 95.5, 179.3 , 0 );
setMoveKey( spep_0 -3 + 919, 1, 95.5, 179.3 , 0 );
setMoveKey( spep_0 -3 + 920, 1, 108.7, 184.6 , 0 );
setMoveKey( spep_0 -3 + 921, 1, 108.7, 184.6 , 0 );
setMoveKey( spep_0 -3 + 922, 1, 111, 186.9 , 0 );
setMoveKey( spep_0 -3 + 923, 1, 111, 186.9 , 0 );
setMoveKey( spep_0 -3 + 924, 1, 98.9, 170.9 , 0 );
setMoveKey( spep_0 -3 + 925, 1, 98.9, 170.9 , 0 );
setMoveKey( spep_0 -3 + 926, 1, 117.6, 185.7 , 0 );
setMoveKey( spep_0 -3 + 927, 1, 117.6, 185.7 , 0 );
setMoveKey( spep_0 -3 + 928, 1, 114.5, 198.5 , 0 );
setMoveKey( spep_0 -3 + 929, 1, 114.5, 198.5 , 0 );
setMoveKey( spep_0 -3 + 930, 1, 133.7, 187.3 , 0 );
setMoveKey( spep_0 -3 + 931, 1, 133.7, 187.3 , 0 );
setMoveKey( spep_0 -3 + 932, 1, 137.1, 186.1 , 0 );
setMoveKey( spep_0 -3 + 933, 1, 137.1, 186.1 , 0 );
setMoveKey( spep_0 -3 + 934, 1, 148.2, 192.1 , 0 );
setMoveKey( spep_0 -3 + 935, 1, 148.2, 192.1 , 0 );
setMoveKey( spep_0 -3 + 936, 1, 154.5, 196.3 , 0 );
setMoveKey( spep_0 -3 + 937, 1, 154.5, 196.3 , 0 );
setMoveKey( spep_0 -3 + 938, 1, 89.5, -73 , 0 );
setMoveKey( spep_0 -3 + 939, 1, 89.5, -73 , 0 );
setMoveKey( spep_0 -3 + 940, 1, 174.9, 35.5 , 0 );
setMoveKey( spep_0 -3 + 941, 1, 174.9, 35.5 , 0 );
setMoveKey( spep_0 -3 + 942, 1, 202.8, 112 , 0 );
setMoveKey( spep_0 -3 + 943, 1, 202.8, 112 , 0 );
setMoveKey( spep_0 -3 + 944, 1, 221.5, 114.5 , 0 );
setMoveKey( spep_0 -3 + 945, 1, 221.5, 114.5 , 0 );
setMoveKey( spep_0 -3 + 946, 1, 213.8, 120 , 0 );
setMoveKey( spep_0 -3 + 947, 1, 213.8, 120 , 0 );
setMoveKey( spep_0 -3 + 948, 1, 221.9, 144.7 , 0 );
setMoveKey( spep_0 -3 + 949, 1, 221.9, 144.7 , 0 );
setMoveKey( spep_0 -3 + 950, 1, 221.9, 158.5 , 0 );
setMoveKey( spep_0 -3 + 951, 1, 221.9, 158.5 , 0 );
setMoveKey( spep_0 -3 + 952, 1, 221.6, 171.5 , 0 );
setMoveKey( spep_0 -3 + 953, 1, 221.6, 171.5 , 0 );
setMoveKey( spep_0 -3 + 954, 1, 85, 183.1 , 0 );
setMoveKey( spep_0 -3 + 955, 1, 85, 183.1 , 0 );
setMoveKey( spep_0 -3 + 956, 1, 109.6, 90.6 , 0 );
setMoveKey( spep_0 -3 + 958, 1, 95.1, 112.1 , 0 );
setMoveKey( spep_0 -3 + 960, 1, 107.4, 132.8 , 0 );
setMoveKey( spep_0 -3 + 962, 1, 110.4, 63.9 , 0 );
setMoveKey( spep_0 -3 + 964, 1, 100.9, 65.1 , 0 );
setMoveKey( spep_0 -3 + 966, 1, 100.9, 65.1 , 0 );
setMoveKey( spep_0 -3 + 968, 1, 59.1, 75 , 0 );
setMoveKey( spep_0 -3 + 970, 1, 59.1, 75 , 0 );
setMoveKey( spep_0 -3 + 972, 1, 53.3, 74.4 , 0 );
setMoveKey( spep_0 -3 + 974, 1, 39.8, 81.8 , 0 );
setMoveKey( spep_0 -3 + 976, 1, 28.8, 82.7 , 0 );
setMoveKey( spep_0 -3 + 978, 1, 36.4, 92.5 , 0 );
setMoveKey( spep_0 -3 + 980, 1, 28, 91.9 , 0 );
setMoveKey( spep_0 -3 + 982, 1, 28.2, 91.8 , 0 );
setMoveKey( spep_0 -3 + 984, 1, 28.4, 91.6 , 0 );
setMoveKey( spep_0 -3 + 986, 1, 28.6, 91.5 , 0 );
setMoveKey( spep_0 -3 + 988, 1, 28.8, 91.3 , 0 );
setMoveKey( spep_0 -3 + 990, 1, 23.3, 85.4 , 0 );
setMoveKey( spep_0 -3 + 992, 1, 29.4, 90.9 , 0 );
setMoveKey( spep_0 -3 + 994, 1, 22.8, 97.5 , 0 );
setMoveKey( spep_0 -3 + 996, 1, 23, 76.3 , 0 );
setMoveKey( spep_0 -3 + 997, 1, 23, 76.3 , 0 );
setMoveKey( spep_0 -3 + 998, 1, -22.2, 35.2 , 0 );
setMoveKey( spep_0 -3 + 999, 1, -22.2, 35.2 , 0 );
setMoveKey( spep_0 -3 + 1000, 1, -20.8, 34.4 , 0 );
setMoveKey( spep_0 -3 + 1001, 1, -20.8, 34.4 , 0 );
setMoveKey( spep_0 -3 + 1002, 1, -128.5, -52.4 , 0 );
setMoveKey( spep_0 -3 + 1004, 1, -369.6, -222 , 0 );
setMoveKey( spep_0 -3 + 1006, 1, -558.7, -357 , 0 );
setMoveKey( spep_0 -3 + 1008, 1, -684.1, -443.6 , 0 );
setMoveKey( spep_0 -3 + 1012, 1, -757.7, -494.3 , 0 );

setScaleKey( spep_0 -3 + 720, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 722, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 724, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 726, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 728, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 730, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 732, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 734, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 736, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 737, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 738, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 739, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 740, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 741, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 742, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 743, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 744, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 745, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 746, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 750, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 751, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 752, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 760, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 761, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 762, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 767, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 768, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 770, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 772, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 774, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 776, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 778, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 780, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 782, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 784, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 786, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 788, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 790, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 792, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 794, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 796, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 798, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 800, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 802, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 804, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 806, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 808, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 810, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 812, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 814, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 819, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 820, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 823, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 824, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 865, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 866, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 867, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 868, 1, 8.21, 8.21 );
setScaleKey( spep_0 -3 + 869, 1, 8.21, 8.21 );
setScaleKey( spep_0 -3 + 870, 1, 6.25, 6.25 );
setScaleKey( spep_0 -3 + 871, 1, 6.25, 6.25 );
setScaleKey( spep_0 -3 + 872, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 873, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 874, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 892, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 893, 1, 4.29, 4.29 );
setScaleKey( spep_0 -3 + 894, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 895, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 896, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 897, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 898, 1, 2.86, 2.86 );
setScaleKey( spep_0 -3 + 899, 1, 2.86, 2.86 );
setScaleKey( spep_0 -3 + 900, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 901, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 902, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 903, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 904, 1, 2.93, 2.93 );
setScaleKey( spep_0 -3 + 905, 1, 2.93, 2.93 );
setScaleKey( spep_0 -3 + 906, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 907, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 908, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 909, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 910, 1, 3.02, 3.02 );
setScaleKey( spep_0 -3 + 911, 1, 3.02, 3.02 );
setScaleKey( spep_0 -3 + 912, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 913, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 914, 1, 3.08, 3.08 );
setScaleKey( spep_0 -3 + 915, 1, 3.08, 3.08 );
setScaleKey( spep_0 -3 + 916, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 917, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 918, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 919, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 920, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 921, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 922, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 923, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 924, 1, 3.27, 3.27 );
setScaleKey( spep_0 -3 + 925, 1, 3.27, 3.27 );
setScaleKey( spep_0 -3 + 926, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 927, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 928, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 929, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 930, 1, 3.41, 3.41 );
setScaleKey( spep_0 -3 + 931, 1, 3.41, 3.41 );
setScaleKey( spep_0 -3 + 932, 1, 3.46, 3.46 );
setScaleKey( spep_0 -3 + 933, 1, 3.46, 3.46 );
setScaleKey( spep_0 -3 + 934, 1, 3.51, 3.51 );
setScaleKey( spep_0 -3 + 935, 1, 3.51, 3.51 );
setScaleKey( spep_0 -3 + 936, 1, 3.56, 3.56 );
setScaleKey( spep_0 -3 + 937, 1, 3.56, 3.56 );
setScaleKey( spep_0 -3 + 938, 1, 8.81, 8.67 );
setScaleKey( spep_0 -3 + 939, 1, 8.81, 8.67 );
setScaleKey( spep_0 -3 + 940, 1, 6.81, 6.7 );
setScaleKey( spep_0 -3 + 941, 1, 6.81, 6.7 );
setScaleKey( spep_0 -3 + 942, 1, 5.3, 5.22 );
setScaleKey( spep_0 -3 + 943, 1, 5.3, 5.22 );
setScaleKey( spep_0 -3 + 944, 1, 5.18, 5.11 );
setScaleKey( spep_0 -3 + 945, 1, 5.18, 5.11 );
setScaleKey( spep_0 -3 + 946, 1, 5.08, 5 );
setScaleKey( spep_0 -3 + 947, 1, 5.08, 5 );
setScaleKey( spep_0 -3 + 948, 1, 4.98, 4.9 );
setScaleKey( spep_0 -3 + 949, 1, 4.98, 4.9 );
setScaleKey( spep_0 -3 + 950, 1, 4.89, 4.82 );
setScaleKey( spep_0 -3 + 951, 1, 4.89, 4.82 );
setScaleKey( spep_0 -3 + 952, 1, 4.81, 4.74 );
setScaleKey( spep_0 -3 + 953, 1, 4.81, 4.74 );
setScaleKey( spep_0 -3 + 954, 1, 6.47, 6.37 );
setScaleKey( spep_0 -3 + 955, 1, 6.47, 6.37 );
setScaleKey( spep_0 -3 + 956, 1, 2.97, 2.97 );
setScaleKey( spep_0 -3 + 958, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 960, 1, 1.58, 1.58 );
setScaleKey( spep_0 -3 + 962, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 966, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 968, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 970, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 972, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 974, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 976, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 978, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 982, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 984, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 988, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 990, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 995, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 996, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 1012, 1, 0.46, 0.46 );

setRotateKey( spep_0 -3 + 720, 1, -5 );
setRotateKey( spep_0 -3 + 739, 1, -5 );
setRotateKey( spep_0 -3 + 740, 1, -30.4 );
setRotateKey( spep_0 -3 + 741, 1, -30.4 );
setRotateKey( spep_0 -3 + 742, 1, -30.6 );
setRotateKey( spep_0 -3 + 743, 1, -30.6 );
setRotateKey( spep_0 -3 + 744, 1, -30.8 );
setRotateKey( spep_0 -3 + 745, 1, -30.8 );
setRotateKey( spep_0 -3 + 746, 1, -30.9 );
setRotateKey( spep_0 -3 + 747, 1, -30.9 );
setRotateKey( spep_0 -3 + 748, 1, -31.1 );
setRotateKey( spep_0 -3 + 749, 1, -31.1 );
setRotateKey( spep_0 -3 + 750, 1, -31.3 );
setRotateKey( spep_0 -3 + 751, 1, -31.3 );
setRotateKey( spep_0 -3 + 752, 1, -31.5 );
setRotateKey( spep_0 -3 + 753, 1, -31.5 );
setRotateKey( spep_0 -3 + 754, 1, -31.7 );
setRotateKey( spep_0 -3 + 755, 1, -31.7 );
setRotateKey( spep_0 -3 + 756, 1, -31.9 );
setRotateKey( spep_0 -3 + 757, 1, -31.9 );
setRotateKey( spep_0 -3 + 758, 1, -32.1 );
setRotateKey( spep_0 -3 + 759, 1, -32.1 );
setRotateKey( spep_0 -3 + 760, 1, -32.3 );
setRotateKey( spep_0 -3 + 761, 1, -32.3 );
setRotateKey( spep_0 -3 + 762, 1, -32.5 );
setRotateKey( spep_0 -3 + 763, 1, -32.5 );
setRotateKey( spep_0 -3 + 764, 1, -32.7 );
setRotateKey( spep_0 -3 + 766, 1, -32.7 );
setRotateKey( spep_0 -3 + 767, 1, -32.8 );
setRotateKey( spep_0 -3 + 767, 1, -32.8 );
setRotateKey( spep_0 -3 + 768, 1, -84.1 );
setRotateKey( spep_0 -3 + 771, 1, -70.2 );
setRotateKey( spep_0 -3 + 772, 1, 6.5 );
setRotateKey( spep_0 -3 + 774, 1, 8 );
setRotateKey( spep_0 -3 + 776, 1, 10.2 );
setRotateKey( spep_0 -3 + 778, 1, 13 );
setRotateKey( spep_0 -3 + 780, 1, 16.3 );
setRotateKey( spep_0 -3 + 782, 1, 16.8 );
setRotateKey( spep_0 -3 + 784, 1, 17.3 );
setRotateKey( spep_0 -3 + 786, 1, 17.7 );
setRotateKey( spep_0 -3 + 788, 1, 18.1 );
setRotateKey( spep_0 -3 + 790, 1, 18.5 );
setRotateKey( spep_0 -3 + 792, 1, 18.9 );
setRotateKey( spep_0 -3 + 794, 1, 19.3 );
setRotateKey( spep_0 -3 + 796, 1, 19.6 );
setRotateKey( spep_0 -3 + 798, 1, 19.9 );
setRotateKey( spep_0 -3 + 800, 1, 20.2 );
setRotateKey( spep_0 -3 + 802, 1, 20.4 );
setRotateKey( spep_0 -3 + 804, 1, 20.7 );
setRotateKey( spep_0 -3 + 806, 1, 20.9 );
setRotateKey( spep_0 -3 + 808, 1, 21.1 );
setRotateKey( spep_0 -3 + 810, 1, 21.2 );
setRotateKey( spep_0 -3 + 812, 1, 21.4 );
setRotateKey( spep_0 -3 + 814, 1, 21.5 );
setRotateKey( spep_0 -3 + 816, 1, 21.6 );
setRotateKey( spep_0 -3 + 818, 1, 21.7 );
setRotateKey( spep_0 -3 + 820, 1, -64.5 );
setRotateKey( spep_0 -3 + 822, 1, -64.4 );
setRotateKey( spep_0 -3 + 823, 1, -64.4 );
setRotateKey( spep_0 -3 + 824, 1, -23.4 );
setRotateKey( spep_0 -3 + 825, 1, -23.4 );
setRotateKey( spep_0 -3 + 826, 1, -23.3 );
setRotateKey( spep_0 -3 + 827, 1, -23.3 );
setRotateKey( spep_0 -3 + 828, 1, -23.1 );
setRotateKey( spep_0 -3 + 829, 1, -23.1 );
setRotateKey( spep_0 -3 + 830, 1, -22.9 );
setRotateKey( spep_0 -3 + 835, 1, -22.9 );
setRotateKey( spep_0 -3 + 836, 1, -24.4 );
setRotateKey( spep_0 -3 + 847, 1, -24.4 );
setRotateKey( spep_0 -3 + 848, 1, -22.7 );
setRotateKey( spep_0 -3 + 849, 1, -22.7 );
setRotateKey( spep_0 -3 + 850, 1, -22.6 );
setRotateKey( spep_0 -3 + 853, 1, -22.6 );
setRotateKey( spep_0 -3 + 854, 1, -22.5 );
setRotateKey( spep_0 -3 + 865, 1, -22.5 );
setRotateKey( spep_0 -3 + 866, 1, -83 );
setRotateKey( spep_0 -3 + 867, 1, -83 );
setRotateKey( spep_0 -3 + 868, 1, -82.6 );
setRotateKey( spep_0 -3 + 869, 1, -82.6 );
setRotateKey( spep_0 -3 + 870, 1, -82.2 );
setRotateKey( spep_0 -3 + 871, 1, -82.2 );
setRotateKey( spep_0 -3 + 872, 1, -81.9 );
setRotateKey( spep_0 -3 + 873, 1, -81.9 );
setRotateKey( spep_0 -3 + 874, 1, -81.5 );
setRotateKey( spep_0 -3 + 875, 1, -81.5 );
setRotateKey( spep_0 -3 + 876, 1, -81.2 );
setRotateKey( spep_0 -3 + 877, 1, -81.2 );
setRotateKey( spep_0 -3 + 878, 1, -80.8 );
setRotateKey( spep_0 -3 + 879, 1, -80.8 );
setRotateKey( spep_0 -3 + 880, 1, -80.5 );
setRotateKey( spep_0 -3 + 881, 1, -80.5 );
setRotateKey( spep_0 -3 + 882, 1, -80.1 );
setRotateKey( spep_0 -3 + 883, 1, -80.1 );
setRotateKey( spep_0 -3 + 884, 1, -79.7 );
setRotateKey( spep_0 -3 + 885, 1, -79.7 );
setRotateKey( spep_0 -3 + 886, 1, -79.4 );
setRotateKey( spep_0 -3 + 887, 1, -79.4 );
setRotateKey( spep_0 -3 + 888, 1, -79 );
setRotateKey( spep_0 -3 + 889, 1, -79 );
setRotateKey( spep_0 -3 + 890, 1, -78.7 );
setRotateKey( spep_0 -3 + 891, 1, -78.7 );
setRotateKey( spep_0 -3 + 892, 1, -78.3 );
setRotateKey( spep_0 -3 + 895, 1, -78.3 );
setRotateKey( spep_0 -3 + 896, 1, -75.6 );
setRotateKey( spep_0 -3 + 897, 1, -75.6 );
setRotateKey( spep_0 -3 + 898, 1, -27.2 );
setRotateKey( spep_0 -3 + 899, 1, -27.2 );
setRotateKey( spep_0 -3 + 900, 1, -26.6 );
setRotateKey( spep_0 -3 + 901, 1, -26.6 );
setRotateKey( spep_0 -3 + 902, 1, -26 );
setRotateKey( spep_0 -3 + 903, 1, -26 );
setRotateKey( spep_0 -3 + 904, 1, -25.5 );
setRotateKey( spep_0 -3 + 909, 1, -25.5 );
setRotateKey( spep_0 -3 + 910, 1, -31.7 );
setRotateKey( spep_0 -3 + 911, 1, -31.7 );
setRotateKey( spep_0 -3 + 912, 1, -31.4 );
setRotateKey( spep_0 -3 + 913, 1, -31.4 );
setRotateKey( spep_0 -3 + 914, 1, -31.2 );
setRotateKey( spep_0 -3 + 915, 1, -31.2 );
setRotateKey( spep_0 -3 + 916, 1, -30.9 );
setRotateKey( spep_0 -3 + 917, 1, -30.9 );
setRotateKey( spep_0 -3 + 918, 1, -30.7 );
setRotateKey( spep_0 -3 + 923, 1, -30.7 );
setRotateKey( spep_0 -3 + 924, 1, -30.2 );
setRotateKey( spep_0 -3 + 925, 1, -30.2 );
setRotateKey( spep_0 -3 + 926, 1, -30.4 );
setRotateKey( spep_0 -3 + 927, 1, -30.4 );
setRotateKey( spep_0 -3 + 928, 1, -30.5 );
setRotateKey( spep_0 -3 + 929, 1, -30.5 );
setRotateKey( spep_0 -3 + 930, 1, -30.6 );
setRotateKey( spep_0 -3 + 931, 1, -30.6 );
setRotateKey( spep_0 -3 + 932, 1, -30.8 );
setRotateKey( spep_0 -3 + 933, 1, -30.8 );
setRotateKey( spep_0 -3 + 934, 1, -29.9 );
setRotateKey( spep_0 -3 + 935, 1, -29.9 );
setRotateKey( spep_0 -3 + 936, 1, -29.1 );
setRotateKey( spep_0 -3 + 937, 1, -29.1 );
setRotateKey( spep_0 -3 + 938, 1, -31.8 );
setRotateKey( spep_0 -3 + 939, 1, -31.8 );
setRotateKey( spep_0 -3 + 940, 1, -33.9 );
setRotateKey( spep_0 -3 + 941, 1, -33.9 );
setRotateKey( spep_0 -3 + 942, 1, -35.9 );
setRotateKey( spep_0 -3 + 943, 1, -35.9 );
setRotateKey( spep_0 -3 + 944, 1, -38.5 );
setRotateKey( spep_0 -3 + 945, 1, -38.5 );
setRotateKey( spep_0 -3 + 946, 1, -41.1 );
setRotateKey( spep_0 -3 + 947, 1, -41.1 );
setRotateKey( spep_0 -3 + 948, 1, -43.6 );
setRotateKey( spep_0 -3 + 949, 1, -43.6 );
setRotateKey( spep_0 -3 + 950, 1, -46 );
setRotateKey( spep_0 -3 + 951, 1, -46 );
setRotateKey( spep_0 -3 + 952, 1, -48.5 );
setRotateKey( spep_0 -3 + 953, 1, -48.5 );
setRotateKey( spep_0 -3 + 954, 1, -52 );
setRotateKey( spep_0 -3 + 955, 1, -52 );
setRotateKey( spep_0 -3 + 956, 1, -90 );
setRotateKey( spep_0 -3 + 958, 1, -72.1 );
setRotateKey( spep_0 -3 + 960, 1, -26.7 );
setRotateKey( spep_0 -3 + 962, 1, 102.6 );
setRotateKey( spep_0 -3 + 964, 1, 163.4 );
setRotateKey( spep_0 -3 + 966, 1, 163.4 );
setRotateKey( spep_0 -3 + 968, 1, 212.6 );
setRotateKey( spep_0 -3 + 970, 1, 212.6 );
setRotateKey( spep_0 -3 + 972, 1, 312.3 );
setRotateKey( spep_0 -3 + 974, 1, 339.3 );
setRotateKey( spep_0 -3 + 976, 1, 375.5 );
setRotateKey( spep_0 -3 + 978, 1, 417.9 );
setRotateKey( spep_0 -3 + 980, 1, 438.8 );
setRotateKey( spep_0 -3 + 982, 1, 441.4 );
setRotateKey( spep_0 -3 + 984, 1, 444.5 );
setRotateKey( spep_0 -3 + 986, 1, 447.9 );
setRotateKey( spep_0 -3 + 988, 1, 451.7 );
setRotateKey( spep_0 -3 + 990, 1, 455.9 );
setRotateKey( spep_0 -3 + 992, 1, 460.4 );
setRotateKey( spep_0 -3 + 995, 1, 465.4 );
setRotateKey( spep_0 -3 + 996, 1, -221.4 );
setRotateKey( spep_0 -3 + 1012, 1, -221.4 );

-- 敵の動き_2
setDisp( spep_0 - 3 + 1030, 1, 1 );
setDisp( spep_0 - 3 + 1052, 1, 0 );

changeAnime( spep_0 -3 + 1030, 1, 105 );

setMoveKey( spep_0 -3 + 1030, 1, 1579.1, -1017.7 , 0 );
setMoveKey( spep_0 -3 + 1032, 1, 1283.5, -818 , 0 );
setMoveKey( spep_0 -3 + 1034, 1, 1015, -640.6 , 0 );
setMoveKey( spep_0 -3 + 1036, 1, 774.9, -485.6 , 0 );
setMoveKey( spep_0 -3 + 1038, 1, 564.3, -352.7 , 0 );
setMoveKey( spep_0 -3 + 1040, 1, 384.3, -241.6 , 0 );
setMoveKey( spep_0 -3 + 1042, 1, 235.8, -151.7 , 0 );
setMoveKey( spep_0 -3 + 1044, 1, 119.6, -82.5 , 0 );
setMoveKey( spep_0 -3 + 1046, 1, 36.2, -33.5 , 0 );
setMoveKey( spep_0 -3 + 1048, 1, -14, -4.3 , 0 );
setMoveKey( spep_0 -3 + 1050, 1, -30.7, 5.4 , 0 );
setMoveKey( spep_0 -3 + 1052, 1, -30.7, 5.4 , 0 );

setScaleKey( spep_0 -3 + 1030, 1, 17.17, 17.17 );
setScaleKey( spep_0 -3 + 1032, 1, 13.99, 13.99 );
setScaleKey( spep_0 -3 + 1034, 1, 11.15, 11.15 );
setScaleKey( spep_0 -3 + 1036, 1, 8.65, 8.65 );
setScaleKey( spep_0 -3 + 1038, 1, 6.47, 6.47 );
setScaleKey( spep_0 -3 + 1040, 1, 4.63, 4.63 );
setScaleKey( spep_0 -3 + 1042, 1, 3.13, 3.13 );
setScaleKey( spep_0 -3 + 1044, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 1046, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 1048, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 1050, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 1052, 1, 0.46, 0.46 );

setRotateKey( spep_0 -3 + 1030, 1, -69.4 );
setRotateKey( spep_0 -3 + 1032, 1, -73.9 );
setRotateKey( spep_0 -3 + 1034, 1, -78 );
setRotateKey( spep_0 -3 + 1036, 1, -81.6 );
setRotateKey( spep_0 -3 + 1038, 1, -84.7 );
setRotateKey( spep_0 -3 + 1040, 1, -87.3 );
setRotateKey( spep_0 -3 + 1042, 1, -89.5 );
setRotateKey( spep_0 -3 + 1044, 1, -91.2 );
setRotateKey( spep_0 -3 + 1046, 1, -92.4 );
setRotateKey( spep_0 -3 + 1048, 1, -93.1 );
setRotateKey( spep_0 -3 + 1050, 1, -93.3 );
setRotateKey( spep_0 -3 + 1052, 1, -93.3 );

-- 敵の動き_4
setDisp( spep_0 - 3 + 1072, 1, 1 );
setDisp( spep_0 - 3 + 1142, 1, 0 );

changeAnime( spep_0 -3 + 1072, 1, 105 );

setMoveKey( spep_0 -3 + 1072, 1, -49.7, -10.5 , 0 );
setMoveKey( spep_0 -3 + 1074, 1, -50.2, -10.3 , 0 );
setMoveKey( spep_0 -3 + 1076, 1, -50.7, -10 , 0 );
setMoveKey( spep_0 -3 + 1078, 1, -51.3, -9.8 , 0 );
setMoveKey( spep_0 -3 + 1080, 1, -51.7, -9.5 , 0 );
setMoveKey( spep_0 -3 + 1082, 1, -52.2, -9.3 , 0 );
setMoveKey( spep_0 -3 + 1084, 1, -52.7, -9.1 , 0 );
setMoveKey( spep_0 -3 + 1086, 1, -53.1, -8.9 , 0 );
setMoveKey( spep_0 -3 + 1088, 1, -53.6, -8.7 , 0 );
setMoveKey( spep_0 -3 + 1090, 1, -54, -8.5 , 0 );
setMoveKey( spep_0 -3 + 1092, 1, -54.4, -8.3 , 0 );
setMoveKey( spep_0 -3 + 1094, 1, -54.8, -8.1 , 0 );
setMoveKey( spep_0 -3 + 1096, 1, -55.1, -8 , 0 );
setMoveKey( spep_0 -3 + 1098, 1, -55.5, -7.8 , 0 );
setMoveKey( spep_0 -3 + 1100, 1, -55.8, -7.6 , 0 );
setMoveKey( spep_0 -3 + 1102, 1, -56.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 1104, 1, -56.5, -7.3 , 0 );
setMoveKey( spep_0 -3 + 1106, 1, -56.8, -7.2 , 0 );
setMoveKey( spep_0 -3 + 1108, 1, -57, -7.1 , 0 );
setMoveKey( spep_0 -3 + 1110, 1, -57.3, -7 , 0 );
setMoveKey( spep_0 -3 + 1112, 1, -57.6, -6.9 , 0 );
setMoveKey( spep_0 -3 + 1114, 1, -57.8, -6.8 , 0 );
setMoveKey( spep_0 -3 + 1116, 1, -58, -6.7 , 0 );
setMoveKey( spep_0 -3 + 1118, 1, -58.2, -6.6 , 0 );
setMoveKey( spep_0 -3 + 1120, 1, -58.4, -6.5 , 0 );
setMoveKey( spep_0 -3 + 1122, 1, -58.6, -6.4 , 0 );
setMoveKey( spep_0 -3 + 1124, 1, -58.7, -6.3 , 0 );
setMoveKey( spep_0 -3 + 1126, 1, -58.8, -6.3 , 0 );
setMoveKey( spep_0 -3 + 1128, 1, -59, -6.2 , 0 );
setMoveKey( spep_0 -3 + 1130, 1, -59.1, -6.2 , 0 );
setMoveKey( spep_0 -3 + 1132, 1, -59.1, -6.1 , 0 );
setMoveKey( spep_0 -3 + 1142, 1, -59.1, -6.1 , 0 );

setScaleKey( spep_0 -3 + 1072, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 1074, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 1076, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 1078, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 1080, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 1082, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 1084, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 1086, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 1088, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 1090, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 1092, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 1094, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 1096, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 1098, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 1100, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 1104, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 1106, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 1110, 1, 0.06, 0.06 );
setScaleKey( spep_0 -3 + 1112, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 1116, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 1118, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 1128, 1, 0.04, 0.04 );
setScaleKey( spep_0 -3 + 1130, 1, 0.03, 0.03 );
setScaleKey( spep_0 -3 + 1142, 1, 0.03, 0.03 );

setRotateKey( spep_0 -3 + 1072, 1, -93.3 );
setRotateKey( spep_0 -3 + 1142, 1, -93.3 );

-- ** 音 ** --
--飛行中
SE035 = playSeVer2( spep_0 + 714, 1019, "",spep_0 + 772, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 714, SE035, 79 );

--パンチ
SE036 = playSeVer2( spep_0 + 720, 1003, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 730, 1010, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 730, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 730, 1187, "", 0, 0, 0, -1);

----敵吹き飛ぶ
SE040 = playSeVer2( spep_0 + 760, 1027, "", 0, 0, 0, -1);

----敵追いかける
SE041 = playSeVer2( spep_0 + 786, 1116, "",spep_0 + 832, 0, 26, -1);
SE042 = playSeVer2( spep_0 + 786, 1117, "",spep_0 + 846, 0, 36, -1);
SE043 = playSeVer2( spep_0 + 786, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE043, 141 );

----ラッシュ
SE044 = playSeVer2( spep_0 + 816, 1110, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 816, 1009, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 828, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 828, 1013, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 838, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 856, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE049, 63 );
SE050 = playSeVer2( spep_0 + 856, 1187, "",spep_0 + 916, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 856, SE050, 79 );

----ラッシュ2
SE051 = playSeVer2( spep_0 + 888, 1110, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 888, 1009, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 902, 1110, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 902, 1013, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 918, 1110, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 918, 1359, "",spep_0 + 952, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 918, SE056, 69 );

----腹パン
SE057 = playSeVer2( spep_0 + 932, 1110, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 932, 1190, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 932, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE059, 68 );

----敵吹き飛ばす
SE060 = playSeVer2( spep_0 + 946, 1027, "", 0, 0, 0, -1);

----蹴り飛ばし
SE061 = playSeVer2( spep_0 + 976, 1189, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 986, 1120, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 986, 1153, "", 0, 0, 0, -1);

----敵飛んでいく
SE064 = playSeVer2( spep_0 + 1018, 1121, "",spep_0 + 1098, 0, 36, -1);
SE065 = playSeVer2( spep_0 + 1018, 1183, "",spep_0 + 1098, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 1018, SE065, 135 );
SE066 = playSeVer2( spep_0 + 1038, 1008, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 1042, 1033, "", 0, 0, 0, -1);

--終わり
hideKoScreen();
dealDamage( spep_0 + 1026 );
endPhase( spep_0 + 1142 -10);

else end
