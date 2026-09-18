--1022090:超17号_ヘルズエクスキューション
--sp_effect_b4_00187
--sp2190

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
SP_01=	157351	;--	カードカットイン前(前)
SP_02=	157353	;--	カードカットイン前(後)
SP_03=	157355	;--	カードカットイン後(前)
SP_04=	157357	;--	カードカットイン後(後)

--エフェクト(てき)
SP_01x=	157352	;--	カードカットイン前(前)	(敵)
SP_02x=	157354	;--	カードカットイン前(後)	(敵)
SP_03x=	157356	;--	カードカットイン後(前)	(敵)
SP_04x=	157357	;--	カードカットイン後(後)	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.85);


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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カードカットイン前
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, fast_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f, 0 );
setEffRotateKey( spep_0 + 670, fast_f, 0 );
setEffAlphaKey( spep_0 + 0, fast_f, 255 );
setEffAlphaKey( spep_0 + 670, fast_f, 255 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, fast_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_b, 0 );
setEffRotateKey( spep_0 + 670, fast_b, 0 );
setEffAlphaKey( spep_0 + 0, fast_b, 255 );
setEffAlphaKey( spep_0 + 670, fast_b, 255 );

--SE
--正面ダッシュ
SE001 = playSe( spep_0 + 0, 9 );
SE002 = playSe( spep_0 + 0, 1182 );
SE003 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );
setTimeStretch( SE003, 1.25, 10, 1 );
SE004 = playSe( spep_0 + 0, 1314 );
SE005 = playSe( spep_0 + 0, 1215 );



-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 670, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-3 + 166, 1, 0);

changeAnime( spep_0-3 + 80, 1, 104);
changeAnime( spep_0-3 + 98, 1, 108);
changeAnime( spep_0-3 + 156, 1, 106);

setMoveKey( spep_0-3 + 80, 1, -106.9, -164.4 , 0 );
setMoveKey( spep_0-3 + 82, 1, -83.7, -134 , 0 );
setMoveKey( spep_0-3 + 84, 1, -60.5, -103.5 , 0 );
setMoveKey( spep_0-3 + 86, 1, -37.3, -73.1 , 0 );
setMoveKey( spep_0-3 + 88, 1, -14.1, -42.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 9.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 92, 1, 32.3, 18.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 55.5, 48.6 , 0 );
setMoveKey( spep_0-3 + 96, 1, 59.3, 53 , 0 );
setMoveKey( spep_0-3 + 97, 1, 59.3, 53 , 0 );

setMoveKey( spep_0-3 + 98, 1, 117.8, 100.3 , 0 );
setMoveKey( spep_0-3 + 100, 1, 108.5, 102.4 , 0 );
setMoveKey( spep_0-3 + 102, 1, 79.4, 107 , 0 );
setMoveKey( spep_0-3 + 104, 1, 100.1, 101 , 0 );
setMoveKey( spep_0-3 + 106, 1, 101.7, 95 , 0 );
setMoveKey( spep_0-3 + 108, 1, 109.7, 114.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 104.9, 115.1 , 0 );
setMoveKey( spep_0-3 + 112, 1, 119.3, 128.3 , 0 );
setMoveKey( spep_0-3 + 114, 1, 114.5, 141.6 , 0 );
setMoveKey( spep_0-3 + 116, 1, 129, 142.1 , 0 );
setMoveKey( spep_0-3 + 118, 1, 130.6, 142.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, 138.7, 155.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, 140.4, 159.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, 148.4, 169.8 , 0 );
setMoveKey( spep_0-3 + 126, 1, 153.3, 176.8 , 0 );
setMoveKey( spep_0-3 + 128, 1, 158.3, 183.8 , 0 );
setMoveKey( spep_0-3 + 130, 1, 163.2, 190.8 , 0 );
setMoveKey( spep_0-3 + 132, 1, 168.1, 197.8 , 0 );
setMoveKey( spep_0-3 + 134, 1, 173.1, 204.8 , 0 );
setMoveKey( spep_0-3 + 135, 1, 173.1, 204.8 , 0 );
setMoveKey( spep_0-3 + 136, 1, 121.3, 51.6 , 0 );
setMoveKey( spep_0-3 + 138, 1, 122.3, 56 , 0 );
setMoveKey( spep_0-3 + 140, 1, 123.3, 60.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 124.2, 65 , 0 );
setMoveKey( spep_0-3 + 144, 1, 125.2, 69.5 , 0 );
setMoveKey( spep_0-3 + 146, 1, 126.1, 73.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, 127.1, 78.4 , 0 );
setMoveKey( spep_0-3 + 150, 1, 128.1, 82.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, 129, 87.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, 130, 91.8 , 0 );
setMoveKey( spep_0-3 + 155, 1, 130, 91.8 , 0 );

setMoveKey( spep_0-3 + 156, 1, 96.4, -2.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, 120.9, 12.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, 128.8, 18.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 357.4, 118.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, 578.2, 209 , 0 );
setMoveKey( spep_0-3 + 166, 1, 800.3, 323.2 , 0 );

setScaleKey( spep_0-3 + 80, 1,2.18,2.18);
setScaleKey( spep_0-3 + 82, 1,2.19,2.19);
setScaleKey( spep_0-3 + 84, 1,2.2,2.2);
setScaleKey( spep_0-3 + 86, 1,2.21,2.21);
setScaleKey( spep_0-3 + 88, 1,2.22,2.22);
setScaleKey( spep_0-3 + 90, 1,2.23,2.23);
setScaleKey( spep_0-3 + 92, 1,2.24,2.24);
setScaleKey( spep_0-3 + 94, 1,2.25,2.25);
setScaleKey( spep_0-3 + 96, 1,2.27,2.27);
setScaleKey( spep_0-3 + 97, 1,2.27,2.27);

setScaleKey( spep_0-3 + 98, 1, 3.83,3.83);
setScaleKey( spep_0-3 + 100, 1,3.28,3.28);
setScaleKey( spep_0-3 + 102, 1,2.72,2.72);
setScaleKey( spep_0-3 + 104, 1,2.74,2.74);
setScaleKey( spep_0-3 + 106, 1,2.76,2.76);
setScaleKey( spep_0-3 + 108, 1,2.77,2.77);
setScaleKey( spep_0-3 + 110, 1,2.78,2.78);
setScaleKey( spep_0-3 + 112, 1,2.79,2.79);
setScaleKey( spep_0-3 + 114, 1,2.8,2.8);
setScaleKey( spep_0-3 + 116, 1,2.82,2.82);
setScaleKey( spep_0-3 + 118, 1,2.84,2.84);
setScaleKey( spep_0-3 + 120, 1,2.85,2.85);
setScaleKey( spep_0-3 + 122, 1,2.86,2.86);
setScaleKey( spep_0-3 + 124, 1,2.87,2.87);
setScaleKey( spep_0-3 + 126, 1,2.89,2.89);
setScaleKey( spep_0-3 + 128, 1,2.9,2.9);
setScaleKey( spep_0-3 + 130, 1,2.91,2.91);
setScaleKey( spep_0-3 + 132, 1,2.93,2.93);
setScaleKey( spep_0-3 + 134, 1,2.95,2.95);
setScaleKey( spep_0-3 + 135, 1,2.95,2.95);
setScaleKey( spep_0-3 + 136, 1,4.01,4.01);
setScaleKey( spep_0-3 + 138, 1,3.97,3.97);
setScaleKey( spep_0-3 + 140, 1,3.95,3.95);
setScaleKey( spep_0-3 + 142, 1,3.92,3.92);
setScaleKey( spep_0-3 + 144, 1,3.9,3.9);
setScaleKey( spep_0-3 + 146, 1,3.87,3.87);
setScaleKey( spep_0-3 + 148, 1,3.85,3.85);
setScaleKey( spep_0-3 + 150, 1,3.83,3.83);
setScaleKey( spep_0-3 + 152, 1,3.8,3.8);
setScaleKey( spep_0-3 + 154, 1,3.78,3.78);
setScaleKey( spep_0-3 + 155, 1,3.78,3.78);

setScaleKey( spep_0-3 + 156, 1,5.33,5.33);
setScaleKey( spep_0-3 + 158, 1,4.87,4.87);
setScaleKey( spep_0-3 + 160, 1,4.43,4.43);
setScaleKey( spep_0-3 + 162, 1,3.17,3.17);
setScaleKey( spep_0-3 + 164, 1,2.22,2.22);
setScaleKey( spep_0-3 + 166, 1,1.28,1.28);

setRotateKey( spep_0-3 + 80, 1, -28.4 );
setRotateKey( spep_0-3 + 97, 1, -28.4 );

setRotateKey( spep_0-3 + 98, 1, -17.5 );
setRotateKey( spep_0-3 + 102, 1, -17.5 );
setRotateKey( spep_0-3 + 104, 1, -17.4 );
setRotateKey( spep_0-3 + 110, 1, -17.4 );
setRotateKey( spep_0-3 + 112, 1, -17.3 );
setRotateKey( spep_0-3 + 118, 1, -17.3 );
setRotateKey( spep_0-3 + 120, 1, -17.2 );
setRotateKey( spep_0-3 + 126, 1, -17.2 );
setRotateKey( spep_0-3 + 128, 1, -17.1 );
setRotateKey( spep_0-3 + 134, 1, -17.1 );
setRotateKey( spep_0-3 + 135, 1, -17.1 );
setRotateKey( spep_0-3 + 136, 1, -16.3 );
setRotateKey( spep_0-3 + 155, 1, -16.3 );

setRotateKey( spep_0-3 + 156, 1, -41.5 );
setRotateKey( spep_0-3 + 158, 1, -39.8 );
setRotateKey( spep_0-3 + 160, 1, -38 );
setRotateKey( spep_0-3 + 162, 1, -25.4 );
setRotateKey( spep_0-3 + 164, 1, -12.8 );
setRotateKey( spep_0-3 + 166, 1, -0.2 );

--敵の動き
setDisp( spep_0-3 + 180, 1, 1);
setDisp( spep_0-3 + 288, 1, 0);

changeAnime( spep_0-3 + 180, 1, 106);
changeAnime( spep_0-3 + 254, 1, 105);

setMoveKey( spep_0-3 + 180, 1, -763.1, -688 , 0 );
setMoveKey( spep_0-3 + 182, 1, -585.1, -520.1 , 0 );
setMoveKey( spep_0-3 + 184, 1, -405.2, -350.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, -223.2, -178.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, -39.2, -4.9 , 0 );
setMoveKey( spep_0-3 + 190, 1, -35.1, -3.4 , 0 );
setMoveKey( spep_0-3 + 192, 1, -31.1, -1.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, -27, -0.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -22.8, 1.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, -18.6, 2.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -14.4, 4.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, -10, 6.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -5, 5.1 , 0 );
setMoveKey( spep_0-3 + 206, 1, 0.1, 3.4 , 0 );
setMoveKey( spep_0-3 + 208, 1, 5.3, 1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 10.5, -2 , 0 );
setMoveKey( spep_0-3 + 212, 1, 15.8, -5.7 , 0 );
setMoveKey( spep_0-3 + 214, 1, 21.2, -10.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, 26.7, -15.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, 32.2, -20.9 , 0 );
setMoveKey( spep_0-3 + 220, 1, 37.8, -27.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, 43.6, -34.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 49.4, -41.8 , 0 );
setMoveKey( spep_0-3 + 226, 1, 55.3, -50.1 , 0 );
setMoveKey( spep_0-3 + 228, 1, 67.9, -52.6 , 0 );
setMoveKey( spep_0-3 + 230, 1, 77.3, -58.2 , 0 );
setMoveKey( spep_0-3 + 232, 1, 87.2, -64.1 , 0 );
setMoveKey( spep_0-3 + 234, 1, 97.6, -70.4 , 0 );
setMoveKey( spep_0-3 + 236, 1, 108.5, -77 , 0 );
setMoveKey( spep_0-3 + 238, 1, 119.9, -83.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, 131.8, -91 , 0 );
setMoveKey( spep_0-3 + 242, 1, 144.2, -98.5 , 0 );
setMoveKey( spep_0-3 + 244, 1, 157.1, -106.2 , 0 );
setMoveKey( spep_0-3 + 246, 1, 170.5, -114.2 , 0 );
setMoveKey( spep_0-3 + 248, 1, 184.4, -122.4 , 0 );
setMoveKey( spep_0-3 + 250, 1, 198.8, -130.9 , 0 );
setMoveKey( spep_0-3 + 252, 1, 213.7, -139.7 , 0 );
setMoveKey( spep_0-3 + 253, 1, 213.7, -139.7 , 0 );

setMoveKey( spep_0-3 + 254, 1, 388.6, 90.6 , 0 );
setMoveKey( spep_0-3 + 256, 1, 320.7, 86.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, 235.5, 80.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 248, 72.7 , 0 );
setMoveKey( spep_0-3 + 262, 1, 247.5, 65.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 253.5, 77 , 0 );
setMoveKey( spep_0-3 + 266, 1, 246.6, 76.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 258.8, 82 , 0 );
setMoveKey( spep_0-3 + 270, 1, 258.2, 75.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, 172.6, -240.2 , 0 );
setMoveKey( spep_0-3 + 274, 1, 211.6, -399 , 0 );
setMoveKey( spep_0-3 + 276, 1, 205.4, -398.5 , 0 );
setMoveKey( spep_0-3 + 278, 1, 192.6, -394.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 184.1, -374.5 , 0 );
setMoveKey( spep_0-3 + 282, 1, 182.3, -375.5 , 0 );
setMoveKey( spep_0-3 + 284, 1, 180.6, -376.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 178.7, -377.3 , 0 );
setMoveKey( spep_0-3 + 288, 1, 176.8, -377.9 , 0 );


