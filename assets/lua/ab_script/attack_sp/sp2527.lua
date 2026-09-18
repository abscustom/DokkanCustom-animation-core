--4026290:超サイヤ人2ベジータ_ゼロ距離ギャリック砲
--sp_effect_a2_00208

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
SP_01 = 161675  --正面突進〜蹴り上げ ef_001_front
SP_02 = 161676  --正面突進〜蹴り上げ ef_001_back
SP_03 = 161677  --ギャリック砲〜爆発 ef_002_front
SP_04 = 161678  --ギャリック砲〜爆発 ef_002_back

--敵側
SP_01r = 161679 --正面突進〜蹴り上げ ef_001_front_re
SP_02r = 161680 --正面突進〜蹴り上げ ef_001_back_re
SP_03r = 161681 --ギャリック砲〜爆発 ef_002_front_re
SP_04r = 161682 --ギャリック砲〜爆発 ef_002_back_re

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--正面突進〜蹴り上げ ef_001 (468 + 4F)
------------------------------------------------------
--覚書：ef_001 監修動画より冒頭4F伸びたものに変更

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面突進〜蹴り上げ    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 4 + 468, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 4 + 468, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 4 + 468, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --正面突進〜蹴り上げ    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 4 + 468, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 4 + 468, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 4 + 468, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468, first_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 472 + 2, 0, 0, 0, 0, 255 );  --黒　背景


spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 4 + 2, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 4 + 20, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 4 + 44, 1036, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 4 + 52, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 4 + 52, 9, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 4 + 68, 1036, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 4 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_0 - n + 154, 1, 1 );
setDisp( spep_0 + 4 + 468, 1, 0 );
changeAnime( spep_0 - n + 154, 1, 100 );
changeAnime( spep_0 - n + 198, 1, 5 );
changeAnime( spep_0 - n + 258, 1, 106 );

