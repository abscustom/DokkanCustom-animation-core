--1022900:ピッコロ_魔貫光殺砲
--sp_effect_b1_00169
--sp2242

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
SP_01=	158347	;--	敵を抑える
SP_02=	158348	;--	敵を抑える
SP_03=	158349	;--	悟空が踏ん張る
SP_04=	158350	;--	悟空が踏ん張る
SP_05=	158351	;--	ピッコロがためる
SP_06=	158352	;--	悟空が叫ぶ
SP_07=	158353	;--	悟空が叫ぶ
SP_08=	158354	;--	ビームが当たる
SP_09=	158355	;--	ビームが当たる
SP_10=	158356	;--	悟空に貫通する
SP_11=	158357	;--	悟空に貫通する
SP_12=	158358	;--	フィニッシュ
SP_13=	158359	;--	フィニッシュ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵を抑える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
suppress_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, suppress_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, suppress_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, suppress_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, suppress_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, suppress_f, 0 );
setEffRotateKey( spep_0 + 96, suppress_f, 0 );
setEffAlphaKey( spep_0 + 0, suppress_f, 255 );
setEffAlphaKey( spep_0 + 94, suppress_f, 255 );
setEffAlphaKey( spep_0 + 95, suppress_f, 255 );
setEffAlphaKey( spep_0 + 96, suppress_f, 0 );

-- ** エフェクト等 ** --
suppress_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, suppress_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, suppress_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, suppress_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, suppress_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, suppress_b, 0 );
setEffRotateKey( spep_0 + 96, suppress_b, 0 );
setEffAlphaKey( spep_0 + 0, suppress_b, 255 );
setEffAlphaKey( spep_0 + 94, suppress_b, 255 );
setEffAlphaKey( spep_0 + 95, suppress_b, 255 );
setEffAlphaKey( spep_0 + 96, suppress_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 100 );

a=10;
b=20;

setMoveKey( spep_0 + 0, 1, -58.8+a, 20.3+b , 0 );
--setMoveKey( spep_0-3 + 2, 1, -58.6, 20.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, -58.4+a, 20.5+b , 0 );
setMoveKey( spep_0-3 + 5, 1, -58.4+a, 20.5+b , 0 );
setMoveKey( spep_0-3 + 6, 1, -58.3+a, 20.7+b , 0 );
setMoveKey( spep_0-3 + 7, 1, -58.3+a, 20.7+b , 0 );
setMoveKey( spep_0-3 + 8, 1, -58.1+a, 20.9+b , 0 );
setMoveKey( spep_0-3 + 9, 1, -58.1+a, 20.9+b , 0 );
setMoveKey( spep_0-3 + 10, 1, -57.9+a, 21.1+b , 0 );
setMoveKey( spep_0-3 + 12, 1, -57.7+a, 21.3+b , 0 );
setMoveKey( spep_0-3 + 14, 1, -57.6+a, 21.5+b , 0 );
setMoveKey( spep_0-3 + 16, 1, -57.4+a, 21.6+b , 0 );
setMoveKey( spep_0-3 + 18, 1, -57.3+a, 21.8+b , 0 );
setMoveKey( spep_0-3 + 20, 1, -57.1+a, 22+b , 0 );
setMoveKey( spep_0-3 + 22, 1, -57+a, 22.2+b , 0 );
setMoveKey( spep_0-3 + 24, 1, -56.8+a, 22.3+b , 0 );
setMoveKey( spep_0-3 + 26, 1, -56.6+a, 22.5+b , 0 );
setMoveKey( spep_0-3 + 28, 1, -56.5+a, 22.7+b , 0 );
setMoveKey( spep_0-3 + 30, 1, -56.3+a, 22.9+b , 0 );
setMoveKey( spep_0-3 + 32, 1, -56.2+a, 23+b , 0 );
setMoveKey( spep_0-3 + 34, 1, -55.9+a, 23.2+b , 0 );
setMoveKey( spep_0-3 + 36, 1, -55.8+a, 23.4+b , 0 );
setMoveKey( spep_0-3 + 38, 1, -55.6+a, 23.6+b , 0 );
setMoveKey( spep_0-3 + 40, 1, -55.5+a, 23.7+b , 0 );

setScaleKey( spep_0 + 0, 1, 1.56,1.56);
setScaleKey( spep_0 + 1, 1, 1.56,1.56);
setScaleKey( spep_0 + 2, 1, 1.56,1.56);
setScaleKey( spep_0 + 3, 1, 1.56,1.56);
setScaleKey( spep_0 + 4, 1, 1.56,1.56);
setScaleKey( spep_0 + 5, 1, 1.56,1.56);
setScaleKey( spep_0 + 6, 1, 1.56,1.56);
setScaleKey( spep_0-3 + 20, 1, 1.56,1.56);
setScaleKey( spep_0-3 + 40, 1, 1.62,1.62);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 40, 1, 0 );

--SE
--瞬間移動
SE001 = playSeVer2( spep_0 + 2, 1109, "", 0, 0, 0, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, -55.5+a, 23.7+b , 0 );

    setScaleKey( SP_dodge + 9, 1, 1.62,1.62);

    setRotateKey( SP_dodge + 9, 1, 0 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
changeAnime( spep_0-3 + 60, 1, 106 );

setMoveKey( spep_0-3 + 42, 1, -55.3+a, 23.9+b , 0 );
setMoveKey( spep_0-3 + 44, 1, -55.2+a, 24.1+b , 0 );
setMoveKey( spep_0-3 + 46, 1, -55+a, 24.3+b , 0 );
setMoveKey( spep_0-3 + 48, 1, -54.2+a, 26+b , 0 );
setMoveKey( spep_0-3 + 50, 1, -53.3+a, 27.7+b , 0 );
setMoveKey( spep_0-3 + 52, 1, -52.4+a, 29.4+b , 0 );
setMoveKey( spep_0-3 + 54, 1, -51.5+a, 31.2+b , 0 );
setMoveKey( spep_0-3 + 56, 1, -50.7+a, 32.9+b , 0 );
setMoveKey( spep_0-3 + 59, 1, -25.9+a, 54.8+b , 0 );

c=-40;
d=70;

setMoveKey( spep_0-3 + 60, 1, 9.1+c, -13+d , 0 );
setMoveKey( spep_0-3 + 62, 1, 6.8+c, 12.5+d , 0 );
setMoveKey( spep_0-3 + 64, 1, 5.4+c, 13.2+d , 0 );
setMoveKey( spep_0-3 + 66, 1, 5+c, 13.3+d , 0 );
setMoveKey( spep_0-3 + 68, 1, 5.1+c, 13+d , 0 );
setMoveKey( spep_0-3 + 70, 1, 5.2+c, 12.9+d , 0 );
setMoveKey( spep_0-3 + 72, 1, 5.5+c, 12.8+d , 0 );
setMoveKey( spep_0-3 + 74, 1, 5.9+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 76, 1, 6.3+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 78, 1, 6.9+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 80, 1, 7.6+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 82, 1, 8.4+c, 12.8+d , 0 );
setMoveKey( spep_0-3 + 84, 1, 9.3+c, 13+d , 0 );
setMoveKey( spep_0-3 + 86, 1, 10.3+c, 13.2+d , 0 );
setMoveKey( spep_0-3 + 88, 1, 11.4+c, 13.5+d , 0 );
setMoveKey( spep_0-3 + 90, 1, 12.6+c, 13.8+d , 0 );
setMoveKey( spep_0-3 + 92, 1, 13.9+c, 14.1+d , 0 );
setMoveKey( spep_0-3 + 94, 1, 15.3+c, 14.5+d , 0 );
setMoveKey( spep_0-3 + 96, 1, 16.9+c, 15+d , 0 );
setMoveKey( spep_0-3 + 98, 1, 18.6+c, 15.5+d , 0 );

setScaleKey( spep_0-3 + 50, 1, 1.68,1.68);
setScaleKey( spep_0-3 + 56, 1, 1.74,1.74);
setScaleKey( spep_0-3 + 59, 1, 1.8,1.8);

setScaleKey( spep_0-3 + 60, 1, 2.02,2.02);
setScaleKey( spep_0-3 + 66, 1, 2.09,2.09);
setScaleKey( spep_0-3 + 82, 1, 2.15,2.15);
setScaleKey( spep_0-3 + 98, 1, 2.22,2.22);

setRotateKey( spep_0-3 + 59, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, -46.8 );
setRotateKey( spep_0-3 + 62, 1, -45.4 );
setRotateKey( spep_0-3 + 64, 1, -44.6 );
setRotateKey( spep_0-3 + 66, 1, -44.3 );
setRotateKey( spep_0-3 + 72, 1, -44.3 );
setRotateKey( spep_0-3 + 74, 1, -44.2 );
setRotateKey( spep_0-3 + 78, 1, -44.2 );
setRotateKey( spep_0-3 + 80, 1, -44.1 );
setRotateKey( spep_0-3 + 82, 1, -44.1 );
setRotateKey( spep_0-3 + 84, 1, -44 );
setRotateKey( spep_0-3 + 86, 1, -43.9 );
setRotateKey( spep_0-3 + 88, 1, -43.8 );
setRotateKey( spep_0-3 + 90, 1, -43.7 );
setRotateKey( spep_0-3 + 92, 1, -43.6 );
setRotateKey( spep_0-3 + 94, 1, -43.5 );
setRotateKey( spep_0-3 + 96, 1, -43.4 );
setRotateKey( spep_0-3 + 98, 1, -43.3 );

--SE
--敵捕まえる
SE002 = playSeVer2( spep_0 + 28, 1116, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 74 );
SE003 = playSeVer2( spep_0 + 54, 1012, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+96;
------------------------------------------------------
--悟空が踏ん張る
------------------------------------------------------
-- ** エフェクト等 ** --
straddle_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, straddle_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, straddle_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, straddle_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, straddle_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, straddle_f, 0 );
setEffRotateKey( spep_1 + 106, straddle_f, 0 );
setEffAlphaKey( spep_1 + 0, straddle_f, 255 );
setEffAlphaKey( spep_1 + 104, straddle_f, 255 );
setEffAlphaKey( spep_1 + 105, straddle_f, 255 );
setEffAlphaKey( spep_1 + 106, straddle_f, 0 );

-- ** エフェクト等 ** --
straddle_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, straddle_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, straddle_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, straddle_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, straddle_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, straddle_b, 0 );
setEffRotateKey( spep_1 + 106, straddle_b, 0 );
setEffAlphaKey( spep_1 + 0, straddle_b, 255 );
setEffAlphaKey( spep_1 + 104, straddle_b, 255 );
setEffAlphaKey( spep_1 + 105, straddle_b, 255 );
setEffAlphaKey( spep_1 + 106, straddle_b, 0 );

--敵の動き
setDisp( spep_1-3 + 68, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );

e=350;
f=220;

setMoveKey( spep_1 + 0, 1, 51+e, -1161.8+f , 0 );
--setMoveKey( spep_1-3 + 2, 1, 55.5, -1161.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 59.9+e, -1161.5+f , 0 );
setMoveKey( spep_1-3 + 6, 1, 43.2+e, -1168.4+f , 0 );
setMoveKey( spep_1-3 + 8, 1, 47.6+e, -1168.3+f , 0 );
setMoveKey( spep_1-3 + 10, 1, 52+e, -1168.2+f , 0 );
setMoveKey( spep_1-3 + 12, 1, 66.9+e, -1164.6+f , 0 );
setMoveKey( spep_1-3 + 14, 1, 81.7+e, -1161.1+f , 0 );
setMoveKey( spep_1-3 + 16, 1, 75.6+e, -1147+f , 0 );
setMoveKey( spep_1-3 + 18, 1, 74.7+e, -1157.4+f , 0 );
setMoveKey( spep_1-3 + 20, 1, 73.9+e, -1167.8+f , 0 );
setMoveKey( spep_1-3 + 22, 1, 88.8+e, -1164.2+f , 0 );
setMoveKey( spep_1-3 + 24, 1, 103.6+e, -1160.7+f , 0 );
setMoveKey( spep_1-3 + 26, 1, 97.5+e, -1146.6+f , 0 );
setMoveKey( spep_1-3 + 28, 1, 96.6+e, -1157+f , 0 );
setMoveKey( spep_1-3 + 30, 1, 95.8+e, -1167.4+f , 0 );
setMoveKey( spep_1-3 + 32, 1, 110.7+e, -1163.8+f , 0 );
setMoveKey( spep_1-3 + 34, 1, 125.5+e, -1160.3+f , 0 );
setMoveKey( spep_1-3 + 36, 1, 108.9+e, -1167.1+f , 0 );
setMoveKey( spep_1-3 + 38, 1, 113.3+e, -1167+f , 0 );
setMoveKey( spep_1-3 + 40, 1, 117.7+e, -1166.9+f , 0 );
setMoveKey( spep_1-3 + 42, 1, 132.6+e, -1163.4+f , 0 );
setMoveKey( spep_1-3 + 44, 1, 147.4+e, -1159.9+f , 0 );
setMoveKey( spep_1-3 + 46, 1, 141.3+e, -1145.8+f , 0 );
setMoveKey( spep_1-3 + 48, 1, 140.4+e, -1156.2+f , 0 );
setMoveKey( spep_1-3 + 50, 1, 139.6+e, -1166.5+f , 0 );
setMoveKey( spep_1-3 + 52, 1, 154.5+e, -1162.9+f , 0 );
setMoveKey( spep_1-3 + 54, 1, 169.3+e, -1159.5+f , 0 );
setMoveKey( spep_1-3 + 56, 1, 152.7+e, -1166.3+f , 0 );
setMoveKey( spep_1-3 + 58, 1, 157.1+e, -1166.2+f , 0 );
setMoveKey( spep_1-3 + 60, 1, 161.5+e, -1166.1+f , 0 );
setMoveKey( spep_1-3 + 62, 1, 812.3+e, -1121.4+f , 0 );
setMoveKey( spep_1-3 + 64, 1, 1462.9+e, -1076.9+f , 0 );
setMoveKey( spep_1-3 + 66, 1, 2092.6+e, -1021.7+f , 0 );
setMoveKey( spep_1-3 + 68, 1, 2081.6+e, -1030.3+f , 0 );