setScaleKey( spep_0-3 + 180, 1,5.61,5.61);
setScaleKey( spep_0-3 + 182, 1,4.84,4.84);
setScaleKey( spep_0-3 + 184, 1,4.05,4.05);
setScaleKey( spep_0-3 + 186, 1,3.27,3.27);
setScaleKey( spep_0-3 + 188, 1,2.46,2.46);
setScaleKey( spep_0-3 + 190, 1,2.47,2.47);
setScaleKey( spep_0-3 + 192, 1,2.48,2.48);
setScaleKey( spep_0-3 + 194, 1,2.48,2.48);
setScaleKey( spep_0-3 + 196, 1,2.49,2.49);
setScaleKey( spep_0-3 + 198, 1,2.49,2.49);
setScaleKey( spep_0-3 + 200, 1,2.51,2.51);
setScaleKey( spep_0-3 + 216, 1,2.51,2.51);
setScaleKey( spep_0-3 + 218, 1,2.52,2.52);
setScaleKey( spep_0-3 + 222, 1,2.52,2.52);
setScaleKey( spep_0-3 + 224, 1,2.53,2.53);
setScaleKey( spep_0-3 + 226, 1,2.53,2.53);
setScaleKey( spep_0-3 + 228, 1,2.58,2.58);
setScaleKey( spep_0-3 + 230, 1,2.62,2.62);
setScaleKey( spep_0-3 + 232, 1,2.67,2.67);
setScaleKey( spep_0-3 + 234, 1,2.72,2.72);
setScaleKey( spep_0-3 + 236, 1,2.78,2.78);
setScaleKey( spep_0-3 + 238, 1,2.84,2.84);
setScaleKey( spep_0-3 + 240, 1,2.9,2.9);
setScaleKey( spep_0-3 + 242, 1,2.97,2.97);
setScaleKey( spep_0-3 + 244, 1,3.03,3.03);
setScaleKey( spep_0-3 + 246, 1,3.1,3.1);
setScaleKey( spep_0-3 + 248, 1,3.17,3.17);
setScaleKey( spep_0-3 + 250, 1,3.24,3.24);
setScaleKey( spep_0-3 + 252, 1,3.33,3.33);
setScaleKey( spep_0-3 + 253, 1,3.33,3.33);

setScaleKey( spep_0-3 + 254, 1, 3.65, 3.65 );
setScaleKey( spep_0-3 + 256, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 258, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 260, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 262, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 264, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 266, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 268, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 270, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 272, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 274, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 276, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 278, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 280, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 282, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 284, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 286, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 288, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 180, 1, -22.8 );
setRotateKey( spep_0-3 + 182, 1, -21.1 );
setRotateKey( spep_0-3 + 184, 1, -19.3 );
setRotateKey( spep_0-3 + 186, 1, -17.6 );
setRotateKey( spep_0-3 + 188, 1, -15.8 );
setRotateKey( spep_0-3 + 190, 1, -15.7 );
setRotateKey( spep_0-3 + 192, 1, -15.6 );
setRotateKey( spep_0-3 + 194, 1, -15.6 );
setRotateKey( spep_0-3 + 196, 1, -15.5 );
setRotateKey( spep_0-3 + 198, 1, -15.4 );
setRotateKey( spep_0-3 + 200, 1, -15.3 );
setRotateKey( spep_0-3 + 202, 1, -15.2 );
setRotateKey( spep_0-3 + 204, 1, -15.1 );
setRotateKey( spep_0-3 + 206, 1, -15 );
setRotateKey( spep_0-3 + 208, 1, -14.9 );
setRotateKey( spep_0-3 + 210, 1, -14.8 );
setRotateKey( spep_0-3 + 212, 1, -14.8 );
setRotateKey( spep_0-3 + 214, 1, -14.7 );
setRotateKey( spep_0-3 + 216, 1, -14.6 );
setRotateKey( spep_0-3 + 218, 1, -14.5 );
setRotateKey( spep_0-3 + 220, 1, -14.4 );
setRotateKey( spep_0-3 + 222, 1, -14.3 );
setRotateKey( spep_0-3 + 224, 1, -14.2 );
setRotateKey( spep_0-3 + 226, 1, -14.1 );
setRotateKey( spep_0-3 + 228, 1, -14.3 );
setRotateKey( spep_0-3 + 230, 1, -14.6 );
setRotateKey( spep_0-3 + 232, 1, -14.9 );
setRotateKey( spep_0-3 + 234, 1, -15.2 );
setRotateKey( spep_0-3 + 236, 1, -15.5 );
setRotateKey( spep_0-3 + 238, 1, -15.8 );
setRotateKey( spep_0-3 + 240, 1, -16.2 );
setRotateKey( spep_0-3 + 242, 1, -16.5 );
setRotateKey( spep_0-3 + 244, 1, -16.9 );
setRotateKey( spep_0-3 + 246, 1, -17.3 );
setRotateKey( spep_0-3 + 248, 1, -17.8 );
setRotateKey( spep_0-3 + 250, 1, -18.2 );
setRotateKey( spep_0-3 + 252, 1, -18.7 );
setRotateKey( spep_0-3 + 253, 1, -18.7 );

setRotateKey( spep_0-3 + 254, 1, -46.2 );
setRotateKey( spep_0-3 + 256, 1, -45.3 );
setRotateKey( spep_0-3 + 258, 1, -44.4 );
setRotateKey( spep_0-3 + 260, 1, -43.5 );
setRotateKey( spep_0-3 + 262, 1, -42.6 );
setRotateKey( spep_0-3 + 264, 1, -41.7 );
setRotateKey( spep_0-3 + 266, 1, -40.7 );
setRotateKey( spep_0-3 + 268, 1, -39.8 );
setRotateKey( spep_0-3 + 270, 1, -38.9 );
setRotateKey( spep_0-3 + 272, 1, -56.3 );
setRotateKey( spep_0-3 + 274, 1, -44.5 );
setRotateKey( spep_0-3 + 276, 1, -46.6 );
setRotateKey( spep_0-3 + 278, 1, -48.7 );
setRotateKey( spep_0-3 + 280, 1, -48.7 );
setRotateKey( spep_0-3 + 282, 1, -50.6 );
setRotateKey( spep_0-3 + 284, 1, -52.6 );
setRotateKey( spep_0-3 + 286, 1, -54.6 );
setRotateKey( spep_0-3 + 288, 1, -56.5 );

--敵の動き
setDisp( spep_0-3 + 320, 1, 1);
setDisp( spep_0-3 + 336, 1, 0);

changeAnime( spep_0-3 + 320, 1, 108);

setMoveKey( spep_0-3 + 320, 1, -473.7, 252.8 , 0 );
setMoveKey( spep_0-3 + 322, 1, -438.5, 242 , 0 );
setMoveKey( spep_0-3 + 324, 1, -383.9, 225.4 , 0 );
setMoveKey( spep_0-3 + 326, 1, -310.2, 202.8 , 0 );
setMoveKey( spep_0-3 + 328, 1, -217.2, 174.3 , 0 );
setMoveKey( spep_0-3 + 330, 1, -104.9, 140 , 0 );
setMoveKey( spep_0-3 + 332, 1, 26.6, 99.7 , 0 );
setMoveKey( spep_0-3 + 334, 1, 177.3, 53.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, 347.3, 1.6 , 0 );

setScaleKey( spep_0-3 + 320, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 322, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 324, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 326, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 328, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 330, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 332, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 334, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 336, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 320, 1, 24 );
setRotateKey( spep_0-3 + 336, 1, 24 );

--敵の動き
setDisp( spep_0-3 + 438, 1, 1);
setDisp( spep_0-3 + 668, 1, 0);

changeAnime( spep_0-3 + 438, 1, 106);
changeAnime( spep_0-3 + 548, 1, 8);

setMoveKey( spep_0-3 + 438, 1, 173.4, 23.8 , 0 );
setMoveKey( spep_0-3 + 440, 1, 136.7, 17.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, 100, 12.1 , 0 );
setMoveKey( spep_0-3 + 444, 1, 63.3, 6.2 , 0 );
setMoveKey( spep_0-3 + 446, 1, 26.7, 0.4 , 0 );
setMoveKey( spep_0-3 + 448, 1, -10, -5.5 , 0 );
setMoveKey( spep_0-3 + 450, 1, -46.7, -11.3 , 0 );
setMoveKey( spep_0-3 + 452, 1, -44.4, -10.3 , 0 );
setMoveKey( spep_0-3 + 454, 1, -42.1, -9.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, -39.8, -8.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, -37.4, -7.4 , 0 );
setMoveKey( spep_0-3 + 460, 1, -35.1, -6.4 , 0 );
setMoveKey( spep_0-3 + 462, 1, -32.8, -5.4 , 0 );
setMoveKey( spep_0-3 + 464, 1, -30.5, -4.4 , 0 );
setMoveKey( spep_0-3 + 466, 1, -28.2, -3.5 , 0 );
setMoveKey( spep_0-3 + 468, 1, -25.9, -2.5 , 0 );
setMoveKey( spep_0-3 + 470, 1, -23.6, -1.5 , 0 );
setMoveKey( spep_0-3 + 472, 1, -21.3, -0.5 , 0 );
setMoveKey( spep_0-3 + 474, 1, -19, 0.5 , 0 );
setMoveKey( spep_0-3 + 476, 1, -16.7, 1.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, -14.4, 2.4 , 0 );
setMoveKey( spep_0-3 + 480, 1, -12.1, 3.4 , 0 );
setMoveKey( spep_0-3 + 482, 1, -9.7, 4.4 , 0 );
setMoveKey( spep_0-3 + 484, 1, -7.4, 5.4 , 0 );
setMoveKey( spep_0-3 + 486, 1, -5.1, 6.4 , 0 );
setMoveKey( spep_0-3 + 488, 1, -2.8, 7.4 , 0 );
setMoveKey( spep_0-3 + 489, 1, -2.8, 7.4 , 0 );
setMoveKey( spep_0-3 + 490, 1, -1156.7, 325.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -912, 280.3 , 0 );
setMoveKey( spep_0-3 + 494, 1, -665.3, 234.4 , 0 );
setMoveKey( spep_0-3 + 496, 1, -416.3, 188.1 , 0 );
setMoveKey( spep_0-3 + 498, 1, -165.3, 141.5 , 0 );
setMoveKey( spep_0-3 + 500, 1, -155.2, 140.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, -145, 140.4 , 0 );
setMoveKey( spep_0-3 + 504, 1, -134.8, 139.9 , 0 );
setMoveKey( spep_0-3 + 506, 1, -124.5, 139.3 , 0 );
setMoveKey( spep_0-3 + 508, 1, -114, 138.8 , 0 );
setMoveKey( spep_0-3 + 510, 1, -103.5, 138.2 , 0 );
setMoveKey( spep_0-3 + 512, 1, -92.9, 137.6 , 0 );
setMoveKey( spep_0-3 + 514, 1, -82.3, 137 , 0 );
setMoveKey( spep_0-3 + 516, 1, -79.2, 136.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, -75.7, 136.5 , 0 );
setMoveKey( spep_0-3 + 520, 1, -71.8, 136.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, -67.4, 135.6 , 0 );
setMoveKey( spep_0-3 + 524, 1, -62.6, 135 , 0 );
setMoveKey( spep_0-3 + 526, 1, -57.4, 134.3 , 0 );
setMoveKey( spep_0-3 + 528, 1, -51.7, 133.5 , 0 );
setMoveKey( spep_0-3 + 530, 1, -45.5, 132.6 , 0 );
setMoveKey( spep_0-3 + 532, 1, -38.9, 131.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, -31.9, 130.5 , 0 );
setMoveKey( spep_0-3 + 536, 1, -24.4, 129.3 , 0 );
setMoveKey( spep_0-3 + 538, 1, -16.4, 128 , 0 );
setMoveKey( spep_0-3 + 540, 1, -7.9, 126.6 , 0 );
setMoveKey( spep_0-3 + 542, 1, 1, 125.1 , 0 );
setMoveKey( spep_0-3 + 544, 1, 10.5, 123.4 , 0 );
setMoveKey( spep_0-3 + 546, 1, 20.4, 121.7 , 0 );
setMoveKey( spep_0-3 + 547, 1, 20.4, 121.7 , 0 );