setMoveKey( spep_0 - n + 154, 1, 397.3, -211 , 0 );
setMoveKey( spep_0 - n + 155, 1, 397.3, -211 , 0 );
setMoveKey( spep_0 - n + 156, 1, 397.9, -220.3 , 0 );
setMoveKey( spep_0 - n + 157, 1, 397.9, -220.3 , 0 );
setMoveKey( spep_0 - n + 158, 1, 389.2, -215.6 , 0 );
setMoveKey( spep_0 - n + 159, 1, 389.2, -215.6 , 0 );
setMoveKey( spep_0 - n + 160, 1, 295.7, -219.4 , 0 );
setMoveKey( spep_0 - n + 161, 1, 295.7, -219.4 , 0 );
setMoveKey( spep_0 - n + 162, 1, 300.6, -214.3 , 0 );
setMoveKey( spep_0 - n + 163, 1, 300.6, -214.3 , 0 );
setMoveKey( spep_0 - n + 164, 1, 299.8, -207.2 , 0 );
setMoveKey( spep_0 - n + 165, 1, 299.8, -207.2 , 0 );
setMoveKey( spep_0 - n + 166, 1, 291.1, -211.7 , 0 );
setMoveKey( spep_0 - n + 167, 1, 291.1, -211.7 , 0 );
setMoveKey( spep_0 - n + 168, 1, 298.2, -213.8 , 0 );
setMoveKey( spep_0 - n + 169, 1, 298.2, -213.8 , 0 );
setMoveKey( spep_0 - n + 170, 1, 298, -210.5 , 0 );
setMoveKey( spep_0 - n + 171, 1, 298, -210.5 , 0 );
setMoveKey( spep_0 - n + 172, 1, 296.3, -215.6 , 0 );
setMoveKey( spep_0 - n + 173, 1, 296.3, -215.6 , 0 );
setMoveKey( spep_0 - n + 174, 1, 299.2, -213.3 , 0 );
setMoveKey( spep_0 - n + 175, 1, 299.2, -213.3 , 0 );
setMoveKey( spep_0 - n + 176, 1, 297.4, -216.2 , 0 );
setMoveKey( spep_0 - n + 177, 1, 297.4, -216.2 , 0 );
setMoveKey( spep_0 - n + 178, 1, 290.6, -213.5 , 0 );
setMoveKey( spep_0 - n + 179, 1, 290.6, -213.5 , 0 );
setMoveKey( spep_0 - n + 180, 1, 293.3, -214.8 , 0 );
setMoveKey( spep_0 - n + 181, 1, 293.3, -214.8 , 0 );
setMoveKey( spep_0 - n + 182, 1, 289.8, -213 , 0 );
setMoveKey( spep_0 - n + 183, 1, 289.8, -213 , 0 );
setMoveKey( spep_0 - n + 184, 1, 269, -223.3 , 0 );
setMoveKey( spep_0 - n + 185, 1, 269, -223.3 , 0 );
setMoveKey( spep_0 - n + 186, 1, 275.1, -215.7 , 0 );
setMoveKey( spep_0 - n + 187, 1, 275.1, -215.7 , 0 );
setMoveKey( spep_0 - n + 188, 1, 267.3, -220.6 , 0 );
setMoveKey( spep_0 - n + 189, 1, 267.3, -220.6 , 0 );
setMoveKey( spep_0 - n + 190, 1, 251, -216.9 , 0 );
setMoveKey( spep_0 - n + 191, 1, 251, -216.9 , 0 );
setMoveKey( spep_0 - n + 192, 1, 252.7, -216.3 , 0 );
setMoveKey( spep_0 - n + 193, 1, 252.7, -216.3 , 0 );
setMoveKey( spep_0 - n + 194, 1, 252, -216 , 0 );
setMoveKey( spep_0 - n + 196, 1, 252, -216 , 0 );
setMoveKey( spep_0 - n + 197, 1, 218.1, -215.5 , 0 );
setMoveKey( spep_0 - n + 197, 1, 218.1, -215.5 , 0 );
setMoveKey( spep_0 - n + 198, 1, 193.1, -201.7 , 0 );
setMoveKey( spep_0 - n + 199, 1, 193.1, -201.7 , 0 );
setMoveKey( spep_0 - n + 200, 1, 184.9, -211.5 , 0 );
setMoveKey( spep_0 - n + 201, 1, 184.9, -211.5 , 0 );
setMoveKey( spep_0 - n + 202, 1, 185.8, -199.6 , 0 );
setMoveKey( spep_0 - n + 203, 1, 185.8, -199.6 , 0 );
setMoveKey( spep_0 - n + 204, 1, 204.9, -225 , 0 );
setMoveKey( spep_0 - n + 205, 1, 204.9, -225 , 0 );
setMoveKey( spep_0 - n + 206, 1, 163.5, -210 , 0 );
setMoveKey( spep_0 - n + 207, 1, 163.5, -210 , 0 );
setMoveKey( spep_0 - n + 208, 1, 177.9, -201.5 , 0 );
setMoveKey( spep_0 - n + 209, 1, 177.9, -201.5 , 0 );
setMoveKey( spep_0 - n + 210, 1, 184.1, -190.2 , 0 );
setMoveKey( spep_0 - n + 211, 1, 184.1, -190.2 , 0 );
setMoveKey( spep_0 - n + 212, 1, 197, -188.9 , 0 );
setMoveKey( spep_0 - n + 213, 1, 197, -188.9 , 0 );
setMoveKey( spep_0 - n + 214, 1, 192.2, -206 , 0 );
setMoveKey( spep_0 - n + 215, 1, 192.2, -206 , 0 );
setMoveKey( spep_0 - n + 216, 1, 184.4, -200.6 , 0 );
setMoveKey( spep_0 - n + 217, 1, 184.4, -200.6 , 0 );
setMoveKey( spep_0 - n + 218, 1, 196.3, -202.5 , 0 );
setMoveKey( spep_0 - n + 219, 1, 196.3, -202.5 , 0 );
setMoveKey( spep_0 - n + 220, 1, 193.5, -202.5 , 0 );
setMoveKey( spep_0 - n + 221, 1, 193.5, -202.5 , 0 );
setMoveKey( spep_0 - n + 222, 1, 194.7, -187.9 , 0 );
setMoveKey( spep_0 - n + 223, 1, 194.7, -187.9 , 0 );
setMoveKey( spep_0 - n + 224, 1, 212.6, -195.8 , 0 );
setMoveKey( spep_0 - n + 225, 1, 212.6, -195.8 , 0 );
setMoveKey( spep_0 - n + 226, 1, 188.6, -199.3 , 0 );
setMoveKey( spep_0 - n + 227, 1, 188.6, -199.3 , 0 );
setMoveKey( spep_0 - n + 228, 1, 177.6, -186 , 0 );
setMoveKey( spep_0 - n + 229, 1, 177.6, -186 , 0 );
setMoveKey( spep_0 - n + 230, 1, 192.7, -202.4 , 0 );
setMoveKey( spep_0 - n + 231, 1, 192.7, -202.4 , 0 );
setMoveKey( spep_0 - n + 232, 1, 192.8, -193.8 , 0 );
setMoveKey( spep_0 - n + 233, 1, 192.8, -193.8 , 0 );
setMoveKey( spep_0 - n + 234, 1, 69.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 235, 1, 69.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 236, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 244, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 245, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 246, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 257, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 257, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 258, 1, 88, -58.9 , 0 );
setMoveKey( spep_0 - n + 259, 1, 88, -58.9 , 0 );
setMoveKey( spep_0 - n + 260, 1, 89.1, -54.7 , 0 );
setMoveKey( spep_0 - n + 261, 1, 89.1, -54.7 , 0 );
setMoveKey( spep_0 - n + 262, 1, 95.8, -46.6 , 0 );
setMoveKey( spep_0 - n + 263, 1, 95.8, -46.6 , 0 );
setMoveKey( spep_0 - n + 264, 1, 98.1, -63.1 , 0 );
setMoveKey( spep_0 - n + 265, 1, 98.1, -63.1 , 0 );
setMoveKey( spep_0 - n + 266, 1, 84.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 267, 1, 84.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 268, 1, 94.1, -57.9 , 0 );
setMoveKey( spep_0 - n + 269, 1, 94.1, -57.9 , 0 );
setMoveKey( spep_0 - n + 270, 1, 99.5, -52.2 , 0 );
setMoveKey( spep_0 - n + 271, 1, 99.5, -52.2 , 0 );
setMoveKey( spep_0 - n + 272, 1, 80.9, -64.1 , 0 );
setMoveKey( spep_0 - n + 273, 1, 80.9, -64.1 , 0 );
setMoveKey( spep_0 - n + 274, 1, 92.2, -66.2 , 0 );
setMoveKey( spep_0 - n + 275, 1, 92.2, -66.2 , 0 );
setMoveKey( spep_0 - n + 276, 1, 101.4, -57.8 , 0 );
setMoveKey( spep_0 - n + 277, 1, 101.4, -57.8 , 0 );
setMoveKey( spep_0 - n + 278, 1, 91.6, -54 , 0 );
setMoveKey( spep_0 - n + 279, 1, 91.6, -54 , 0 );
setMoveKey( spep_0 - n + 280, 1, 89.9, -54.9 , 0 );
setMoveKey( spep_0 - n + 281, 1, 89.9, -54.9 , 0 );
setMoveKey( spep_0 - n + 282, 1, 78.6, -58.7 , 0 );
setMoveKey( spep_0 - n + 283, 1, 78.6, -58.7 , 0 );
setMoveKey( spep_0 - n + 284, 1, 88.3, -59.6 , 0 );
setMoveKey( spep_0 - n + 285, 1, 88.3, -59.6 , 0 );
setMoveKey( spep_0 - n + 286, 1, 91.2, -68.4 , 0 );
setMoveKey( spep_0 - n + 287, 1, 91.2, -68.4 , 0 );
setMoveKey( spep_0 - n + 288, 1, 86, -45.4 , 0 );
setMoveKey( spep_0 - n + 289, 1, 86, -45.4 , 0 );
setMoveKey( spep_0 - n + 290, 1, 86.1, -44.3 , 0 );
setMoveKey( spep_0 - n + 291, 1, 86.1, -44.3 , 0 );
setMoveKey( spep_0 - n + 292, 1, 84.8, -58.4 , 0 );
setMoveKey( spep_0 - n + 293, 1, 84.8, -58.4 , 0 );
setMoveKey( spep_0 - n + 294, 1, 78.9, -56 , 0 );
setMoveKey( spep_0 - n + 295, 1, 78.9, -56 , 0 );
setMoveKey( spep_0 - n + 296, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 298, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 299, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 300, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 302, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 303, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 304, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 306, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 307, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 308, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 310, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 311, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 312, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 314, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 315, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 316, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 318, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 319, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 320, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 322, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 323, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 324, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 326, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 327, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 328, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 330, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 331, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 332, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 334, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 335, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 336, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 338, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 339, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 340, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 342, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 343, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 344, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 346, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 347, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 348, 1, 12.4, -416.9 , 0 );
setMoveKey( spep_0 - n + 349, 1, 12.4, -416.9 , 0 );
setMoveKey( spep_0 - n + 350, 1, 154.7, -58.7 , 0 );
setMoveKey( spep_0 - n + 351, 1, 154.7, -58.7 , 0 );
setMoveKey( spep_0 - n + 352, 1, 155.9, -59.1 , 0 );
setMoveKey( spep_0 - n + 353, 1, 155.9, -59.1 , 0 );
setMoveKey( spep_0 - n + 354, 1, 157.2, -59.4 , 0 );
setMoveKey( spep_0 - n + 355, 1, 157.2, -59.4 , 0 );
setMoveKey( spep_0 - n + 356, 1, 158.4, -59.7 , 0 );
setMoveKey( spep_0 - n + 357, 1, 158.4, -59.7 , 0 );
setMoveKey( spep_0 - n + 358, 1, 159.6, -60.1 , 0 );
setMoveKey( spep_0 - n + 359, 1, 159.6, -60.1 , 0 );
setMoveKey( spep_0 - n + 360, 1, 160.9, -60.4 , 0 );
setMoveKey( spep_0 - n + 361, 1, 160.9, -60.4 , 0 );
setMoveKey( spep_0 - n + 362, 1, 162.1, -60.7 , 0 );
setMoveKey( spep_0 - n + 363, 1, 162.1, -60.7 , 0 );
setMoveKey( spep_0 - n + 364, 1, 163.4, -61.1 , 0 );
setMoveKey( spep_0 - n + 365, 1, 163.4, -61.1 , 0 );
setMoveKey( spep_0 - n + 366, 1, 164.6, -61.4 , 0 );
setMoveKey( spep_0 - n + 367, 1, 164.6, -61.4 , 0 );
setMoveKey( spep_0 - n + 368, 1, 165.8, -61.8 , 0 );
setMoveKey( spep_0 - n + 369, 1, 165.8, -61.8 , 0 );
setMoveKey( spep_0 - n + 370, 1, 167.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 371, 1, 167.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 372, 1, 168.3, -62.4 , 0 );
setMoveKey( spep_0 - n + 373, 1, 168.3, -62.4 , 0 );
setMoveKey( spep_0 - n + 374, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 378, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 379, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 380, 1, 238.9, 71.4 , 0 );
setMoveKey( spep_0 - n + 381, 1, 238.9, 71.4 , 0 );
setMoveKey( spep_0 - n + 382, 1, 245.3, 73 , 0 );
setMoveKey( spep_0 - n + 383, 1, 245.3, 73 , 0 );
setMoveKey( spep_0 - n + 384, 1, 245.6, 81.1 , 0 );
setMoveKey( spep_0 - n + 385, 1, 245.6, 81.1 , 0 );
setMoveKey( spep_0 - n + 386, 1, 239, 65.6 , 0 );
setMoveKey( spep_0 - n + 387, 1, 239, 65.6 , 0 );
setMoveKey( spep_0 - n + 388, 1, 243.5, 69.1 , 0 );
setMoveKey( spep_0 - n + 389, 1, 243.5, 69.1 , 0 );
setMoveKey( spep_0 - n + 390, 1, 241.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 391, 1, 241.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 392, 1, 250.3, 68.7 , 0 );
setMoveKey( spep_0 - n + 393, 1, 250.3, 68.7 , 0 );
setMoveKey( spep_0 - n + 394, 1, 238.7, 71.9 , 0 );
setMoveKey( spep_0 - n + 395, 1, 238.7, 71.9 , 0 );
setMoveKey( spep_0 - n + 396, 1, 366.7, 624.9 , 0 );
setMoveKey( spep_0 - n + 397, 1, 366.7, 624.9 , 0 );
setMoveKey( spep_0 - n + 398, 1, 2000.8, 617.7 , 0 );
setMoveKey( spep_0 - n + 399, 1, 2000.8, 617.7 , 0 );
setMoveKey( spep_0 - n + 400, 1, 2000.6, 620.5 , 0 );
setMoveKey( spep_0 - n + 401, 1, 2000.6, 620.5 , 0 );
setMoveKey( spep_0 - n + 402, 1, 64, 209.2 , 0 );
setMoveKey( spep_0 - n + 403, 1, 64, 209.2 , 0 );
setMoveKey( spep_0 - n + 404, 1, 86.1, 294.4 , 0 );
setMoveKey( spep_0 - n + 405, 1, 86.1, 294.4 , 0 );
setMoveKey( spep_0 - n + 406, 1, 107.2, 375.7 , 0 );
setMoveKey( spep_0 - n + 407, 1, 107.2, 375.7 , 0 );
setMoveKey( spep_0 - n + 408, 1, 127.2, 453.1 , 0 );
setMoveKey( spep_0 - n + 409, 1, 127.2, 453.1 , 0 );
setMoveKey( spep_0 - n + 410, 1, 146.3, 526.4 , 0 );
setMoveKey( spep_0 - n + 411, 1, 146.3, 526.4 , 0 );
setMoveKey( spep_0 - n + 412, 1, 164.3, 595.9 , 0 );
setMoveKey( spep_0 - n + 413, 1, 164.3, 595.9 , 0 );
setMoveKey( spep_0 - n + 414, 1, 181.3, 661.3 , 0 );
setMoveKey( spep_0 - n + 415, 1, 181.3, 661.3 , 0 );
setMoveKey( spep_0 - n + 416, 1, 197.3, 722.8 , 0 );
setMoveKey( spep_0 - n + 417, 1, 197.3, 722.8 , 0 );
setMoveKey( spep_0 - n + 418, 1, 212.2, 780.4 , 0 );
setMoveKey( spep_0 - n + 419, 1, 212.2, 780.4 , 0 );
setMoveKey( spep_0 - n + 420, 1, 226.1, 833.9 , 0 );
setMoveKey( spep_0 - n + 421, 1, 226.1, 833.9 , 0 );
setMoveKey( spep_0 - n + 422, 1, 239, 883.5 , 0 );
setMoveKey( spep_0 - n + 423, 1, 239, 883.5 , 0 );
setMoveKey( spep_0 - n + 424, 1, 250.8, 929.2 , 0 );
setMoveKey( spep_0 - n + 425, 1, 250.8, 929.2 , 0 );
setMoveKey( spep_0 - n + 426, 1, 261.7, 970.9 , 0 );
setMoveKey( spep_0 - n + 427, 1, 261.7, 970.9 , 0 );
setMoveKey( spep_0 - n + 428, 1, 271.5, 1008.6 , 0 );
setMoveKey( spep_0 - n + 429, 1, 271.5, 1008.6 , 0 );
setMoveKey( spep_0 - n + 430, 1, 280.2, 1042.3 , 0 );
setMoveKey( spep_0 - n + 431, 1, 280.2, 1042.3 , 0 );
setMoveKey( spep_0 - n + 432, 1, 287.9, 1072.1 , 0 );
setMoveKey( spep_0 - n + 433, 1, 287.9, 1072.1 , 0 );
setMoveKey( spep_0 - n + 434, 1, 294.6, 1097.9 , 0 );
setMoveKey( spep_0 - n + 435, 1, 294.6, 1097.9 , 0 );
setMoveKey( spep_0 - n + 436, 1, 300.3, 1119.8 , 0 );
setMoveKey( spep_0 - n + 437, 1, 300.3, 1119.8 , 0 );
setMoveKey( spep_0 - n + 438, 1, 305, 1137.6 , 0 );
setMoveKey( spep_0 - n + 439, 1, 305, 1137.6 , 0 );
setMoveKey( spep_0 - n + 440, 1, 308.6, 1151.5 , 0 );
setMoveKey( spep_0 - n + 441, 1, 308.6, 1151.5 , 0 );
setMoveKey( spep_0 - n + 442, 1, 311.1, 1161.5 , 0 );
setMoveKey( spep_0 - n + 443, 1, 311.1, 1161.5 , 0 );
setMoveKey( spep_0 - n + 444, 1, 312.7, 1167.4 , 0 );
setMoveKey( spep_0 - n + 445, 1, 312.7, 1167.4 , 0 );
setMoveKey( spep_0 - n + 446, 1, 313.2, 1169.4 , 0 );
setMoveKey( spep_0 - n + 447, 1, 313.2, 1169.4 , 0 );
setMoveKey( spep_0 - n + 448, 1, 299.2, 1022.8 , 0 );
setMoveKey( spep_0 - n + 449, 1, 299.2, 1022.8 , 0 );
setMoveKey( spep_0 - n + 450, 1, 285.2, 876.1 , 0 );
setMoveKey( spep_0 - n + 451, 1, 285.2, 876.1 , 0 );
setMoveKey( spep_0 - n + 452, 1, 271.2, 729.5 , 0 );
setMoveKey( spep_0 - n + 453, 1, 271.2, 729.5 , 0 );
setMoveKey( spep_0 - n + 454, 1, 257.2, 582.8 , 0 );
setMoveKey( spep_0 - n + 455, 1, 257.2, 582.8 , 0 );
setMoveKey( spep_0 - n + 456, 1, 254.9, 516.9 , 0 );
setMoveKey( spep_0 - n + 457, 1, 254.9, 516.9 , 0 );
setMoveKey( spep_0 - n + 458, 1, 252.6, 450.9 , 0 );
setMoveKey( spep_0 - n + 459, 1, 252.6, 450.9 , 0 );
setMoveKey( spep_0 - n + 460, 1, 250.3, 385 , 0 );
setMoveKey( spep_0 - n + 461, 1, 250.3, 385 , 0 );
setMoveKey( spep_0 - n + 462, 1, 248, 319.1 , 0 );
setMoveKey( spep_0 - n + 463, 1, 248, 319.1 , 0 );
setMoveKey( spep_0 - n + 464, 1, 245.7, 253.1 , 0 );
setMoveKey( spep_0 - n + 465, 1, 245.7, 253.1 , 0 );
setMoveKey( spep_0 - n + 466, 1, 243.4, 187.2 , 0 );
setMoveKey( spep_0 - n + 467, 1, 243.4, 187.2 , 0 );
setMoveKey( spep_0 - n + 468, 1, 241.1, 121.3 , 0 );
setMoveKey( spep_0 - n + 469, 1, 241.1, 121.3 , 0 );
setMoveKey( spep_0 - n + 470, 1, 238.8, 55.3 , 0 );
setMoveKey( spep_0 - n + 471, 1, 238.8, 55.3 , 0 );
setMoveKey( spep_0 - n + 472, 1, 236.5, -10.6 , 0 );
setMoveKey( spep_0 + 4 + 468, 1, 236.5, -10.6 , 0 );