setScaleKey( spep_1 + 0, 1, 20.82,20.82);
setScaleKey( spep_1-3 + 66, 1, 20.82,20.82);
setScaleKey( spep_1-3 + 68, 1, 20.76,20.76);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 68, 1, 0 );

--SE
--悟空耐える
SE005 = playSeVer2( spep_1 + 0, 1330, "",spep_1 + 78, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 84 );

--ピッコロ溜める
SE006 = playSeVer2( spep_1 + 58, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 58, SE006, 81 );
SE007 = playSeVer2( spep_1 + 100, 1252, "",spep_1 + 216, 0, 18, -1);
SE008 = playSeVer2( spep_1 + 100, 1295, "",spep_1 + 216, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 100, SE008, 85 );
setPitch( spep_1 + 100, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_1 + 100, 1038, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 100, 1243, "",spep_1 + 216, 0, 18, -1);
SE011 = playSeVer2( spep_1 + 104, 1056, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+106;
------------------------------------------------------
--ピッコロがためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 84, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 82, tame, 255 );
setEffAlphaKey( spep_2 + 83, tame, 255 );
setEffAlphaKey( spep_2 + 84, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_2 -2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -100,  515);

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
--顔カットイン
SE012 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ピッコロ溜める
SE013 = playSeVer2( spep_2 + 46, 1148, "",spep_2 + 110, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_3=spep_2+84;
------------------------------------------------------
--悟空が叫ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
shout_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shout_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, shout_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shout_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, shout_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shout_f, 0 );
setEffRotateKey( spep_3 + 60, shout_f, 0 );
setEffAlphaKey( spep_3 + 0, shout_f, 255 );
setEffAlphaKey( spep_3 + 60, shout_f, 255 );

-- ** エフェクト等 ** --
shout_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shout_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, shout_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shout_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, shout_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shout_b, 0 );
setEffRotateKey( spep_3 + 60, shout_b, 0 );
setEffAlphaKey( spep_3 + 0, shout_b, 255 );
setEffAlphaKey( spep_3 + 60, shout_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 118 );

g=100;
h=220;

setMoveKey( spep_3 + 0, 1, 37.2+g, -981.9+h , 0 );
--setMoveKey( spep_3-3 + 2, 1, 37.2, -975.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 37.3+g, -999.5+h , 0 );
setMoveKey( spep_3-3 + 6, 1, 37.4+g, -982.5+h , 0 );
setMoveKey( spep_3-3 + 8, 1, 37.5+g, -1006.8+h , 0 );
setMoveKey( spep_3-3 + 10, 1, 37.6+g, -989.6+h , 0 );
setMoveKey( spep_3-3 + 12, 1, 37.7+g, -1014.1+h , 0 );
setMoveKey( spep_3-3 + 14, 1, 37.8+g, -996.8+h , 0 );
setMoveKey( spep_3-3 + 16, 1, 37.9+g, -1021.4+h , 0 );
setMoveKey( spep_3-3 + 18, 1, 38+g, -1004+h , 0 );
setMoveKey( spep_3-3 + 20, 1, 38.1+g, -1028.6+h , 0 );
setMoveKey( spep_3-3 + 22, 1, 38.2+g, -1011.2+h , 0 );
setMoveKey( spep_3-3 + 24, 1, 38.3+g, -1036+h , 0 );
setMoveKey( spep_3-3 + 26, 1, 38.4+g, -1018.4+h , 0 );
setMoveKey( spep_3-3 + 28, 1, 38.5+g, -1043.2+h , 0 );
setMoveKey( spep_3-3 + 30, 1, 38.6+g, -1025.5+h , 0 );
setMoveKey( spep_3-3 + 32, 1, 38.7+g, -1050.6+h , 0 );
setMoveKey( spep_3-3 + 34, 1, 38.8+g, -1032.8+h , 0 );
setMoveKey( spep_3-3 + 36, 1, 38.9+g, -1057.8+h , 0 );
setMoveKey( spep_3-3 + 38, 1, 39+g, -1039.9+h , 0 );
setMoveKey( spep_3-3 + 40, 1, 39.1+g, -1065.2+h , 0 );
setMoveKey( spep_3-3 + 42, 1, 39.2+g, -1047.1+h , 0 );
setMoveKey( spep_3-3 + 44, 1, 39.3+g, -1072.5+h , 0 );
setMoveKey( spep_3-3 + 46, 1, 39.4+g, -1054.3+h , 0 );
setMoveKey( spep_3-3 + 48, 1, 39.5+g, -1079.7+h , 0 );
setMoveKey( spep_3-3 + 50, 1, 39.6+g, -1061.5+h , 0 );
setMoveKey( spep_3-3 + 52, 1, 39.7+g, -1087.1+h , 0 );
setMoveKey( spep_3-3 + 54, 1, 39.8+g, -1068.7+h , 0 );
setMoveKey( spep_3-3 + 56, 1, 39.8+g, -1094.3+h , 0 );
setMoveKey( spep_3-3 + 58, 1, 39.9+g, -1075.9+h , 0 );

setScaleKey( spep_3 + 0, 1, 15.48,15.48);
setScaleKey( spep_3-3 + 4, 1, 15.54,15.54);
setScaleKey( spep_3-3 + 6, 1, 15.6,15.6);
setScaleKey( spep_3-3 + 8, 1, 15.66,15.66);
setScaleKey( spep_3-3 + 10, 1, 15.71,15.71);
setScaleKey( spep_3-3 + 12, 1, 15.71,15.71);
setScaleKey( spep_3-3 + 14, 1, 15.77,15.77);
setScaleKey( spep_3-3 + 16, 1, 15.83,15.83);
setScaleKey( spep_3-3 + 18, 1, 15.83,15.83);
setScaleKey( spep_3-3 + 20, 1, 15.89,15.89);
setScaleKey( spep_3-3 + 22, 1, 15.95,15.95);
setScaleKey( spep_3-3 + 24, 1, 15.95,15.95);
setScaleKey( spep_3-3 + 26, 1, 16,16);
setScaleKey( spep_3-3 + 28, 1, 16.06,16.06);
setScaleKey( spep_3-3 + 30, 1, 16.06,16.06);
setScaleKey( spep_3-3 + 32, 1, 16.12,16.12);
setScaleKey( spep_3-3 + 34, 1, 16.18,16.18);
setScaleKey( spep_3-3 + 36, 1, 16.18,16.18);
setScaleKey( spep_3-3 + 38, 1, 16.24,16.24);
setScaleKey( spep_3-3 + 40, 1, 16.29,16.29);
setScaleKey( spep_3-3 + 42, 1, 16.35,16.35);
setScaleKey( spep_3-3 + 44, 1, 16.35,16.35);
setScaleKey( spep_3-3 + 46, 1, 16.41,16.41);
setScaleKey( spep_3-3 + 48, 1, 16.47,16.47);
setScaleKey( spep_3-3 + 50, 1, 16.47,16.47);
setScaleKey( spep_3-3 + 52, 1, 16.53,16.53);
setScaleKey( spep_3-3 + 54, 1, 16.58,16.58);
setScaleKey( spep_3-3 + 56, 1, 16.58,16.58);
setScaleKey( spep_3-3 + 58, 1, 16.64,16.64);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 58, 1, 0 );

--SE
--悟空叫ぶ
SE014 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 72 );
SE015 = playSeVer2( spep_3 + 0, 1068, "",spep_3 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備 
spep_4=spep_3+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94; 

------------------------------------------------------
--ビームが当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 232, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 232, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 232, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 230, hit_f, 255 );
setEffAlphaKey( spep_5 + 231, hit_f, 255 );
setEffAlphaKey( spep_5 + 232, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 232, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 232, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 232, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 230, hit_b, 255 );
setEffAlphaKey( spep_5 + 231, hit_b, 255 );
setEffAlphaKey( spep_5 + 232, hit_b, 0 );

--敵の動き
setDisp( spep_5-3 + 166, 1, 1 );

changeAnime( spep_5-3 + 166, 1, 118 );

i=50;
j=30;

setMoveKey( spep_5-3 + 166, 1, 686+i, 249.6+j , 0 );
setMoveKey( spep_5-3 + 168, 1, 539.7+i, 188.9+j , 0 );
setMoveKey( spep_5-3 + 170, 1, 393.3+i, 128.2+j , 0 );
setMoveKey( spep_5-3 + 172, 1, 247.1+i, 67.6+j , 0 );
setMoveKey( spep_5-3 + 174, 1, 228.9+i, 53+j , 0 );
setMoveKey( spep_5-3 + 176, 1, 247.5+i, 101.3+j , 0 );
setMoveKey( spep_5-3 + 178, 1, 167.6+i, 33.8+j , 0 );
setMoveKey( spep_5-3 + 180, 1, 131.5+i, 95.3+j , 0 );
setMoveKey( spep_5-3 + 182, 1, 147.5+i, -5.4+j , 0 );
setMoveKey( spep_5-3 + 184, 1, 146.5+i, -20+j , 0 );
setMoveKey( spep_5-3 + 186, 1, 130.7+i, -19.8+j , 0 );
setMoveKey( spep_5-3 + 188, 1, 132.8+i, -7.8+j , 0 );
setMoveKey( spep_5-3 + 190, 1, 132.6+i, -19.4+j , 0 );
setMoveKey( spep_5-3 + 192, 1, 142.5+i, -42.9+j , 0 );
setMoveKey( spep_5-3 + 194, 1, 134.4+i, -19+j , 0 );
setMoveKey( spep_5-3 + 196, 1, 123.5+i, -26.3+j , 0 );
setMoveKey( spep_5-3 + 198, 1, 142.4+i, -26+j , 0 );
setMoveKey( spep_5-3 + 200, 1, 117.2+i, -29.8+j , 0 );
setMoveKey( spep_5-3 + 202, 1, 155.3+i, -18.1+j , 0 );
setMoveKey( spep_5-3 + 204, 1, 139+i, -17.8+j , 0 );
setMoveKey( spep_5-3 + 206, 1, 141.1+i, -5.5+j , 0 );
setMoveKey( spep_5-3 + 208, 1, 140.8+i, -17.4+j , 0 );
setMoveKey( spep_5-3 + 210, 1, 151+i, -41.6+j , 0 );
setMoveKey( spep_5-3 + 212, 1, 142.7+i, -17+j , 0 );
setMoveKey( spep_5-3 + 214, 1, 131.4+i, -24.5+j , 0 );
setMoveKey( spep_5-3 + 216, 1, 150.8+i, -24.3+j , 0 );
setMoveKey( spep_5-3 + 218, 1, 125+i, -28.2+j , 0 );
setMoveKey( spep_5-3 + 220, 1, 146.4+i, -16.1+j , 0 );
setMoveKey( spep_5-3 + 222, 1, 156.7+i, -40.7+j , 0 );
setMoveKey( spep_5-3 + 224, 1, 148.2+i, -15.7+j , 0 );
setMoveKey( spep_5-3 + 226, 1, 136.7+i, -23.4+j , 0 );
setMoveKey( spep_5-3 + 228, 1, 156.5+i, -23.2+j , 0 );
setMoveKey( spep_5-3 + 230, 1, 130.1+i, -27.1+j , 0 );
setMoveKey( spep_5-3 + 232, 1, 169.9+i, -14.8+j , 0 );
setMoveKey( spep_5-3 + 234, 1, 152.8+i, -14.6+j , 0 );

setScaleKey( spep_5-3 + 166, 1, 2.66,2.66);
setScaleKey( spep_5-3 + 168, 1, 2.55,2.55);
setScaleKey( spep_5-3 + 170, 1, 2.49,2.49);
setScaleKey( spep_5-3 + 172, 1, 2.37,2.37);
setScaleKey( spep_5-3 + 174, 1, 2.26,2.26);
setScaleKey( spep_5-3 + 176, 1, 2.2,2.2);
setScaleKey( spep_5-3 + 178, 1, 2.08,2.08);
setScaleKey( spep_5-3 + 180, 1, 1.97,1.97);
setScaleKey( spep_5-3 + 182, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 184, 1, 1.79,1.79);
setScaleKey( spep_5-3 + 192, 1, 1.79,1.79);
setScaleKey( spep_5-3 + 194, 1, 1.85,1.85);
setScaleKey( spep_5-3 + 212, 1, 1.85,1.85);
setScaleKey( spep_5-3 + 214, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 232, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 234, 1, 1.97,1.97);

setRotateKey( spep_5-3 + 166, 1, 0 );
setRotateKey( spep_5-3 + 234, 1, 0 );

--ピッコロ溜め
SE017 = playSeVer2( spep_5 + 0, 1252, "",spep_5 + 134, 0, 14, -1);
SE018 = playSeVer2( spep_5 + 0, 1295, "",spep_5 + 134, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 0, SE018, 83 );
setPitch( spep_5 + 0, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_5 + 0, 1038, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 134, 0, 14, -1);

--腕引き寄せる
SE021 = playSeVer2( spep_5 + 46, 1003, "", 0, 0, 0, -1);

--腕突き出す
SE022 = playSeVer2( spep_5 + 98, 1004, "", 0, 0, 0, -1);

--気弾発射
SE023 = playSeVer2( spep_5 + 104, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE023, 81 );
SE024 = playSeVer2( spep_5 + 104, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE024, 89 );
SE025 = playSeVer2( spep_5 + 104, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE025, 92 );