setMoveKey( spep_0-3 + 548, 1, -82, 105.7 , 0 );
setMoveKey( spep_0-3 + 550, 1, -84.1, 109.5 , 0 );
setMoveKey( spep_0-3 + 552, 1, -92.6, 110.1 , 0 );
setMoveKey( spep_0-3 + 554, 1, -94.9, 104.4 , 0 );
setMoveKey( spep_0-3 + 556, 1, -103.8, 98.7 , 0 );
setMoveKey( spep_0-3 + 558, 1, -104.5, 99 , 0 );
setMoveKey( spep_0-3 + 560, 1, -114.9, 92.9 , 0 );
setMoveKey( spep_0-3 + 562, 1, -112.6, 93.2 , 0 );
setMoveKey( spep_0-3 + 564, 1, -119.9, 93.6 , 0 );
setMoveKey( spep_0-3 + 566, 1, -126, 88.1 , 0 );
setMoveKey( spep_0-3 + 568, 1, -144.6, 81.7 , 0 );
setMoveKey( spep_0-3 + 570, 1, -153.4, 80.8 , 0 );
setMoveKey( spep_0-3 + 572, 1, -174.8, 72.7 , 0 );
setMoveKey( spep_0-3 + 574, 1, -192.9, 70.2 , 0 );
setMoveKey( spep_0-3 + 576, 1, -226.9, 51.2 , 0 );
setMoveKey( spep_0-3 + 578, 1, -242.2, 73.9 , 0 );
setMoveKey( spep_0-3 + 580, 1, -259.1, 89.4 , 0 );
setMoveKey( spep_0-3 + 582, 1, -265.1, 94.3 , 0 );
setMoveKey( spep_0-3 + 584, 1, -267.9, 90.8 , 0 );
setMoveKey( spep_0-3 + 586, 1, -264.3, 93.6 , 0 );
setMoveKey( spep_0-3 + 588, 1, -267, 93.3 , 0 );
setMoveKey( spep_0-3 + 590, 1, -263.4, 92.9 , 0 );
setMoveKey( spep_0-3 + 592, 1, -266.2, 89.3 , 0 );
setMoveKey( spep_0-3 + 594, 1, -262.6, 92.2 , 0 );
setMoveKey( spep_0-3 + 596, 1, -268.5, 95 , 0 );
setMoveKey( spep_0-3 + 598, 1, -261.7, 91.5 , 0 );
setMoveKey( spep_0-3 + 600, 1, -264.5, 87.9 , 0 );
setMoveKey( spep_0-3 + 602, 1, -260.8, 90.8 , 0 );
setMoveKey( spep_0-3 + 604, 1, -263.6, 93.6 , 0 );
setMoveKey( spep_0-3 + 606, 1, -259.9, 90.1 , 0 );
setMoveKey( spep_0-3 + 608, 1, -265.9, 86.5 , 0 );
setMoveKey( spep_0-3 + 610, 1, -259.1, 89.3 , 0 );
setMoveKey( spep_0-3 + 612, 1, -261.8, 82.6 , 0 );
setMoveKey( spep_0-3 + 614, 1, -258.2, 88.6 , 0 );
setMoveKey( spep_0-3 + 616, 1, -264.1, 85.1 , 0 );
setMoveKey( spep_0-3 + 618, 1, -257.3, 87.9 , 0 );
setMoveKey( spep_0-3 + 620, 1, -260, 81.2 , 0 );
setMoveKey( spep_0-3 + 622, 1, -256.4, 87.2 , 0 );
setMoveKey( spep_0-3 + 624, 1, -262.3, 90 , 0 );
setMoveKey( spep_0-3 + 626, 1, -255.4, 86.5 , 0 );
setMoveKey( spep_0-3 + 628, 1, -258.2, 79.7 , 0 );
setMoveKey( spep_0-3 + 630, 1, -254.5, 85.8 , 0 );
setMoveKey( spep_0-3 + 632, 1, -260.5, 82.2 , 0 );
setMoveKey( spep_0-3 + 634, 1, -253.6, 85.1 , 0 );
setMoveKey( spep_0-3 + 636, 1, -256.3, 78.3 , 0 );
setMoveKey( spep_0-3 + 638, 1, -252.7, 84.3 , 0 );
setMoveKey( spep_0-3 + 640, 1, -258.6, 87.2 , 0 );
setMoveKey( spep_0-3 + 642, 1, -251.7, 83.6 , 0 );
setMoveKey( spep_0-3 + 644, 1, -257.6, 80.1 , 0 );
setMoveKey( spep_0-3 + 646, 1, -250.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 648, 1, -253.5, 76.1 , 0 );
setMoveKey( spep_0-3 + 650, 1, -249.8, 82.2 , 0 );
setMoveKey( spep_0-3 + 652, 1, -252.5, 85 , 0 );
setMoveKey( spep_0-3 + 654, 1, -248.8, 81.5 , 0 );
setMoveKey( spep_0-3 + 656, 1, -251.6, 77.9 , 0 );
setMoveKey( spep_0-3 + 658, 1, -247.9, 80.7 , 0 );
setMoveKey( spep_0-3 + 660, 1, -250.6, 83.6 , 0 );
setMoveKey( spep_0-3 + 662, 1, -246.9, 80 , 0 );
setMoveKey( spep_0-3 + 664, 1, -249.6, 76.4 , 0 );
setMoveKey( spep_0-3 + 666, 1, -245.9, 79.3 , 0 );
setMoveKey( spep_0-3 + 668, 1, -248.6, 75.7 , 0 );

setScaleKey( spep_0-3 + 438, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 488, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 489, 1, 0.17, 0.17 );

setScaleKey( spep_0-3 + 490, 1,3.2,3.2);
setScaleKey( spep_0-3 + 492, 1,2.74,2.74);
setScaleKey( spep_0-3 + 494, 1,2.29,2.29);
setScaleKey( spep_0-3 + 496, 1,1.84,1.84);
setScaleKey( spep_0-3 + 498, 1,1.39,1.39);
setScaleKey( spep_0-3 + 500, 1,1.38,1.38);
setScaleKey( spep_0-3 + 502, 1,1.36,1.36);
setScaleKey( spep_0-3 + 504, 1,1.35,1.35);
setScaleKey( spep_0-3 + 506, 1,1.34,1.34);
setScaleKey( spep_0-3 + 508, 1,1.32,1.32);
setScaleKey( spep_0-3 + 510, 1,1.3,1.3);
setScaleKey( spep_0-3 + 512, 1,1.29,1.29);
setScaleKey( spep_0-3 + 514, 1,1.28,1.28);
setScaleKey( spep_0-3 + 516, 1,1.32,1.32);
setScaleKey( spep_0-3 + 518, 1,1.35,1.35);
setScaleKey( spep_0-3 + 520, 1,1.4,1.4);
setScaleKey( spep_0-3 + 522, 1,1.45,1.45);
setScaleKey( spep_0-3 + 524, 1,1.49,1.49);
setScaleKey( spep_0-3 + 526, 1,1.54,1.54);
setScaleKey( spep_0-3 + 528, 1,1.6,1.6);
setScaleKey( spep_0-3 + 530, 1,1.66,1.66);
setScaleKey( spep_0-3 + 532, 1,1.73,1.73);
setScaleKey( spep_0-3 + 534, 1,1.79,1.79);
setScaleKey( spep_0-3 + 536, 1,1.88,1.88);
setScaleKey( spep_0-3 + 538, 1,1.95,1.95);
setScaleKey( spep_0-3 + 540, 1,2.03,2.03);
setScaleKey( spep_0-3 + 542, 1,2.11,2.11);
setScaleKey( spep_0-3 + 544, 1,2.21,2.21);
setScaleKey( spep_0-3 + 546, 1,2.29,2.29);
setScaleKey( spep_0-3 + 547, 1,2.29,2.29);

setScaleKey( spep_0-3 + 548, 1, 2.47,2.47);
setScaleKey( spep_0-3 + 550, 1, 2.53,2.53);
setScaleKey( spep_0-3 + 552, 1, 2.58,2.58);
setScaleKey( spep_0-3 + 554, 1, 2.62,2.62);
setScaleKey( spep_0-3 + 556, 1, 2.67,2.67);
setScaleKey( spep_0-3 + 558, 1, 2.73,2.73);
setScaleKey( spep_0-3 + 560, 1, 2.79,2.79);
setScaleKey( spep_0-3 + 562, 1, 2.85,2.85);
setScaleKey( spep_0-3 + 564, 1, 2.91,2.91);
setScaleKey( spep_0-3 + 566, 1, 3.08,3.08);
setScaleKey( spep_0-3 + 568, 1, 3.32,3.32);
setScaleKey( spep_0-3 + 570, 1, 3.61,3.61);
setScaleKey( spep_0-3 + 572, 1, 3.96,3.96);
setScaleKey( spep_0-3 + 574, 1, 4.36,4.36);
setScaleKey( spep_0-3 + 576, 1, 6.07,6.07);
setScaleKey( spep_0-3 + 578, 1, 4.71,4.71);
setScaleKey( spep_0-3 + 580, 1, 3.69,3.69);
setScaleKey( spep_0-3 + 582, 1, 3.01,3.01);
setScaleKey( spep_0-3 + 584, 1, 3,3);
setScaleKey( spep_0-3 + 586, 1, 2.98,2.98);
setScaleKey( spep_0-3 + 588, 1, 2.97,2.97);
setScaleKey( spep_0-3 + 590, 1, 2.96,2.96);
setScaleKey( spep_0-3 + 592, 1, 2.95,2.95);
setScaleKey( spep_0-3 + 594, 1, 2.94,2.94);
setScaleKey( spep_0-3 + 596, 1, 2.92,2.92);
setScaleKey( spep_0-3 + 598, 1, 2.91,2.91);
setScaleKey( spep_0-3 + 600, 1, 2.9,2.9);
setScaleKey( spep_0-3 + 602, 1, 2.89,2.89);
setScaleKey( spep_0-3 + 604, 1, 2.88,2.88);
setScaleKey( spep_0-3 + 606, 1, 2.86,2.86);
setScaleKey( spep_0-3 + 608, 1, 2.85,2.85);
setScaleKey( spep_0-3 + 610, 1, 2.84,2.84);
setScaleKey( spep_0-3 + 612, 1, 2.83,2.83);
setScaleKey( spep_0-3 + 614, 1, 2.82,2.82);
setScaleKey( spep_0-3 + 616, 1, 2.8,2.8);
setScaleKey( spep_0-3 + 618, 1, 2.79,2.79);
setScaleKey( spep_0-3 + 620, 1, 2.78,2.78);
setScaleKey( spep_0-3 + 622, 1, 2.77,2.77);
setScaleKey( spep_0-3 + 624, 1, 2.76,2.76);
setScaleKey( spep_0-3 + 626, 1, 2.76,2.76);
setScaleKey( spep_0-3 + 628, 1, 2.74,2.74);
setScaleKey( spep_0-3 + 630, 1, 2.73,2.73);
setScaleKey( spep_0-3 + 632, 1, 2.72,2.72);
setScaleKey( spep_0-3 + 634, 1, 2.71,2.71);
setScaleKey( spep_0-3 + 636, 1, 2.7,2.7);
setScaleKey( spep_0-3 + 638, 1, 2.68,2.68);
setScaleKey( spep_0-3 + 640, 1, 2.67,2.67);
setScaleKey( spep_0-3 + 642, 1, 2.66,2.66);
setScaleKey( spep_0-3 + 644, 1, 2.65,2.65);
setScaleKey( spep_0-3 + 646, 1, 2.64,2.64);
setScaleKey( spep_0-3 + 648, 1, 2.62,2.62);
setScaleKey( spep_0-3 + 650, 1, 2.61,2.61);
setScaleKey( spep_0-3 + 652, 1, 2.6,2.6);
setScaleKey( spep_0-3 + 654, 1, 2.59,2.59);
setScaleKey( spep_0-3 + 656, 1, 2.58,2.58);
setScaleKey( spep_0-3 + 658, 1, 2.56,2.56);
setScaleKey( spep_0-3 + 660, 1, 2.55,2.55);
setScaleKey( spep_0-3 + 662, 1, 2.54,2.54);
setScaleKey( spep_0-3 + 664, 1, 2.53,2.53);
setScaleKey( spep_0-3 + 666, 1, 2.52,2.52);
setScaleKey( spep_0-3 + 668, 1, 2.5,2.5);

setRotateKey( spep_0-3 + 438, 1, -1.7 );
setRotateKey( spep_0-3 + 440, 1, 0.2 );
setRotateKey( spep_0-3 + 442, 1, 2.2 );
setRotateKey( spep_0-3 + 444, 1, 4.1 );
setRotateKey( spep_0-3 + 446, 1, 6.1 );
setRotateKey( spep_0-3 + 448, 1, 8 );
setRotateKey( spep_0-3 + 450, 1, 9.9 );
setRotateKey( spep_0-3 + 452, 1, 10.6 );
setRotateKey( spep_0-3 + 454, 1, 11.2 );
setRotateKey( spep_0-3 + 456, 1, 11.9 );
setRotateKey( spep_0-3 + 458, 1, 12.5 );
setRotateKey( spep_0-3 + 460, 1, 13.2 );
setRotateKey( spep_0-3 + 462, 1, 13.8 );
setRotateKey( spep_0-3 + 464, 1, 14.5 );
setRotateKey( spep_0-3 + 466, 1, 15.1 );
setRotateKey( spep_0-3 + 468, 1, 15.8 );
setRotateKey( spep_0-3 + 470, 1, 16.4 );
setRotateKey( spep_0-3 + 472, 1, 17.1 );
setRotateKey( spep_0-3 + 474, 1, 17.7 );
setRotateKey( spep_0-3 + 476, 1, 18.4 );
setRotateKey( spep_0-3 + 478, 1, 19.1 );
setRotateKey( spep_0-3 + 480, 1, 19.7 );
setRotateKey( spep_0-3 + 482, 1, 20.4 );
setRotateKey( spep_0-3 + 484, 1, 21 );
setRotateKey( spep_0-3 + 486, 1, 21.7 );
setRotateKey( spep_0-3 + 488, 1, 22.3 );
setRotateKey( spep_0-3 + 489, 1, 22.3 );
setRotateKey( spep_0-3 + 490, 1, 0.8 );
setRotateKey( spep_0-3 + 492, 1, 4.4 );
setRotateKey( spep_0-3 + 494, 1, 7.9 );
setRotateKey( spep_0-3 + 496, 1, 11.5 );
setRotateKey( spep_0-3 + 498, 1, 15 );
setRotateKey( spep_0-3 + 500, 1, 15.2 );
setRotateKey( spep_0-3 + 502, 1, 15.3 );
setRotateKey( spep_0-3 + 504, 1, 15.4 );
setRotateKey( spep_0-3 + 506, 1, 15.5 );
setRotateKey( spep_0-3 + 508, 1, 15.7 );
setRotateKey( spep_0-3 + 510, 1, 15.8 );
setRotateKey( spep_0-3 + 512, 1, 15.9 );
setRotateKey( spep_0-3 + 514, 1, 16.1 );
setRotateKey( spep_0-3 + 520, 1, 16.1 );
setRotateKey( spep_0-3 + 522, 1, 16.2 );
setRotateKey( spep_0-3 + 526, 1, 16.2 );
setRotateKey( spep_0-3 + 528, 1, 16.3 );
setRotateKey( spep_0-3 + 532, 1, 16.3 );
setRotateKey( spep_0-3 + 534, 1, 16.4 );
setRotateKey( spep_0-3 + 536, 1, 16.4 );
setRotateKey( spep_0-3 + 538, 1, 16.5 );
setRotateKey( spep_0-3 + 540, 1, 16.5 );
setRotateKey( spep_0-3 + 542, 1, 16.6 );
setRotateKey( spep_0-3 + 544, 1, 16.6 );
setRotateKey( spep_0-3 + 546, 1, 16.7 );
setRotateKey( spep_0-3 + 547, 1, 16.7 );