setScaleKey( spep_0 - n + 154, 1, 3.3, 3.3 );
setScaleKey( spep_0 - n + 171, 1, 3.3, 3.3 );
setScaleKey( spep_0 - n + 172, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 177, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 178, 1, 3.33, 3.33 );
setScaleKey( spep_0 - n + 183, 1, 3.33, 3.33 );
setScaleKey( spep_0 - n + 184, 1, 3.38, 3.38 );
setScaleKey( spep_0 - n + 189, 1, 3.38, 3.38 );
setScaleKey( spep_0 - n + 190, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 194, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 195, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 196, 1, 3.58, 3.58 );
setScaleKey( spep_0 - n + 197, 1, 3.58, 3.58 );
setScaleKey( spep_0 - n + 198, 1, 5.26, 5.26 );
setScaleKey( spep_0 - n + 233, 1, 5.26, 5.26 );
setScaleKey( spep_0 - n + 234, 1, 1.68, 1.68 );
setScaleKey( spep_0 - n + 257, 1, 1.68, 1.68 );
setScaleKey( spep_0 - n + 258, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 295, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 296, 1, 5.07, 5.07 );
setScaleKey( spep_0 - n + 349, 1, 5.07, 5.07 );
setScaleKey( spep_0 - n + 350, 1, 2, 2 );
setScaleKey( spep_0 - n + 401, 1, 2, 2 );
setScaleKey( spep_0 - n + 402, 1, 0.62, 0.62 );
setScaleKey( spep_0 - n + 403, 1, 0.62, 0.62 );
setScaleKey( spep_0 - n + 404, 1, 0.89, 0.89 );
setScaleKey( spep_0 - n + 405, 1, 0.89, 0.89 );
setScaleKey( spep_0 - n + 406, 1, 1.14, 1.14 );
setScaleKey( spep_0 - n + 407, 1, 1.14, 1.14 );
setScaleKey( spep_0 - n + 408, 1, 1.38, 1.38 );
setScaleKey( spep_0 - n + 409, 1, 1.38, 1.38 );
setScaleKey( spep_0 - n + 410, 1, 1.61, 1.61 );
setScaleKey( spep_0 - n + 411, 1, 1.61, 1.61 );
setScaleKey( spep_0 - n + 412, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 413, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 414, 1, 2.03, 2.03 );
setScaleKey( spep_0 - n + 415, 1, 2.03, 2.03 );
setScaleKey( spep_0 - n + 416, 1, 2.22, 2.22 );
setScaleKey( spep_0 - n + 417, 1, 2.22, 2.22 );
setScaleKey( spep_0 - n + 418, 1, 2.4, 2.4 );
setScaleKey( spep_0 - n + 419, 1, 2.4, 2.4 );
setScaleKey( spep_0 - n + 420, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 421, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 422, 1, 2.72, 2.72 );
setScaleKey( spep_0 - n + 423, 1, 2.72, 2.72 );
setScaleKey( spep_0 - n + 424, 1, 2.87, 2.87 );
setScaleKey( spep_0 - n + 425, 1, 2.87, 2.87 );
setScaleKey( spep_0 - n + 426, 1, 3, 3 );
setScaleKey( spep_0 - n + 427, 1, 3, 3 );
setScaleKey( spep_0 - n + 428, 1, 3.11, 3.11 );
setScaleKey( spep_0 - n + 429, 1, 3.11, 3.11 );
setScaleKey( spep_0 - n + 430, 1, 3.22, 3.22 );
setScaleKey( spep_0 - n + 431, 1, 3.22, 3.22 );
setScaleKey( spep_0 - n + 432, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 433, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 434, 1, 3.39, 3.39 );
setScaleKey( spep_0 - n + 435, 1, 3.39, 3.39 );
setScaleKey( spep_0 - n + 436, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 437, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 438, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 439, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 440, 1, 3.56, 3.56 );
setScaleKey( spep_0 - n + 441, 1, 3.56, 3.56 );
setScaleKey( spep_0 - n + 442, 1, 3.59, 3.59 );
setScaleKey( spep_0 - n + 443, 1, 3.59, 3.59 );
setScaleKey( spep_0 - n + 444, 1, 3.61, 3.61 );
setScaleKey( spep_0 - n + 447, 1, 3.61, 3.61 );
setScaleKey( spep_0 - n + 448, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 449, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 450, 1, 3.4, 3.4 );
setScaleKey( spep_0 - n + 451, 1, 3.4, 3.4 );
setScaleKey( spep_0 - n + 452, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 4 + 468, 1, 3.2, 3.2 );

setRotateKey( spep_0 - n + 154, 1, 0 );
setRotateKey( spep_0 - n + 233, 1, 0 );
setRotateKey( spep_0 - n + 234, 1, 60 );
setRotateKey( spep_0 - n + 257, 1, 60 );
setRotateKey( spep_0 - n + 258, 1, 11 );
setRotateKey( spep_0 - n + 295, 1, 11 );
setRotateKey( spep_0 - n + 296, 1, 2.8 );
setRotateKey( spep_0 - n + 299, 1, 2.8 );
setRotateKey( spep_0 - n + 300, 1, 3.4 );
setRotateKey( spep_0 - n + 303, 1, 3.4 );
setRotateKey( spep_0 - n + 304, 1, 3.9 );
setRotateKey( spep_0 - n + 307, 1, 3.9 );
setRotateKey( spep_0 - n + 308, 1, 4.5 );
setRotateKey( spep_0 - n + 311, 1, 4.5 );
setRotateKey( spep_0 - n + 312, 1, 5 );
setRotateKey( spep_0 - n + 315, 1, 5 );
setRotateKey( spep_0 - n + 316, 1, 5.6 );
setRotateKey( spep_0 - n + 319, 1, 5.6 );
setRotateKey( spep_0 - n + 320, 1, 6.1 );
setRotateKey( spep_0 - n + 323, 1, 6.1 );
setRotateKey( spep_0 - n + 324, 1, 6.7 );
setRotateKey( spep_0 - n + 327, 1, 6.7 );
setRotateKey( spep_0 - n + 328, 1, 7.2 );
setRotateKey( spep_0 - n + 331, 1, 7.2 );
setRotateKey( spep_0 - n + 332, 1, 7.8 );
setRotateKey( spep_0 - n + 335, 1, 7.8 );
setRotateKey( spep_0 - n + 336, 1, 8.3 );
setRotateKey( spep_0 - n + 339, 1, 8.3 );
setRotateKey( spep_0 - n + 340, 1, 8.9 );
setRotateKey( spep_0 - n + 343, 1, 8.9 );
setRotateKey( spep_0 - n + 344, 1, 9.5 );
setRotateKey( spep_0 - n + 347, 1, 9.5 );
setRotateKey( spep_0 - n + 348, 1, 10 );
setRotateKey( spep_0 - n + 379, 1, 10 );
setRotateKey( spep_0 - n + 380, 1, -38.5 );
setRotateKey( spep_0 - n + 401, 1, -38.5 );
setRotateKey( spep_0 - n + 402, 1, -33.6 );
setRotateKey( spep_0 - n + 403, 1, -33.6 );
setRotateKey( spep_0 - n + 404, 1, -34.6 );
setRotateKey( spep_0 - n + 405, 1, -34.6 );
setRotateKey( spep_0 - n + 406, 1, -35.5 );
setRotateKey( spep_0 - n + 407, 1, -35.5 );
setRotateKey( spep_0 - n + 408, 1, -36.4 );
setRotateKey( spep_0 - n + 409, 1, -36.4 );
setRotateKey( spep_0 - n + 410, 1, -37.2 );
setRotateKey( spep_0 - n + 411, 1, -37.2 );
setRotateKey( spep_0 - n + 412, 1, -38 );
setRotateKey( spep_0 - n + 413, 1, -38 );
setRotateKey( spep_0 - n + 414, 1, -38.7 );
setRotateKey( spep_0 - n + 415, 1, -38.7 );
setRotateKey( spep_0 - n + 416, 1, -39.4 );
setRotateKey( spep_0 - n + 417, 1, -39.4 );
setRotateKey( spep_0 - n + 418, 1, -40 );
setRotateKey( spep_0 - n + 419, 1, -40 );
setRotateKey( spep_0 - n + 420, 1, -40.6 );
setRotateKey( spep_0 - n + 421, 1, -40.6 );
setRotateKey( spep_0 - n + 422, 1, -41.2 );
setRotateKey( spep_0 - n + 423, 1, -41.2 );
setRotateKey( spep_0 - n + 424, 1, -41.7 );
setRotateKey( spep_0 - n + 425, 1, -41.7 );
setRotateKey( spep_0 - n + 426, 1, -42.1 );
setRotateKey( spep_0 - n + 427, 1, -42.1 );
setRotateKey( spep_0 - n + 428, 1, -42.6 );
setRotateKey( spep_0 - n + 429, 1, -42.6 );
setRotateKey( spep_0 - n + 430, 1, -42.9 );
setRotateKey( spep_0 - n + 431, 1, -42.9 );
setRotateKey( spep_0 - n + 432, 1, -43.3 );
setRotateKey( spep_0 - n + 433, 1, -43.3 );
setRotateKey( spep_0 - n + 434, 1, -43.6 );
setRotateKey( spep_0 - n + 435, 1, -43.6 );
setRotateKey( spep_0 - n + 436, 1, -43.8 );
setRotateKey( spep_0 - n + 437, 1, -43.8 );
setRotateKey( spep_0 - n + 438, 1, -44 );
setRotateKey( spep_0 - n + 439, 1, -44 );
setRotateKey( spep_0 - n + 440, 1, -44.2 );
setRotateKey( spep_0 - n + 441, 1, -44.2 );
setRotateKey( spep_0 - n + 442, 1, -44.3 );
setRotateKey( spep_0 - n + 445, 1, -44.3 );
setRotateKey( spep_0 - n + 446, 1, -44.4 );
setRotateKey( spep_0 - n + 449, 1, -44.4 );
setRotateKey( spep_0 - n + 450, 1, -44.3 );
setRotateKey( spep_0 + 4 + 468, 1, -44.3 );