--気弾飛んでいく
SE026 = playSeVer2( spep_5 + 130, 1212, "", 0, 42, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 130, SE026, 79 );
setStartTimeMs( SE026,  100 );
SE027 = playSeVer2( spep_5 + 164, 1286, "",spep_5 + 362, 0, 96, -1);
SE028 = playSeVer2( spep_5 + 172, 1011, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+232;
------------------------------------------------------
--悟空に貫通する
------------------------------------------------------
-- ** エフェクト等 ** --
penetration_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, penetration_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 162, penetration_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, penetration_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 162, penetration_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, penetration_f, 0 );
setEffRotateKey( spep_6 + 162, penetration_f, 0 );
setEffAlphaKey( spep_6 + 0, penetration_f, 255 );
setEffAlphaKey( spep_6 + 160, penetration_f, 255 );
setEffAlphaKey( spep_6 + 161, penetration_f, 255 );
setEffAlphaKey( spep_6 + 162, penetration_f, 0 );

-- ** エフェクト等 ** --
penetration_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, penetration_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 162, penetration_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, penetration_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 162, penetration_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, penetration_b, 0 );
setEffRotateKey( spep_6 + 162, penetration_b, 0 );
setEffAlphaKey( spep_6 + 0, penetration_b, 255 );
setEffAlphaKey( spep_6 + 160, penetration_b, 255 );
setEffAlphaKey( spep_6 + 161, penetration_b, 255 );
setEffAlphaKey( spep_6 + 162, penetration_b, 0 );

--敵の動き
setDisp( spep_6-1 + 162, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );

k=100;
l=50;

setMoveKey( spep_6 + 0, 1, -300.1+k, -108.7+l , 0 );
--setMoveKey( spep_6-3 + 2, 1, -269.7, -63 , 0 );
setMoveKey( spep_6-3 + 4, 1, -210.5+k, -58.1+l , 0 );
setMoveKey( spep_6-3 + 6, 1, -182.5+k, -43+l , 0 );
setMoveKey( spep_6-3 + 8, 1, -123.8+k, 2.8+l , 0 );
setMoveKey( spep_6-3 + 10, 1, -46.6+k, 65.6+l , 0 );
setMoveKey( spep_6-3 + 12, 1, -227.6+k, -77.2+l , 0 );
setMoveKey( spep_6-3 + 14, 1, -138.1+k, -12.8+l , 0 );
setMoveKey( spep_6-3 + 16, 1, -152.8+k, 2+l , 0 );
setMoveKey( spep_6-3 + 18, 1, -126.4+k, 1.9+l , 0 );
setMoveKey( spep_6-3 + 20, 1, -144.7+k, -20.7+l , 0 );
setMoveKey( spep_6-3 + 22, 1, -163+k, -6+l , 0 );
setMoveKey( spep_6-3 + 24, 1, -136.7+k, 12.4+l , 0 );
setMoveKey( spep_6-3 + 26, 1, -125.3+k, -2.6+l , 0 );
setMoveKey( spep_6-3 + 28, 1, -121.4+k, 0.9+l , 0 );
setMoveKey( spep_6-3 + 30, 1, -135.9+k, -14.1+l , 0 );
setMoveKey( spep_6-3 + 32, 1, -150.3+k, 0.5+l , 0 );
setMoveKey( spep_6-3 + 34, 1, -124.3+k, 0.3+l , 0 );
setMoveKey( spep_6-3 + 36, 1, -142.4+k, -21.9+l , 0 );
setMoveKey( spep_6-3 + 38, 1, -160.4+k, -7.4+l , 0 );
setMoveKey( spep_6-3 + 40, 1, -123.5+k, -0.4+l , 0 );
setMoveKey( spep_6-3 + 42, 1, -141.5+k, -22.3+l , 0 );
setMoveKey( spep_6-3 + 44, 1, -159.4+k, -7.9+l , 0 );
setMoveKey( spep_6-3 + 46, 1, -159+k, -8.2+l , 0 );
setMoveKey( spep_6-3 + 48, 1, -158.6+k, -8.3+l , 0 );
setMoveKey( spep_6-3 + 50, 1, -158.3+k, -8.5+l , 0 );
setMoveKey( spep_6-3 + 52, 1, -157.9+k, -8.7+l , 0 );
setMoveKey( spep_6-3 + 54, 1, -130.2+k, -8.8+l , 0 );
setMoveKey( spep_6-3 + 56, 1, -297.3+k, 161.7+l , 0 );
setMoveKey( spep_6-3 + 57, 1, -297.3+k, 161.7+l , 0 );

m=350;
n=-110;

setMoveKey( spep_6-3 + 58, 1, -426.7+m, 328.4+n , 0 );
setMoveKey( spep_6-3 + 60, 1, -363.2+m, 263.5+n , 0 );
setMoveKey( spep_6-3 + 62, 1, -387.3+m, 269.7+n , 0 );
setMoveKey( spep_6-3 + 64, 1, -462.7+m, 317.8+n , 0 );
setMoveKey( spep_6-3 + 66, 1, -538.2+m, 365.8+n , 0 );
setMoveKey( spep_6-3 + 68, 1, -540.7+m, 367.6+n , 0 );
setMoveKey( spep_6-3 + 70, 1, -543.3+m, 369.4+n , 0 );
setMoveKey( spep_6-3 + 72, 1, -545.7+m, 371.3+n , 0 );
setMoveKey( spep_6-3 + 74, 1, -548.2+m, 373.1+n , 0 );
setMoveKey( spep_6-3 + 76, 1, -550.8+m, 374.9+n , 0 );
setMoveKey( spep_6-3 + 78, 1, -553.2+m, 376.6+n , 0 );
setMoveKey( spep_6-3 + 80, 1, -555.6+m, 378.5+n , 0 );
setMoveKey( spep_6-3 + 82, 1, -558.1+m, 380.3+n , 0 );
setMoveKey( spep_6-3 + 84, 1, -560.5+m, 382+n , 0 );
setMoveKey( spep_6-3 + 86, 1, -562.9+m, 383.8+n , 0 );
setMoveKey( spep_6-3 + 88, 1, -565.3+m, 385.5+n , 0 );
setMoveKey( spep_6-3 + 90, 1, -567.7+m, 387.3+n , 0 );
setMoveKey( spep_6-3 + 92, 1, -570.1+m, 389+n , 0 );
setMoveKey( spep_6-3 + 94, 1, -572.4+m, 390.8+n , 0 );
setMoveKey( spep_6-3 + 96, 1, -574.8+m, 392.5+n , 0 );
setMoveKey( spep_6-3 + 98, 1, -577.1+m, 394.2+n , 0 );
setMoveKey( spep_6-3 + 100, 1, -579.4+m, 395.9+n , 0 );
setMoveKey( spep_6-3 + 102, 1, -581.8+m, 397.6+n , 0 );
setMoveKey( spep_6-3 + 104, 1, -584+m, 399.2+n , 0 );
setMoveKey( spep_6-3 + 106, 1, -586.3+m, 400.9+n , 0 );
setMoveKey( spep_6-3 + 108, 1, -588.6+m, 402.5+n , 0 );
setMoveKey( spep_6-3 + 110, 1, -590.8+m, 404.2+n , 0 );
setMoveKey( spep_6-3 + 112, 1, -593+m, 405.9+n , 0 );
setMoveKey( spep_6-3 + 114, 1, -595.2+m, 407.5+n , 0 );
setMoveKey( spep_6-3 + 116, 1, -597.5+m, 409.2+n , 0 );
setMoveKey( spep_6-3 + 118, 1, -599.6+m, 410.7+n , 0 );
setMoveKey( spep_6-3 + 120, 1, -601.8+m, 412.3+n , 0 );
setMoveKey( spep_6-3 + 122, 1, -604+m, 413.9+n , 0 );
setMoveKey( spep_6-3 + 124, 1, -606.1+m, 415.5+n , 0 );
setMoveKey( spep_6-3 + 126, 1, -608.2+m, 417.2+n , 0 );
setMoveKey( spep_6-3 + 128, 1, -610.4+m, 418.7+n , 0 );
setMoveKey( spep_6-3 + 130, 1, -612.4+m, 420.3+n , 0 );
setMoveKey( spep_6-3 + 132, 1, -614.5+m, 421.8+n , 0 );
setMoveKey( spep_6-3 + 134, 1, -616.6+m, 423.4+n , 0 );
setMoveKey( spep_6-3 + 136, 1, -618.6+m, 424.8+n , 0 );
setMoveKey( spep_6-3 + 138, 1, -620.7+m, 426.4+n , 0 );
setMoveKey( spep_6-3 + 140, 1, -622.7+m, 427.9+n , 0 );
setMoveKey( spep_6-3 + 142, 1, -624.7+m, 429.4+n , 0 );
setMoveKey( spep_6-3 + 144, 1, -626.7+m, 430.9+n , 0 );
setMoveKey( spep_6-3 + 146, 1, -628.6+m, 432.4+n , 0 );
setMoveKey( spep_6-3 + 148, 1, -630.6+m, 433.8+n , 0 );
setMoveKey( spep_6-3 + 150, 1, -632.5+m, 435.3+n , 0 );
setMoveKey( spep_6-3 + 152, 1, -634.5+m, 436.8+n , 0 );
setMoveKey( spep_6-3 + 154, 1, -636.4+m, 438.2+n , 0 );
setMoveKey( spep_6-3 + 156, 1, -638.3+m, 439.6+n , 0 );
setMoveKey( spep_6-3 + 158, 1, -640.1+m, 441.1+n , 0 );
setMoveKey( spep_6-3 + 160, 1, -642+m, 442.5+n , 0 );
setMoveKey( spep_6-1 + 162, 1, -643.8+m, 443.9+n , 0 );

setScaleKey( spep_6 + 0, 1, 7.19,7.19);
setScaleKey( spep_6-3 + 4, 1, 5.64,5.64);
setScaleKey( spep_6-3 + 6, 1, 4.83,4.83);
setScaleKey( spep_6-3 + 8, 1, 4.03,4.03);
setScaleKey( spep_6-3 + 22, 1, 4.03,4.03);
setScaleKey( spep_6-3 + 24, 1, 3.96,3.96);
setScaleKey( spep_6-3 + 36, 1, 3.96,3.96);
setScaleKey( spep_6-3 + 38, 1, 3.89,3.89);
setScaleKey( spep_6-3 + 52, 1, 3.89,3.89);
setScaleKey( spep_6-3 + 54, 1, 3.83,3.83);
setScaleKey( spep_6-3 + 56, 1, 4.23,4.23);
setScaleKey( spep_6-3 + 57, 1, 4.23,4.23);

setScaleKey( spep_6-3 + 58, 1, 3.54,3.54);
setScaleKey( spep_6-3 + 60, 1, 4.56,4.56);
setScaleKey( spep_6-3 + 62, 1, 5.16,5.16);
setScaleKey( spep_6-3 + 64, 1, 5.58,5.58);
setScaleKey( spep_6-3 + 66, 1, 5.94,5.94);
setScaleKey( spep_6-3 + 72, 1, 5.94,5.94);
setScaleKey( spep_6-3 + 74, 1, 6,6);
setScaleKey( spep_6-3 + 82, 1, 6,6);
setScaleKey( spep_6-3 + 84, 1, 6.06,6.06);
setScaleKey( spep_6-3 + 92, 1, 6.06,6.06);
setScaleKey( spep_6-3 + 94, 1, 6.12,6.12);
setScaleKey( spep_6-3 + 102, 1, 6.12,6.12);
setScaleKey( spep_6-3 + 104, 1, 6.18,6.18);
setScaleKey( spep_6-3 + 112, 1, 6.18,6.18);
setScaleKey( spep_6-3 + 114, 1, 6.24,6.24);
setScaleKey( spep_6-3 + 122, 1, 6.24,6.24);
setScaleKey( spep_6-3 + 124, 1, 6.3,6.3);
setScaleKey( spep_6-3 + 134, 1, 6.3,6.3);
setScaleKey( spep_6-3 + 136, 1, 6.36,6.36);
setScaleKey( spep_6-3 + 144, 1, 6.36,6.36);
setScaleKey( spep_6-3 + 146, 1, 6.42,6.42);
setScaleKey( spep_6-3 + 154, 1, 6.42,6.42);
setScaleKey( spep_6-3 + 156, 1, 6.48,6.48);
setScaleKey( spep_6-1 + 162, 1, 6.48,6.48);

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 54, 1, 0 );
setRotateKey( spep_6-3 + 56, 1, 12.2 );
setRotateKey( spep_6-3 + 57, 1, 12.2 );

setRotateKey( spep_6-3 + 58, 1, 29.6 );
setRotateKey( spep_6-3 + 60, 1, 33.8 );
setRotateKey( spep_6-3 + 62, 1, 35.3 );
setRotateKey( spep_6-3 + 78, 1, 35.3 );
setRotateKey( spep_6-3 + 80, 1, 35.4 );
setRotateKey( spep_6-3 + 94, 1, 35.4 );
setRotateKey( spep_6-3 + 96, 1, 35.5 );
setRotateKey( spep_6-3 + 108, 1, 35.5 );
setRotateKey( spep_6-3 + 110, 1, 35.6 );
setRotateKey( spep_6-3 + 120, 1, 35.6 );
setRotateKey( spep_6-3 + 122, 1, 35.7 );
setRotateKey( spep_6-3 + 132, 1, 35.7 );
setRotateKey( spep_6-3 + 134, 1, 35.8 );
setRotateKey( spep_6-3 + 142, 1, 35.8 );
setRotateKey( spep_6-3 + 144, 1, 35.9 );
setRotateKey( spep_6-3 + 152, 1, 35.9 );
setRotateKey( spep_6-3 + 154, 1, 36 );
setRotateKey( spep_6-3 + 160, 1, 36 );
setRotateKey( spep_6-1 + 162, 1, 36.1 );