setRotateKey( spep_0-3 + 548, 1, 13.1 );
setRotateKey( spep_0-3 + 550, 1, 12.5 );
setRotateKey( spep_0-3 + 552, 1, 11.9 );
setRotateKey( spep_0-3 + 554, 1, 11.4 );
setRotateKey( spep_0-3 + 556, 1, 10.8 );
setRotateKey( spep_0-3 + 558, 1, 10.8 );
setRotateKey( spep_0-3 + 560, 1, 10.7 );
setRotateKey( spep_0-3 + 562, 1, 10.6 );
setRotateKey( spep_0-3 + 564, 1, 10.5 );
setRotateKey( spep_0-3 + 566, 1, 10.4 );
setRotateKey( spep_0-3 + 568, 1, 10.4 );
setRotateKey( spep_0-3 + 570, 1, 10.3 );
setRotateKey( spep_0-3 + 572, 1, 10.2 );
setRotateKey( spep_0-3 + 574, 1, 10.1 );
setRotateKey( spep_0-3 + 576, 1, 16 );
setRotateKey( spep_0-3 + 604, 1, 16 );
setRotateKey( spep_0-3 + 606, 1, 15.9 );
setRotateKey( spep_0-3 + 638, 1, 15.9 );
setRotateKey( spep_0-3 + 640, 1, 15.8 );
setRotateKey( spep_0-3 + 668, 1, 15.8 );

--顔カットインのタイミング指定
spep_x=spep_0 +572;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--正面ダッシュ
SE006 = playSe( spep_0 + 44, 1072 );
stopSe( spep_0 + 80, SE004, 36 );
stopSe( spep_0 + 80, SE005, 16 );

--エルボー
SE007 = playSe( spep_0 + 96, 1189 );
SE008 = playSe( spep_0 + 100, 1009 );
SE009 = playSe( spep_0 + 100, 1049 );
setSeVolumeByWorkId( spep_0 + 100, SE009, 80 );
stopSe( spep_0 + 128, SE009, 16 );
SE010 = playSe( spep_0 + 100, 1120 );
setSeVolumeByWorkId( spep_0 + 100, SE010, 85 );

--左パンチ
SE011 = playSe( spep_0 + 154, 1003 );
SE012 = playSe( spep_0 + 160, 1110 );
SE013 = playSe( spep_0 + 160, 1010 );
SE014 = playSe( spep_0 + 162, 1000 );

--瞬間移動
SE015 = playSe( spep_0 + 196, 1109 );

--キック
SE016 = playSe( spep_0 + 252, 1188 );
setSeVolumeByWorkId( spep_0 + 252, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 253, SE016, 12.5 );
setSeVolumeByWorkId( spep_0 + 254, SE016, 25 );
setSeVolumeByWorkId( spep_0 + 255, SE016, 37.5 );
setSeVolumeByWorkId( spep_0 + 256, SE016, 50 );
setSeVolumeByWorkId( spep_0 + 257, SE016, 62.5 );
setSeVolumeByWorkId( spep_0 + 258, SE016, 75 );
setSeVolumeByWorkId( spep_0 + 259, SE016, 87.5 );
setSeVolumeByWorkId( spep_0 + 260, SE016, 100 );
setStartTimeMs( SE016,  333 );
SE017 = playSe( spep_0 + 244, 1004 );
stopSe( spep_0 + 268 -10, SE017,8 );
SE018 = playSe( spep_0 + 252, 1187 );
setSeVolumeByWorkId( spep_0 + 252, SE018, 71 );
SE019 = playSe( spep_0 + 254, 1052 );
setSeVolumeByWorkId( spep_0 + 254, SE019, 66 );
SE020 = playSe( spep_0 + 256, 1011 );
setSeVolumeByWorkId( spep_0 + 256, SE020, 108 );
SE021 = playSe( spep_0 + 262, 1109 );
stopSe( spep_0 + 278, SE021, 14 );

--敵飛んでいく
SE022 = playSe( spep_0 + 268, 1121 );
setSeVolumeByWorkId( spep_0 + 268, SE022, 47 );
stopSe( spep_0 + 340, SE022, 20 );
SE023 = playSe( spep_0 + 268, 1183 );
stopSe( spep_0 + 340, SE023, 20 );

--地面えぐられる
SE024 = playSe( spep_0 + 338, 1159 );
stopSe( spep_0 + 436, SE024, 10 );
SE025 = playSe( spep_0 + 352, 1044 );
setSeVolumeByWorkId( spep_0 + 352, SE025, 158 );
stopSe( spep_0 + 436, SE025, 10 );

--崖から飛び出す
SE026 = playSe( spep_0 + 436, 1027 );
SE027 = playSe( spep_0 + 436, 1183 );
setSeVolumeByWorkId( spep_0 + 436, SE027, 64 );
stopSe( spep_0 + 504, SE027, 18 );

--瞬間移動
SE028 = playSe( spep_0 + 500, 1109 );

--気弾溜め
SE029 = playSe( spep_0 + 512, 1273 );
setSeVolumeByWorkId( spep_0 + 512, SE029, 112 );
setPitch( spep_0 + 512, SE029, 100 );
setTimeStretch( SE029, 1.07, 30, 5 );
SE030 = playSe( spep_0 + 512, 1274 ,"",0.6);
setTimeStretch( SE030, 1.25, 10, 1 );
SE031 = playSe( spep_0 + 532, 1275 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 532, SE031, 184 );
setTimeStretch( SE031, 1.26, 30, 5 );
SE032 = playSe( spep_0 + 532, 1271 ,"",0.6);
setPitch( spep_0 + 532, SE032, 800 );
setTimeStretch( SE032, 1.53, 10, 1 );

--気弾敵に押し付ける
SE033 = playSe( spep_0 + 546, 1312 );
SE034 = playSe( spep_0 + 546, 1240 );
setPitch( spep_0 + 546, SE034, -100 );
setTimeStretch( SE034, 0.93, 10, 1 );

--顔カットイン
SE035 = playSe( spep_x +12, 1018 );


--白フェード
entryFade( spep_0 + 664, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+670;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--気弾溜め
stopSe( spep_1 + 8, SE031, 6 );
stopSe( spep_1 + 8, SE032, 6 );
stopSe( spep_1 + 8, SE033, 6 );
stopSe( spep_1 + 8, SE034, 6 );

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- カードカットイン後
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-3 + 26, 1, 0);

changeAnime( spep_2 + 0, 1, 8);

setMoveKey( spep_2 + 0, 1, -154, 171.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -159.8, 177.6 , 0 );
setMoveKey( spep_2-3 + 4, 1, -165.7, 183.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, -171.7, 189.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, -177.6, 195.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, -183.6, 200.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, -189.6, 206.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, -195.6, 212.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, -195.6, 212.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, -268.5, 266.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, -268.5, 266.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, -562.2, 397.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, -538.2, 394.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 4, 1, 2.55,2.55);
setScaleKey( spep_2-3 + 6, 1, 2.58,2.58);
setScaleKey( spep_2-3 + 8, 1, 2.6,2.6);
setScaleKey( spep_2-3 + 10, 1, 2.64,2.64);
setScaleKey( spep_2-3 + 12, 1, 2.66,2.66);
setScaleKey( spep_2-3 + 14, 1, 2.68,2.68);
setScaleKey( spep_2-3 + 18, 1, 2.68,2.68);
setScaleKey( spep_2-3 + 20, 1, 3.33,3.33);
setScaleKey( spep_2-3 + 22, 1, 3.33,3.33);
setScaleKey( spep_2-3 + 24, 1, 2.83,2.83);
setScaleKey( spep_2-3 + 26, 1, 2.78,2.78);

setRotateKey( spep_2 + 0, 1, 16 );
setRotateKey( spep_2-3 + 26, 1, 16 );

--敵の動き
setDisp( spep_2-3 + 92, 1, 1);
setDisp( spep_2-1 + 126, 1, 0);

changeAnime( spep_2 + 92, 1, 8);

setMoveKey( spep_2-3 + 92, 1, 266.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 93, 1, 266.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 266, -100.9 , 0 );
setMoveKey( spep_2-3 + 95, 1, 266, -100.9 , 0 );
setMoveKey( spep_2-3 + 96, 1, 176.6, -71.2 , 0 );
setMoveKey( spep_2-3 + 97, 1, 176.6, -71.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 176.1, -71.5 , 0 );
setMoveKey( spep_2-3 + 99, 1, 176.1, -71.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 149.8, -68.8 , 0 );
setMoveKey( spep_2-3 + 101, 1, 149.8, -68.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, 149.3, -69.1 , 0 );
setMoveKey( spep_2-3 + 103, 1, 149.3, -69.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, 92.6, -75.1 , 0 );
setMoveKey( spep_2-3 + 105, 1, 92.6, -75.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, 92.5, -75.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 92.5, -75.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 58.3, -93.4 , 0 );
setMoveKey( spep_2-3 + 109, 1, 58.3, -93.4 , 0 );
setMoveKey( spep_2-3 + 110, 1, 58.5, -93.6 , 0 );
setMoveKey( spep_2-3 + 111, 1, 58.5, -93.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 32.2, -98 , 0 );
setMoveKey( spep_2-3 + 113, 1, 32.2, -98 , 0 );
setMoveKey( spep_2-3 + 114, 1, 32.7, -98.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 32.7, -98.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, -1, -113.7 , 0 );
setMoveKey( spep_2-3 + 117, 1, -1, -113.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, -0.2, -113.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, -0.2, -113.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, -10.5, -140 , 0 );
setMoveKey( spep_2-3 + 121, 1, -10.5, -140 , 0 );
setMoveKey( spep_2-3 + 122, 1, -9.5, -139.7 , 0 );
setMoveKey( spep_2-3 + 123, 1, -9.5, -139.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, -19.7, -165.3 , 0 );
setMoveKey( spep_2-3 + 125, 1, -19.7, -165.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, -18.6, -164.8 , 0 );
setMoveKey( spep_2-1 + 126, 1, -18.6, -164.8 , 0 );

setScaleKey( spep_2-3 + 92, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 93, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 94, 1, 3.62, 3.62 );
setScaleKey( spep_2-3 + 95, 1, 3.62, 3.62 );
setScaleKey( spep_2-3 + 96, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 97, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 98, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 99, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 100, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 101, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 102, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 103, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 105, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 106, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 107, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 111, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 113, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 114, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 115, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 116, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 117, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 118, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 119, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 120, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 122, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 123, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 124, 1, 0.21, 0.21 );
setScaleKey( spep_2-1 + 126, 1, 0.21, 0.21 );


setRotateKey( spep_2-3 + 92, 1, -29.1 );
setRotateKey( spep_2-3 + 94, 1, -29.1 );
setRotateKey( spep_2-3 + 96, 1, -29.6 );
setRotateKey( spep_2-3 + 98, 1, -29.6 );
setRotateKey( spep_2-3 + 100, 1, -29 );
setRotateKey( spep_2-3 + 106, 1, -29 );
setRotateKey( spep_2-3 + 108, 1, -29.5 );
setRotateKey( spep_2-3 + 114, 1, -29.5 );
setRotateKey( spep_2-3 + 116, 1, -30.2 );
setRotateKey( spep_2-3 + 122, 1, -30.2 );
setRotateKey( spep_2-3 + 124, 1, -32.6 );
setRotateKey( spep_2-1 + 126, 1, -32.6 );

--SE
--気弾発射
SE037 = playSe( spep_2 + 22, 1027 );
setSeVolumeByWorkId( spep_2 + 22, SE037, 76 );
SE038 = playSe( spep_2 + 22, 1177 );
setSeVolumeByWorkId( spep_2 + 22, SE038, 79 );
stopSe( spep_2 + 138, SE038, 12 );
SE039 = playSe( spep_2 + 22, 1193 );
setSeVolumeByWorkId( spep_2 + 22, SE039, 138 );
stopSe( spep_2 + 138, SE039, 12 );
SE040 = playSe( spep_2 + 22, 1284 );
setSeVolumeByWorkId( spep_2 + 22, SE040, 60 );
stopSe( spep_2 + 138, SE040, 12 );

--気弾飛んでいく
SE041 = playSe( spep_2 + 90, 1202 );
setSeVolumeByWorkId( spep_2 + 90, SE041, 81 );
stopSe( spep_2 + 134, SE041, 12 );
SE042 = playSe( spep_2 + 90, 1304 );
setSeVolumeByWorkId( spep_2 + 90, SE042, 86 );
stopSe( spep_2 + 134, SE042, 12 );

--地面着弾
SE043 = playSe( spep_2 + 126, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 126, SE043, 81 );
SE044 = playSe( spep_2 + 126, 1024 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 126, SE044, 85 );

--ラスト爆発
SE045 = playSe( spep_2 + 154, 1067 );
setSeVolumeByWorkId( spep_2 + 154, SE045, 83 );
SE046 = playSe( spep_2 + 154, 1145 );
setSeVolumeByWorkId( spep_2 + 154, SE046, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +170 );
endPhase( spep_2 + 270 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カードカットイン前
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, fast_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, fast_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_f, 0 );
setEffRotateKey( spep_0 + 670, fast_f, 0 );
setEffAlphaKey( spep_0 + 0, fast_f, 255 );
setEffAlphaKey( spep_0 + 670, fast_f, 255 );