-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_0 + 4 + 92, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE010 = playSeVer2( spep_0 + 4 + 92, 1147, "",spep_0 + 4 + 202, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 4 + 92, SE010, 42 );

--向かっていく
SE011 = playSeVer2( spep_0 + 4 + 100, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 4 + 100, 1116, "",spep_0 + 4 + 150, 0, 26, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 4 + 116, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 4 + 140, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 4 + 164, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 4 + 188, 1036, "", 0, 0, 0, -1);

--パンチ
SE016 = playSeVer2( spep_0 + 4 + 180, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 4 + 194, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 4 + 194, 1359, "", 0, 0, 0, -1);

--パンチ２
SE020 = playSeVer2( spep_0 + 4 + 250, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 4 + 250, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 4 + 254, 1110, "", 0, 0, 0, -1);

--イナヅマ
SE023 = playSeVer2( spep_0 + 4 + 286, 1147, "",spep_0 + 4 + 394, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 4 + 286, SE023, 45 );

--オーラ
SE024 = playSeVer2( spep_0 + 4 + 288, 1036, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 4 + 312, 1036, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 4 + 336, 1036, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 4 + 360, 1036, "", 0, 0, 0, -1);

--蹴り飛ばし
SE028 = playSeVer2( spep_0 + 4 + 366, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 4 + 374, 1120, "", 0, 0, 0, -1);

--飛び上がる
SE030 = playSeVer2( spep_0 + 4 + 418, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 4 + 418, 1117, "",spep_0 + 4 + 468 + 10, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 4 + 418, 1011, "",spep_0 + 4 + 468 + 10, 0, 10, -1);
SE033 = playSeVer2( spep_0 + 4 + 426, 44, "",spep_0 + 4 + 468 + 10, 0, 10, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 4 + 468;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾溜め
SE035 = playSeVer2( spep_1 + 88, 1370, "",spep_1 + 94 + 82, 0, 12, -1);
SE036 = playSeVer2( spep_1 + 88, 1148, "",spep_1 + 94 + 82, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 88, SE036, 63 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
--ギャリック砲〜爆発 ef_002 (332F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ギャリック砲〜爆発   ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 332, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 332, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 332, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 332, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ギャリック砲〜爆発    ef_002_back
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 332, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 332, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 332, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 332, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 332 + 2, 0, 0, 0, 0, 255 );  --黒　背景

n = 5;

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 - n + 68, 1, 0 );
changeAnime( spep_2 - n + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 367, -263.7 , 0 );
setMoveKey( spep_2 - n + 6, 1, 358.2, -209.4 , 0 );
setMoveKey( spep_2 - n + 7, 1, 358.2, -209.4 , 0 );
setMoveKey( spep_2 - n + 8, 1, 349.3, -155.3 , 0 );
setMoveKey( spep_2 - n + 9, 1, 349.3, -155.3 , 0 );
setMoveKey( spep_2 - n + 10, 1, 340.3, -101.4 , 0 );
setMoveKey( spep_2 - n + 11, 1, 340.3, -101.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, 331.3, -47.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, 331.3, -47.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, 322.2, 6.4 , 0 );
setMoveKey( spep_2 - n + 15, 1, 322.2, 6.4 , 0 );
setMoveKey( spep_2 - n + 16, 1, 310.8, 59.6 , 0 );
setMoveKey( spep_2 - n + 17, 1, 310.8, 59.6 , 0 );
setMoveKey( spep_2 - n + 18, 1, 319.8, 57.4 , 0 );
setMoveKey( spep_2 - n + 19, 1, 319.8, 57.4 , 0 );
setMoveKey( spep_2 - n + 20, 1, 308.6, 70.8 , 0 );
setMoveKey( spep_2 - n + 21, 1, 308.6, 70.8 , 0 );
setMoveKey( spep_2 - n + 22, 1, 319.9, 71.5 , 0 );
setMoveKey( spep_2 - n + 23, 1, 319.9, 71.5 , 0 );
setMoveKey( spep_2 - n + 24, 1, 313.5, 59.3 , 0 );
setMoveKey( spep_2 - n + 25, 1, 313.5, 59.3 , 0 );
setMoveKey( spep_2 - n + 26, 1, 315.6, 56.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, 315.6, 56.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, 313.3, 60.5 , 0 );
setMoveKey( spep_2 - n + 29, 1, 313.3, 60.5 , 0 );
setMoveKey( spep_2 - n + 30, 1, 313.4, 65.4 , 0 );
setMoveKey( spep_2 - n + 31, 1, 313.4, 65.4 , 0 );
setMoveKey( spep_2 - n + 32, 1, 312.6, 72.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, 312.6, 72.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, 319.3, 64.7 , 0 );
setMoveKey( spep_2 - n + 35, 1, 319.3, 64.7 , 0 );
setMoveKey( spep_2 - n + 36, 1, 310.3, 52.7 , 0 );
setMoveKey( spep_2 - n + 37, 1, 310.3, 52.7 , 0 );
setMoveKey( spep_2 - n + 38, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 40, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 41, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 42, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 44, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 45, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 46, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 48, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 49, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 50, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 52, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 53, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 54, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 57, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 58, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 60, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 61, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 62, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 64, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 65, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 66, 1, 16.9, -13.4 , 0 );
setMoveKey( spep_2 - n + 68, 1, 16.9, -13.4 , 0 );

setScaleKey( spep_2 + 0, 1, 7.49, 7.49 );
setScaleKey( spep_2 - n + 37, 1, 7.49, 7.49 );
setScaleKey( spep_2 - n + 38, 1, 3.37, 3.37 );
setScaleKey( spep_2 - n + 68, 1, 3.37, 3.37 );

setRotateKey( spep_2 + 0, 1, -47.9 );
setRotateKey( spep_2 - n + 37, 1, -47.9 );
setRotateKey( spep_2 - n + 38, 1, -38.9 );
setRotateKey( spep_2 - n + 68, 1, -38.9 );

setBlendColor(spep_2 + 0, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 13, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 14, 1, 2, 0.4, 0.4, 0.4, 0.5 );
setBlendColor(spep_2 - n + 37, 1, 2, 0.4, 0.4, 0.4, 0.5 );
setBlendColor(spep_2 - n + 38, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 68, 1, 2, 0.4, 0.4, 0.4, 0 );

-- ** 音 ** --
--気弾溜め
SE037 = playSeVer2( spep_2 + 2, 1296, "",spep_2 + 90, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 2, SE037, 122 );

--腕前に出す
SE038 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_2 + 2, 1282, "",spep_2 + 78, 0, 12, -1);
SE040 = playSeVer2( spep_2 + 2, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE040, 63 );

--気弾発射
SE041 = playSeVer2( spep_2 + 62, 1213, "",spep_2 + 246, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 62, SE041, 60 );
SE042 = playSeVer2( spep_2 + 62, 1133, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 62, 1146, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE044, 65 );

--気弾膨れ上がる
SE045 = playSeVer2( spep_2 + 98, 1203, "",spep_2 + 246, 0, 20, 0.6);
SE046 = playSeVer2( spep_2 + 98, 1210, "",spep_2 + 246, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 98, SE046, 56 );
SE047 = playSeVer2( spep_2 + 98, 1215, "",spep_2 + 246, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 98, SE047, 80 );

--爆発
SE048 = playSeVer2( spep_2 + 228, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 240, 1259, "", 0, 0, 0, -1);


-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 220 ); -- ダメージ表示フレーム
endPhase( spep_2 + 332 - 10 ); -- 終了フレーム

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--正面突進〜蹴り上げ ef_001 (468 + 4F)
------------------------------------------------------
--覚書：ef_001 監修動画より冒頭4F伸びたものに変更

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --正面突進〜蹴り上げ    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 4 + 468, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 4 + 468, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 4 + 468, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 4 + 468, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --正面突進〜蹴り上げ    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 4 + 468, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 4 + 468, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 4 + 468, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 4 + 468, first_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 472 + 2, 0, 0, 0, 0, 255 );  --黒　背景


spep_x = spep_0 + 0;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 30, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 4 + 2, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 4 + 20, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 4 + 44, 1036, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 4 + 52, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 4 + 52, 9, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 4 + 68, 1036, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 4 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_0 - n + 154, 1, 1 );
setDisp( spep_0 + 4 + 468, 1, 0 );
changeAnime( spep_0 - n + 154, 1, 100 );
changeAnime( spep_0 - n + 198, 1, 5 );
changeAnime( spep_0 - n + 258, 1, 106 );