--SE
--敵ヒット
SE029 = playSeVer2( spep_6 + 0, 1024, "", 0, 0, 0, 0.6);

--悟空吹っ飛ぶ
SE030 = playSeVer2( spep_6 + 56, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 66, 1179, "", 0, 0, 0, -1);

--敵飛んでく
SE032 = playSeVer2( spep_6 + 140, 1183, "",spep_6 + 218, 34, 20, 0.6);
setStartTimeMs( SE032,  667 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+162;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 180, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 180, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7-3 + 44, 1, 5 );
o=0;
p=0;

setMoveKey( spep_7 + 0, 1, -983.6, 813.1 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -896.5, 777.3 , 0 );
setMoveKey( spep_7-3 + 4, 1, -807.3, 734.7 , 0 );
setMoveKey( spep_7-3 + 6, 1, -716.5, 687.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, -624.8, 636.7 , 0 );
setMoveKey( spep_7-3 + 10, 1, -532.7, 585.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, -511.5, 555.1 , 0 );
setMoveKey( spep_7-3 + 14, 1, -488.8, 520.5 , 0 );
setMoveKey( spep_7-3 + 16, 1, -464.8, 482.1 , 0 );
setMoveKey( spep_7-3 + 18, 1, -439.7, 440.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, -413.6, 394.8 , 0 );
setMoveKey( spep_7-3 + 22, 1, -386.4, 346.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, -358.4, 295.5 , 0 );
setMoveKey( spep_7-3 + 26, 1, -329.6, 242.2 , 0 );
setMoveKey( spep_7-3 + 28, 1, -300.1, 186.9 , 0 );
setMoveKey( spep_7-3 + 30, 1, -270.2, 129.8 , 0 );
setMoveKey( spep_7-3 + 32, 1, -239.7, 71.3 , 0 );
setMoveKey( spep_7-3 + 34, 1, -208.9, 11.7 , 0 );
setMoveKey( spep_7-3 + 36, 1, -177.8, -48.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, -146.6, -109.5 , 0 );
setMoveKey( spep_7-3 + 40, 1, -115.3, -170.6 , 0 );
setMoveKey( spep_7-3 + 42, 1, -84.1, -231.4 , 0 );
setMoveKey( spep_7-3 + 43, 1, -84.1, -231.4 , 0 );

r=0;
s=10;

setMoveKey( spep_7-3 + 44, 1, -31.9, -237.7+s , 0 );
setMoveKey( spep_7-3 + 46, 1, -23.1, -207+s , 0 );
setMoveKey( spep_7-3 + 48, 1, -18.2, -182.4+s , 0 );
setMoveKey( spep_7-3 + 50, 1, -15.2, -160.6+s , 0 );
setMoveKey( spep_7-3 + 52, 1, -13.8, -158.1+s , 0 );
setMoveKey( spep_7-3 + 54, 1, -12.6, -155.8+s , 0 );
setMoveKey( spep_7-3 + 56, 1, -11.5, -153.7+s , 0 );
setMoveKey( spep_7-3 + 58, 1, -9.7, -150.9+s , 0 );
setMoveKey( spep_7-3 + 60, 1, -7.8, -148.1+s , 0 );
setMoveKey( spep_7-3 + 62, 1, -6.1, -145.2+s , 0 );
setMoveKey( spep_7-3 + 64, 1, -4.3, -142.4+s , 0 );
setMoveKey( spep_7-3 + 66, 1, -2.4, -139.5+s , 0 );
setMoveKey( spep_7-3 + 68, 1, -0.6, -136.7+s , 0 );
setMoveKey( spep_7-3 + 70, 1, 9.8, -120.2+s , 0 );
setMoveKey( spep_7-3 + 72, 1, 20.3, -103.7+s , 0 );
setMoveKey( spep_7-3 + 74, 1, 30.7, -87.3+s , 0 );
setMoveKey( spep_7-3 + 76, 1, 41.2, -70.8+s , 0 );
setMoveKey( spep_7-3 + 78, 1, 51.7, -54.4+s , 0 );
setMoveKey( spep_7-3 + 80, 1, 62.2, -37.9+s , 0 );
setMoveKey( spep_7-3 + 82, 1, 72.6, -21.5+s , 0 );
setMoveKey( spep_7-3 + 84, 1, 73, -20.9+s , 0 );
setMoveKey( spep_7-3 + 86, 1, 73.4, -20.3+s , 0 );
setMoveKey( spep_7-3 + 88, 1, 73.7, -19.8+s , 0 );
setMoveKey( spep_7-3 + 90, 1, 74.1, -19.2+s , 0 );
setMoveKey( spep_7-3 + 92, 1, 74.4, -18.7+s , 0 );
setMoveKey( spep_7-3 + 94, 1, 74.7, -18.1+s , 0 );
setMoveKey( spep_7-3 + 96, 1, 75.1, -17.6+s , 0 );
setMoveKey( spep_7-3 + 98, 1, 75.4, -17+s , 0 );
setMoveKey( spep_7-3 + 100, 1, 75.8, -16.4+s , 0 );
setMoveKey( spep_7-3 + 102, 1, 76.2, -15.9+s , 0 );
setMoveKey( spep_7-3 + 104, 1, 76.5, -15.4+s , 0 );
setMoveKey( spep_7-3 + 106, 1, 76.9, -14.8+s , 0 );
setMoveKey( spep_7-3 + 108, 1, 77.2, -14.2+s , 0 );
setMoveKey( spep_7-3 + 110, 1, 77.5, -13.7+s , 0 );
setMoveKey( spep_7-3 + 112, 1, 77.9, -13.1+s , 0 );
setMoveKey( spep_7-3 + 114, 1, 78.3, -12.6+s , 0 );
setMoveKey( spep_7-3 + 116, 1, 78.6, -12+s , 0 );
setMoveKey( spep_7-3 + 118, 1, 79, -11.5+s , 0 );
setMoveKey( spep_7-3 + 120, 1, 79.3, -10.9+s , 0 );
setMoveKey( spep_7-3 + 122, 1, 79.7, -10.4+s , 0 );
setMoveKey( spep_7-3 + 124, 1, 80, -9.8+s , 0 );
setMoveKey( spep_7-3 + 126, 1, 80.4, -9.3+s , 0 );
setMoveKey( spep_7-3 + 128, 1, 80.7, -8.7+s , 0 );
setMoveKey( spep_7-3 + 130, 1, 81.1, -8.1+s , 0 );
setMoveKey( spep_7-3 + 132, 1, 81.4, -7.6+s , 0 );
setMoveKey( spep_7-3 + 134, 1, 81.8, -7.1+s , 0 );
setMoveKey( spep_7-3 + 136, 1, 82.2, -6.5+s , 0 );
setMoveKey( spep_7-3 + 138, 1, 82.5, -6+s , 0 );
setMoveKey( spep_7-3 + 140, 1, 82.8, -5.4+s , 0 );
setMoveKey( spep_7-3 + 142, 1, 83.2, -4.8+s , 0 );
setMoveKey( spep_7-3 + 144, 1, 83.5, -4.3+s , 0 );
setMoveKey( spep_7-3 + 146, 1, 83.9, -3.7+s , 0 );
setMoveKey( spep_7-3 + 148, 1, 84.2, -3.2+s , 0 );
setMoveKey( spep_7-3 + 150, 1, 84.6, -2.6+s , 0 );
setMoveKey( spep_7-3 + 152, 1, 85, -2.1+s , 0 );
setMoveKey( spep_7-3 + 154, 1, 85.3, -1.5+s , 0 );
setMoveKey( spep_7-3 + 156, 1, 85.6, -1+s , 0 );
setMoveKey( spep_7-3 + 158, 1, 86, -0.4+s , 0 );
setMoveKey( spep_7-3 + 160, 1, 86.3, 0.1+s , 0 );
setMoveKey( spep_7-3 + 162, 1, 86.7, 0.7+s , 0 );
setMoveKey( spep_7-3 + 164, 1, 87.1, 1.3+s , 0 );
setMoveKey( spep_7-3 + 166, 1, 87.4, 1.8+s , 0 );
setMoveKey( spep_7-3 + 168, 1, 87.8, 2.3+s , 0 );
setMoveKey( spep_7-3 + 170, 1, 88.1, 2.9+s , 0 );
setMoveKey( spep_7-3 + 172, 1, 88.5, 3.5+s , 0 );
setMoveKey( spep_7-3 + 174, 1, 88.8, 4+s , 0 );
setMoveKey( spep_7-3 + 176, 1, 89.1, 4.6+s , 0 );
setMoveKey( spep_7-3 + 178, 1, 89.5, 5.1+s , 0 );

setScaleKey( spep_7 + 0, 1, 5.52,5.52);
setScaleKey( spep_7-3 + 4, 1, 4.68,4.68);
setScaleKey( spep_7-3 + 6, 1, 4.2,4.2);
setScaleKey( spep_7-3 + 8, 1, 3.78,3.78);
setScaleKey( spep_7-3 + 10, 1, 3.36,3.36);
setScaleKey( spep_7-3 + 12, 1, 3.24,3.24);
setScaleKey( spep_7-3 + 14, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 16, 1, 3,3);
setScaleKey( spep_7-3 + 18, 1, 2.88,2.88);
setScaleKey( spep_7-3 + 20, 1, 2.76,2.76);
setScaleKey( spep_7-3 + 22, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 24, 1, 2.52,2.52);
setScaleKey( spep_7-3 + 26, 1, 2.4,2.4);
setScaleKey( spep_7-3 + 28, 1, 2.28,2.28);
setScaleKey( spep_7-3 + 30, 1, 2.1,2.1);
setScaleKey( spep_7-3 + 32, 1, 1.98,1.98);
setScaleKey( spep_7-3 + 34, 1, 1.86,1.86);
setScaleKey( spep_7-3 + 36, 1, 1.68,1.68);
setScaleKey( spep_7-3 + 38, 1, 1.56,1.56);
setScaleKey( spep_7-3 + 40, 1, 1.38,1.38);
setScaleKey( spep_7-3 + 42, 1, 1.26,1.26);
setScaleKey( spep_7-3 + 43, 1, 1.26,1.26);

setScaleKey( spep_7-3 + 44, 1, 0.96,0.96);
--setScaleKey( spep_7-3 + 48, 1, 0.96,0.96);
setScaleKey( spep_7-3 + 50, 1, 0.9,0.9);
--setScaleKey( spep_7-3 + 58, 1, 0.9,0.9);
setScaleKey( spep_7-3 + 60, 1, 0.84,0.84);
--setScaleKey( spep_7-3 + 68, 1, 0.84,0.84);
setScaleKey( spep_7-3 + 70, 1, 0.78,0.78);
setScaleKey( spep_7-3 + 72, 1, 0.72,0.72);
setScaleKey( spep_7-3 + 74, 1, 0.66,0.66);
setScaleKey( spep_7-3 + 76, 1, 0.6,0.6);
--setScaleKey( spep_7-3 + 78, 1, 0.6,0.6);
setScaleKey( spep_7-3 + 80, 1, 0.54,0.54);
setScaleKey( spep_7-3 + 82, 1, 0.48,0.48);
--setScaleKey( spep_7-3 + 106, 1, 0.48,0.48);
--setScaleKey( spep_7-3 + 108, 1, 0.42,0.42);
setScaleKey( spep_7-3 + 178, 1, 0.42,0.42);

setRotateKey( spep_7 + 0, 1, 36.5 );
--setRotateKey( spep_7-3 + 2, 1, 36.6 );
setRotateKey( spep_7-3 + 4, 1, 36.7 );
setRotateKey( spep_7-3 + 6, 1, 36.9 );
setRotateKey( spep_7-3 + 8, 1, 37.2 );
setRotateKey( spep_7-3 + 10, 1, 37.5 );
setRotateKey( spep_7-3 + 12, 1, 38 );
setRotateKey( spep_7-3 + 14, 1, 38.5 );
setRotateKey( spep_7-3 + 16, 1, 39.1 );
setRotateKey( spep_7-3 + 18, 1, 39.8 );
setRotateKey( spep_7-3 + 20, 1, 40.5 );
setRotateKey( spep_7-3 + 22, 1, 41.4 );
setRotateKey( spep_7-3 + 24, 1, 42.3 );
setRotateKey( spep_7-3 + 26, 1, 43.3 );
setRotateKey( spep_7-3 + 28, 1, 44.3 );
setRotateKey( spep_7-3 + 30, 1, 45.5 );
setRotateKey( spep_7-3 + 32, 1, 46.7 );
setRotateKey( spep_7-3 + 34, 1, 48.1 );
setRotateKey( spep_7-3 + 36, 1, 49.4 );
setRotateKey( spep_7-3 + 38, 1, 50.9 );
setRotateKey( spep_7-3 + 40, 1, 52.5 );
setRotateKey( spep_7-3 + 42, 1, 54.1 );
setRotateKey( spep_7-3 + 43, 1, 54.1 );
setRotateKey( spep_7-3 + 44, 1, 50 );
setRotateKey( spep_7-3 + 178, 1, 50 );

--SE
--二人落下
SE033 = playSeVer2( spep_7 + 24, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 24, SE033, 82 );
SE034 = playSeVer2( spep_7 + 24, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 24, SE034, 305 );
SE035 = playSeVer2( spep_7 + 40, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 40, SE035, 88 );
SE036 = playSeVer2( spep_7 + 40, 1159, "",spep_7 + 78, 0, 16, -1);
setSeVolumeByWorkId( spep_7 + 40, SE036, 68 );
SE037 = playSeVer2( spep_7 + 40, 1192, "", 0, 0, 0,  -1);
setSeVolumeByWorkId( spep_7 + 40, SE037, 207 );