-- ** エフェクト等 ** --
fast_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 670, fast_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 670, fast_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_b, 0 );
setEffRotateKey( spep_0 + 670, fast_b, 0 );
setEffAlphaKey( spep_0 + 0, fast_b, 255 );
setEffAlphaKey( spep_0 + 670, fast_b, 255 );

--SE
--正面ダッシュ
SE001 = playSe( spep_0 + 0, 9 );
SE002 = playSe( spep_0 + 0, 1182 );
SE003 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );
setTimeStretch( SE003, 1.25, 10, 1 );
SE004 = playSe( spep_0 + 0, 1314 );
SE005 = playSe( spep_0 + 0, 1215 );



-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 670, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_0-3 + 80, 1, 1);
setDisp( spep_0-3 + 166, 1, 0);

changeAnime( spep_0-3 + 80, 1, 104);
changeAnime( spep_0-3 + 98, 1, 108);
changeAnime( spep_0-3 + 156, 1, 106);

setMoveKey( spep_0-3 + 80, 1, -106.9, -164.4 , 0 );
setMoveKey( spep_0-3 + 82, 1, -83.7, -134 , 0 );
setMoveKey( spep_0-3 + 84, 1, -60.5, -103.5 , 0 );
setMoveKey( spep_0-3 + 86, 1, -37.3, -73.1 , 0 );
setMoveKey( spep_0-3 + 88, 1, -14.1, -42.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 9.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 92, 1, 32.3, 18.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 55.5, 48.6 , 0 );
setMoveKey( spep_0-3 + 96, 1, 59.3, 53 , 0 );
setMoveKey( spep_0-3 + 97, 1, 59.3, 53 , 0 );

setMoveKey( spep_0-3 + 98, 1, 117.8, 100.3 , 0 );
setMoveKey( spep_0-3 + 100, 1, 108.5, 102.4 , 0 );
setMoveKey( spep_0-3 + 102, 1, 79.4, 107 , 0 );
setMoveKey( spep_0-3 + 104, 1, 100.1, 101 , 0 );
setMoveKey( spep_0-3 + 106, 1, 101.7, 95 , 0 );
setMoveKey( spep_0-3 + 108, 1, 109.7, 114.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 104.9, 115.1 , 0 );
setMoveKey( spep_0-3 + 112, 1, 119.3, 128.3 , 0 );
setMoveKey( spep_0-3 + 114, 1, 114.5, 141.6 , 0 );
setMoveKey( spep_0-3 + 116, 1, 129, 142.1 , 0 );
setMoveKey( spep_0-3 + 118, 1, 130.6, 142.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, 138.7, 155.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, 140.4, 159.7 , 0 );
setMoveKey( spep_0-3 + 124, 1, 148.4, 169.8 , 0 );
setMoveKey( spep_0-3 + 126, 1, 153.3, 176.8 , 0 );
setMoveKey( spep_0-3 + 128, 1, 158.3, 183.8 , 0 );
setMoveKey( spep_0-3 + 130, 1, 163.2, 190.8 , 0 );
setMoveKey( spep_0-3 + 132, 1, 168.1, 197.8 , 0 );
setMoveKey( spep_0-3 + 134, 1, 173.1, 204.8 , 0 );
setMoveKey( spep_0-3 + 135, 1, 173.1, 204.8 , 0 );
setMoveKey( spep_0-3 + 136, 1, 121.3, 51.6 , 0 );
setMoveKey( spep_0-3 + 138, 1, 122.3, 56 , 0 );
setMoveKey( spep_0-3 + 140, 1, 123.3, 60.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 124.2, 65 , 0 );
setMoveKey( spep_0-3 + 144, 1, 125.2, 69.5 , 0 );
setMoveKey( spep_0-3 + 146, 1, 126.1, 73.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, 127.1, 78.4 , 0 );
setMoveKey( spep_0-3 + 150, 1, 128.1, 82.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, 129, 87.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, 130, 91.8 , 0 );
setMoveKey( spep_0-3 + 155, 1, 130, 91.8 , 0 );

setMoveKey( spep_0-3 + 156, 1, 96.4, -2.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, 120.9, 12.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, 128.8, 18.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 357.4, 118.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, 578.2, 209 , 0 );
setMoveKey( spep_0-3 + 166, 1, 800.3, 323.2 , 0 );

setScaleKey( spep_0-3 + 80, 1,2.18,2.18);
setScaleKey( spep_0-3 + 82, 1,2.19,2.19);
setScaleKey( spep_0-3 + 84, 1,2.2,2.2);
setScaleKey( spep_0-3 + 86, 1,2.21,2.21);
setScaleKey( spep_0-3 + 88, 1,2.22,2.22);
setScaleKey( spep_0-3 + 90, 1,2.23,2.23);
setScaleKey( spep_0-3 + 92, 1,2.24,2.24);
setScaleKey( spep_0-3 + 94, 1,2.25,2.25);
setScaleKey( spep_0-3 + 96, 1,2.27,2.27);
setScaleKey( spep_0-3 + 97, 1,2.27,2.27);

setScaleKey( spep_0-3 + 98, 1, 3.83,3.83);
setScaleKey( spep_0-3 + 100, 1,3.28,3.28);
setScaleKey( spep_0-3 + 102, 1,2.72,2.72);
setScaleKey( spep_0-3 + 104, 1,2.74,2.74);
setScaleKey( spep_0-3 + 106, 1,2.76,2.76);
setScaleKey( spep_0-3 + 108, 1,2.77,2.77);
setScaleKey( spep_0-3 + 110, 1,2.78,2.78);
setScaleKey( spep_0-3 + 112, 1,2.79,2.79);
setScaleKey( spep_0-3 + 114, 1,2.8,2.8);
setScaleKey( spep_0-3 + 116, 1,2.82,2.82);
setScaleKey( spep_0-3 + 118, 1,2.84,2.84);
setScaleKey( spep_0-3 + 120, 1,2.85,2.85);
setScaleKey( spep_0-3 + 122, 1,2.86,2.86);
setScaleKey( spep_0-3 + 124, 1,2.87,2.87);
setScaleKey( spep_0-3 + 126, 1,2.89,2.89);
setScaleKey( spep_0-3 + 128, 1,2.9,2.9);
setScaleKey( spep_0-3 + 130, 1,2.91,2.91);
setScaleKey( spep_0-3 + 132, 1,2.93,2.93);
setScaleKey( spep_0-3 + 134, 1,2.95,2.95);
setScaleKey( spep_0-3 + 135, 1,2.95,2.95);
setScaleKey( spep_0-3 + 136, 1,4.01,4.01);
setScaleKey( spep_0-3 + 138, 1,3.97,3.97);
setScaleKey( spep_0-3 + 140, 1,3.95,3.95);
setScaleKey( spep_0-3 + 142, 1,3.92,3.92);
setScaleKey( spep_0-3 + 144, 1,3.9,3.9);
setScaleKey( spep_0-3 + 146, 1,3.87,3.87);
setScaleKey( spep_0-3 + 148, 1,3.85,3.85);
setScaleKey( spep_0-3 + 150, 1,3.83,3.83);
setScaleKey( spep_0-3 + 152, 1,3.8,3.8);
setScaleKey( spep_0-3 + 154, 1,3.78,3.78);
setScaleKey( spep_0-3 + 155, 1,3.78,3.78);

setScaleKey( spep_0-3 + 156, 1,5.33,5.33);
setScaleKey( spep_0-3 + 158, 1,4.87,4.87);
setScaleKey( spep_0-3 + 160, 1,4.43,4.43);
setScaleKey( spep_0-3 + 162, 1,3.17,3.17);
setScaleKey( spep_0-3 + 164, 1,2.22,2.22);
setScaleKey( spep_0-3 + 166, 1,1.28,1.28);

setRotateKey( spep_0-3 + 80, 1, -28.4 );
setRotateKey( spep_0-3 + 97, 1, -28.4 );

setRotateKey( spep_0-3 + 98, 1, -17.5 );
setRotateKey( spep_0-3 + 102, 1, -17.5 );
setRotateKey( spep_0-3 + 104, 1, -17.4 );
setRotateKey( spep_0-3 + 110, 1, -17.4 );
setRotateKey( spep_0-3 + 112, 1, -17.3 );
setRotateKey( spep_0-3 + 118, 1, -17.3 );
setRotateKey( spep_0-3 + 120, 1, -17.2 );
setRotateKey( spep_0-3 + 126, 1, -17.2 );
setRotateKey( spep_0-3 + 128, 1, -17.1 );
setRotateKey( spep_0-3 + 134, 1, -17.1 );
setRotateKey( spep_0-3 + 135, 1, -17.1 );
setRotateKey( spep_0-3 + 136, 1, -16.3 );
setRotateKey( spep_0-3 + 155, 1, -16.3 );

setRotateKey( spep_0-3 + 156, 1, -41.5 );
setRotateKey( spep_0-3 + 158, 1, -39.8 );
setRotateKey( spep_0-3 + 160, 1, -38 );
setRotateKey( spep_0-3 + 162, 1, -25.4 );
setRotateKey( spep_0-3 + 164, 1, -12.8 );
setRotateKey( spep_0-3 + 166, 1, -0.2 );

--敵の動き
setDisp( spep_0-3 + 180, 1, 1);
setDisp( spep_0-3 + 288, 1, 0);

changeAnime( spep_0-3 + 180, 1, 106);
changeAnime( spep_0-3 + 254, 1, 105);

setMoveKey( spep_0-3 + 180, 1, -763.1, -688 , 0 );
setMoveKey( spep_0-3 + 182, 1, -585.1, -520.1 , 0 );
setMoveKey( spep_0-3 + 184, 1, -405.2, -350.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, -223.2, -178.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, -39.2, -4.9 , 0 );
setMoveKey( spep_0-3 + 190, 1, -35.1, -3.4 , 0 );
setMoveKey( spep_0-3 + 192, 1, -31.1, -1.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, -27, -0.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -22.8, 1.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, -18.6, 2.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -14.4, 4.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, -10, 6.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -5, 5.1 , 0 );
setMoveKey( spep_0-3 + 206, 1, 0.1, 3.4 , 0 );
setMoveKey( spep_0-3 + 208, 1, 5.3, 1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 10.5, -2 , 0 );
setMoveKey( spep_0-3 + 212, 1, 15.8, -5.7 , 0 );
setMoveKey( spep_0-3 + 214, 1, 21.2, -10.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, 26.7, -15.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, 32.2, -20.9 , 0 );
setMoveKey( spep_0-3 + 220, 1, 37.8, -27.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, 43.6, -34.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 49.4, -41.8 , 0 );
setMoveKey( spep_0-3 + 226, 1, 55.3, -50.1 , 0 );
setMoveKey( spep_0-3 + 228, 1, 67.9, -52.6 , 0 );
setMoveKey( spep_0-3 + 230, 1, 77.3, -58.2 , 0 );
setMoveKey( spep_0-3 + 232, 1, 87.2, -64.1 , 0 );
setMoveKey( spep_0-3 + 234, 1, 97.6, -70.4 , 0 );
setMoveKey( spep_0-3 + 236, 1, 108.5, -77 , 0 );
setMoveKey( spep_0-3 + 238, 1, 119.9, -83.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, 131.8, -91 , 0 );
setMoveKey( spep_0-3 + 242, 1, 144.2, -98.5 , 0 );
setMoveKey( spep_0-3 + 244, 1, 157.1, -106.2 , 0 );
setMoveKey( spep_0-3 + 246, 1, 170.5, -114.2 , 0 );
setMoveKey( spep_0-3 + 248, 1, 184.4, -122.4 , 0 );
setMoveKey( spep_0-3 + 250, 1, 198.8, -130.9 , 0 );
setMoveKey( spep_0-3 + 252, 1, 213.7, -139.7 , 0 );
setMoveKey( spep_0-3 + 253, 1, 213.7, -139.7 , 0 );

setMoveKey( spep_0-3 + 254, 1, 388.6, 90.6 , 0 );
setMoveKey( spep_0-3 + 256, 1, 320.7, 86.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, 235.5, 80.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 248, 72.7 , 0 );
setMoveKey( spep_0-3 + 262, 1, 247.5, 65.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 253.5, 77 , 0 );
setMoveKey( spep_0-3 + 266, 1, 246.6, 76.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 258.8, 82 , 0 );
setMoveKey( spep_0-3 + 270, 1, 258.2, 75.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, 172.6, -240.2 , 0 );
setMoveKey( spep_0-3 + 274, 1, 211.6, -399 , 0 );
setMoveKey( spep_0-3 + 276, 1, 205.4, -398.5 , 0 );
setMoveKey( spep_0-3 + 278, 1, 192.6, -394.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 184.1, -374.5 , 0 );
setMoveKey( spep_0-3 + 282, 1, 182.3, -375.5 , 0 );
setMoveKey( spep_0-3 + 284, 1, 180.6, -376.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 178.7, -377.3 , 0 );
setMoveKey( spep_0-3 + 288, 1, 176.8, -377.9 , 0 );