setMoveKey( spep_0 - n + 154, 1, 397.3, -211 , 0 );
setMoveKey( spep_0 - n + 155, 1, 397.3, -211 , 0 );
setMoveKey( spep_0 - n + 156, 1, 397.9, -220.3 , 0 );
setMoveKey( spep_0 - n + 157, 1, 397.9, -220.3 , 0 );
setMoveKey( spep_0 - n + 158, 1, 389.2, -215.6 , 0 );
setMoveKey( spep_0 - n + 159, 1, 389.2, -215.6 , 0 );
setMoveKey( spep_0 - n + 160, 1, 295.7, -219.4 , 0 );
setMoveKey( spep_0 - n + 161, 1, 295.7, -219.4 , 0 );
setMoveKey( spep_0 - n + 162, 1, 300.6, -214.3 , 0 );
setMoveKey( spep_0 - n + 163, 1, 300.6, -214.3 , 0 );
setMoveKey( spep_0 - n + 164, 1, 299.8, -207.2 , 0 );
setMoveKey( spep_0 - n + 165, 1, 299.8, -207.2 , 0 );
setMoveKey( spep_0 - n + 166, 1, 291.1, -211.7 , 0 );
setMoveKey( spep_0 - n + 167, 1, 291.1, -211.7 , 0 );
setMoveKey( spep_0 - n + 168, 1, 298.2, -213.8 , 0 );
setMoveKey( spep_0 - n + 169, 1, 298.2, -213.8 , 0 );
setMoveKey( spep_0 - n + 170, 1, 298, -210.5 , 0 );
setMoveKey( spep_0 - n + 171, 1, 298, -210.5 , 0 );
setMoveKey( spep_0 - n + 172, 1, 296.3, -215.6 , 0 );
setMoveKey( spep_0 - n + 173, 1, 296.3, -215.6 , 0 );
setMoveKey( spep_0 - n + 174, 1, 299.2, -213.3 , 0 );
setMoveKey( spep_0 - n + 175, 1, 299.2, -213.3 , 0 );
setMoveKey( spep_0 - n + 176, 1, 297.4, -216.2 , 0 );
setMoveKey( spep_0 - n + 177, 1, 297.4, -216.2 , 0 );
setMoveKey( spep_0 - n + 178, 1, 290.6, -213.5 , 0 );
setMoveKey( spep_0 - n + 179, 1, 290.6, -213.5 , 0 );
setMoveKey( spep_0 - n + 180, 1, 293.3, -214.8 , 0 );
setMoveKey( spep_0 - n + 181, 1, 293.3, -214.8 , 0 );
setMoveKey( spep_0 - n + 182, 1, 289.8, -213 , 0 );
setMoveKey( spep_0 - n + 183, 1, 289.8, -213 , 0 );
setMoveKey( spep_0 - n + 184, 1, 269, -223.3 , 0 );
setMoveKey( spep_0 - n + 185, 1, 269, -223.3 , 0 );
setMoveKey( spep_0 - n + 186, 1, 275.1, -215.7 , 0 );
setMoveKey( spep_0 - n + 187, 1, 275.1, -215.7 , 0 );
setMoveKey( spep_0 - n + 188, 1, 267.3, -220.6 , 0 );
setMoveKey( spep_0 - n + 189, 1, 267.3, -220.6 , 0 );
setMoveKey( spep_0 - n + 190, 1, 251, -216.9 , 0 );
setMoveKey( spep_0 - n + 191, 1, 251, -216.9 , 0 );
setMoveKey( spep_0 - n + 192, 1, 252.7, -216.3 , 0 );
setMoveKey( spep_0 - n + 193, 1, 252.7, -216.3 , 0 );
setMoveKey( spep_0 - n + 194, 1, 252, -216 , 0 );
setMoveKey( spep_0 - n + 196, 1, 252, -216 , 0 );
setMoveKey( spep_0 - n + 197, 1, 218.1, -215.5 , 0 );
setMoveKey( spep_0 - n + 197, 1, 218.1, -215.5 , 0 );
setMoveKey( spep_0 - n + 198, 1, 193.1, -201.7 , 0 );
setMoveKey( spep_0 - n + 199, 1, 193.1, -201.7 , 0 );
setMoveKey( spep_0 - n + 200, 1, 184.9, -211.5 , 0 );
setMoveKey( spep_0 - n + 201, 1, 184.9, -211.5 , 0 );
setMoveKey( spep_0 - n + 202, 1, 185.8, -199.6 , 0 );
setMoveKey( spep_0 - n + 203, 1, 185.8, -199.6 , 0 );
setMoveKey( spep_0 - n + 204, 1, 204.9, -225 , 0 );
setMoveKey( spep_0 - n + 205, 1, 204.9, -225 , 0 );
setMoveKey( spep_0 - n + 206, 1, 163.5, -210 , 0 );
setMoveKey( spep_0 - n + 207, 1, 163.5, -210 , 0 );
setMoveKey( spep_0 - n + 208, 1, 177.9, -201.5 , 0 );
setMoveKey( spep_0 - n + 209, 1, 177.9, -201.5 , 0 );
setMoveKey( spep_0 - n + 210, 1, 184.1, -190.2 , 0 );
setMoveKey( spep_0 - n + 211, 1, 184.1, -190.2 , 0 );
setMoveKey( spep_0 - n + 212, 1, 197, -188.9 , 0 );
setMoveKey( spep_0 - n + 213, 1, 197, -188.9 , 0 );
setMoveKey( spep_0 - n + 214, 1, 192.2, -206 , 0 );
setMoveKey( spep_0 - n + 215, 1, 192.2, -206 , 0 );
setMoveKey( spep_0 - n + 216, 1, 184.4, -200.6 , 0 );
setMoveKey( spep_0 - n + 217, 1, 184.4, -200.6 , 0 );
setMoveKey( spep_0 - n + 218, 1, 196.3, -202.5 , 0 );
setMoveKey( spep_0 - n + 219, 1, 196.3, -202.5 , 0 );
setMoveKey( spep_0 - n + 220, 1, 193.5, -202.5 , 0 );
setMoveKey( spep_0 - n + 221, 1, 193.5, -202.5 , 0 );
setMoveKey( spep_0 - n + 222, 1, 194.7, -187.9 , 0 );
setMoveKey( spep_0 - n + 223, 1, 194.7, -187.9 , 0 );
setMoveKey( spep_0 - n + 224, 1, 212.6, -195.8 , 0 );
setMoveKey( spep_0 - n + 225, 1, 212.6, -195.8 , 0 );
setMoveKey( spep_0 - n + 226, 1, 188.6, -199.3 , 0 );
setMoveKey( spep_0 - n + 227, 1, 188.6, -199.3 , 0 );
setMoveKey( spep_0 - n + 228, 1, 177.6, -186 , 0 );
setMoveKey( spep_0 - n + 229, 1, 177.6, -186 , 0 );
setMoveKey( spep_0 - n + 230, 1, 192.7, -202.4 , 0 );
setMoveKey( spep_0 - n + 231, 1, 192.7, -202.4 , 0 );
setMoveKey( spep_0 - n + 232, 1, 192.8, -193.8 , 0 );
setMoveKey( spep_0 - n + 233, 1, 192.8, -193.8 , 0 );
setMoveKey( spep_0 - n + 234, 1, 69.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 235, 1, 69.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 236, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 244, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 245, 1, 82.9, -6.5 , 0 );
setMoveKey( spep_0 - n + 246, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 257, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 257, 1, 96.4, -6.5 , 0 );
setMoveKey( spep_0 - n + 258, 1, 88, -58.9 , 0 );
setMoveKey( spep_0 - n + 259, 1, 88, -58.9 , 0 );
setMoveKey( spep_0 - n + 260, 1, 89.1, -54.7 , 0 );
setMoveKey( spep_0 - n + 261, 1, 89.1, -54.7 , 0 );
setMoveKey( spep_0 - n + 262, 1, 95.8, -46.6 , 0 );
setMoveKey( spep_0 - n + 263, 1, 95.8, -46.6 , 0 );
setMoveKey( spep_0 - n + 264, 1, 98.1, -63.1 , 0 );
setMoveKey( spep_0 - n + 265, 1, 98.1, -63.1 , 0 );
setMoveKey( spep_0 - n + 266, 1, 84.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 267, 1, 84.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 268, 1, 94.1, -57.9 , 0 );
setMoveKey( spep_0 - n + 269, 1, 94.1, -57.9 , 0 );
setMoveKey( spep_0 - n + 270, 1, 99.5, -52.2 , 0 );
setMoveKey( spep_0 - n + 271, 1, 99.5, -52.2 , 0 );
setMoveKey( spep_0 - n + 272, 1, 80.9, -64.1 , 0 );
setMoveKey( spep_0 - n + 273, 1, 80.9, -64.1 , 0 );
setMoveKey( spep_0 - n + 274, 1, 92.2, -66.2 , 0 );
setMoveKey( spep_0 - n + 275, 1, 92.2, -66.2 , 0 );
setMoveKey( spep_0 - n + 276, 1, 101.4, -57.8 , 0 );
setMoveKey( spep_0 - n + 277, 1, 101.4, -57.8 , 0 );
setMoveKey( spep_0 - n + 278, 1, 91.6, -54 , 0 );
setMoveKey( spep_0 - n + 279, 1, 91.6, -54 , 0 );
setMoveKey( spep_0 - n + 280, 1, 89.9, -54.9 , 0 );
setMoveKey( spep_0 - n + 281, 1, 89.9, -54.9 , 0 );
setMoveKey( spep_0 - n + 282, 1, 78.6, -58.7 , 0 );
setMoveKey( spep_0 - n + 283, 1, 78.6, -58.7 , 0 );
setMoveKey( spep_0 - n + 284, 1, 88.3, -59.6 , 0 );
setMoveKey( spep_0 - n + 285, 1, 88.3, -59.6 , 0 );
setMoveKey( spep_0 - n + 286, 1, 91.2, -68.4 , 0 );
setMoveKey( spep_0 - n + 287, 1, 91.2, -68.4 , 0 );
setMoveKey( spep_0 - n + 288, 1, 86, -45.4 , 0 );
setMoveKey( spep_0 - n + 289, 1, 86, -45.4 , 0 );
setMoveKey( spep_0 - n + 290, 1, 86.1, -44.3 , 0 );
setMoveKey( spep_0 - n + 291, 1, 86.1, -44.3 , 0 );
setMoveKey( spep_0 - n + 292, 1, 84.8, -58.4 , 0 );
setMoveKey( spep_0 - n + 293, 1, 84.8, -58.4 , 0 );
setMoveKey( spep_0 - n + 294, 1, 78.9, -56 , 0 );
setMoveKey( spep_0 - n + 295, 1, 78.9, -56 , 0 );
setMoveKey( spep_0 - n + 296, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 298, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 299, 1, -26.3, -423.8 , 0 );
setMoveKey( spep_0 - n + 300, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 302, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 303, 1, -23.4, -423.2 , 0 );
setMoveKey( spep_0 - n + 304, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 306, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 307, 1, -20.4, -422.7 , 0 );
setMoveKey( spep_0 - n + 308, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 310, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 311, 1, -17.4, -422.1 , 0 );
setMoveKey( spep_0 - n + 312, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 314, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 315, 1, -14.4, -421.6 , 0 );
setMoveKey( spep_0 - n + 316, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 318, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 319, 1, -11.4, -421 , 0 );
setMoveKey( spep_0 - n + 320, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 322, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 323, 1, -8.5, -420.5 , 0 );
setMoveKey( spep_0 - n + 324, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 326, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 327, 1, -5.5, -420 , 0 );
setMoveKey( spep_0 - n + 328, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 330, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 331, 1, -2.5, -419.5 , 0 );
setMoveKey( spep_0 - n + 332, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 334, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 335, 1, 0.5, -418.9 , 0 );
setMoveKey( spep_0 - n + 336, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 338, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 339, 1, 3.4, -418.5 , 0 );
setMoveKey( spep_0 - n + 340, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 342, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 343, 1, 6.4, -417.9 , 0 );
setMoveKey( spep_0 - n + 344, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 346, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 347, 1, 9.4, -417.3 , 0 );
setMoveKey( spep_0 - n + 348, 1, 12.4, -416.9 , 0 );
setMoveKey( spep_0 - n + 349, 1, 12.4, -416.9 , 0 );
setMoveKey( spep_0 - n + 350, 1, 154.7, -58.7 , 0 );
setMoveKey( spep_0 - n + 351, 1, 154.7, -58.7 , 0 );
setMoveKey( spep_0 - n + 352, 1, 155.9, -59.1 , 0 );
setMoveKey( spep_0 - n + 353, 1, 155.9, -59.1 , 0 );
setMoveKey( spep_0 - n + 354, 1, 157.2, -59.4 , 0 );
setMoveKey( spep_0 - n + 355, 1, 157.2, -59.4 , 0 );
setMoveKey( spep_0 - n + 356, 1, 158.4, -59.7 , 0 );
setMoveKey( spep_0 - n + 357, 1, 158.4, -59.7 , 0 );
setMoveKey( spep_0 - n + 358, 1, 159.6, -60.1 , 0 );
setMoveKey( spep_0 - n + 359, 1, 159.6, -60.1 , 0 );
setMoveKey( spep_0 - n + 360, 1, 160.9, -60.4 , 0 );
setMoveKey( spep_0 - n + 361, 1, 160.9, -60.4 , 0 );
setMoveKey( spep_0 - n + 362, 1, 162.1, -60.7 , 0 );
setMoveKey( spep_0 - n + 363, 1, 162.1, -60.7 , 0 );
setMoveKey( spep_0 - n + 364, 1, 163.4, -61.1 , 0 );
setMoveKey( spep_0 - n + 365, 1, 163.4, -61.1 , 0 );
setMoveKey( spep_0 - n + 366, 1, 164.6, -61.4 , 0 );
setMoveKey( spep_0 - n + 367, 1, 164.6, -61.4 , 0 );
setMoveKey( spep_0 - n + 368, 1, 165.8, -61.8 , 0 );
setMoveKey( spep_0 - n + 369, 1, 165.8, -61.8 , 0 );
setMoveKey( spep_0 - n + 370, 1, 167.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 371, 1, 167.1, -62.1 , 0 );
setMoveKey( spep_0 - n + 372, 1, 168.3, -62.4 , 0 );
setMoveKey( spep_0 - n + 373, 1, 168.3, -62.4 , 0 );
setMoveKey( spep_0 - n + 374, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 378, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 379, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 - n + 380, 1, 238.9, 71.4 , 0 );
setMoveKey( spep_0 - n + 381, 1, 238.9, 71.4 , 0 );
setMoveKey( spep_0 - n + 382, 1, 245.3, 73 , 0 );
setMoveKey( spep_0 - n + 383, 1, 245.3, 73 , 0 );
setMoveKey( spep_0 - n + 384, 1, 245.6, 81.1 , 0 );
setMoveKey( spep_0 - n + 385, 1, 245.6, 81.1 , 0 );
setMoveKey( spep_0 - n + 386, 1, 239, 65.6 , 0 );
setMoveKey( spep_0 - n + 387, 1, 239, 65.6 , 0 );
setMoveKey( spep_0 - n + 388, 1, 243.5, 69.1 , 0 );
setMoveKey( spep_0 - n + 389, 1, 243.5, 69.1 , 0 );
setMoveKey( spep_0 - n + 390, 1, 241.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 391, 1, 241.6, 71.4 , 0 );
setMoveKey( spep_0 - n + 392, 1, 250.3, 68.7 , 0 );
setMoveKey( spep_0 - n + 393, 1, 250.3, 68.7 , 0 );
setMoveKey( spep_0 - n + 394, 1, 238.7, 71.9 , 0 );
setMoveKey( spep_0 - n + 395, 1, 238.7, 71.9 , 0 );
setMoveKey( spep_0 - n + 396, 1, 366.7, 624.9 , 0 );
setMoveKey( spep_0 - n + 397, 1, 366.7, 624.9 , 0 );
setMoveKey( spep_0 - n + 398, 1, 2000.8, 617.7 , 0 );
setMoveKey( spep_0 - n + 399, 1, 2000.8, 617.7 , 0 );
setMoveKey( spep_0 - n + 400, 1, 2000.6, 620.5 , 0 );
setMoveKey( spep_0 - n + 401, 1, 2000.6, 620.5 , 0 );
setMoveKey( spep_0 - n + 402, 1, 64, 209.2 , 0 );
setMoveKey( spep_0 - n + 403, 1, 64, 209.2 , 0 );
setMoveKey( spep_0 - n + 404, 1, 86.1, 294.4 , 0 );
setMoveKey( spep_0 - n + 405, 1, 86.1, 294.4 , 0 );
setMoveKey( spep_0 - n + 406, 1, 107.2, 375.7 , 0 );
setMoveKey( spep_0 - n + 407, 1, 107.2, 375.7 , 0 );
setMoveKey( spep_0 - n + 408, 1, 127.2, 453.1 , 0 );
setMoveKey( spep_0 - n + 409, 1, 127.2, 453.1 , 0 );
setMoveKey( spep_0 - n + 410, 1, 146.3, 526.4 , 0 );
setMoveKey( spep_0 - n + 411, 1, 146.3, 526.4 , 0 );
setMoveKey( spep_0 - n + 412, 1, 164.3, 595.9 , 0 );
setMoveKey( spep_0 - n + 413, 1, 164.3, 595.9 , 0 );
setMoveKey( spep_0 - n + 414, 1, 181.3, 661.3 , 0 );
setMoveKey( spep_0 - n + 415, 1, 181.3, 661.3 , 0 );
setMoveKey( spep_0 - n + 416, 1, 197.3, 722.8 , 0 );
setMoveKey( spep_0 - n + 417, 1, 197.3, 722.8 , 0 );
setMoveKey( spep_0 - n + 418, 1, 212.2, 780.4 , 0 );
setMoveKey( spep_0 - n + 419, 1, 212.2, 780.4 , 0 );
setMoveKey( spep_0 - n + 420, 1, 226.1, 833.9 , 0 );
setMoveKey( spep_0 - n + 421, 1, 226.1, 833.9 , 0 );
setMoveKey( spep_0 - n + 422, 1, 239, 883.5 , 0 );
setMoveKey( spep_0 - n + 423, 1, 239, 883.5 , 0 );
setMoveKey( spep_0 - n + 424, 1, 250.8, 929.2 , 0 );
setMoveKey( spep_0 - n + 425, 1, 250.8, 929.2 , 0 );
setMoveKey( spep_0 - n + 426, 1, 261.7, 970.9 , 0 );
setMoveKey( spep_0 - n + 427, 1, 261.7, 970.9 , 0 );
setMoveKey( spep_0 - n + 428, 1, 271.5, 1008.6 , 0 );
setMoveKey( spep_0 - n + 429, 1, 271.5, 1008.6 , 0 );
setMoveKey( spep_0 - n + 430, 1, 280.2, 1042.3 , 0 );
setMoveKey( spep_0 - n + 431, 1, 280.2, 1042.3 , 0 );
setMoveKey( spep_0 - n + 432, 1, 287.9, 1072.1 , 0 );
setMoveKey( spep_0 - n + 433, 1, 287.9, 1072.1 , 0 );
setMoveKey( spep_0 - n + 434, 1, 294.6, 1097.9 , 0 );
setMoveKey( spep_0 - n + 435, 1, 294.6, 1097.9 , 0 );
setMoveKey( spep_0 - n + 436, 1, 300.3, 1119.8 , 0 );
setMoveKey( spep_0 - n + 437, 1, 300.3, 1119.8 , 0 );
setMoveKey( spep_0 - n + 438, 1, 305, 1137.6 , 0 );
setMoveKey( spep_0 - n + 439, 1, 305, 1137.6 , 0 );
setMoveKey( spep_0 - n + 440, 1, 308.6, 1151.5 , 0 );
setMoveKey( spep_0 - n + 441, 1, 308.6, 1151.5 , 0 );
setMoveKey( spep_0 - n + 442, 1, 311.1, 1161.5 , 0 );
setMoveKey( spep_0 - n + 443, 1, 311.1, 1161.5 , 0 );
setMoveKey( spep_0 - n + 444, 1, 312.7, 1167.4 , 0 );
setMoveKey( spep_0 - n + 445, 1, 312.7, 1167.4 , 0 );
setMoveKey( spep_0 - n + 446, 1, 313.2, 1169.4 , 0 );
setMoveKey( spep_0 - n + 447, 1, 313.2, 1169.4 , 0 );
setMoveKey( spep_0 - n + 448, 1, 299.2, 1022.8 , 0 );
setMoveKey( spep_0 - n + 449, 1, 299.2, 1022.8 , 0 );
setMoveKey( spep_0 - n + 450, 1, 285.2, 876.1 , 0 );
setMoveKey( spep_0 - n + 451, 1, 285.2, 876.1 , 0 );
setMoveKey( spep_0 - n + 452, 1, 271.2, 729.5 , 0 );
setMoveKey( spep_0 - n + 453, 1, 271.2, 729.5 , 0 );
setMoveKey( spep_0 - n + 454, 1, 257.2, 582.8 , 0 );
setMoveKey( spep_0 - n + 455, 1, 257.2, 582.8 , 0 );
setMoveKey( spep_0 - n + 456, 1, 254.9, 516.9 , 0 );
setMoveKey( spep_0 - n + 457, 1, 254.9, 516.9 , 0 );
setMoveKey( spep_0 - n + 458, 1, 252.6, 450.9 , 0 );
setMoveKey( spep_0 - n + 459, 1, 252.6, 450.9 , 0 );
setMoveKey( spep_0 - n + 460, 1, 250.3, 385 , 0 );
setMoveKey( spep_0 - n + 461, 1, 250.3, 385 , 0 );
setMoveKey( spep_0 - n + 462, 1, 248, 319.1 , 0 );
setMoveKey( spep_0 - n + 463, 1, 248, 319.1 , 0 );
setMoveKey( spep_0 - n + 464, 1, 245.7, 253.1 , 0 );
setMoveKey( spep_0 - n + 465, 1, 245.7, 253.1 , 0 );
setMoveKey( spep_0 - n + 466, 1, 243.4, 187.2 , 0 );
setMoveKey( spep_0 - n + 467, 1, 243.4, 187.2 , 0 );
setMoveKey( spep_0 - n + 468, 1, 241.1, 121.3 , 0 );
setMoveKey( spep_0 - n + 469, 1, 241.1, 121.3 , 0 );
setMoveKey( spep_0 - n + 470, 1, 238.8, 55.3 , 0 );
setMoveKey( spep_0 - n + 471, 1, 238.8, 55.3 , 0 );
setMoveKey( spep_0 - n + 472, 1, 236.5, -10.6 , 0 );
setMoveKey( spep_0 + 4 + 468, 1, 236.5, -10.6 , 0 );