--画面遷移
SE038 = playSeVer2( spep_7 + 44, 1072, "", 0, 0, 0, 0.6);

--終わり
dealDamage(spep_7+42);
endPhase( spep_7 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵を抑える
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
suppress_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, suppress_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, suppress_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, suppress_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, suppress_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, suppress_f, 0 );
setEffRotateKey( spep_0 + 96, suppress_f, 0 );
setEffAlphaKey( spep_0 + 0, suppress_f, 255 );
setEffAlphaKey( spep_0 + 94, suppress_f, 255 );
setEffAlphaKey( spep_0 + 95, suppress_f, 255 );
setEffAlphaKey( spep_0 + 96, suppress_f, 0 );

-- ** エフェクト等 ** --
suppress_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, suppress_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, suppress_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, suppress_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, suppress_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, suppress_b, 0 );
setEffRotateKey( spep_0 + 96, suppress_b, 0 );
setEffAlphaKey( spep_0 + 0, suppress_b, 255 );
setEffAlphaKey( spep_0 + 94, suppress_b, 255 );
setEffAlphaKey( spep_0 + 95, suppress_b, 255 );
setEffAlphaKey( spep_0 + 96, suppress_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 0 );

a=-10;
b=20;

setMoveKey( spep_0 + 0, 1, 58.8+a, 20.3+b , 0 );
--setMoveKey( spep_0-3 + 2, 1, -58.6, 20.4 , 0 );
setMoveKey( spep_0-3 + 4, 1, 58.4+a, 20.5+b , 0 );
setMoveKey( spep_0-3 + 5, 1, 58.4+a, 20.5+b , 0 );
setMoveKey( spep_0-3 + 6, 1, 58.3+a, 20.7+b , 0 );
setMoveKey( spep_0-3 + 7, 1, 58.3+a, 20.7+b , 0 );
setMoveKey( spep_0-3 + 8, 1, 58.1+a, 20.9+b , 0 );
setMoveKey( spep_0-3 + 9, 1, 58.1+a, 20.9+b , 0 );
setMoveKey( spep_0-3 + 10, 1, 57.9+a, 21.1+b , 0 );
setMoveKey( spep_0-3 + 12, 1, 57.7+a, 21.3+b , 0 );
setMoveKey( spep_0-3 + 14, 1, 57.6+a, 21.5+b , 0 );
setMoveKey( spep_0-3 + 16, 1, 57.4+a, 21.6+b , 0 );
setMoveKey( spep_0-3 + 18, 1, 57.3+a, 21.8+b , 0 );
setMoveKey( spep_0-3 + 20, 1, 57.1+a, 22+b , 0 );
setMoveKey( spep_0-3 + 22, 1, 57+a, 22.2+b , 0 );
setMoveKey( spep_0-3 + 24, 1, 56.8+a, 22.3+b , 0 );
setMoveKey( spep_0-3 + 26, 1, 56.6+a, 22.5+b , 0 );
setMoveKey( spep_0-3 + 28, 1, 56.5+a, 22.7+b , 0 );
setMoveKey( spep_0-3 + 30, 1, 56.3+a, 22.9+b , 0 );
setMoveKey( spep_0-3 + 32, 1, 56.2+a, 23+b , 0 );
setMoveKey( spep_0-3 + 34, 1, 55.9+a, 23.2+b , 0 );
setMoveKey( spep_0-3 + 36, 1, 55.8+a, 23.4+b , 0 );
setMoveKey( spep_0-3 + 38, 1, 55.6+a, 23.6+b , 0 );
setMoveKey( spep_0-3 + 40, 1, 55.5+a, 23.7+b , 0 );

setScaleKey( spep_0 + 0, 1, 1.56,1.56);
setScaleKey( spep_0 + 1, 1, 1.56,1.56);
setScaleKey( spep_0 + 2, 1, 1.56,1.56);
setScaleKey( spep_0 + 3, 1, 1.56,1.56);
setScaleKey( spep_0 + 4, 1, 1.56,1.56);
setScaleKey( spep_0 + 5, 1, 1.56,1.56);
setScaleKey( spep_0 + 6, 1, 1.56,1.56);
setScaleKey( spep_0-3 + 20, 1, 1.56,1.56);
setScaleKey( spep_0-3 + 40, 1, 1.62,1.62);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 40, 1, 0 );

--SE
--瞬間移動
SE001 = playSeVer2( spep_0 + 2, 1109, "", 0, 0, 0, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 55.5+a, 23.7+b , 0 );

    setScaleKey( SP_dodge + 9, 1, 1.62,1.62);

    setRotateKey( SP_dodge + 9, 1, 0 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
changeAnime( spep_0-3 + 60, 1, 6 );

setMoveKey( spep_0-3 + 42, 1, 55.3+a, 23.9+b , 0 );
setMoveKey( spep_0-3 + 44, 1, 55.2+a, 24.1+b , 0 );
setMoveKey( spep_0-3 + 46, 1, 55+a, 24.3+b , 0 );
setMoveKey( spep_0-3 + 48, 1, 54.2+a, 26+b , 0 );
setMoveKey( spep_0-3 + 50, 1, 53.3+a, 27.7+b , 0 );
setMoveKey( spep_0-3 + 52, 1, 52.4+a, 29.4+b , 0 );
setMoveKey( spep_0-3 + 54, 1, 51.5+a, 31.2+b , 0 );
setMoveKey( spep_0-3 + 56, 1, 50.7+a, 32.9+b , 0 );
setMoveKey( spep_0-3 + 59, 1, 25.9+a, 54.8+b , 0 );

c=40;
d=70;

setMoveKey( spep_0-3 + 60, 1, -9.1+c, -13+d , 0 );
setMoveKey( spep_0-3 + 62, 1, -6.8+c, 12.5+d , 0 );
setMoveKey( spep_0-3 + 64, 1, -5.4+c, 13.2+d , 0 );
setMoveKey( spep_0-3 + 66, 1, -5+c, 13.3+d , 0 );
setMoveKey( spep_0-3 + 68, 1, -5.1+c, 13+d , 0 );
setMoveKey( spep_0-3 + 70, 1, -5.2+c, 12.9+d , 0 );
setMoveKey( spep_0-3 + 72, 1, -5.5+c, 12.8+d , 0 );
setMoveKey( spep_0-3 + 74, 1, -5.9+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 76, 1, -6.3+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 78, 1, -6.9+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 80, 1, -7.6+c, 12.7+d , 0 );
setMoveKey( spep_0-3 + 82, 1, -8.4+c, 12.8+d , 0 );
setMoveKey( spep_0-3 + 84, 1, -9.3+c, 13+d , 0 );
setMoveKey( spep_0-3 + 86, 1, -10.3+c, 13.2+d , 0 );
setMoveKey( spep_0-3 + 88, 1, -11.4+c, 13.5+d , 0 );
setMoveKey( spep_0-3 + 90, 1, -12.6+c, 13.8+d , 0 );
setMoveKey( spep_0-3 + 92, 1, -13.9+c, 14.1+d , 0 );
setMoveKey( spep_0-3 + 94, 1, -15.3+c, 14.5+d , 0 );
setMoveKey( spep_0-3 + 96, 1, -16.9+c, 15+d , 0 );
setMoveKey( spep_0-3 + 98, 1, -18.6+c, 15.5+d , 0 );

setScaleKey( spep_0-3 + 50, 1, 1.68,1.68);
setScaleKey( spep_0-3 + 56, 1, 1.74,1.74);
setScaleKey( spep_0-3 + 59, 1, 1.8,1.8);

setScaleKey( spep_0-3 + 60, 1, 2.02,2.02);
setScaleKey( spep_0-3 + 66, 1, 2.09,2.09);
setScaleKey( spep_0-3 + 82, 1, 2.15,2.15);
setScaleKey( spep_0-3 + 98, 1, 2.22,2.22);

setRotateKey( spep_0-3 + 59, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, 46.8 );
setRotateKey( spep_0-3 + 62, 1, 45.4 );
setRotateKey( spep_0-3 + 64, 1, 44.6 );
setRotateKey( spep_0-3 + 66, 1, 44.3 );
setRotateKey( spep_0-3 + 72, 1, 44.3 );
setRotateKey( spep_0-3 + 74, 1, 44.2 );
setRotateKey( spep_0-3 + 78, 1, 44.2 );
setRotateKey( spep_0-3 + 80, 1, 44.1 );
setRotateKey( spep_0-3 + 82, 1, 44.1 );
setRotateKey( spep_0-3 + 84, 1, 44 );
setRotateKey( spep_0-3 + 86, 1, 43.9 );
setRotateKey( spep_0-3 + 88, 1, 43.8 );
setRotateKey( spep_0-3 + 90, 1, 43.7 );
setRotateKey( spep_0-3 + 92, 1, 43.6 );
setRotateKey( spep_0-3 + 94, 1, 43.5 );
setRotateKey( spep_0-3 + 96, 1, 43.4 );
setRotateKey( spep_0-3 + 98, 1, 43.3 );

--SE
--敵捕まえる
SE002 = playSeVer2( spep_0 + 28, 1116, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 74 );
SE003 = playSeVer2( spep_0 + 54, 1012, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+96;
------------------------------------------------------
--悟空が踏ん張る
------------------------------------------------------
-- ** エフェクト等 ** --
straddle_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, straddle_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, straddle_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, straddle_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, straddle_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, straddle_f, 0 );
setEffRotateKey( spep_1 + 106, straddle_f, 0 );
setEffAlphaKey( spep_1 + 0, straddle_f, 255 );
setEffAlphaKey( spep_1 + 104, straddle_f, 255 );
setEffAlphaKey( spep_1 + 105, straddle_f, 255 );
setEffAlphaKey( spep_1 + 106, straddle_f, 0 );

-- ** エフェクト等 ** --
straddle_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, straddle_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 106, straddle_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, straddle_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, straddle_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, straddle_b, 0 );
setEffRotateKey( spep_1 + 106, straddle_b, 0 );
setEffAlphaKey( spep_1 + 0, straddle_b, 255 );
setEffAlphaKey( spep_1 + 104, straddle_b, 255 );
setEffAlphaKey( spep_1 + 105, straddle_b, 255 );
setEffAlphaKey( spep_1 + 106, straddle_b, 0 );

--敵の動き
setDisp( spep_1-3 + 68, 1, 0 );

changeAnime( spep_1 + 0, 1, 18 );

e=-350;
f=220;

setMoveKey( spep_1 + 0, 1, -51+e, -1161.8+f , 0 );
--setMoveKey( spep_1-3 + 2, 1, 55.5, -1161.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, -59.9+e, -1161.5+f , 0 );
setMoveKey( spep_1-3 + 6, 1, -43.2+e, -1168.4+f , 0 );
setMoveKey( spep_1-3 + 8, 1, -47.6+e, -1168.3+f , 0 );
setMoveKey( spep_1-3 + 10, 1, -52+e, -1168.2+f , 0 );
setMoveKey( spep_1-3 + 12, 1, -66.9+e, -1164.6+f , 0 );
setMoveKey( spep_1-3 + 14, 1, -81.7+e, -1161.1+f , 0 );
setMoveKey( spep_1-3 + 16, 1, -75.6+e, -1147+f , 0 );
setMoveKey( spep_1-3 + 18, 1, -74.7+e, -1157.4+f , 0 );
setMoveKey( spep_1-3 + 20, 1, -73.9+e, -1167.8+f , 0 );
setMoveKey( spep_1-3 + 22, 1, -88.8+e, -1164.2+f , 0 );
setMoveKey( spep_1-3 + 24, 1, -103.6+e, -1160.7+f , 0 );
setMoveKey( spep_1-3 + 26, 1, -97.5+e, -1146.6+f , 0 );
setMoveKey( spep_1-3 + 28, 1, -96.6+e, -1157+f , 0 );
setMoveKey( spep_1-3 + 30, 1, -95.8+e, -1167.4+f , 0 );
setMoveKey( spep_1-3 + 32, 1, -110.7+e, -1163.8+f , 0 );
setMoveKey( spep_1-3 + 34, 1, -125.5+e, -1160.3+f , 0 );
setMoveKey( spep_1-3 + 36, 1, -108.9+e, -1167.1+f , 0 );
setMoveKey( spep_1-3 + 38, 1, -113.3+e, -1167+f , 0 );
setMoveKey( spep_1-3 + 40, 1, -117.7+e, -1166.9+f , 0 );
setMoveKey( spep_1-3 + 42, 1, -132.6+e, -1163.4+f , 0 );
setMoveKey( spep_1-3 + 44, 1, -147.4+e, -1159.9+f , 0 );
setMoveKey( spep_1-3 + 46, 1, -141.3+e, -1145.8+f , 0 );
setMoveKey( spep_1-3 + 48, 1, -140.4+e, -1156.2+f , 0 );
setMoveKey( spep_1-3 + 50, 1, -139.6+e, -1166.5+f , 0 );
setMoveKey( spep_1-3 + 52, 1, -154.5+e, -1162.9+f , 0 );
setMoveKey( spep_1-3 + 54, 1, -169.3+e, -1159.5+f , 0 );
setMoveKey( spep_1-3 + 56, 1, -152.7+e, -1166.3+f , 0 );
setMoveKey( spep_1-3 + 58, 1, -157.1+e, -1166.2+f , 0 );
setMoveKey( spep_1-3 + 60, 1, -161.5+e, -1166.1+f , 0 );
setMoveKey( spep_1-3 + 62, 1, -812.3+e, -1121.4+f , 0 );
setMoveKey( spep_1-3 + 64, 1, -1462.9+e, -1076.9+f , 0 );
setMoveKey( spep_1-3 + 66, 1, -2092.6+e, -1021.7+f , 0 );
setMoveKey( spep_1-3 + 68, 1, -2081.6+e, -1030.3+f , 0 );