setScaleKey( spep_0-3 + 180, 1,5.61,5.61);
setScaleKey( spep_0-3 + 182, 1,4.84,4.84);
setScaleKey( spep_0-3 + 184, 1,4.05,4.05);
setScaleKey( spep_0-3 + 186, 1,3.27,3.27);
setScaleKey( spep_0-3 + 188, 1,2.46,2.46);
setScaleKey( spep_0-3 + 190, 1,2.47,2.47);
setScaleKey( spep_0-3 + 192, 1,2.48,2.48);
setScaleKey( spep_0-3 + 194, 1,2.48,2.48);
setScaleKey( spep_0-3 + 196, 1,2.49,2.49);
setScaleKey( spep_0-3 + 198, 1,2.49,2.49);
setScaleKey( spep_0-3 + 200, 1,2.51,2.51);
setScaleKey( spep_0-3 + 216, 1,2.51,2.51);
setScaleKey( spep_0-3 + 218, 1,2.52,2.52);
setScaleKey( spep_0-3 + 222, 1,2.52,2.52);
setScaleKey( spep_0-3 + 224, 1,2.53,2.53);
setScaleKey( spep_0-3 + 226, 1,2.53,2.53);
setScaleKey( spep_0-3 + 228, 1,2.58,2.58);
setScaleKey( spep_0-3 + 230, 1,2.62,2.62);
setScaleKey( spep_0-3 + 232, 1,2.67,2.67);
setScaleKey( spep_0-3 + 234, 1,2.72,2.72);
setScaleKey( spep_0-3 + 236, 1,2.78,2.78);
setScaleKey( spep_0-3 + 238, 1,2.84,2.84);
setScaleKey( spep_0-3 + 240, 1,2.9,2.9);
setScaleKey( spep_0-3 + 242, 1,2.97,2.97);
setScaleKey( spep_0-3 + 244, 1,3.03,3.03);
setScaleKey( spep_0-3 + 246, 1,3.1,3.1);
setScaleKey( spep_0-3 + 248, 1,3.17,3.17);
setScaleKey( spep_0-3 + 250, 1,3.24,3.24);
setScaleKey( spep_0-3 + 252, 1,3.33,3.33);
setScaleKey( spep_0-3 + 253, 1,3.33,3.33);

setScaleKey( spep_0-3 + 254, 1, 3.65, 3.65 );
setScaleKey( spep_0-3 + 256, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 258, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 260, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 262, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 264, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 266, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 268, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 270, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 272, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 274, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 276, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 278, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 280, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 282, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 284, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 286, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 288, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 180, 1, -22.8 );
setRotateKey( spep_0-3 + 182, 1, -21.1 );
setRotateKey( spep_0-3 + 184, 1, -19.3 );
setRotateKey( spep_0-3 + 186, 1, -17.6 );
setRotateKey( spep_0-3 + 188, 1, -15.8 );
setRotateKey( spep_0-3 + 190, 1, -15.7 );
setRotateKey( spep_0-3 + 192, 1, -15.6 );
setRotateKey( spep_0-3 + 194, 1, -15.6 );
setRotateKey( spep_0-3 + 196, 1, -15.5 );
setRotateKey( spep_0-3 + 198, 1, -15.4 );
setRotateKey( spep_0-3 + 200, 1, -15.3 );
setRotateKey( spep_0-3 + 202, 1, -15.2 );
setRotateKey( spep_0-3 + 204, 1, -15.1 );
setRotateKey( spep_0-3 + 206, 1, -15 );
setRotateKey( spep_0-3 + 208, 1, -14.9 );
setRotateKey( spep_0-3 + 210, 1, -14.8 );
setRotateKey( spep_0-3 + 212, 1, -14.8 );
setRotateKey( spep_0-3 + 214, 1, -14.7 );
setRotateKey( spep_0-3 + 216, 1, -14.6 );
setRotateKey( spep_0-3 + 218, 1, -14.5 );
setRotateKey( spep_0-3 + 220, 1, -14.4 );
setRotateKey( spep_0-3 + 222, 1, -14.3 );
setRotateKey( spep_0-3 + 224, 1, -14.2 );
setRotateKey( spep_0-3 + 226, 1, -14.1 );
setRotateKey( spep_0-3 + 228, 1, -14.3 );
setRotateKey( spep_0-3 + 230, 1, -14.6 );
setRotateKey( spep_0-3 + 232, 1, -14.9 );
setRotateKey( spep_0-3 + 234, 1, -15.2 );
setRotateKey( spep_0-3 + 236, 1, -15.5 );
setRotateKey( spep_0-3 + 238, 1, -15.8 );
setRotateKey( spep_0-3 + 240, 1, -16.2 );
setRotateKey( spep_0-3 + 242, 1, -16.5 );
setRotateKey( spep_0-3 + 244, 1, -16.9 );
setRotateKey( spep_0-3 + 246, 1, -17.3 );
setRotateKey( spep_0-3 + 248, 1, -17.8 );
setRotateKey( spep_0-3 + 250, 1, -18.2 );
setRotateKey( spep_0-3 + 252, 1, -18.7 );
setRotateKey( spep_0-3 + 253, 1, -18.7 );

setRotateKey( spep_0-3 + 254, 1, -46.2 );
setRotateKey( spep_0-3 + 256, 1, -45.3 );
setRotateKey( spep_0-3 + 258, 1, -44.4 );
setRotateKey( spep_0-3 + 260, 1, -43.5 );
setRotateKey( spep_0-3 + 262, 1, -42.6 );
setRotateKey( spep_0-3 + 264, 1, -41.7 );
setRotateKey( spep_0-3 + 266, 1, -40.7 );
setRotateKey( spep_0-3 + 268, 1, -39.8 );
setRotateKey( spep_0-3 + 270, 1, -38.9 );
setRotateKey( spep_0-3 + 272, 1, -56.3 );
setRotateKey( spep_0-3 + 274, 1, -44.5 );
setRotateKey( spep_0-3 + 276, 1, -46.6 );
setRotateKey( spep_0-3 + 278, 1, -48.7 );
setRotateKey( spep_0-3 + 280, 1, -48.7 );
setRotateKey( spep_0-3 + 282, 1, -50.6 );
setRotateKey( spep_0-3 + 284, 1, -52.6 );
setRotateKey( spep_0-3 + 286, 1, -54.6 );
setRotateKey( spep_0-3 + 288, 1, -56.5 );

--敵の動き
setDisp( spep_0-3 + 320, 1, 1);
setDisp( spep_0-3 + 336, 1, 0);

changeAnime( spep_0-3 + 320, 1, 108);

setMoveKey( spep_0-3 + 320, 1, -473.7, 252.8 , 0 );
setMoveKey( spep_0-3 + 322, 1, -438.5, 242 , 0 );
setMoveKey( spep_0-3 + 324, 1, -383.9, 225.4 , 0 );
setMoveKey( spep_0-3 + 326, 1, -310.2, 202.8 , 0 );
setMoveKey( spep_0-3 + 328, 1, -217.2, 174.3 , 0 );
setMoveKey( spep_0-3 + 330, 1, -104.9, 140 , 0 );
setMoveKey( spep_0-3 + 332, 1, 26.6, 99.7 , 0 );
setMoveKey( spep_0-3 + 334, 1, 177.3, 53.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, 347.3, 1.6 , 0 );

setScaleKey( spep_0-3 + 320, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 322, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 324, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 326, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 328, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 330, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 332, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 334, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 336, 1, 0.1, 0.1 );

setRotateKey( spep_0-3 + 320, 1, 24 );
setRotateKey( spep_0-3 + 336, 1, 24 );

--敵の動き
setDisp( spep_0-3 + 438, 1, 1);
setDisp( spep_0-3 + 668, 1, 0);

changeAnime( spep_0-3 + 438, 1, 106);
changeAnime( spep_0-3 + 548, 1, 8);

setMoveKey( spep_0-3 + 438, 1, 173.4, 23.8 , 0 );
setMoveKey( spep_0-3 + 440, 1, 136.7, 17.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, 100, 12.1 , 0 );
setMoveKey( spep_0-3 + 444, 1, 63.3, 6.2 , 0 );
setMoveKey( spep_0-3 + 446, 1, 26.7, 0.4 , 0 );
setMoveKey( spep_0-3 + 448, 1, -10, -5.5 , 0 );
setMoveKey( spep_0-3 + 450, 1, -46.7, -11.3 , 0 );
setMoveKey( spep_0-3 + 452, 1, -44.4, -10.3 , 0 );
setMoveKey( spep_0-3 + 454, 1, -42.1, -9.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, -39.8, -8.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, -37.4, -7.4 , 0 );
setMoveKey( spep_0-3 + 460, 1, -35.1, -6.4 , 0 );
setMoveKey( spep_0-3 + 462, 1, -32.8, -5.4 , 0 );
setMoveKey( spep_0-3 + 464, 1, -30.5, -4.4 , 0 );
setMoveKey( spep_0-3 + 466, 1, -28.2, -3.5 , 0 );
setMoveKey( spep_0-3 + 468, 1, -25.9, -2.5 , 0 );
setMoveKey( spep_0-3 + 470, 1, -23.6, -1.5 , 0 );
setMoveKey( spep_0-3 + 472, 1, -21.3, -0.5 , 0 );
setMoveKey( spep_0-3 + 474, 1, -19, 0.5 , 0 );
setMoveKey( spep_0-3 + 476, 1, -16.7, 1.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, -14.4, 2.4 , 0 );
setMoveKey( spep_0-3 + 480, 1, -12.1, 3.4 , 0 );
setMoveKey( spep_0-3 + 482, 1, -9.7, 4.4 , 0 );
setMoveKey( spep_0-3 + 484, 1, -7.4, 5.4 , 0 );
setMoveKey( spep_0-3 + 486, 1, -5.1, 6.4 , 0 );
setMoveKey( spep_0-3 + 488, 1, -2.8, 7.4 , 0 );
setMoveKey( spep_0-3 + 489, 1, -2.8, 7.4 , 0 );
setMoveKey( spep_0-3 + 490, 1, -1156.7, 325.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -912, 280.3 , 0 );
setMoveKey( spep_0-3 + 494, 1, -665.3, 234.4 , 0 );
setMoveKey( spep_0-3 + 496, 1, -416.3, 188.1 , 0 );
setMoveKey( spep_0-3 + 498, 1, -165.3, 141.5 , 0 );
setMoveKey( spep_0-3 + 500, 1, -155.2, 140.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, -145, 140.4 , 0 );
setMoveKey( spep_0-3 + 504, 1, -134.8, 139.9 , 0 );
setMoveKey( spep_0-3 + 506, 1, -124.5, 139.3 , 0 );
setMoveKey( spep_0-3 + 508, 1, -114, 138.8 , 0 );
setMoveKey( spep_0-3 + 510, 1, -103.5, 138.2 , 0 );
setMoveKey( spep_0-3 + 512, 1, -92.9, 137.6 , 0 );
setMoveKey( spep_0-3 + 514, 1, -82.3, 137 , 0 );
setMoveKey( spep_0-3 + 516, 1, -79.2, 136.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, -75.7, 136.5 , 0 );
setMoveKey( spep_0-3 + 520, 1, -71.8, 136.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, -67.4, 135.6 , 0 );
setMoveKey( spep_0-3 + 524, 1, -62.6, 135 , 0 );
setMoveKey( spep_0-3 + 526, 1, -57.4, 134.3 , 0 );
setMoveKey( spep_0-3 + 528, 1, -51.7, 133.5 , 0 );
setMoveKey( spep_0-3 + 530, 1, -45.5, 132.6 , 0 );
setMoveKey( spep_0-3 + 532, 1, -38.9, 131.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, -31.9, 130.5 , 0 );
setMoveKey( spep_0-3 + 536, 1, -24.4, 129.3 , 0 );
setMoveKey( spep_0-3 + 538, 1, -16.4, 128 , 0 );
setMoveKey( spep_0-3 + 540, 1, -7.9, 126.6 , 0 );
setMoveKey( spep_0-3 + 542, 1, 1, 125.1 , 0 );
setMoveKey( spep_0-3 + 544, 1, 10.5, 123.4 , 0 );
setMoveKey( spep_0-3 + 546, 1, 20.4, 121.7 , 0 );
setMoveKey( spep_0-3 + 547, 1, 20.4, 121.7 , 0 );