setScaleKey( spep_0 - n + 154, 1, 3.3, 3.3 );
setScaleKey( spep_0 - n + 171, 1, 3.3, 3.3 );
setScaleKey( spep_0 - n + 172, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 177, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 178, 1, 3.33, 3.33 );
setScaleKey( spep_0 - n + 183, 1, 3.33, 3.33 );
setScaleKey( spep_0 - n + 184, 1, 3.38, 3.38 );
setScaleKey( spep_0 - n + 189, 1, 3.38, 3.38 );
setScaleKey( spep_0 - n + 190, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 194, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 195, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 196, 1, 3.58, 3.58 );
setScaleKey( spep_0 - n + 197, 1, 3.58, 3.58 );
setScaleKey( spep_0 - n + 198, 1, 5.26, 5.26 );
setScaleKey( spep_0 - n + 233, 1, 5.26, 5.26 );
setScaleKey( spep_0 - n + 234, 1, 1.68, 1.68 );
setScaleKey( spep_0 - n + 257, 1, 1.68, 1.68 );
setScaleKey( spep_0 - n + 258, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 295, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 296, 1, 5.07, 5.07 );
setScaleKey( spep_0 - n + 349, 1, 5.07, 5.07 );
setScaleKey( spep_0 - n + 350, 1, 2, 2 );
setScaleKey( spep_0 - n + 401, 1, 2, 2 );
setScaleKey( spep_0 - n + 402, 1, 0.62, 0.62 );
setScaleKey( spep_0 - n + 403, 1, 0.62, 0.62 );
setScaleKey( spep_0 - n + 404, 1, 0.89, 0.89 );
setScaleKey( spep_0 - n + 405, 1, 0.89, 0.89 );
setScaleKey( spep_0 - n + 406, 1, 1.14, 1.14 );
setScaleKey( spep_0 - n + 407, 1, 1.14, 1.14 );
setScaleKey( spep_0 - n + 408, 1, 1.38, 1.38 );
setScaleKey( spep_0 - n + 409, 1, 1.38, 1.38 );
setScaleKey( spep_0 - n + 410, 1, 1.61, 1.61 );
setScaleKey( spep_0 - n + 411, 1, 1.61, 1.61 );
setScaleKey( spep_0 - n + 412, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 413, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 414, 1, 2.03, 2.03 );
setScaleKey( spep_0 - n + 415, 1, 2.03, 2.03 );
setScaleKey( spep_0 - n + 416, 1, 2.22, 2.22 );
setScaleKey( spep_0 - n + 417, 1, 2.22, 2.22 );
setScaleKey( spep_0 - n + 418, 1, 2.4, 2.4 );
setScaleKey( spep_0 - n + 419, 1, 2.4, 2.4 );
setScaleKey( spep_0 - n + 420, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 421, 1, 2.57, 2.57 );
setScaleKey( spep_0 - n + 422, 1, 2.72, 2.72 );
setScaleKey( spep_0 - n + 423, 1, 2.72, 2.72 );
setScaleKey( spep_0 - n + 424, 1, 2.87, 2.87 );
setScaleKey( spep_0 - n + 425, 1, 2.87, 2.87 );
setScaleKey( spep_0 - n + 426, 1, 3, 3 );
setScaleKey( spep_0 - n + 427, 1, 3, 3 );
setScaleKey( spep_0 - n + 428, 1, 3.11, 3.11 );
setScaleKey( spep_0 - n + 429, 1, 3.11, 3.11 );
setScaleKey( spep_0 - n + 430, 1, 3.22, 3.22 );
setScaleKey( spep_0 - n + 431, 1, 3.22, 3.22 );
setScaleKey( spep_0 - n + 432, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 433, 1, 3.31, 3.31 );
setScaleKey( spep_0 - n + 434, 1, 3.39, 3.39 );
setScaleKey( spep_0 - n + 435, 1, 3.39, 3.39 );
setScaleKey( spep_0 - n + 436, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 437, 1, 3.46, 3.46 );
setScaleKey( spep_0 - n + 438, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 439, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 440, 1, 3.56, 3.56 );
setScaleKey( spep_0 - n + 441, 1, 3.56, 3.56 );
setScaleKey( spep_0 - n + 442, 1, 3.59, 3.59 );
setScaleKey( spep_0 - n + 443, 1, 3.59, 3.59 );
setScaleKey( spep_0 - n + 444, 1, 3.61, 3.61 );
setScaleKey( spep_0 - n + 447, 1, 3.61, 3.61 );
setScaleKey( spep_0 - n + 448, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 449, 1, 3.51, 3.51 );
setScaleKey( spep_0 - n + 450, 1, 3.4, 3.4 );
setScaleKey( spep_0 - n + 451, 1, 3.4, 3.4 );
setScaleKey( spep_0 - n + 452, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 4 + 468, 1, 3.2, 3.2 );