setScaleKey( spep_1 + 0, 1, 20.82,20.82);
setScaleKey( spep_1-3 + 66, 1, 20.82,20.82);
setScaleKey( spep_1-3 + 68, 1, 20.76,20.76);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 68, 1, 0 );

--SE
--悟空耐える
SE005 = playSeVer2( spep_1 + 0, 1330, "",spep_1 + 78, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 84 );

--ピッコロ溜める
SE006 = playSeVer2( spep_1 + 58, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 58, SE006, 81 );
SE007 = playSeVer2( spep_1 + 100, 1252, "",spep_1 + 216, 0, 18, -1);
SE008 = playSeVer2( spep_1 + 100, 1295, "",spep_1 + 216, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 100, SE008, 85 );
setPitch( spep_1 + 100, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_1 + 100, 1038, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 100, 1243, "",spep_1 + 216, 0, 18, -1);
SE011 = playSeVer2( spep_1 + 104, 1056, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+106;
------------------------------------------------------
--ピッコロがためる
------------------------------------------------------
------------------------------------------------------
--ピッコロがためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 84, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 84, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 84, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 82, tame, 255 );
setEffAlphaKey( spep_2 + 83, tame, 255 );
setEffAlphaKey( spep_2 + 84, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_2 -2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -100,  515);

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
--顔カットイン
SE012 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ピッコロ溜める
SE013 = playSeVer2( spep_2 + 46, 1148, "",spep_2 + 110, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_3=spep_2+84;
------------------------------------------------------
--悟空が叫ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
shout_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shout_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, shout_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shout_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, shout_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shout_f, 0 );
setEffRotateKey( spep_3 + 60, shout_f, 0 );
setEffAlphaKey( spep_3 + 0, shout_f, 255 );
setEffAlphaKey( spep_3 + 60, shout_f, 255 );

-- ** エフェクト等 ** --
shout_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shout_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, shout_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shout_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, shout_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shout_b, 0 );
setEffRotateKey( spep_3 + 60, shout_b, 0 );
setEffAlphaKey( spep_3 + 0, shout_b, 255 );
setEffAlphaKey( spep_3 + 60, shout_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 18 );

g=-100;
h=220;

setMoveKey( spep_3 + 0, 1, -37.2+g, -981.9+h , 0 );
--setMoveKey( spep_3-3 + 2, 1, 37.2, -975.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, -37.3+g, -999.5+h , 0 );
setMoveKey( spep_3-3 + 6, 1, -37.4+g, -982.5+h , 0 );
setMoveKey( spep_3-3 + 8, 1, -37.5+g, -1006.8+h , 0 );
setMoveKey( spep_3-3 + 10, 1, -37.6+g, -989.6+h , 0 );
setMoveKey( spep_3-3 + 12, 1, -37.7+g, -1014.1+h , 0 );
setMoveKey( spep_3-3 + 14, 1, -37.8+g, -996.8+h , 0 );
setMoveKey( spep_3-3 + 16, 1, -37.9+g, -1021.4+h , 0 );
setMoveKey( spep_3-3 + 18, 1, -38+g, -1004+h , 0 );
setMoveKey( spep_3-3 + 20, 1, -38.1+g, -1028.6+h , 0 );
setMoveKey( spep_3-3 + 22, 1, -38.2+g, -1011.2+h , 0 );
setMoveKey( spep_3-3 + 24, 1, -38.3+g, -1036+h , 0 );
setMoveKey( spep_3-3 + 26, 1, -38.4+g, -1018.4+h , 0 );
setMoveKey( spep_3-3 + 28, 1, -38.5+g, -1043.2+h , 0 );
setMoveKey( spep_3-3 + 30, 1, -38.6+g, -1025.5+h , 0 );
setMoveKey( spep_3-3 + 32, 1, -38.7+g, -1050.6+h , 0 );
setMoveKey( spep_3-3 + 34, 1, -38.8+g, -1032.8+h , 0 );
setMoveKey( spep_3-3 + 36, 1, -38.9+g, -1057.8+h , 0 );
setMoveKey( spep_3-3 + 38, 1, -39+g, -1039.9+h , 0 );
setMoveKey( spep_3-3 + 40, 1, -39.1+g, -1065.2+h , 0 );
setMoveKey( spep_3-3 + 42, 1, -39.2+g, -1047.1+h , 0 );
setMoveKey( spep_3-3 + 44, 1, -39.3+g, -1072.5+h , 0 );
setMoveKey( spep_3-3 + 46, 1, -39.4+g, -1054.3+h , 0 );
setMoveKey( spep_3-3 + 48, 1, -39.5+g, -1079.7+h , 0 );
setMoveKey( spep_3-3 + 50, 1, -39.6+g, -1061.5+h , 0 );
setMoveKey( spep_3-3 + 52, 1, -39.7+g, -1087.1+h , 0 );
setMoveKey( spep_3-3 + 54, 1, -39.8+g, -1068.7+h , 0 );
setMoveKey( spep_3-3 + 56, 1, -39.8+g, -1094.3+h , 0 );
setMoveKey( spep_3-3 + 58, 1, -39.9+g, -1075.9+h , 0 );

setScaleKey( spep_3 + 0, 1, 15.48,15.48);
setScaleKey( spep_3-3 + 4, 1, 15.54,15.54);
setScaleKey( spep_3-3 + 6, 1, 15.6,15.6);
setScaleKey( spep_3-3 + 8, 1, 15.66,15.66);
setScaleKey( spep_3-3 + 10, 1, 15.71,15.71);
setScaleKey( spep_3-3 + 12, 1, 15.71,15.71);
setScaleKey( spep_3-3 + 14, 1, 15.77,15.77);
setScaleKey( spep_3-3 + 16, 1, 15.83,15.83);
setScaleKey( spep_3-3 + 18, 1, 15.83,15.83);
setScaleKey( spep_3-3 + 20, 1, 15.89,15.89);
setScaleKey( spep_3-3 + 22, 1, 15.95,15.95);
setScaleKey( spep_3-3 + 24, 1, 15.95,15.95);
setScaleKey( spep_3-3 + 26, 1, 16,16);
setScaleKey( spep_3-3 + 28, 1, 16.06,16.06);
setScaleKey( spep_3-3 + 30, 1, 16.06,16.06);
setScaleKey( spep_3-3 + 32, 1, 16.12,16.12);
setScaleKey( spep_3-3 + 34, 1, 16.18,16.18);
setScaleKey( spep_3-3 + 36, 1, 16.18,16.18);
setScaleKey( spep_3-3 + 38, 1, 16.24,16.24);
setScaleKey( spep_3-3 + 40, 1, 16.29,16.29);
setScaleKey( spep_3-3 + 42, 1, 16.35,16.35);
setScaleKey( spep_3-3 + 44, 1, 16.35,16.35);
setScaleKey( spep_3-3 + 46, 1, 16.41,16.41);
setScaleKey( spep_3-3 + 48, 1, 16.47,16.47);
setScaleKey( spep_3-3 + 50, 1, 16.47,16.47);
setScaleKey( spep_3-3 + 52, 1, 16.53,16.53);
setScaleKey( spep_3-3 + 54, 1, 16.58,16.58);
setScaleKey( spep_3-3 + 56, 1, 16.58,16.58);
setScaleKey( spep_3-3 + 58, 1, 16.64,16.64);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 58, 1, 0 );

--SE
--悟空叫ぶ
SE014 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 72 );
SE015 = playSeVer2( spep_3 + 0, 1068, "",spep_3 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備 
spep_4=spep_3+60;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94; 

------------------------------------------------------
--ビームが当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 232, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 232, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 232, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 230, hit_f, 255 );
setEffAlphaKey( spep_5 + 231, hit_f, 255 );
setEffAlphaKey( spep_5 + 232, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 232, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 232, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 232, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 230, hit_b, 255 );
setEffAlphaKey( spep_5 + 231, hit_b, 255 );
setEffAlphaKey( spep_5 + 232, hit_b, 0 );

--敵の動き
setDisp( spep_5-3 + 166, 1, 1 );

changeAnime( spep_5-3 + 166, 1, 18 );

i=-50;
j=30;

setMoveKey( spep_5-3 + 166, 1, -686+i, 249.6+j , 0 );
setMoveKey( spep_5-3 + 168, 1, -539.7+i, 188.9+j , 0 );
setMoveKey( spep_5-3 + 170, 1, -393.3+i, 128.2+j , 0 );
setMoveKey( spep_5-3 + 172, 1, -247.1+i, 67.6+j , 0 );
setMoveKey( spep_5-3 + 174, 1, -228.9+i, 53+j , 0 );
setMoveKey( spep_5-3 + 176, 1, -247.5+i, 101.3+j , 0 );
setMoveKey( spep_5-3 + 178, 1, -167.6+i, 33.8+j , 0 );
setMoveKey( spep_5-3 + 180, 1, -131.5+i, 95.3+j , 0 );
setMoveKey( spep_5-3 + 182, 1, -147.5+i, -5.4+j , 0 );
setMoveKey( spep_5-3 + 184, 1, -146.5+i, -20+j , 0 );
setMoveKey( spep_5-3 + 186, 1, -130.7+i, -19.8+j , 0 );
setMoveKey( spep_5-3 + 188, 1, -132.8+i, -7.8+j , 0 );
setMoveKey( spep_5-3 + 190, 1, -132.6+i, -19.4+j , 0 );
setMoveKey( spep_5-3 + 192, 1, -142.5+i, -42.9+j , 0 );
setMoveKey( spep_5-3 + 194, 1, -134.4+i, -19+j , 0 );
setMoveKey( spep_5-3 + 196, 1, -123.5+i, -26.3+j , 0 );
setMoveKey( spep_5-3 + 198, 1, -142.4+i, -26+j , 0 );
setMoveKey( spep_5-3 + 200, 1, -117.2+i, -29.8+j , 0 );
setMoveKey( spep_5-3 + 202, 1, -155.3+i, -18.1+j , 0 );
setMoveKey( spep_5-3 + 204, 1, -139+i, -17.8+j , 0 );
setMoveKey( spep_5-3 + 206, 1, -141.1+i, -5.5+j , 0 );
setMoveKey( spep_5-3 + 208, 1, -140.8+i, -17.4+j , 0 );
setMoveKey( spep_5-3 + 210, 1, -151+i, -41.6+j , 0 );
setMoveKey( spep_5-3 + 212, 1, -142.7+i, -17+j , 0 );
setMoveKey( spep_5-3 + 214, 1, -131.4+i, -24.5+j , 0 );
setMoveKey( spep_5-3 + 216, 1, -150.8+i, -24.3+j , 0 );
setMoveKey( spep_5-3 + 218, 1, -125+i, -28.2+j , 0 );
setMoveKey( spep_5-3 + 220, 1, -146.4+i, -16.1+j , 0 );
setMoveKey( spep_5-3 + 222, 1, -156.7+i, -40.7+j , 0 );
setMoveKey( spep_5-3 + 224, 1, -148.2+i, -15.7+j , 0 );
setMoveKey( spep_5-3 + 226, 1, -136.7+i, -23.4+j , 0 );
setMoveKey( spep_5-3 + 228, 1, -156.5+i, -23.2+j , 0 );
setMoveKey( spep_5-3 + 230, 1, -130.1+i, -27.1+j , 0 );
setMoveKey( spep_5-3 + 232, 1, -169.9+i, -14.8+j , 0 );
setMoveKey( spep_5-3 + 234, 1, -152.8+i, -14.6+j , 0 );

setScaleKey( spep_5-3 + 166, 1, 2.66,2.66);
setScaleKey( spep_5-3 + 168, 1, 2.55,2.55);
setScaleKey( spep_5-3 + 170, 1, 2.49,2.49);
setScaleKey( spep_5-3 + 172, 1, 2.37,2.37);
setScaleKey( spep_5-3 + 174, 1, 2.26,2.26);
setScaleKey( spep_5-3 + 176, 1, 2.2,2.2);
setScaleKey( spep_5-3 + 178, 1, 2.08,2.08);
setScaleKey( spep_5-3 + 180, 1, 1.97,1.97);
setScaleKey( spep_5-3 + 182, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 184, 1, 1.79,1.79);
setScaleKey( spep_5-3 + 192, 1, 1.79,1.79);
setScaleKey( spep_5-3 + 194, 1, 1.85,1.85);
setScaleKey( spep_5-3 + 212, 1, 1.85,1.85);
setScaleKey( spep_5-3 + 214, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 232, 1, 1.91,1.91);
setScaleKey( spep_5-3 + 234, 1, 1.97,1.97);

setRotateKey( spep_5-3 + 166, 1, 0 );
setRotateKey( spep_5-3 + 234, 1, 0 );

--ピッコロ溜め
SE017 = playSeVer2( spep_5 + 0, 1252, "",spep_5 + 134, 0, 14, -1);
SE018 = playSeVer2( spep_5 + 0, 1295, "",spep_5 + 134, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 0, SE018, 83 );
setPitch( spep_5 + 0, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_5 + 0, 1038, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_5 + 0, 1243, "",spep_5 + 134, 0, 14, -1);

--腕引き寄せる
SE021 = playSeVer2( spep_5 + 46, 1003, "", 0, 0, 0, -1);

--腕突き出す
SE022 = playSeVer2( spep_5 + 98, 1004, "", 0, 0, 0, -1);

--気弾発射
SE023 = playSeVer2( spep_5 + 104, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE023, 81 );
SE024 = playSeVer2( spep_5 + 104, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE024, 89 );
SE025 = playSeVer2( spep_5 + 104, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 104, SE025, 92 );