setMoveKey( spep_0-3 + 548, 1, -82, 105.7 , 0 );
setMoveKey( spep_0-3 + 550, 1, -84.1, 109.5 , 0 );
setMoveKey( spep_0-3 + 552, 1, -92.6, 110.1 , 0 );
setMoveKey( spep_0-3 + 554, 1, -94.9, 104.4 , 0 );
setMoveKey( spep_0-3 + 556, 1, -103.8, 98.7 , 0 );
setMoveKey( spep_0-3 + 558, 1, -104.5, 99 , 0 );
setMoveKey( spep_0-3 + 560, 1, -114.9, 92.9 , 0 );
setMoveKey( spep_0-3 + 562, 1, -112.6, 93.2 , 0 );
setMoveKey( spep_0-3 + 564, 1, -119.9, 93.6 , 0 );
setMoveKey( spep_0-3 + 566, 1, -126, 88.1 , 0 );
setMoveKey( spep_0-3 + 568, 1, -144.6, 81.7 , 0 );
setMoveKey( spep_0-3 + 570, 1, -153.4, 80.8 , 0 );
setMoveKey( spep_0-3 + 572, 1, -174.8, 72.7 , 0 );
setMoveKey( spep_0-3 + 574, 1, -192.9, 70.2 , 0 );
setMoveKey( spep_0-3 + 576, 1, -226.9, 51.2 , 0 );
setMoveKey( spep_0-3 + 578, 1, -242.2, 73.9 , 0 );
setMoveKey( spep_0-3 + 580, 1, -259.1, 89.4 , 0 );
setMoveKey( spep_0-3 + 582, 1, -265.1, 94.3 , 0 );
setMoveKey( spep_0-3 + 584, 1, -267.9, 90.8 , 0 );
setMoveKey( spep_0-3 + 586, 1, -264.3, 93.6 , 0 );
setMoveKey( spep_0-3 + 588, 1, -267, 93.3 , 0 );
setMoveKey( spep_0-3 + 590, 1, -263.4, 92.9 , 0 );
setMoveKey( spep_0-3 + 592, 1, -266.2, 89.3 , 0 );
setMoveKey( spep_0-3 + 594, 1, -262.6, 92.2 , 0 );
setMoveKey( spep_0-3 + 596, 1, -268.5, 95 , 0 );
setMoveKey( spep_0-3 + 598, 1, -261.7, 91.5 , 0 );
setMoveKey( spep_0-3 + 600, 1, -264.5, 87.9 , 0 );
setMoveKey( spep_0-3 + 602, 1, -260.8, 90.8 , 0 );
setMoveKey( spep_0-3 + 604, 1, -263.6, 93.6 , 0 );
setMoveKey( spep_0-3 + 606, 1, -259.9, 90.1 , 0 );
setMoveKey( spep_0-3 + 608, 1, -265.9, 86.5 , 0 );
setMoveKey( spep_0-3 + 610, 1, -259.1, 89.3 , 0 );
setMoveKey( spep_0-3 + 612, 1, -261.8, 82.6 , 0 );
setMoveKey( spep_0-3 + 614, 1, -258.2, 88.6 , 0 );
setMoveKey( spep_0-3 + 616, 1, -264.1, 85.1 , 0 );
setMoveKey( spep_0-3 + 618, 1, -257.3, 87.9 , 0 );
setMoveKey( spep_0-3 + 620, 1, -260, 81.2 , 0 );
setMoveKey( spep_0-3 + 622, 1, -256.4, 87.2 , 0 );
setMoveKey( spep_0-3 + 624, 1, -262.3, 90 , 0 );
setMoveKey( spep_0-3 + 626, 1, -255.4, 86.5 , 0 );
setMoveKey( spep_0-3 + 628, 1, -258.2, 79.7 , 0 );
setMoveKey( spep_0-3 + 630, 1, -254.5, 85.8 , 0 );
setMoveKey( spep_0-3 + 632, 1, -260.5, 82.2 , 0 );
setMoveKey( spep_0-3 + 634, 1, -253.6, 85.1 , 0 );
setMoveKey( spep_0-3 + 636, 1, -256.3, 78.3 , 0 );
setMoveKey( spep_0-3 + 638, 1, -252.7, 84.3 , 0 );
setMoveKey( spep_0-3 + 640, 1, -258.6, 87.2 , 0 );
setMoveKey( spep_0-3 + 642, 1, -251.7, 83.6 , 0 );
setMoveKey( spep_0-3 + 644, 1, -257.6, 80.1 , 0 );
setMoveKey( spep_0-3 + 646, 1, -250.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 648, 1, -253.5, 76.1 , 0 );
setMoveKey( spep_0-3 + 650, 1, -249.8, 82.2 , 0 );
setMoveKey( spep_0-3 + 652, 1, -252.5, 85 , 0 );
setMoveKey( spep_0-3 + 654, 1, -248.8, 81.5 , 0 );
setMoveKey( spep_0-3 + 656, 1, -251.6, 77.9 , 0 );
setMoveKey( spep_0-3 + 658, 1, -247.9, 80.7 , 0 );
setMoveKey( spep_0-3 + 660, 1, -250.6, 83.6 , 0 );
setMoveKey( spep_0-3 + 662, 1, -246.9, 80 , 0 );
setMoveKey( spep_0-3 + 664, 1, -249.6, 76.4 , 0 );
setMoveKey( spep_0-3 + 666, 1, -245.9, 79.3 , 0 );
setMoveKey( spep_0-3 + 668, 1, -248.6, 75.7 , 0 );

setScaleKey( spep_0-3 + 438, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 488, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 489, 1, 0.17, 0.17 );

setScaleKey( spep_0-3 + 490, 1,3.2,3.2);
setScaleKey( spep_0-3 + 492, 1,2.74,2.74);
setScaleKey( spep_0-3 + 494, 1,2.29,2.29);
setScaleKey( spep_0-3 + 496, 1,1.84,1.84);
setScaleKey( spep_0-3 + 498, 1,1.39,1.39);
setScaleKey( spep_0-3 + 500, 1,1.38,1.38);
setScaleKey( spep_0-3 + 502, 1,1.36,1.36);
setScaleKey( spep_0-3 + 504, 1,1.35,1.35);
setScaleKey( spep_0-3 + 506, 1,1.34,1.34);
setScaleKey( spep_0-3 + 508, 1,1.32,1.32);
setScaleKey( spep_0-3 + 510, 1,1.3,1.3);
setScaleKey( spep_0-3 + 512, 1,1.29,1.29);
setScaleKey( spep_0-3 + 514, 1,1.28,1.28);
setScaleKey( spep_0-3 + 516, 1,1.32,1.32);
setScaleKey( spep_0-3 + 518, 1,1.35,1.35);
setScaleKey( spep_0-3 + 520, 1,1.4,1.4);
setScaleKey( spep_0-3 + 522, 1,1.45,1.45);
setScaleKey( spep_0-3 + 524, 1,1.49,1.49);
setScaleKey( spep_0-3 + 526, 1,1.54,1.54);
setScaleKey( spep_0-3 + 528, 1,1.6,1.6);
setScaleKey( spep_0-3 + 530, 1,1.66,1.66);
setScaleKey( spep_0-3 + 532, 1,1.73,1.73);
setScaleKey( spep_0-3 + 534, 1,1.79,1.79);
setScaleKey( spep_0-3 + 536, 1,1.88,1.88);
setScaleKey( spep_0-3 + 538, 1,1.95,1.95);
setScaleKey( spep_0-3 + 540, 1,2.03,2.03);
setScaleKey( spep_0-3 + 542, 1,2.11,2.11);
setScaleKey( spep_0-3 + 544, 1,2.21,2.21);
setScaleKey( spep_0-3 + 546, 1,2.29,2.29);
setScaleKey( spep_0-3 + 547, 1,2.29,2.29);

setScaleKey( spep_0-3 + 548, 1, 2.47,2.47);
setScaleKey( spep_0-3 + 550, 1, 2.53,2.53);
setScaleKey( spep_0-3 + 552, 1, 2.58,2.58);
setScaleKey( spep_0-3 + 554, 1, 2.62,2.62);
setScaleKey( spep_0-3 + 556, 1, 2.67,2.67);
setScaleKey( spep_0-3 + 558, 1, 2.73,2.73);
setScaleKey( spep_0-3 + 560, 1, 2.79,2.79);
setScaleKey( spep_0-3 + 562, 1, 2.85,2.85);
setScaleKey( spep_0-3 + 564, 1, 2.91,2.91);
setScaleKey( spep_0-3 + 566, 1, 3.08,3.08);
setScaleKey( spep_0-3 + 568, 1, 3.32,3.32);
setScaleKey( spep_0-3 + 570, 1, 3.61,3.61);
setScaleKey( spep_0-3 + 572, 1, 3.96,3.96);
setScaleKey( spep_0-3 + 574, 1, 4.36,4.36);
setScaleKey( spep_0-3 + 576, 1, 6.07,6.07);
setScaleKey( spep_0-3 + 578, 1, 4.71,4.71);
setScaleKey( spep_0-3 + 580, 1, 3.69,3.69);
setScaleKey( spep_0-3 + 582, 1, 3.01,3.01);
setScaleKey( spep_0-3 + 584, 1, 3,3);
setScaleKey( spep_0-3 + 586, 1, 2.98,2.98);
setScaleKey( spep_0-3 + 588, 1, 2.97,2.97);
setScaleKey( spep_0-3 + 590, 1, 2.96,2.96);
setScaleKey( spep_0-3 + 592, 1, 2.95,2.95);
setScaleKey( spep_0-3 + 594, 1, 2.94,2.94);
setScaleKey( spep_0-3 + 596, 1, 2.92,2.92);
setScaleKey( spep_0-3 + 598, 1, 2.91,2.91);
setScaleKey( spep_0-3 + 600, 1, 2.9,2.9);
setScaleKey( spep_0-3 + 602, 1, 2.89,2.89);
setScaleKey( spep_0-3 + 604, 1, 2.88,2.88);
setScaleKey( spep_0-3 + 606, 1, 2.86,2.86);
setScaleKey( spep_0-3 + 608, 1, 2.85,2.85);
setScaleKey( spep_0-3 + 610, 1, 2.84,2.84);
setScaleKey( spep_0-3 + 612, 1, 2.83,2.83);
setScaleKey( spep_0-3 + 614, 1, 2.82,2.82);
setScaleKey( spep_0-3 + 616, 1, 2.8,2.8);
setScaleKey( spep_0-3 + 618, 1, 2.79,2.79);
setScaleKey( spep_0-3 + 620, 1, 2.78,2.78);
setScaleKey( spep_0-3 + 622, 1, 2.77,2.77);
setScaleKey( spep_0-3 + 624, 1, 2.76,2.76);
setScaleKey( spep_0-3 + 626, 1, 2.76,2.76);
setScaleKey( spep_0-3 + 628, 1, 2.74,2.74);
setScaleKey( spep_0-3 + 630, 1, 2.73,2.73);
setScaleKey( spep_0-3 + 632, 1, 2.72,2.72);
setScaleKey( spep_0-3 + 634, 1, 2.71,2.71);
setScaleKey( spep_0-3 + 636, 1, 2.7,2.7);
setScaleKey( spep_0-3 + 638, 1, 2.68,2.68);
setScaleKey( spep_0-3 + 640, 1, 2.67,2.67);
setScaleKey( spep_0-3 + 642, 1, 2.66,2.66);
setScaleKey( spep_0-3 + 644, 1, 2.65,2.65);
setScaleKey( spep_0-3 + 646, 1, 2.64,2.64);
setScaleKey( spep_0-3 + 648, 1, 2.62,2.62);
setScaleKey( spep_0-3 + 650, 1, 2.61,2.61);
setScaleKey( spep_0-3 + 652, 1, 2.6,2.6);
setScaleKey( spep_0-3 + 654, 1, 2.59,2.59);
setScaleKey( spep_0-3 + 656, 1, 2.58,2.58);
setScaleKey( spep_0-3 + 658, 1, 2.56,2.56);
setScaleKey( spep_0-3 + 660, 1, 2.55,2.55);
setScaleKey( spep_0-3 + 662, 1, 2.54,2.54);
setScaleKey( spep_0-3 + 664, 1, 2.53,2.53);
setScaleKey( spep_0-3 + 666, 1, 2.52,2.52);
setScaleKey( spep_0-3 + 668, 1, 2.5,2.5);

setRotateKey( spep_0-3 + 438, 1, -1.7 );
setRotateKey( spep_0-3 + 440, 1, 0.2 );
setRotateKey( spep_0-3 + 442, 1, 2.2 );
setRotateKey( spep_0-3 + 444, 1, 4.1 );
setRotateKey( spep_0-3 + 446, 1, 6.1 );
setRotateKey( spep_0-3 + 448, 1, 8 );
setRotateKey( spep_0-3 + 450, 1, 9.9 );
setRotateKey( spep_0-3 + 452, 1, 10.6 );
setRotateKey( spep_0-3 + 454, 1, 11.2 );
setRotateKey( spep_0-3 + 456, 1, 11.9 );
setRotateKey( spep_0-3 + 458, 1, 12.5 );
setRotateKey( spep_0-3 + 460, 1, 13.2 );
setRotateKey( spep_0-3 + 462, 1, 13.8 );
setRotateKey( spep_0-3 + 464, 1, 14.5 );
setRotateKey( spep_0-3 + 466, 1, 15.1 );
setRotateKey( spep_0-3 + 468, 1, 15.8 );
setRotateKey( spep_0-3 + 470, 1, 16.4 );
setRotateKey( spep_0-3 + 472, 1, 17.1 );
setRotateKey( spep_0-3 + 474, 1, 17.7 );
setRotateKey( spep_0-3 + 476, 1, 18.4 );
setRotateKey( spep_0-3 + 478, 1, 19.1 );
setRotateKey( spep_0-3 + 480, 1, 19.7 );
setRotateKey( spep_0-3 + 482, 1, 20.4 );
setRotateKey( spep_0-3 + 484, 1, 21 );
setRotateKey( spep_0-3 + 486, 1, 21.7 );
setRotateKey( spep_0-3 + 488, 1, 22.3 );
setRotateKey( spep_0-3 + 489, 1, 22.3 );
setRotateKey( spep_0-3 + 490, 1, 0.8 );
setRotateKey( spep_0-3 + 492, 1, 4.4 );
setRotateKey( spep_0-3 + 494, 1, 7.9 );
setRotateKey( spep_0-3 + 496, 1, 11.5 );
setRotateKey( spep_0-3 + 498, 1, 15 );
setRotateKey( spep_0-3 + 500, 1, 15.2 );
setRotateKey( spep_0-3 + 502, 1, 15.3 );
setRotateKey( spep_0-3 + 504, 1, 15.4 );
setRotateKey( spep_0-3 + 506, 1, 15.5 );
setRotateKey( spep_0-3 + 508, 1, 15.7 );
setRotateKey( spep_0-3 + 510, 1, 15.8 );
setRotateKey( spep_0-3 + 512, 1, 15.9 );
setRotateKey( spep_0-3 + 514, 1, 16.1 );
setRotateKey( spep_0-3 + 520, 1, 16.1 );
setRotateKey( spep_0-3 + 522, 1, 16.2 );
setRotateKey( spep_0-3 + 526, 1, 16.2 );
setRotateKey( spep_0-3 + 528, 1, 16.3 );
setRotateKey( spep_0-3 + 532, 1, 16.3 );
setRotateKey( spep_0-3 + 534, 1, 16.4 );
setRotateKey( spep_0-3 + 536, 1, 16.4 );
setRotateKey( spep_0-3 + 538, 1, 16.5 );
setRotateKey( spep_0-3 + 540, 1, 16.5 );
setRotateKey( spep_0-3 + 542, 1, 16.6 );
setRotateKey( spep_0-3 + 544, 1, 16.6 );
setRotateKey( spep_0-3 + 546, 1, 16.7 );
setRotateKey( spep_0-3 + 547, 1, 16.7 );