setRotateKey( spep_0 - n + 154, 1, 0 );
setRotateKey( spep_0 - n + 233, 1, 0 );
setRotateKey( spep_0 - n + 234, 1, 60 );
setRotateKey( spep_0 - n + 257, 1, 60 );
setRotateKey( spep_0 - n + 258, 1, 11 );
setRotateKey( spep_0 - n + 295, 1, 11 );
setRotateKey( spep_0 - n + 296, 1, 2.8 );
setRotateKey( spep_0 - n + 299, 1, 2.8 );
setRotateKey( spep_0 - n + 300, 1, 3.4 );
setRotateKey( spep_0 - n + 303, 1, 3.4 );
setRotateKey( spep_0 - n + 304, 1, 3.9 );
setRotateKey( spep_0 - n + 307, 1, 3.9 );
setRotateKey( spep_0 - n + 308, 1, 4.5 );
setRotateKey( spep_0 - n + 311, 1, 4.5 );
setRotateKey( spep_0 - n + 312, 1, 5 );
setRotateKey( spep_0 - n + 315, 1, 5 );
setRotateKey( spep_0 - n + 316, 1, 5.6 );
setRotateKey( spep_0 - n + 319, 1, 5.6 );
setRotateKey( spep_0 - n + 320, 1, 6.1 );
setRotateKey( spep_0 - n + 323, 1, 6.1 );
setRotateKey( spep_0 - n + 324, 1, 6.7 );
setRotateKey( spep_0 - n + 327, 1, 6.7 );
setRotateKey( spep_0 - n + 328, 1, 7.2 );
setRotateKey( spep_0 - n + 331, 1, 7.2 );
setRotateKey( spep_0 - n + 332, 1, 7.8 );
setRotateKey( spep_0 - n + 335, 1, 7.8 );
setRotateKey( spep_0 - n + 336, 1, 8.3 );
setRotateKey( spep_0 - n + 339, 1, 8.3 );
setRotateKey( spep_0 - n + 340, 1, 8.9 );
setRotateKey( spep_0 - n + 343, 1, 8.9 );
setRotateKey( spep_0 - n + 344, 1, 9.5 );
setRotateKey( spep_0 - n + 347, 1, 9.5 );
setRotateKey( spep_0 - n + 348, 1, 10 );
setRotateKey( spep_0 - n + 379, 1, 10 );
setRotateKey( spep_0 - n + 380, 1, -38.5 );
setRotateKey( spep_0 - n + 401, 1, -38.5 );
setRotateKey( spep_0 - n + 402, 1, -33.6 );
setRotateKey( spep_0 - n + 403, 1, -33.6 );
setRotateKey( spep_0 - n + 404, 1, -34.6 );
setRotateKey( spep_0 - n + 405, 1, -34.6 );
setRotateKey( spep_0 - n + 406, 1, -35.5 );
setRotateKey( spep_0 - n + 407, 1, -35.5 );
setRotateKey( spep_0 - n + 408, 1, -36.4 );
setRotateKey( spep_0 - n + 409, 1, -36.4 );
setRotateKey( spep_0 - n + 410, 1, -37.2 );
setRotateKey( spep_0 - n + 411, 1, -37.2 );
setRotateKey( spep_0 - n + 412, 1, -38 );
setRotateKey( spep_0 - n + 413, 1, -38 );
setRotateKey( spep_0 - n + 414, 1, -38.7 );
setRotateKey( spep_0 - n + 415, 1, -38.7 );
setRotateKey( spep_0 - n + 416, 1, -39.4 );
setRotateKey( spep_0 - n + 417, 1, -39.4 );
setRotateKey( spep_0 - n + 418, 1, -40 );
setRotateKey( spep_0 - n + 419, 1, -40 );
setRotateKey( spep_0 - n + 420, 1, -40.6 );
setRotateKey( spep_0 - n + 421, 1, -40.6 );
setRotateKey( spep_0 - n + 422, 1, -41.2 );
setRotateKey( spep_0 - n + 423, 1, -41.2 );
setRotateKey( spep_0 - n + 424, 1, -41.7 );
setRotateKey( spep_0 - n + 425, 1, -41.7 );
setRotateKey( spep_0 - n + 426, 1, -42.1 );
setRotateKey( spep_0 - n + 427, 1, -42.1 );
setRotateKey( spep_0 - n + 428, 1, -42.6 );
setRotateKey( spep_0 - n + 429, 1, -42.6 );
setRotateKey( spep_0 - n + 430, 1, -42.9 );
setRotateKey( spep_0 - n + 431, 1, -42.9 );
setRotateKey( spep_0 - n + 432, 1, -43.3 );
setRotateKey( spep_0 - n + 433, 1, -43.3 );
setRotateKey( spep_0 - n + 434, 1, -43.6 );
setRotateKey( spep_0 - n + 435, 1, -43.6 );
setRotateKey( spep_0 - n + 436, 1, -43.8 );
setRotateKey( spep_0 - n + 437, 1, -43.8 );
setRotateKey( spep_0 - n + 438, 1, -44 );
setRotateKey( spep_0 - n + 439, 1, -44 );
setRotateKey( spep_0 - n + 440, 1, -44.2 );
setRotateKey( spep_0 - n + 441, 1, -44.2 );
setRotateKey( spep_0 - n + 442, 1, -44.3 );
setRotateKey( spep_0 - n + 445, 1, -44.3 );
setRotateKey( spep_0 - n + 446, 1, -44.4 );
setRotateKey( spep_0 - n + 449, 1, -44.4 );
setRotateKey( spep_0 - n + 450, 1, -44.3 );
setRotateKey( spep_0 + 4 + 468, 1, -44.3 );