--気弾飛んでいく
SE026 = playSeVer2( spep_5 + 130, 1212, "", 0, 42, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 130, SE026, 79 );
setStartTimeMs( SE026,  100 );
SE027 = playSeVer2( spep_5 + 164, 1286, "",spep_5 + 362, 0, 96, -1);
SE028 = playSeVer2( spep_5 + 172, 1011, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+232;
------------------------------------------------------
--悟空に貫通する
------------------------------------------------------
-- ** エフェクト等 ** --
penetration_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, penetration_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 162, penetration_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, penetration_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 162, penetration_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, penetration_f, 0 );
setEffRotateKey( spep_6 + 162, penetration_f, 0 );
setEffAlphaKey( spep_6 + 0, penetration_f, 255 );
setEffAlphaKey( spep_6 + 160, penetration_f, 255 );
setEffAlphaKey( spep_6 + 161, penetration_f, 255 );
setEffAlphaKey( spep_6 + 162, penetration_f, 0 );

-- ** エフェクト等 ** --
penetration_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, penetration_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 162, penetration_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, penetration_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 162, penetration_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, penetration_b, 0 );
setEffRotateKey( spep_6 + 162, penetration_b, 0 );
setEffAlphaKey( spep_6 + 0, penetration_b, 255 );
setEffAlphaKey( spep_6 + 160, penetration_b, 255 );
setEffAlphaKey( spep_6 + 161, penetration_b, 255 );
setEffAlphaKey( spep_6 + 162, penetration_b, 0 );

--敵の動き
setDisp( spep_6-1 + 162, 1, 0 );

changeAnime( spep_6 + 0, 1, 8 );

k=-100;
l=50;

setMoveKey( spep_6 + 0, 1, 300.1+k, -108.7+l , 0 );
--setMoveKey( spep_6-3 + 2, 1, -269.7, -63 , 0 );
setMoveKey( spep_6-3 + 4, 1, 210.5+k, -58.1+l , 0 );
setMoveKey( spep_6-3 + 6, 1, 182.5+k, -43+l , 0 );
setMoveKey( spep_6-3 + 8, 1, 123.8+k, 2.8+l , 0 );
setMoveKey( spep_6-3 + 10, 1, 46.6+k, 65.6+l , 0 );
setMoveKey( spep_6-3 + 12, 1, 227.6+k, -77.2+l , 0 );
setMoveKey( spep_6-3 + 14, 1, 138.1+k, -12.8+l , 0 );
setMoveKey( spep_6-3 + 16, 1, 152.8+k, 2+l , 0 );
setMoveKey( spep_6-3 + 18, 1, 126.4+k, 1.9+l , 0 );
setMoveKey( spep_6-3 + 20, 1, 144.7+k, -20.7+l , 0 );
setMoveKey( spep_6-3 + 22, 1, 163+k, -6+l , 0 );
setMoveKey( spep_6-3 + 24, 1, 136.7+k, 12.4+l , 0 );
setMoveKey( spep_6-3 + 26, 1, 125.3+k, -2.6+l , 0 );
setMoveKey( spep_6-3 + 28, 1, 121.4+k, 0.9+l , 0 );
setMoveKey( spep_6-3 + 30, 1, 135.9+k, -14.1+l , 0 );
setMoveKey( spep_6-3 + 32, 1, 150.3+k, 0.5+l , 0 );
setMoveKey( spep_6-3 + 34, 1, 124.3+k, 0.3+l , 0 );
setMoveKey( spep_6-3 + 36, 1, 142.4+k, -21.9+l , 0 );
setMoveKey( spep_6-3 + 38, 1, 160.4+k, -7.4+l , 0 );
setMoveKey( spep_6-3 + 40, 1, 123.5+k, -0.4+l , 0 );
setMoveKey( spep_6-3 + 42, 1, 141.5+k, -22.3+l , 0 );
setMoveKey( spep_6-3 + 44, 1, 159.4+k, -7.9+l , 0 );
setMoveKey( spep_6-3 + 46, 1, 159+k, -8.2+l , 0 );
setMoveKey( spep_6-3 + 48, 1, 158.6+k, -8.3+l , 0 );
setMoveKey( spep_6-3 + 50, 1, 158.3+k, -8.5+l , 0 );
setMoveKey( spep_6-3 + 52, 1, 157.9+k, -8.7+l , 0 );
setMoveKey( spep_6-3 + 54, 1, 130.2+k, -8.8+l , 0 );
setMoveKey( spep_6-3 + 56, 1, 297.3+k, 161.7+l , 0 );
setMoveKey( spep_6-3 + 57, 1, 297.3+k, 161.7+l , 0 );

m=-350;
n=-110;

setMoveKey( spep_6-3 + 58, 1, 426.7+m, 328.4+n , 0 );
setMoveKey( spep_6-3 + 60, 1, 363.2+m, 263.5+n , 0 );
setMoveKey( spep_6-3 + 62, 1, 387.3+m, 269.7+n , 0 );
setMoveKey( spep_6-3 + 64, 1, 462.7+m, 317.8+n , 0 );
setMoveKey( spep_6-3 + 66, 1, 538.2+m, 365.8+n , 0 );
setMoveKey( spep_6-3 + 68, 1, 540.7+m, 367.6+n , 0 );
setMoveKey( spep_6-3 + 70, 1, 543.3+m, 369.4+n , 0 );
setMoveKey( spep_6-3 + 72, 1, 545.7+m, 371.3+n , 0 );
setMoveKey( spep_6-3 + 74, 1, 548.2+m, 373.1+n , 0 );
setMoveKey( spep_6-3 + 76, 1, 550.8+m, 374.9+n , 0 );
setMoveKey( spep_6-3 + 78, 1, 553.2+m, 376.6+n , 0 );
setMoveKey( spep_6-3 + 80, 1, 555.6+m, 378.5+n , 0 );
setMoveKey( spep_6-3 + 82, 1, 558.1+m, 380.3+n , 0 );
setMoveKey( spep_6-3 + 84, 1, 560.5+m, 382+n , 0 );
setMoveKey( spep_6-3 + 86, 1, 562.9+m, 383.8+n , 0 );
setMoveKey( spep_6-3 + 88, 1, 565.3+m, 385.5+n , 0 );
setMoveKey( spep_6-3 + 90, 1, 567.7+m, 387.3+n , 0 );
setMoveKey( spep_6-3 + 92, 1, 570.1+m, 389+n , 0 );
setMoveKey( spep_6-3 + 94, 1, 572.4+m, 390.8+n , 0 );
setMoveKey( spep_6-3 + 96, 1, 574.8+m, 392.5+n , 0 );
setMoveKey( spep_6-3 + 98, 1, 577.1+m, 394.2+n , 0 );
setMoveKey( spep_6-3 + 100, 1, 579.4+m, 395.9+n , 0 );
setMoveKey( spep_6-3 + 102, 1, 581.8+m, 397.6+n , 0 );
setMoveKey( spep_6-3 + 104, 1, 584+m, 399.2+n , 0 );
setMoveKey( spep_6-3 + 106, 1, 586.3+m, 400.9+n , 0 );
setMoveKey( spep_6-3 + 108, 1, 588.6+m, 402.5+n , 0 );
setMoveKey( spep_6-3 + 110, 1, 590.8+m, 404.2+n , 0 );
setMoveKey( spep_6-3 + 112, 1, 593+m, 405.9+n , 0 );
setMoveKey( spep_6-3 + 114, 1, 595.2+m, 407.5+n , 0 );
setMoveKey( spep_6-3 + 116, 1, 597.5+m, 409.2+n , 0 );
setMoveKey( spep_6-3 + 118, 1, 599.6+m, 410.7+n , 0 );
setMoveKey( spep_6-3 + 120, 1, 601.8+m, 412.3+n , 0 );
setMoveKey( spep_6-3 + 122, 1, 604+m, 413.9+n , 0 );
setMoveKey( spep_6-3 + 124, 1, 606.1+m, 415.5+n , 0 );
setMoveKey( spep_6-3 + 126, 1, 608.2+m, 417.2+n , 0 );
setMoveKey( spep_6-3 + 128, 1, 610.4+m, 418.7+n , 0 );
setMoveKey( spep_6-3 + 130, 1, 612.4+m, 420.3+n , 0 );
setMoveKey( spep_6-3 + 132, 1, 614.5+m, 421.8+n , 0 );
setMoveKey( spep_6-3 + 134, 1, 616.6+m, 423.4+n , 0 );
setMoveKey( spep_6-3 + 136, 1, 618.6+m, 424.8+n , 0 );
setMoveKey( spep_6-3 + 138, 1, 620.7+m, 426.4+n , 0 );
setMoveKey( spep_6-3 + 140, 1, 622.7+m, 427.9+n , 0 );
setMoveKey( spep_6-3 + 142, 1, 624.7+m, 429.4+n , 0 );
setMoveKey( spep_6-3 + 144, 1, 626.7+m, 430.9+n , 0 );
setMoveKey( spep_6-3 + 146, 1, 628.6+m, 432.4+n , 0 );
setMoveKey( spep_6-3 + 148, 1, 630.6+m, 433.8+n , 0 );
setMoveKey( spep_6-3 + 150, 1, 632.5+m, 435.3+n , 0 );
setMoveKey( spep_6-3 + 152, 1, 634.5+m, 436.8+n , 0 );
setMoveKey( spep_6-3 + 154, 1, 636.4+m, 438.2+n , 0 );
setMoveKey( spep_6-3 + 156, 1, 638.3+m, 439.6+n , 0 );
setMoveKey( spep_6-3 + 158, 1, 640.1+m, 441.1+n , 0 );
setMoveKey( spep_6-3 + 160, 1, 642+m, 442.5+n , 0 );
setMoveKey( spep_6-1 + 162, 1, 643.8+m, 443.9+n , 0 );

setScaleKey( spep_6 + 0, 1, 7.19,7.19);
setScaleKey( spep_6-3 + 4, 1, 5.64,5.64);
setScaleKey( spep_6-3 + 6, 1, 4.83,4.83);
setScaleKey( spep_6-3 + 8, 1, 4.03,4.03);
setScaleKey( spep_6-3 + 22, 1, 4.03,4.03);
setScaleKey( spep_6-3 + 24, 1, 3.96,3.96);
setScaleKey( spep_6-3 + 36, 1, 3.96,3.96);
setScaleKey( spep_6-3 + 38, 1, 3.89,3.89);
setScaleKey( spep_6-3 + 52, 1, 3.89,3.89);
setScaleKey( spep_6-3 + 54, 1, 3.83,3.83);
setScaleKey( spep_6-3 + 56, 1, 4.23,4.23);
setScaleKey( spep_6-3 + 57, 1, 4.23,4.23);

setScaleKey( spep_6-3 + 58, 1, 3.54,3.54);
setScaleKey( spep_6-3 + 60, 1, 4.56,4.56);
setScaleKey( spep_6-3 + 62, 1, 5.16,5.16);
setScaleKey( spep_6-3 + 64, 1, 5.58,5.58);
setScaleKey( spep_6-3 + 66, 1, 5.94,5.94);
setScaleKey( spep_6-3 + 72, 1, 5.94,5.94);
setScaleKey( spep_6-3 + 74, 1, 6,6);
setScaleKey( spep_6-3 + 82, 1, 6,6);
setScaleKey( spep_6-3 + 84, 1, 6.06,6.06);
setScaleKey( spep_6-3 + 92, 1, 6.06,6.06);
setScaleKey( spep_6-3 + 94, 1, 6.12,6.12);
setScaleKey( spep_6-3 + 102, 1, 6.12,6.12);
setScaleKey( spep_6-3 + 104, 1, 6.18,6.18);
setScaleKey( spep_6-3 + 112, 1, 6.18,6.18);
setScaleKey( spep_6-3 + 114, 1, 6.24,6.24);
setScaleKey( spep_6-3 + 122, 1, 6.24,6.24);
setScaleKey( spep_6-3 + 124, 1, 6.3,6.3);
setScaleKey( spep_6-3 + 134, 1, 6.3,6.3);
setScaleKey( spep_6-3 + 136, 1, 6.36,6.36);
setScaleKey( spep_6-3 + 144, 1, 6.36,6.36);
setScaleKey( spep_6-3 + 146, 1, 6.42,6.42);
setScaleKey( spep_6-3 + 154, 1, 6.42,6.42);
setScaleKey( spep_6-3 + 156, 1, 6.48,6.48);
setScaleKey( spep_6-1 + 162, 1, 6.48,6.48);

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-3 + 54, 1, 0 );
setRotateKey( spep_6-3 + 56, 1, -12.2 );
setRotateKey( spep_6-3 + 57, 1, -12.2 );

setRotateKey( spep_6-3 + 58, 1, -29.6 );
setRotateKey( spep_6-3 + 60, 1, -33.8 );
setRotateKey( spep_6-3 + 62, 1, -35.3 );
setRotateKey( spep_6-3 + 78, 1, -35.3 );
setRotateKey( spep_6-3 + 80, 1, -35.4 );
setRotateKey( spep_6-3 + 94, 1, -35.4 );
setRotateKey( spep_6-3 + 96, 1, -35.5 );
setRotateKey( spep_6-3 + 108, 1, -35.5 );
setRotateKey( spep_6-3 + 110, 1, -35.6 );
setRotateKey( spep_6-3 + 120, 1, -35.6 );
setRotateKey( spep_6-3 + 122, 1, -35.7 );
setRotateKey( spep_6-3 + 132, 1, -35.7 );
setRotateKey( spep_6-3 + 134, 1, -35.8 );
setRotateKey( spep_6-3 + 142, 1, -35.8 );
setRotateKey( spep_6-3 + 144, 1, -35.9 );
setRotateKey( spep_6-3 + 152, 1, -35.9 );
setRotateKey( spep_6-3 + 154, 1, -36 );
setRotateKey( spep_6-3 + 160, 1, -36 );
setRotateKey( spep_6-1 + 162, 1, -36.1 );