setRotateKey( spep_0-3 + 548, 1, 13.1 );
setRotateKey( spep_0-3 + 550, 1, 12.5 );
setRotateKey( spep_0-3 + 552, 1, 11.9 );
setRotateKey( spep_0-3 + 554, 1, 11.4 );
setRotateKey( spep_0-3 + 556, 1, 10.8 );
setRotateKey( spep_0-3 + 558, 1, 10.8 );
setRotateKey( spep_0-3 + 560, 1, 10.7 );
setRotateKey( spep_0-3 + 562, 1, 10.6 );
setRotateKey( spep_0-3 + 564, 1, 10.5 );
setRotateKey( spep_0-3 + 566, 1, 10.4 );
setRotateKey( spep_0-3 + 568, 1, 10.4 );
setRotateKey( spep_0-3 + 570, 1, 10.3 );
setRotateKey( spep_0-3 + 572, 1, 10.2 );
setRotateKey( spep_0-3 + 574, 1, 10.1 );
setRotateKey( spep_0-3 + 576, 1, 16 );
setRotateKey( spep_0-3 + 604, 1, 16 );
setRotateKey( spep_0-3 + 606, 1, 15.9 );
setRotateKey( spep_0-3 + 638, 1, 15.9 );
setRotateKey( spep_0-3 + 640, 1, 15.8 );
setRotateKey( spep_0-3 + 668, 1, 15.8 );

--顔カットインのタイミング指定
spep_x=spep_0 +572;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--正面ダッシュ
SE006 = playSe( spep_0 + 44, 1072 );
stopSe( spep_0 + 80, SE004, 36 );
stopSe( spep_0 + 80, SE005, 16 );

--エルボー
SE007 = playSe( spep_0 + 96, 1189 );
SE008 = playSe( spep_0 + 100, 1009 );
SE009 = playSe( spep_0 + 100, 1049 );
setSeVolumeByWorkId( spep_0 + 100, SE009, 80 );
stopSe( spep_0 + 128, SE009, 16 );
SE010 = playSe( spep_0 + 100, 1120 );
setSeVolumeByWorkId( spep_0 + 100, SE010, 85 );

--左パンチ
SE011 = playSe( spep_0 + 154, 1003 );
SE012 = playSe( spep_0 + 160, 1110 );
SE013 = playSe( spep_0 + 160, 1010 );
SE014 = playSe( spep_0 + 162, 1000 );

--瞬間移動
SE015 = playSe( spep_0 + 196, 1109 );

--キック
SE016 = playSe( spep_0 + 252, 1188 );
setSeVolumeByWorkId( spep_0 + 252, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 253, SE016, 12.5 );
setSeVolumeByWorkId( spep_0 + 254, SE016, 25 );
setSeVolumeByWorkId( spep_0 + 255, SE016, 37.5 );
setSeVolumeByWorkId( spep_0 + 256, SE016, 50 );
setSeVolumeByWorkId( spep_0 + 257, SE016, 62.5 );
setSeVolumeByWorkId( spep_0 + 258, SE016, 75 );
setSeVolumeByWorkId( spep_0 + 259, SE016, 87.5 );
setSeVolumeByWorkId( spep_0 + 260, SE016, 100 );
setStartTimeMs( SE016,  333 );
SE017 = playSe( spep_0 + 244, 1004 );
stopSe( spep_0 + 268 -10, SE017,8 );
SE018 = playSe( spep_0 + 252, 1187 );
setSeVolumeByWorkId( spep_0 + 252, SE018, 71 );
SE019 = playSe( spep_0 + 254, 1052 );
setSeVolumeByWorkId( spep_0 + 254, SE019, 66 );
SE020 = playSe( spep_0 + 256, 1011 );
setSeVolumeByWorkId( spep_0 + 256, SE020, 108 );
SE021 = playSe( spep_0 + 262, 1109 );
stopSe( spep_0 + 278, SE021, 14 );

--敵飛んでいく
SE022 = playSe( spep_0 + 268, 1121 );
setSeVolumeByWorkId( spep_0 + 268, SE022, 47 );
stopSe( spep_0 + 340, SE022, 20 );
SE023 = playSe( spep_0 + 268, 1183 );
stopSe( spep_0 + 340, SE023, 20 );

--地面えぐられる
SE024 = playSe( spep_0 + 338, 1159 );
stopSe( spep_0 + 436, SE024, 10 );
SE025 = playSe( spep_0 + 352, 1044 );
setSeVolumeByWorkId( spep_0 + 352, SE025, 158 );
stopSe( spep_0 + 436, SE025, 10 );

--崖から飛び出す
SE026 = playSe( spep_0 + 436, 1027 );
SE027 = playSe( spep_0 + 436, 1183 );
setSeVolumeByWorkId( spep_0 + 436, SE027, 64 );
stopSe( spep_0 + 504, SE027, 18 );

--瞬間移動
SE028 = playSe( spep_0 + 500, 1109 );

--気弾溜め
SE029 = playSe( spep_0 + 512, 1273 );
setSeVolumeByWorkId( spep_0 + 512, SE029, 112 );
setPitch( spep_0 + 512, SE029, 100 );
setTimeStretch( SE029, 1.07, 30, 5 );
SE030 = playSe( spep_0 + 512, 1274 ,"",0.6);
setTimeStretch( SE030, 1.25, 10, 1 );
SE031 = playSe( spep_0 + 532, 1275 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 532, SE031, 184 );
setTimeStretch( SE031, 1.26, 30, 5 );
SE032 = playSe( spep_0 + 532, 1271 ,"",0.6);
setPitch( spep_0 + 532, SE032, 800 );
setTimeStretch( SE032, 1.53, 10, 1 );

--気弾敵に押し付ける
SE033 = playSe( spep_0 + 546, 1312 );
SE034 = playSe( spep_0 + 546, 1240 );
setPitch( spep_0 + 546, SE034, -100 );
setTimeStretch( SE034, 0.93, 10, 1 );

--顔カットイン
--SE035 = playSe( spep_x +12, 1018 );


--白フェード
entryFade( spep_0 + 664, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+670;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾溜め
stopSe( spep_1 + 8, SE031, 6 );
stopSe( spep_1 + 8, SE032, 6 );
stopSe( spep_1 + 8, SE033, 6 );
stopSe( spep_1 + 8, SE034, 6 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- カードカットイン後
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-3 + 26, 1, 0);

changeAnime( spep_2 + 0, 1, 8);

setMoveKey( spep_2 + 0, 1, -154, 171.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -159.8, 177.6 , 0 );
setMoveKey( spep_2-3 + 4, 1, -165.7, 183.4 , 0 );
setMoveKey( spep_2-3 + 6, 1, -171.7, 189.2 , 0 );
setMoveKey( spep_2-3 + 8, 1, -177.6, 195.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, -183.6, 200.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, -189.6, 206.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, -195.6, 212.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, -195.6, 212.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, -268.5, 266.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, -268.5, 266.1 , 0 );
setMoveKey( spep_2-3 + 24, 1, -562.2, 397.5 , 0 );
setMoveKey( spep_2-3 + 26, 1, -538.2, 394.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 4, 1, 2.55,2.55);
setScaleKey( spep_2-3 + 6, 1, 2.58,2.58);
setScaleKey( spep_2-3 + 8, 1, 2.6,2.6);
setScaleKey( spep_2-3 + 10, 1, 2.64,2.64);
setScaleKey( spep_2-3 + 12, 1, 2.66,2.66);
setScaleKey( spep_2-3 + 14, 1, 2.68,2.68);
setScaleKey( spep_2-3 + 18, 1, 2.68,2.68);
setScaleKey( spep_2-3 + 20, 1, 3.33,3.33);
setScaleKey( spep_2-3 + 22, 1, 3.33,3.33);
setScaleKey( spep_2-3 + 24, 1, 2.83,2.83);
setScaleKey( spep_2-3 + 26, 1, 2.78,2.78);

setRotateKey( spep_2 + 0, 1, 16 );
setRotateKey( spep_2-3 + 26, 1, 16 );

--敵の動き
setDisp( spep_2-3 + 92, 1, 1);
setDisp( spep_2-1 + 126, 1, 0);

changeAnime( spep_2 + 92, 1, 8);

setMoveKey( spep_2-3 + 92, 1, 266.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 93, 1, 266.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 266, -100.9 , 0 );
setMoveKey( spep_2-3 + 95, 1, 266, -100.9 , 0 );
setMoveKey( spep_2-3 + 96, 1, 176.6, -71.2 , 0 );
setMoveKey( spep_2-3 + 97, 1, 176.6, -71.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 176.1, -71.5 , 0 );
setMoveKey( spep_2-3 + 99, 1, 176.1, -71.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 149.8, -68.8 , 0 );
setMoveKey( spep_2-3 + 101, 1, 149.8, -68.8 , 0 );
setMoveKey( spep_2-3 + 102, 1, 149.3, -69.1 , 0 );
setMoveKey( spep_2-3 + 103, 1, 149.3, -69.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, 92.6, -75.1 , 0 );
setMoveKey( spep_2-3 + 105, 1, 92.6, -75.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, 92.5, -75.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 92.5, -75.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 58.3, -93.4 , 0 );
setMoveKey( spep_2-3 + 109, 1, 58.3, -93.4 , 0 );
setMoveKey( spep_2-3 + 110, 1, 58.5, -93.6 , 0 );
setMoveKey( spep_2-3 + 111, 1, 58.5, -93.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 32.2, -98 , 0 );
setMoveKey( spep_2-3 + 113, 1, 32.2, -98 , 0 );
setMoveKey( spep_2-3 + 114, 1, 32.7, -98.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 32.7, -98.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, -1, -113.7 , 0 );
setMoveKey( spep_2-3 + 117, 1, -1, -113.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, -0.2, -113.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, -0.2, -113.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, -10.5, -140 , 0 );
setMoveKey( spep_2-3 + 121, 1, -10.5, -140 , 0 );
setMoveKey( spep_2-3 + 122, 1, -9.5, -139.7 , 0 );
setMoveKey( spep_2-3 + 123, 1, -9.5, -139.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, -19.7, -165.3 , 0 );
setMoveKey( spep_2-3 + 125, 1, -19.7, -165.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, -18.6, -164.8 , 0 );
setMoveKey( spep_2-1 + 126, 1, -18.6, -164.8 , 0 );

setScaleKey( spep_2-3 + 92, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 93, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 94, 1, 3.62, 3.62 );
setScaleKey( spep_2-3 + 95, 1, 3.62, 3.62 );
setScaleKey( spep_2-3 + 96, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 97, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 98, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 99, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 100, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 101, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 102, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 103, 1, 2.26, 2.26 );
setScaleKey( spep_2-3 + 104, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 105, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 106, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 107, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 111, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 113, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 114, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 115, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 116, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 117, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 118, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 119, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 120, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 122, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 123, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 124, 1, 0.21, 0.21 );
setScaleKey( spep_2-1 + 126, 1, 0.21, 0.21 );


setRotateKey( spep_2-3 + 92, 1, -29.1 );
setRotateKey( spep_2-3 + 94, 1, -29.1 );
setRotateKey( spep_2-3 + 96, 1, -29.6 );
setRotateKey( spep_2-3 + 98, 1, -29.6 );
setRotateKey( spep_2-3 + 100, 1, -29 );
setRotateKey( spep_2-3 + 106, 1, -29 );
setRotateKey( spep_2-3 + 108, 1, -29.5 );
setRotateKey( spep_2-3 + 114, 1, -29.5 );
setRotateKey( spep_2-3 + 116, 1, -30.2 );
setRotateKey( spep_2-3 + 122, 1, -30.2 );
setRotateKey( spep_2-3 + 124, 1, -32.6 );
setRotateKey( spep_2-1 + 126, 1, -32.6 );

--SE
--気弾発射
SE037 = playSe( spep_2 + 22, 1027 );
setSeVolumeByWorkId( spep_2 + 22, SE037, 76 );
SE038 = playSe( spep_2 + 22, 1177 );
setSeVolumeByWorkId( spep_2 + 22, SE038, 79 );
stopSe( spep_2 + 138, SE038, 12 );
SE039 = playSe( spep_2 + 22, 1193 );
setSeVolumeByWorkId( spep_2 + 22, SE039, 138 );
stopSe( spep_2 + 138, SE039, 12 );
SE040 = playSe( spep_2 + 22, 1284 );
setSeVolumeByWorkId( spep_2 + 22, SE040, 60 );
stopSe( spep_2 + 138, SE040, 12 );

--気弾飛んでいく
SE041 = playSe( spep_2 + 90, 1202 );
setSeVolumeByWorkId( spep_2 + 90, SE041, 81 );
stopSe( spep_2 + 134, SE041, 12 );
SE042 = playSe( spep_2 + 90, 1304 );
setSeVolumeByWorkId( spep_2 + 90, SE042, 86 );
stopSe( spep_2 + 134, SE042, 12 );

--地面着弾
SE043 = playSe( spep_2 + 126, 1159 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 126, SE043, 81 );
SE044 = playSe( spep_2 + 126, 1024 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 126, SE044, 85 );

--ラスト爆発
SE045 = playSe( spep_2 + 154, 1067 );
setSeVolumeByWorkId( spep_2 + 154, SE045, 83 );
SE046 = playSe( spep_2 + 154, 1145 );
setSeVolumeByWorkId( spep_2 + 154, SE046, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +170 );
endPhase( spep_2 + 270 );
end