-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_0 + 4 + 92, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE010 = playSeVer2( spep_0 + 4 + 92, 1147, "",spep_0 + 4 + 202, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 4 + 92, SE010, 42 );

--向かっていく
SE011 = playSeVer2( spep_0 + 4 + 100, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 4 + 100, 1116, "",spep_0 + 4 + 150, 0, 26, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 4 + 116, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 4 + 140, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 4 + 164, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 4 + 188, 1036, "", 0, 0, 0, -1);

--パンチ
SE016 = playSeVer2( spep_0 + 4 + 180, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 4 + 194, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 4 + 194, 1359, "", 0, 0, 0, -1);

--パンチ２
SE020 = playSeVer2( spep_0 + 4 + 250, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 4 + 250, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 4 + 254, 1110, "", 0, 0, 0, -1);

--イナヅマ
SE023 = playSeVer2( spep_0 + 4 + 286, 1147, "",spep_0 + 4 + 394, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 4 + 286, SE023, 45 );

--オーラ
SE024 = playSeVer2( spep_0 + 4 + 288, 1036, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 4 + 312, 1036, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 4 + 336, 1036, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 4 + 360, 1036, "", 0, 0, 0, -1);

--蹴り飛ばし
SE028 = playSeVer2( spep_0 + 4 + 366, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 4 + 374, 1120, "", 0, 0, 0, -1);

--飛び上がる
SE030 = playSeVer2( spep_0 + 4 + 418, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 4 + 418, 1117, "",spep_0 + 4 + 468 + 10, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 4 + 418, 1011, "",spep_0 + 4 + 468 + 10, 0, 10, -1);
SE033 = playSeVer2( spep_0 + 4 + 426, 44, "",spep_0 + 4 + 468 + 10, 0, 10, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 4 + 468;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾溜め
SE035 = playSeVer2( spep_1 + 88, 1370, "",spep_1 + 94 + 82, 0, 12, -1);
SE036 = playSeVer2( spep_1 + 88, 1148, "",spep_1 + 94 + 82, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 88, SE036, 63 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
--ギャリック砲〜爆発 ef_002 (332F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ギャリック砲〜爆発   ef_002_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 332, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 332, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 332, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 332, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --ギャリック砲〜爆発    ef_002_back
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 332, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 332, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 332, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 332, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 332 + 2, 0, 0, 0, 0, 255 );  --黒　背景

n = 5;

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 - n + 68, 1, 0 );
changeAnime( spep_2 - n + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, 367, -263.7 , 0 );
setMoveKey( spep_2 - n + 6, 1, 358.2, -209.4 , 0 );
setMoveKey( spep_2 - n + 7, 1, 358.2, -209.4 , 0 );
setMoveKey( spep_2 - n + 8, 1, 349.3, -155.3 , 0 );
setMoveKey( spep_2 - n + 9, 1, 349.3, -155.3 , 0 );
setMoveKey( spep_2 - n + 10, 1, 340.3, -101.4 , 0 );
setMoveKey( spep_2 - n + 11, 1, 340.3, -101.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, 331.3, -47.3 , 0 );
setMoveKey( spep_2 - n + 13, 1, 331.3, -47.3 , 0 );
setMoveKey( spep_2 - n + 14, 1, 322.2, 6.4 , 0 );
setMoveKey( spep_2 - n + 15, 1, 322.2, 6.4 , 0 );
setMoveKey( spep_2 - n + 16, 1, 310.8, 59.6 , 0 );
setMoveKey( spep_2 - n + 17, 1, 310.8, 59.6 , 0 );
setMoveKey( spep_2 - n + 18, 1, 319.8, 57.4 , 0 );
setMoveKey( spep_2 - n + 19, 1, 319.8, 57.4 , 0 );
setMoveKey( spep_2 - n + 20, 1, 308.6, 70.8 , 0 );
setMoveKey( spep_2 - n + 21, 1, 308.6, 70.8 , 0 );
setMoveKey( spep_2 - n + 22, 1, 319.9, 71.5 , 0 );
setMoveKey( spep_2 - n + 23, 1, 319.9, 71.5 , 0 );
setMoveKey( spep_2 - n + 24, 1, 313.5, 59.3 , 0 );
setMoveKey( spep_2 - n + 25, 1, 313.5, 59.3 , 0 );
setMoveKey( spep_2 - n + 26, 1, 315.6, 56.2 , 0 );
setMoveKey( spep_2 - n + 27, 1, 315.6, 56.2 , 0 );
setMoveKey( spep_2 - n + 28, 1, 313.3, 60.5 , 0 );
setMoveKey( spep_2 - n + 29, 1, 313.3, 60.5 , 0 );
setMoveKey( spep_2 - n + 30, 1, 313.4, 65.4 , 0 );
setMoveKey( spep_2 - n + 31, 1, 313.4, 65.4 , 0 );
setMoveKey( spep_2 - n + 32, 1, 312.6, 72.4 , 0 );
setMoveKey( spep_2 - n + 33, 1, 312.6, 72.4 , 0 );
setMoveKey( spep_2 - n + 34, 1, 319.3, 64.7 , 0 );
setMoveKey( spep_2 - n + 35, 1, 319.3, 64.7 , 0 );
setMoveKey( spep_2 - n + 36, 1, 310.3, 52.7 , 0 );
setMoveKey( spep_2 - n + 37, 1, 310.3, 52.7 , 0 );
setMoveKey( spep_2 - n + 38, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 40, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 41, 1, 31.7, -14.8 , 0 );
setMoveKey( spep_2 - n + 42, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 44, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 45, 1, 39.8, -6.7 , 0 );
setMoveKey( spep_2 - n + 46, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 48, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 49, 1, 34.4, -1.3 , 0 );
setMoveKey( spep_2 - n + 50, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 52, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 53, 1, 20.9, -14.8 , 0 );
setMoveKey( spep_2 - n + 54, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 56, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 57, 1, 26.3, -18.8 , 0 );
setMoveKey( spep_2 - n + 58, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 60, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 61, 1, 22.3, -14.8 , 0 );
setMoveKey( spep_2 - n + 62, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 64, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 65, 1, 8.8, -13.4 , 0 );
setMoveKey( spep_2 - n + 66, 1, 16.9, -13.4 , 0 );
setMoveKey( spep_2 - n + 68, 1, 16.9, -13.4 , 0 );

setScaleKey( spep_2 + 0, 1, 7.49, 7.49 );
setScaleKey( spep_2 - n + 37, 1, 7.49, 7.49 );
setScaleKey( spep_2 - n + 38, 1, 3.37, 3.37 );
setScaleKey( spep_2 - n + 68, 1, 3.37, 3.37 );

setRotateKey( spep_2 + 0, 1, -47.9 );
setRotateKey( spep_2 - n + 37, 1, -47.9 );
setRotateKey( spep_2 - n + 38, 1, -38.9 );
setRotateKey( spep_2 - n + 68, 1, -38.9 );

setBlendColor(spep_2 + 0, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 13, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 14, 1, 2, 0.4, 0.4, 0.4, 0.5 );
setBlendColor(spep_2 - n + 37, 1, 2, 0.4, 0.4, 0.4, 0.5 );
setBlendColor(spep_2 - n + 38, 1, 2, 0.4, 0.4, 0.4, 0 );
setBlendColor(spep_2 - n + 68, 1, 2, 0.4, 0.4, 0.4, 0 );

-- ** 音 ** --
--気弾溜め
SE037 = playSeVer2( spep_2 + 2, 1296, "",spep_2 + 90, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 2, SE037, 122 );

--腕前に出す
SE038 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_2 + 2, 1282, "",spep_2 + 78, 0, 12, -1);
SE040 = playSeVer2( spep_2 + 2, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE040, 63 );

--気弾発射
SE041 = playSeVer2( spep_2 + 62, 1213, "",spep_2 + 246, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 62, SE041, 60 );
SE042 = playSeVer2( spep_2 + 62, 1133, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 62, 1146, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE044, 65 );

--気弾膨れ上がる
SE045 = playSeVer2( spep_2 + 98, 1203, "",spep_2 + 246, 0, 20, 0.6);
SE046 = playSeVer2( spep_2 + 98, 1210, "",spep_2 + 246, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 98, SE046, 56 );
SE047 = playSeVer2( spep_2 + 98, 1215, "",spep_2 + 246, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 98, SE047, 80 );

--爆発
SE048 = playSeVer2( spep_2 + 228, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 228, 1159, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 228, 1067, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 240, 1259, "", 0, 0, 0, -1);


-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 220 ); -- ダメージ表示フレーム
endPhase( spep_2 + 332 - 10 ); -- 終了フレーム


end