--SE
--敵ヒット
SE029 = playSeVer2( spep_6 + 0, 1024, "", 0, 0, 0, 0.6);

--悟空吹っ飛ぶ
SE030 = playSeVer2( spep_6 + 56, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 66, 1179, "", 0, 0, 0, -1);

--敵飛んでく
SE032 = playSeVer2( spep_6 + 140, 1183, "",spep_6 + 218, 34, 20, 0.6);
setStartTimeMs( SE032,  667 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+162;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 180, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 180, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 8 );
changeAnime( spep_7-3 + 44, 1, 105 );
o=0;
p=0;

setMoveKey( spep_7 + 0, 1, 983.6, 813.1 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -896.5, 777.3 , 0 );
setMoveKey( spep_7-3 + 4, 1, 807.3, 734.7 , 0 );
setMoveKey( spep_7-3 + 6, 1, 716.5, 687.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, 624.8, 636.7 , 0 );
setMoveKey( spep_7-3 + 10, 1, 532.7, 585.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, 511.5, 555.1 , 0 );
setMoveKey( spep_7-3 + 14, 1, 488.8, 520.5 , 0 );
setMoveKey( spep_7-3 + 16, 1, 464.8, 482.1 , 0 );
setMoveKey( spep_7-3 + 18, 1, 439.7, 440.1 , 0 );
setMoveKey( spep_7-3 + 20, 1, 413.6, 394.8 , 0 );
setMoveKey( spep_7-3 + 22, 1, 386.4, 346.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 358.4, 295.5 , 0 );
setMoveKey( spep_7-3 + 26, 1, 329.6, 242.2 , 0 );
setMoveKey( spep_7-3 + 28, 1, 300.1, 186.9 , 0 );
setMoveKey( spep_7-3 + 30, 1, 270.2, 129.8 , 0 );
setMoveKey( spep_7-3 + 32, 1, 239.7, 71.3 , 0 );
setMoveKey( spep_7-3 + 34, 1, 208.9, 11.7 , 0 );
setMoveKey( spep_7-3 + 36, 1, 177.8, -48.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 146.6, -109.5 , 0 );
setMoveKey( spep_7-3 + 40, 1, 115.3, -170.6 , 0 );
setMoveKey( spep_7-3 + 42, 1, 84.1, -231.4 , 0 );
setMoveKey( spep_7-3 + 43, 1, 84.1, -231.4 , 0 );

r=0;
s=10;

setMoveKey( spep_7-3 + 44, 1, 31.9, -237.7+s , 0 );
setMoveKey( spep_7-3 + 46, 1, 23.1, -207+s , 0 );
setMoveKey( spep_7-3 + 48, 1, 18.2, -182.4+s , 0 );
setMoveKey( spep_7-3 + 50, 1, 15.2, -160.6+s , 0 );
setMoveKey( spep_7-3 + 52, 1, 13.8, -158.1+s , 0 );
setMoveKey( spep_7-3 + 54, 1, 12.6, -155.8+s , 0 );
setMoveKey( spep_7-3 + 56, 1, 11.5, -153.7+s , 0 );
setMoveKey( spep_7-3 + 58, 1, 9.7, -150.9+s , 0 );
setMoveKey( spep_7-3 + 60, 1, 7.8, -148.1+s , 0 );
setMoveKey( spep_7-3 + 62, 1, 6.1, -145.2+s , 0 );
setMoveKey( spep_7-3 + 64, 1, 4.3, -142.4+s , 0 );
setMoveKey( spep_7-3 + 66, 1, 2.4, -139.5+s , 0 );
setMoveKey( spep_7-3 + 68, 1, 0.6, -136.7+s , 0 );
setMoveKey( spep_7-3 + 70, 1, -9.8, -120.2+s , 0 );
setMoveKey( spep_7-3 + 72, 1, -20.3, -103.7+s , 0 );
setMoveKey( spep_7-3 + 74, 1, -30.7, -87.3+s , 0 );
setMoveKey( spep_7-3 + 76, 1, -41.2, -70.8+s , 0 );
setMoveKey( spep_7-3 + 78, 1, -51.7, -54.4+s , 0 );
setMoveKey( spep_7-3 + 80, 1, -62.2, -37.9+s , 0 );
setMoveKey( spep_7-3 + 82, 1, -72.6, -21.5+s , 0 );
setMoveKey( spep_7-3 + 84, 1, -73, -20.9+s , 0 );
setMoveKey( spep_7-3 + 86, 1, -73.4, -20.3+s , 0 );
setMoveKey( spep_7-3 + 88, 1, -73.7, -19.8+s , 0 );
setMoveKey( spep_7-3 + 90, 1, -74.1, -19.2+s , 0 );
setMoveKey( spep_7-3 + 92, 1, -74.4, -18.7+s , 0 );
setMoveKey( spep_7-3 + 94, 1, -74.7, -18.1+s , 0 );
setMoveKey( spep_7-3 + 96, 1, -75.1, -17.6+s , 0 );
setMoveKey( spep_7-3 + 98, 1, -75.4, -17+s , 0 );
setMoveKey( spep_7-3 + 100, 1, -75.8, -16.4+s , 0 );
setMoveKey( spep_7-3 + 102, 1, -76.2, -15.9+s , 0 );
setMoveKey( spep_7-3 + 104, 1, -76.5, -15.4+s , 0 );
setMoveKey( spep_7-3 + 106, 1, -76.9, -14.8+s , 0 );
setMoveKey( spep_7-3 + 108, 1, -77.2, -14.2+s , 0 );
setMoveKey( spep_7-3 + 110, 1, -77.5, -13.7+s , 0 );
setMoveKey( spep_7-3 + 112, 1, -77.9, -13.1+s , 0 );
setMoveKey( spep_7-3 + 114, 1, -78.3, -12.6+s , 0 );
setMoveKey( spep_7-3 + 116, 1, -78.6, -12+s , 0 );
setMoveKey( spep_7-3 + 118, 1, -79, -11.5+s , 0 );
setMoveKey( spep_7-3 + 120, 1, -79.3, -10.9+s , 0 );
setMoveKey( spep_7-3 + 122, 1, -79.7, -10.4+s , 0 );
setMoveKey( spep_7-3 + 124, 1, -80, -9.8+s , 0 );
setMoveKey( spep_7-3 + 126, 1, -80.4, -9.3+s , 0 );
setMoveKey( spep_7-3 + 128, 1, -80.7, -8.7+s , 0 );
setMoveKey( spep_7-3 + 130, 1, -81.1, -8.1+s , 0 );
setMoveKey( spep_7-3 + 132, 1, -81.4, -7.6+s , 0 );
setMoveKey( spep_7-3 + 134, 1, -81.8, -7.1+s , 0 );
setMoveKey( spep_7-3 + 136, 1, -82.2, -6.5+s , 0 );
setMoveKey( spep_7-3 + 138, 1, -82.5, -6+s , 0 );
setMoveKey( spep_7-3 + 140, 1, -82.8, -5.4+s , 0 );
setMoveKey( spep_7-3 + 142, 1, -83.2, -4.8+s , 0 );
setMoveKey( spep_7-3 + 144, 1, -83.5, -4.3+s , 0 );
setMoveKey( spep_7-3 + 146, 1, -83.9, -3.7+s , 0 );
setMoveKey( spep_7-3 + 148, 1, -84.2, -3.2+s , 0 );
setMoveKey( spep_7-3 + 150, 1, -84.6, -2.6+s , 0 );
setMoveKey( spep_7-3 + 152, 1, -85, -2.1+s , 0 );
setMoveKey( spep_7-3 + 154, 1, -85.3, -1.5+s , 0 );
setMoveKey( spep_7-3 + 156, 1, -85.6, -1+s , 0 );
setMoveKey( spep_7-3 + 158, 1, -86, -0.4+s , 0 );
setMoveKey( spep_7-3 + 160, 1, -86.3, 0.1+s , 0 );
setMoveKey( spep_7-3 + 162, 1, -86.7, 0.7+s , 0 );
setMoveKey( spep_7-3 + 164, 1, -87.1, 1.3+s , 0 );
setMoveKey( spep_7-3 + 166, 1, -87.4, 1.8+s , 0 );
setMoveKey( spep_7-3 + 168, 1, -87.8, 2.3+s , 0 );
setMoveKey( spep_7-3 + 170, 1, -88.1, 2.9+s , 0 );
setMoveKey( spep_7-3 + 172, 1, -88.5, 3.5+s , 0 );
setMoveKey( spep_7-3 + 174, 1, -88.8, 4+s , 0 );
setMoveKey( spep_7-3 + 176, 1, -89.1, 4.6+s , 0 );
setMoveKey( spep_7-3 + 178, 1, -89.5, 5.1+s , 0 );

setScaleKey( spep_7 + 0, 1, 5.52,5.52);
setScaleKey( spep_7-3 + 4, 1, 4.68,4.68);
setScaleKey( spep_7-3 + 6, 1, 4.2,4.2);
setScaleKey( spep_7-3 + 8, 1, 3.78,3.78);
setScaleKey( spep_7-3 + 10, 1, 3.36,3.36);
setScaleKey( spep_7-3 + 12, 1, 3.24,3.24);
setScaleKey( spep_7-3 + 14, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 16, 1, 3,3);
setScaleKey( spep_7-3 + 18, 1, 2.88,2.88);
setScaleKey( spep_7-3 + 20, 1, 2.76,2.76);
setScaleKey( spep_7-3 + 22, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 24, 1, 2.52,2.52);
setScaleKey( spep_7-3 + 26, 1, 2.4,2.4);
setScaleKey( spep_7-3 + 28, 1, 2.28,2.28);
setScaleKey( spep_7-3 + 30, 1, 2.1,2.1);
setScaleKey( spep_7-3 + 32, 1, 1.98,1.98);
setScaleKey( spep_7-3 + 34, 1, 1.86,1.86);
setScaleKey( spep_7-3 + 36, 1, 1.68,1.68);
setScaleKey( spep_7-3 + 38, 1, 1.56,1.56);
setScaleKey( spep_7-3 + 40, 1, 1.38,1.38);
setScaleKey( spep_7-3 + 42, 1, 1.26,1.26);
setScaleKey( spep_7-3 + 43, 1, 1.26,1.26);

setScaleKey( spep_7-3 + 44, 1, 0.96,0.96);
--setScaleKey( spep_7-3 + 48, 1, 0.96,0.96);
setScaleKey( spep_7-3 + 50, 1, 0.9,0.9);
--setScaleKey( spep_7-3 + 58, 1, 0.9,0.9);
setScaleKey( spep_7-3 + 60, 1, 0.84,0.84);
--setScaleKey( spep_7-3 + 68, 1, 0.84,0.84);
setScaleKey( spep_7-3 + 70, 1, 0.78,0.78);
setScaleKey( spep_7-3 + 72, 1, 0.72,0.72);
setScaleKey( spep_7-3 + 74, 1, 0.66,0.66);
setScaleKey( spep_7-3 + 76, 1, 0.6,0.6);
--setScaleKey( spep_7-3 + 78, 1, 0.6,0.6);
setScaleKey( spep_7-3 + 80, 1, 0.54,0.54);
setScaleKey( spep_7-3 + 82, 1, 0.48,0.48);
--setScaleKey( spep_7-3 + 106, 1, 0.48,0.48);
--setScaleKey( spep_7-3 + 108, 1, 0.42,0.42);
setScaleKey( spep_7-3 + 178, 1, 0.42,0.42);

setRotateKey( spep_7 + 0, 1, -36.5 );
--setRotateKey( spep_7-3 + 2, 1, 36.6 );
setRotateKey( spep_7-3 + 4, 1, -36.7 );
setRotateKey( spep_7-3 + 6, 1, -36.9 );
setRotateKey( spep_7-3 + 8, 1, -37.2 );
setRotateKey( spep_7-3 + 10, 1, -37.5 );
setRotateKey( spep_7-3 + 12, 1, -38 );
setRotateKey( spep_7-3 + 14, 1, -38.5 );
setRotateKey( spep_7-3 + 16, 1, -39.1 );
setRotateKey( spep_7-3 + 18, 1, -39.8 );
setRotateKey( spep_7-3 + 20, 1, -40.5 );
setRotateKey( spep_7-3 + 22, 1, -41.4 );
setRotateKey( spep_7-3 + 24, 1, -42.3 );
setRotateKey( spep_7-3 + 26, 1, -43.3 );
setRotateKey( spep_7-3 + 28, 1, -44.3 );
setRotateKey( spep_7-3 + 30, 1, -45.5 );
setRotateKey( spep_7-3 + 32, 1, -46.7 );
setRotateKey( spep_7-3 + 34, 1, -48.1 );
setRotateKey( spep_7-3 + 36, 1, -49.4 );
setRotateKey( spep_7-3 + 38, 1, -50.9 );
setRotateKey( spep_7-3 + 40, 1, -52.5 );
setRotateKey( spep_7-3 + 42, 1, -54.1 );
setRotateKey( spep_7-3 + 43, 1, -54.1 );
setRotateKey( spep_7-3 + 44, 1, -50 );
setRotateKey( spep_7-3 + 178, 1, -50 );

--SE
--二人落下
SE033 = playSeVer2( spep_7 + 24, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 24, SE033, 82 );
SE034 = playSeVer2( spep_7 + 24, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 24, SE034, 305 );
SE035 = playSeVer2( spep_7 + 40, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 40, SE035, 88 );
SE036 = playSeVer2( spep_7 + 40, 1159, "",spep_7 + 78, 0, 16, -1);
setSeVolumeByWorkId( spep_7 + 40, SE036, 68 );
SE037 = playSeVer2( spep_7 + 40, 1192, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_7 + 40, SE037, 207 );

--画面遷移
SE038 = playSeVer2( spep_7 + 44, 1072, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_7+42);
endPhase( spep_7 + 170 );
end