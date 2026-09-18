--4022890:ベジータ_ファイナルバーストキャノン
--sp_effect_a1_00313

fcolor_r = 255;
fcolor_g = 255;
fcolor_b = 255;

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
SP_01=	157949	;--	力をタメる
SP_02=	157950	;--	敵に突っ込む
SP_03=	157951	;--	パンチ強打 手前
SP_04=	157953	;--	パンチ強打　奥
SP_05=	157954	;--	ダブルスレッジハンマー
SP_06=	157955	;--	敵を叩き落とす
SP_07=	157957	;--	敵を叩き落とす
SP_08=	157958	;--	気溜め
SP_09=	157959	;--	気弾発射
SP_10=	157960	;--	気弾アップ
SP_11=	157961	;--	気弾が敵に迫る
SP_12=	157963	;--	気弾が敵に迫る
SP_13=	157964	;--	フィニッシュ絵

--エフェクト(てき)
SP_01x=	157949	;--	力をタメる
SP_02x=	157950	;--	敵に突っ込む
SP_03x=	157952	;--	パンチ強打 手前(てき)
SP_04x=	157953	;--	パンチ強打　奥
SP_05x=	157954	;--	ダブルスレッジハンマー
SP_06x=	157956	;--	敵を叩き落とす(てき)
SP_07x=	157957	;--	敵を叩き落とす
SP_08x=	157958	;--	気溜め
SP_09x=	158035	;--	気弾発射
SP_10x=	157960	;--	気弾アップ
SP_11x=	157962	;--	気弾が敵に迫る(てき)
SP_12x=	157963	;--	気弾が敵に迫る
SP_13x=	157964	;--	フィニッシュ絵

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
--力をタメる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 96, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 94, tame, 255 );
setEffAlphaKey( spep_0 + 95, tame, 255 );
setEffAlphaKey( spep_0 + 96, tame, 0 );

--SE
--冒頭気ダメ
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 110, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 73 );
SE002 = playSeVer2( spep_0 + 0, 1243, "",spep_0 + 110, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );
SE004 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 41 );

--ズーム
SE005 = playSeVer2( spep_0 + 2, 1072, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE005, 211 );

--カッ
SE006 = playSeVer2( spep_0 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE006, 162 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+96;
------------------------------------------------------
--敵に突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 56, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 54, rush, 255 );
setEffAlphaKey( spep_1 + 55, rush, 255 );
setEffAlphaKey( spep_1 + 56, rush, 0 );

--SE
--向かってくる
SE007 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--パンチ強打
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 56, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 54, panting_f, 255 );
setEffAlphaKey( spep_2 + 55, panting_f, 255 );
setEffAlphaKey( spep_2 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 56, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 54, panting_b, 255 );
setEffAlphaKey( spep_2 + 55, panting_b, 255 );
setEffAlphaKey( spep_2 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 14, 1, 106 );

setMoveKey( spep_2 + 0, 1, 235.4, -26.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 223.8, -25.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 212, -24.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 200.3, -23.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, 188.6, -23 , 0 );
setMoveKey( spep_2-3 + 10, 1, 176.9, -22 , 0 );
setMoveKey( spep_2-3 + 13, 1, 165.3, -21.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 160.9, -16.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 99.2, 10.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 107.7, -24.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 125.1, -1.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 109.5, -5.2 , 0 );
setMoveKey( spep_2-3 + 24, 1, 130.6, -23.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 121.1, -15.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 121.4, -17 , 0 );
setMoveKey( spep_2-3 + 30, 1, 122.6, -18.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 123.8, -19.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 125, -21.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 126.2, -22.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 127.4, -24.4 , 0 );
setMoveKey( spep_2-3 + 40, 1, 128.7, -25.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 129.9, -27.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 131.1, -28.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 132.3, -30.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 133.5, -31.7 , 0 );
setMoveKey( spep_2-3 + 50, 1, 134.7, -33.2 , 0 );
setMoveKey( spep_2-3 + 52, 1, 135.9, -34.6 , 0 );
setMoveKey( spep_2-3 + 54, 1, 137.1, -36.1 , 0 );
setMoveKey( spep_2-3 + 56, 1, 138.4, -37.6 , 0 );
setMoveKey( spep_2-1 + 58, 1, 139.6, -39.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.12,2.12);
setScaleKey( spep_2-3 + 4, 1, 2.22,2.22);
setScaleKey( spep_2-3 + 6, 1, 2.26,2.26);
setScaleKey( spep_2-3 + 8, 1, 2.33,2.33);
setScaleKey( spep_2-3 + 10, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 13, 1, 2.41,2.41);
setScaleKey( spep_2-3 + 14, 1, 2.28,2.28);
setScaleKey( spep_2-3 + 16, 1, 2.31,2.31);
setScaleKey( spep_2-3 + 18, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 36, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 38, 1, 2.38,2.38);
setScaleKey( spep_2-1 + 58, 1, 2.38,2.38);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 13, 1, 0 );
setRotateKey( spep_2-3 + 14, 1, -19 );
setRotateKey( spep_2-3 + 16, 1, -18.5 );
setRotateKey( spep_2-3 + 18, 1, -18 );
setRotateKey( spep_2-3 + 20, 1, -17.6 );
setRotateKey( spep_2-3 + 22, 1, -17.1 );
setRotateKey( spep_2-3 + 24, 1, -16.6 );
setRotateKey( spep_2-3 + 26, 1, -16.1 );
setRotateKey( spep_2-3 + 28, 1, -15.6 );
setRotateKey( spep_2-3 + 30, 1, -15.1 );
setRotateKey( spep_2-3 + 32, 1, -14.7 );
setRotateKey( spep_2-3 + 34, 1, -14.2 );
setRotateKey( spep_2-3 + 36, 1, -13.7 );
setRotateKey( spep_2-3 + 38, 1, -13.2 );
setRotateKey( spep_2-3 + 40, 1, -12.7 );
setRotateKey( spep_2-3 + 42, 1, -12.3 );
setRotateKey( spep_2-3 + 44, 1, -11.8 );
setRotateKey( spep_2-3 + 46, 1, -11.3 );
setRotateKey( spep_2-3 + 48, 1, -10.8 );
setRotateKey( spep_2-3 + 50, 1, -10.3 );
setRotateKey( spep_2-3 + 52, 1, -9.9 );
setRotateKey( spep_2-3 + 54, 1, -9.4 );
setRotateKey( spep_2-3 + 56, 1, -8.9 );
setRotateKey( spep_2-1 + 58, 1, -8.4 );

--SE
--パンチ
SE009 = playSeVer2( spep_2 + 6, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 12, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE011, 65 );
SE012 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
--ダブルスレッジハンマー
------------------------------------------------------
-- ** エフェクト等 ** --
hammer = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hammer, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, hammer, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hammer, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, hammer, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hammer, 0 );
setEffRotateKey( spep_3 + 66, hammer, 0 );
setEffAlphaKey( spep_3 + 0, hammer, 255 );
setEffAlphaKey( spep_3 + 64, hammer, 255 );
setEffAlphaKey( spep_3 + 65, hammer, 255 );
setEffAlphaKey( spep_3 + 66, hammer, 0 );

--SE
--飛び上がる
SE013 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 138 );
SE014 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 65 );

--叩き落とす
SE015 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 80, 0, 10, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
--敵を叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, drop_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop_f, 0 );
setEffRotateKey( spep_4 + 66, drop_f, 0 );
setEffAlphaKey( spep_4 + 0, drop_f, 255 );
setEffAlphaKey( spep_4 + 64, drop_f, 255 );
setEffAlphaKey( spep_4 + 65, drop_f, 255 );
setEffAlphaKey( spep_4 + 66, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, drop_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop_b, 0 );
setEffRotateKey( spep_4 + 66, drop_b, 0 );
setEffAlphaKey( spep_4 + 0, drop_b, 255 );
setEffAlphaKey( spep_4 + 64, drop_b, 255 );
setEffAlphaKey( spep_4 + 65, drop_b, 255 );
setEffAlphaKey( spep_4 + 66, drop_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 5 );

a=-50;
b=-110;
setMoveKey( spep_4 + 0, 1, 47.9+a, -74.5+b , 0 );
setMoveKey( spep_4-3 + 4, 1, 47.9+a, -74.6+b , 0 );
setMoveKey( spep_4-3 + 6, 1, 47.9+a, -74.7+b , 0 );
setMoveKey( spep_4-3 + 8, 1, 63.6+a, -63.3+b , 0 );

setMoveKey( spep_4-3 + 10, 1, 44.8, -91.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 48.7, -120.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 61, -129.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 56.8, -133.4 , 0 );
setMoveKey( spep_4-3 + 18, 1, 68.4, -142.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 64.1, -142.2 , 0 );
setMoveKey( spep_4-3 + 22, 1, 66.4, -149.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 68.3, -155.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 70, -160.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 71.5, -165.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 72.8, -169.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 73.9, -173 , 0 );
setMoveKey( spep_4-3 + 34, 1, 74.9, -176 , 0 );
setMoveKey( spep_4-3 + 36, 1, 75.7, -178.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 76.4, -180.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, 77, -182.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 77.4, -183.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 77.8, -184.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 78.1, -185.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 78.3, -186 , 0 );
setMoveKey( spep_4-3 + 50, 1, 78.4, -186.2 , 0 );
setMoveKey( spep_4-3 + 52, 1, 78.4, -186.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 78.3, -185.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 78.2, -185.2 , 0 );
setMoveKey( spep_4-1 + 58, 1, 78, -184.3 , 0 );

setScaleKey( spep_4 + 0, 1, 5.25,5.25);
setScaleKey( spep_4-3 + 4, 1, 4.93,4.93);
setScaleKey( spep_4-3 + 6, 1, 4.44,4.44);
setScaleKey( spep_4-3 + 8, 1, 3.46,3.46);
setScaleKey( spep_4-3 + 10, 1, 2.36,2.36);
setScaleKey( spep_4-3 + 12, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 14, 1, 1.46,1.46);
setScaleKey( spep_4-3 + 16, 1, 1.33,1.33);
setScaleKey( spep_4-3 + 18, 1, 1.22,1.22);
setScaleKey( spep_4-3 + 20, 1, 1.12,1.12);
setScaleKey( spep_4-3 + 22, 1, 1.03,1.03);
setScaleKey( spep_4-3 + 24, 1, 0.95,0.95);
setScaleKey( spep_4-3 + 26, 1, 0.88,0.88);
setScaleKey( spep_4-3 + 28, 1, 0.81,0.81);
setScaleKey( spep_4-3 + 30, 1, 0.76,0.76);
setScaleKey( spep_4-3 + 32, 1, 0.7,0.7);
setScaleKey( spep_4-3 + 34, 1, 0.66,0.66);
setScaleKey( spep_4-3 + 36, 1, 0.61,0.61);
setScaleKey( spep_4-3 + 38, 1, 0.57,0.57);
setScaleKey( spep_4-3 + 40, 1, 0.52,0.52);
setScaleKey( spep_4-3 + 42, 1, 0.49,0.49);
setScaleKey( spep_4-3 + 44, 1, 0.45,0.45);
setScaleKey( spep_4-3 + 46, 1, 0.43,0.43);
setScaleKey( spep_4-3 + 48, 1, 0.4,0.4);
setScaleKey( spep_4-3 + 50, 1, 0.38,0.38);
setScaleKey( spep_4-3 + 52, 1, 0.35,0.35);
setScaleKey( spep_4-3 + 54, 1, 0.33,0.33);
setScaleKey( spep_4-3 + 56, 1, 0.31,0.31);
setScaleKey( spep_4-1 + 58, 1, 0.3,0.3);

setRotateKey( spep_4 + 0, 1, 36.9 );
setRotateKey( spep_4-3 + 8, 1, 36.9 );
setRotateKey( spep_4-3 + 10, 1, 38.3 );
setRotateKey( spep_4-3 + 12, 1, 39.8 );
setRotateKey( spep_4-3 + 14, 1, 41.3 );
setRotateKey( spep_4-3 + 16, 1, 42.7 );
setRotateKey( spep_4-3 + 18, 1, 44.2 );
setRotateKey( spep_4-3 + 20, 1, 45.7 );
setRotateKey( spep_4-3 + 22, 1, 47.1 );
setRotateKey( spep_4-3 + 24, 1, 48.6 );
setRotateKey( spep_4-3 + 26, 1, 50.1 );
setRotateKey( spep_4-3 + 28, 1, 51.5 );
setRotateKey( spep_4-3 + 30, 1, 53 );
setRotateKey( spep_4-3 + 32, 1, 54.5 );
setRotateKey( spep_4-3 + 34, 1, 55.9 );
setRotateKey( spep_4-3 + 36, 1, 57.4 );
setRotateKey( spep_4-3 + 38, 1, 58.9 );
setRotateKey( spep_4-3 + 40, 1, 60.3 );
setRotateKey( spep_4-3 + 42, 1, 61.8 );
setRotateKey( spep_4-3 + 44, 1, 63.3 );
setRotateKey( spep_4-3 + 46, 1, 64.7 );
setRotateKey( spep_4-3 + 48, 1, 66.2 );
setRotateKey( spep_4-3 + 50, 1, 67.7 );
setRotateKey( spep_4-3 + 52, 1, 69.1 );
setRotateKey( spep_4-3 + 54, 1, 70.6 );
setRotateKey( spep_4-3 + 56, 1, 72.1 );
setRotateKey( spep_4-1 + 58, 1, 73.5 );

--SE
--叩き落とす
SE016 = playSeVer2( spep_4 + 6, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE017 = playSeVer2( spep_4 + 20, 1183, "",spep_4 + 128, 0, 42, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+56;
------------------------------------------------------
--気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_5 + 240, tame2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, tame2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame2, 0 );
setEffRotateKey( spep_5 + 240, tame2, 0 );
setEffAlphaKey( spep_5 + 0, tame2, 255 );
setEffAlphaKey( spep_5 + 240, tame2, 255 );
setEffAlphaKey( spep_5 + 241, tame2, 0 );
setEffAlphaKey( spep_5 + 242, tame2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5-3 + 8,  906, 88, 0x100, -1, 0, -29.8, -19.2 );
setEffShake( spep_5-3 + 8, shuchusen1, 88, 20 );
setEffMoveKey( spep_5-3 + 8, shuchusen1, -29.8, -19.2 , 0 );
setEffMoveKey( spep_5-3 + 96, shuchusen1, -29.8, -19.2 , 0 );

setEffScaleKey( spep_5-3 + 8, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_5-3 + 96, shuchusen1, 1.18, 1.22 );

setEffRotateKey( spep_5-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_5-3 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_5-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_5-3 + 96, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 30, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  30,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  30,  515);

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
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕広げる
SE019 = playSeVer2( spep_5 + 42, 1003, "", 0, 0, 0, -1);

--両腕前へ
SE020 = playSeVer2( spep_5 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 72, SE020, 62 );
SE021 = playSeVer2( spep_5 + 74, 1007, "", 0, 0, 0, -1);

--気弾溜め
SE022 = playSeVer2( spep_5 + 92, 1037, "",spep_5 + 244, 0, 6, -1);
SE023 = playSeVer2( spep_5 + 106, 1144, "",spep_5 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 106, SE023, 76 );
SE024 = playSeVer2( spep_5 + 176, 1157, "",spep_5 + 244, 0, 6, -1);

--白フェード
entryFade( spep_5 + 232, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+240;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 ,"",0.8);
]]--
--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    shuchusen = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_6,  shuchusen,  0,  0);
    setEffScaleKey(  spep_6,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_6,  shuchusen,  0);
    setEffAlphaKey(  spep_6,  shuchusen,  255);
    setEffMoveKey(  spep_6+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_6+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_6+90,  shuchusen,  0);
    setEffAlphaKey(  spep_6+90,  shuchusen,  255);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, kidan, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, kidan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kidan, 0 );
setEffRotateKey( spep_7 + 86, kidan, 0 );
setEffAlphaKey( spep_7 + 0, kidan, 255 );
setEffAlphaKey( spep_7 + 84, kidan, 255 );
setEffAlphaKey( spep_7 + 85, kidan, 255 );
setEffAlphaKey( spep_7 + 86, kidan, 0 );

--SE
--発射前溜め
SE026 = playSeVer2( spep_7 + 0, 1144, "",spep_7 + 40, 12, 10, -1);
setStartTimeMs( SE026,  1533 );
SE027 = playSeVer2( spep_7 + 2, 1157, "",spep_7 + 36, 0, 8, -1);

--気弾発射
SE028 = playSeVer2( spep_7 + 32, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_7 + 32, 1146, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+86;
------------------------------------------------------
--気弾アップ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kidan2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan2, 0 );
setEffRotateKey( spep_8 + 56, kidan2, 0 );
setEffAlphaKey( spep_8 + 0, kidan2, 255 );
setEffAlphaKey( spep_8 + 54, kidan2, 255 );
setEffAlphaKey( spep_8 + 55, kidan2, 255 );
setEffAlphaKey( spep_8 + 56, kidan2, 0 );

--SE
--気弾飛んでいく
SE030 = playSeVer2( spep_8 + 0, 1202, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0,60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
--気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 146, beam_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam_f, 0 );
setEffRotateKey( spep_9 + 146, beam_f, 0 );
setEffAlphaKey( spep_9 + 0, beam_f, 255 );
setEffAlphaKey( spep_9 + 144, beam_f, 255 );
setEffAlphaKey( spep_9 + 145, beam_f, 255 );
setEffAlphaKey( spep_9 + 146, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 146, beam_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam_b, 0 );
setEffRotateKey( spep_9 + 146, beam_b, 0 );
setEffAlphaKey( spep_9 + 0, beam_b, 255 );
setEffAlphaKey( spep_9 + 144, beam_b, 255 );
setEffAlphaKey( spep_9 + 145, beam_b, 255 );
setEffAlphaKey( spep_9 + 146, beam_b, 0 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 60, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );

setBlendColor(spep_9 + 30 ,1 ,3 ,0 ,0 ,0 ,0);
setBlendColor(spep_9 + 31 ,1 ,3 ,0 ,0 ,0 ,0.034);
setBlendColor(spep_9 + 32 ,1 ,3 ,0 ,0 ,0 ,0.068);
setBlendColor(spep_9 + 33 ,1 ,3 ,0 ,0 ,0 ,0.102);
setBlendColor(spep_9 + 34 ,1 ,3 ,0 ,0 ,0 ,0.136);
setBlendColor(spep_9 + 35 ,1 ,3 ,0 ,0 ,0 ,0.17);
setBlendColor(spep_9 + 36 ,1 ,3 ,0 ,0 ,0 ,0.204);
setBlendColor(spep_9 + 37 ,1 ,3 ,0 ,0 ,0 ,0.238);
setBlendColor(spep_9 + 38 ,1 ,3 ,0 ,0 ,0 ,0.272);
setBlendColor(spep_9 + 39 ,1 ,3 ,0 ,0 ,0 ,0.306);
setBlendColor(spep_9 + 40 ,1 ,3 ,0 ,0 ,0 ,0.34);
setBlendColor(spep_9 + 41 ,1 ,3 ,0 ,0 ,0 ,0.374);
setBlendColor(spep_9 + 42 ,1 ,3 ,0 ,0 ,0 ,0.408);
setBlendColor(spep_9 + 43 ,1 ,3 ,0 ,0 ,0 ,0.442);
setBlendColor(spep_9 + 44 ,1 ,3 ,0 ,0 ,0 ,0.476);
setBlendColor(spep_9 + 45 ,1 ,3 ,0 ,0 ,0 ,0.51);
setBlendColor(spep_9 + 46 ,1 ,3 ,0 ,0 ,0 ,0.544);
setBlendColor(spep_9 + 47 ,1 ,3 ,0 ,0 ,0 ,0.578);
setBlendColor(spep_9 + 48 ,1 ,3 ,0 ,0 ,0 ,0.612);
setBlendColor(spep_9 + 49 ,1 ,3 ,0 ,0 ,0 ,0.646);
setBlendColor(spep_9 + 50 ,1 ,3 ,0 ,0 ,0 ,0.68);
setBlendColor(spep_9 + 51 ,1 ,3 ,0 ,0 ,0 ,0.714);
setBlendColor(spep_9 + 52 ,1 ,3 ,0 ,0 ,0 ,0.748);
setBlendColor(spep_9 + 53 ,1 ,3 ,0 ,0 ,0 ,0.782);
setBlendColor(spep_9 + 54 ,1 ,3 ,0 ,0 ,0 ,0.816);
setBlendColor(spep_9 + 55 ,1 ,3 ,0 ,0 ,0 ,0.85);
setBlendColor(spep_9 + 56 ,1 ,3 ,0 ,0 ,0 ,0.884);
setBlendColor(spep_9 + 57 ,1 ,3 ,0 ,0 ,0 ,0.918);
setBlendColor(spep_9 + 58 ,1 ,3 ,0 ,0 ,0 ,0.952);
setBlendColor(spep_9 + 59 ,1 ,3 ,0 ,0 ,0 ,0.986);
setBlendColor(spep_9 + 60 ,1 ,3 ,0 ,0 ,0 ,1);
setBlendColor(spep_9 + 62 ,1 ,3 ,0 ,0 ,0 ,0);

setMoveKey( spep_9 + 0, 1, -94, 244.1 , 0 );
setMoveKey( spep_9 + 2, 1, -92, 240.3 , 0 );
setMoveKey( spep_9 + 4, 1, -90, 236.5 , 0 );
setMoveKey( spep_9 + 6, 1, -88, 232.7 , 0 );
setMoveKey( spep_9 + 8, 1, -85.9, 228.9 , 0 );
setMoveKey( spep_9 + 10, 1, -83.9, 225.1 , 0 );
setMoveKey( spep_9 + 12, 1, -81.9, 221.3 , 0 );
setMoveKey( spep_9 + 14, 1, -79.9, 217.5 , 0 );
setMoveKey( spep_9 + 16, 1, -77.8, 213.7 , 0 );
setMoveKey( spep_9 + 18, 1, -75.8, 209.9 , 0 );
setMoveKey( spep_9 + 20, 1, -73.8, 206.1 , 0 );
setMoveKey( spep_9 + 22, 1, -71.8, 202.3 , 0 );
setMoveKey( spep_9 + 24, 1, -69.7, 198.5 , 0 );
setMoveKey( spep_9 + 26, 1, -67.7, 194.7 , 0 );
setMoveKey( spep_9 + 28, 1, -65.7, 191 , 0 );
setMoveKey( spep_9 + 30, 1, -62.7, 188.1 , 0 );
setMoveKey( spep_9 + 32, 1, -59.7, 185.3 , 0 );
setMoveKey( spep_9 + 34, 1, -59.7, 180.5 , 0 );
setMoveKey( spep_9 + 36, 1, -59.7, 175.6 , 0 );
setMoveKey( spep_9 + 38, 1, -54.6, 169.9 , 0 );
setMoveKey( spep_9 + 40, 1, -49.4, 164.2 , 0 );
setMoveKey( spep_9 + 42, 1, -49.6, 162.6 , 0 );
setMoveKey( spep_9 + 44, 1, -49.7, 160.9 , 0 );
setMoveKey( spep_9 + 46, 1, -43.8, 153.2 , 0 );
setMoveKey( spep_9 + 48, 1, -42.4, 157.8 , 0 );
setMoveKey( spep_9 + 50, 1, -33.2, 147.2 , 0 );
setMoveKey( spep_9 + 52, 1, -39.5, 142 , 0 );
setMoveKey( spep_9 + 54, 1, -40.1, 143.2 , 0 );
setMoveKey( spep_9 + 56, 1, -31.9, 142.5 , 0 );
setMoveKey( spep_9 + 58, 1, -35.3, 134 , 0 );
setMoveKey( spep_9 + 60, 1, -31.4, 137.9 , 0 );

setScaleKey( spep_9 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_9 + 2, 1, 0.54, 0.54 );
setScaleKey( spep_9 + 4, 1, 0.57, 0.57 );
setScaleKey( spep_9 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_9 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_9 + 10, 1, 0.64, 0.64 );
setScaleKey( spep_9 + 12, 1, 0.67, 0.67 );
setScaleKey( spep_9 + 14, 1, 0.69, 0.69 );
setScaleKey( spep_9 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_9 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_9 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_9 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_9 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_9 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_9 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_9 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_9 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_9 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_9 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_9 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_9 + 40, 1, 1.01, 1.01 );
setScaleKey( spep_9 + 42, 1, 1.03, 1.03 );
setScaleKey( spep_9 + 44, 1, 1.06, 1.06 );
setScaleKey( spep_9 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_9 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_9 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_9 + 52, 1, 1.16, 1.16 );
setScaleKey( spep_9 + 54, 1, 1.18, 1.18 );
setScaleKey( spep_9 + 56, 1, 1.21, 1.21 );
setScaleKey( spep_9 + 58, 1, 1.23, 1.23 );
setScaleKey( spep_9 + 60, 1, 1.23, 1.23 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 60, 1, 0 );

--SE
--気弾敵に向かっていく
SE031 = playSeVer2( spep_9 + 0, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE032 = playSeVer2( spep_9 + 60, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_9 + 60, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+146;
------------------------------------------------------
--フィニッシュ絵
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 120, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 120, finish, 255 );

--SE
--ラスト爆発
SE034 = playSeVer2( spep_10 + 0, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_10 + 0, 1188, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_10+10);
endPhase( spep_10 + 110 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--力をタメる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 96, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 94, tame, 255 );
setEffAlphaKey( spep_0 + 95, tame, 255 );
setEffAlphaKey( spep_0 + 96, tame, 0 );

--SE
--冒頭気ダメ
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 110, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 73 );
SE002 = playSeVer2( spep_0 + 0, 1243, "",spep_0 + 110, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );
SE004 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 41 );

--ズーム
SE005 = playSeVer2( spep_0 + 2, 1072, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE005, 211 );

--カッ
SE006 = playSeVer2( spep_0 + 20, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE006, 162 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+96;
------------------------------------------------------
--敵に突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 56, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 54, rush, 255 );
setEffAlphaKey( spep_1 + 55, rush, 255 );
setEffAlphaKey( spep_1 + 56, rush, 0 );

--SE
--向かってくる
SE007 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--パンチ強打
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 56, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 54, panting_f, 255 );
setEffAlphaKey( spep_2 + 55, panting_f, 255 );
setEffAlphaKey( spep_2 + 56, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 56, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 54, panting_b, 255 );
setEffAlphaKey( spep_2 + 55, panting_b, 255 );
setEffAlphaKey( spep_2 + 56, panting_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 14, 1, 106 );

setMoveKey( spep_2 + 0, 1, 235.4, -26.6 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 223.8, -25.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 212, -24.7 , 0 );
setMoveKey( spep_2-3 + 6, 1, 200.3, -23.9 , 0 );
setMoveKey( spep_2-3 + 8, 1, 188.6, -23 , 0 );
setMoveKey( spep_2-3 + 10, 1, 176.9, -22 , 0 );
setMoveKey( spep_2-3 + 13, 1, 165.3, -21.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 160.9, -16.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 99.2, 10.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 107.7, -24.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 125.1, -1.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 109.5, -5.2 , 0 );
setMoveKey( spep_2-3 + 24, 1, 130.6, -23.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 121.1, -15.5 , 0 );
setMoveKey( spep_2-3 + 28, 1, 121.4, -17 , 0 );
setMoveKey( spep_2-3 + 30, 1, 122.6, -18.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 123.8, -19.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 125, -21.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 126.2, -22.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 127.4, -24.4 , 0 );
setMoveKey( spep_2-3 + 40, 1, 128.7, -25.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 129.9, -27.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 131.1, -28.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 132.3, -30.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 133.5, -31.7 , 0 );
setMoveKey( spep_2-3 + 50, 1, 134.7, -33.2 , 0 );
setMoveKey( spep_2-3 + 52, 1, 135.9, -34.6 , 0 );
setMoveKey( spep_2-3 + 54, 1, 137.1, -36.1 , 0 );
setMoveKey( spep_2-3 + 56, 1, 138.4, -37.6 , 0 );
setMoveKey( spep_2-1 + 58, 1, 139.6, -39.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.12,2.12);
setScaleKey( spep_2-3 + 4, 1, 2.22,2.22);
setScaleKey( spep_2-3 + 6, 1, 2.26,2.26);
setScaleKey( spep_2-3 + 8, 1, 2.33,2.33);
setScaleKey( spep_2-3 + 10, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 13, 1, 2.41,2.41);
setScaleKey( spep_2-3 + 14, 1, 2.28,2.28);
setScaleKey( spep_2-3 + 16, 1, 2.31,2.31);
setScaleKey( spep_2-3 + 18, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 36, 1, 2.37,2.37);
setScaleKey( spep_2-3 + 38, 1, 2.38,2.38);
setScaleKey( spep_2-1 + 58, 1, 2.38,2.38);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 13, 1, 0 );
setRotateKey( spep_2-3 + 14, 1, -19 );
setRotateKey( spep_2-3 + 16, 1, -18.5 );
setRotateKey( spep_2-3 + 18, 1, -18 );
setRotateKey( spep_2-3 + 20, 1, -17.6 );
setRotateKey( spep_2-3 + 22, 1, -17.1 );
setRotateKey( spep_2-3 + 24, 1, -16.6 );
setRotateKey( spep_2-3 + 26, 1, -16.1 );
setRotateKey( spep_2-3 + 28, 1, -15.6 );
setRotateKey( spep_2-3 + 30, 1, -15.1 );
setRotateKey( spep_2-3 + 32, 1, -14.7 );
setRotateKey( spep_2-3 + 34, 1, -14.2 );
setRotateKey( spep_2-3 + 36, 1, -13.7 );
setRotateKey( spep_2-3 + 38, 1, -13.2 );
setRotateKey( spep_2-3 + 40, 1, -12.7 );
setRotateKey( spep_2-3 + 42, 1, -12.3 );
setRotateKey( spep_2-3 + 44, 1, -11.8 );
setRotateKey( spep_2-3 + 46, 1, -11.3 );
setRotateKey( spep_2-3 + 48, 1, -10.8 );
setRotateKey( spep_2-3 + 50, 1, -10.3 );
setRotateKey( spep_2-3 + 52, 1, -9.9 );
setRotateKey( spep_2-3 + 54, 1, -9.4 );
setRotateKey( spep_2-3 + 56, 1, -8.9 );
setRotateKey( spep_2-1 + 58, 1, -8.4 );

--SE
--パンチ
SE009 = playSeVer2( spep_2 + 6, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 12, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE011, 65 );
SE012 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
--ダブルスレッジハンマー
------------------------------------------------------
-- ** エフェクト等 ** --
hammer = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hammer, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, hammer, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hammer, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, hammer, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hammer, 0 );
setEffRotateKey( spep_3 + 66, hammer, 0 );
setEffAlphaKey( spep_3 + 0, hammer, 255 );
setEffAlphaKey( spep_3 + 64, hammer, 255 );
setEffAlphaKey( spep_3 + 65, hammer, 255 );
setEffAlphaKey( spep_3 + 66, hammer, 0 );

--SE
--飛び上がる
SE013 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 138 );
SE014 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 65 );

--叩き落とす
SE015 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 80, 0, 10, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+66;
------------------------------------------------------
--敵を叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, drop_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, drop_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 66, drop_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop_f, 0 );
setEffRotateKey( spep_4 + 66, drop_f, 0 );
setEffAlphaKey( spep_4 + 0, drop_f, 255 );
setEffAlphaKey( spep_4 + 64, drop_f, 255 );
setEffAlphaKey( spep_4 + 65, drop_f, 255 );
setEffAlphaKey( spep_4 + 66, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, drop_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, drop_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 66, drop_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop_b, 0 );
setEffRotateKey( spep_4 + 66, drop_b, 0 );
setEffAlphaKey( spep_4 + 0, drop_b, 255 );
setEffAlphaKey( spep_4 + 64, drop_b, 255 );
setEffAlphaKey( spep_4 + 65, drop_b, 255 );
setEffAlphaKey( spep_4 + 66, drop_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 5 );

a=50;
b=-110;
setMoveKey( spep_4 + 0, 1, 47.9+a, -74.5+b , 0 );
setMoveKey( spep_4-3 + 4, 1, 47.9+a, -74.6+b , 0 );
setMoveKey( spep_4-3 + 6, 1, 47.9+a, -74.7+b , 0 );
setMoveKey( spep_4-3 + 8, 1, 63.6+a, -63.3+b , 0 );

setMoveKey( spep_4-3 + 10, 1, 44.8, -91.6 , 0 );
setMoveKey( spep_4-3 + 12, 1, 48.7, -120.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 61, -129.3 , 0 );
setMoveKey( spep_4-3 + 16, 1, 56.8, -133.4 , 0 );
setMoveKey( spep_4-3 + 18, 1, 68.4, -142.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 64.1, -142.2 , 0 );
setMoveKey( spep_4-3 + 22, 1, 66.4, -149.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 68.3, -155.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 70, -160.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 71.5, -165.6 , 0 );
setMoveKey( spep_4-3 + 30, 1, 72.8, -169.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, 73.9, -173 , 0 );
setMoveKey( spep_4-3 + 34, 1, 74.9, -176 , 0 );
setMoveKey( spep_4-3 + 36, 1, 75.7, -178.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 76.4, -180.6 , 0 );
setMoveKey( spep_4-3 + 40, 1, 77, -182.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 77.4, -183.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 77.8, -184.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 78.1, -185.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 78.3, -186 , 0 );
setMoveKey( spep_4-3 + 50, 1, 78.4, -186.2 , 0 );
setMoveKey( spep_4-3 + 52, 1, 78.4, -186.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 78.3, -185.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 78.2, -185.2 , 0 );
setMoveKey( spep_4-1 + 58, 1, 78, -184.3 , 0 );

setScaleKey( spep_4 + 0, 1, 5.25,5.25);
setScaleKey( spep_4-3 + 4, 1, 4.93,4.93);
setScaleKey( spep_4-3 + 6, 1, 4.44,4.44);
setScaleKey( spep_4-3 + 8, 1, 3.46,3.46);
setScaleKey( spep_4-3 + 10, 1, 2.36,2.36);
setScaleKey( spep_4-3 + 12, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 14, 1, 1.46,1.46);
setScaleKey( spep_4-3 + 16, 1, 1.33,1.33);
setScaleKey( spep_4-3 + 18, 1, 1.22,1.22);
setScaleKey( spep_4-3 + 20, 1, 1.12,1.12);
setScaleKey( spep_4-3 + 22, 1, 1.03,1.03);
setScaleKey( spep_4-3 + 24, 1, 0.95,0.95);
setScaleKey( spep_4-3 + 26, 1, 0.88,0.88);
setScaleKey( spep_4-3 + 28, 1, 0.81,0.81);
setScaleKey( spep_4-3 + 30, 1, 0.76,0.76);
setScaleKey( spep_4-3 + 32, 1, 0.7,0.7);
setScaleKey( spep_4-3 + 34, 1, 0.66,0.66);
setScaleKey( spep_4-3 + 36, 1, 0.61,0.61);
setScaleKey( spep_4-3 + 38, 1, 0.57,0.57);
setScaleKey( spep_4-3 + 40, 1, 0.52,0.52);
setScaleKey( spep_4-3 + 42, 1, 0.49,0.49);
setScaleKey( spep_4-3 + 44, 1, 0.45,0.45);
setScaleKey( spep_4-3 + 46, 1, 0.43,0.43);
setScaleKey( spep_4-3 + 48, 1, 0.4,0.4);
setScaleKey( spep_4-3 + 50, 1, 0.38,0.38);
setScaleKey( spep_4-3 + 52, 1, 0.35,0.35);
setScaleKey( spep_4-3 + 54, 1, 0.33,0.33);
setScaleKey( spep_4-3 + 56, 1, 0.31,0.31);
setScaleKey( spep_4-1 + 58, 1, 0.3,0.3);

setRotateKey( spep_4 + 0, 1, 36.9 );
setRotateKey( spep_4-3 + 8, 1, 36.9 );
setRotateKey( spep_4-3 + 10, 1, 38.3 );
setRotateKey( spep_4-3 + 12, 1, 39.8 );
setRotateKey( spep_4-3 + 14, 1, 41.3 );
setRotateKey( spep_4-3 + 16, 1, 42.7 );
setRotateKey( spep_4-3 + 18, 1, 44.2 );
setRotateKey( spep_4-3 + 20, 1, 45.7 );
setRotateKey( spep_4-3 + 22, 1, 47.1 );
setRotateKey( spep_4-3 + 24, 1, 48.6 );
setRotateKey( spep_4-3 + 26, 1, 50.1 );
setRotateKey( spep_4-3 + 28, 1, 51.5 );
setRotateKey( spep_4-3 + 30, 1, 53 );
setRotateKey( spep_4-3 + 32, 1, 54.5 );
setRotateKey( spep_4-3 + 34, 1, 55.9 );
setRotateKey( spep_4-3 + 36, 1, 57.4 );
setRotateKey( spep_4-3 + 38, 1, 58.9 );
setRotateKey( spep_4-3 + 40, 1, 60.3 );
setRotateKey( spep_4-3 + 42, 1, 61.8 );
setRotateKey( spep_4-3 + 44, 1, 63.3 );
setRotateKey( spep_4-3 + 46, 1, 64.7 );
setRotateKey( spep_4-3 + 48, 1, 66.2 );
setRotateKey( spep_4-3 + 50, 1, 67.7 );
setRotateKey( spep_4-3 + 52, 1, 69.1 );
setRotateKey( spep_4-3 + 54, 1, 70.6 );
setRotateKey( spep_4-3 + 56, 1, 72.1 );
setRotateKey( spep_4-1 + 58, 1, 73.5 );

--SE
--叩き落とす
SE016 = playSeVer2( spep_4 + 6, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE017 = playSeVer2( spep_4 + 20, 1183, "",spep_4 + 128, 0, 42, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+56;
------------------------------------------------------
--気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_5 + 240, tame2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, tame2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame2, 0 );
setEffRotateKey( spep_5 + 240, tame2, 0 );
setEffAlphaKey( spep_5 + 0, tame2, 255 );
setEffAlphaKey( spep_5 + 240, tame2, 255 );
setEffAlphaKey( spep_5 + 241, tame2, 0 );
setEffAlphaKey( spep_5 + 242, tame2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_5-3 + 8,  906, 88, 0x100, -1, 0, -29.8, -19.2 );
setEffShake( spep_5-3 + 8, shuchusen1, 88, 20 );
setEffMoveKey( spep_5-3 + 8, shuchusen1, -29.8, -19.2 , 0 );
setEffMoveKey( spep_5-3 + 96, shuchusen1, -29.8, -19.2 , 0 );

setEffScaleKey( spep_5-3 + 8, shuchusen1, 1.18, 1.22 );
setEffScaleKey( spep_5-3 + 96, shuchusen1, 1.18, 1.22 );

setEffRotateKey( spep_5-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_5-3 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_5-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_5-3 + 96, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 30, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  30,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  30,  515);

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
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕広げる
SE019 = playSeVer2( spep_5 + 42, 1003, "", 0, 0, 0, -1);

--両腕前へ
SE020 = playSeVer2( spep_5 + 72, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 72, SE020, 62 );
SE021 = playSeVer2( spep_5 + 74, 1007, "", 0, 0, 0, -1);

--気弾溜め
SE022 = playSeVer2( spep_5 + 92, 1037, "",spep_5 + 244, 0, 6, -1);
SE023 = playSeVer2( spep_5 + 106, 1144, "",spep_5 + 244, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 106, SE023, 76 );
SE024 = playSeVer2( spep_5 + 176, 1157, "",spep_5 + 244, 0, 6, -1);

--白フェード
entryFade( spep_5 + 232, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+240;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 ,"",0.8);
]]--
--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    shuchusen = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_6,  shuchusen,  0,  0);
    setEffScaleKey(  spep_6,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_6,  shuchusen,  0);
    setEffAlphaKey(  spep_6,  shuchusen,  255);
    setEffMoveKey(  spep_6+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_6+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_6+90,  shuchusen,  0);
    setEffAlphaKey(  spep_6+90,  shuchusen,  255);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, kidan, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_7 + 86, kidan, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kidan, 0 );
setEffRotateKey( spep_7 + 86, kidan, 0 );
setEffAlphaKey( spep_7 + 0, kidan, 255 );
setEffAlphaKey( spep_7 + 84, kidan, 255 );
setEffAlphaKey( spep_7 + 85, kidan, 255 );
setEffAlphaKey( spep_7 + 86, kidan, 0 );

--SE
--発射前溜め
SE026 = playSeVer2( spep_7 + 0, 1144, "",spep_7 + 40, 12, 10, -1);
setStartTimeMs( SE026,  1533 );
SE027 = playSeVer2( spep_7 + 2, 1157, "",spep_7 + 36, 0, 8, -1);

--気弾発射
SE028 = playSeVer2( spep_7 + 32, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_7 + 32, 1146, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+86;
------------------------------------------------------
--気弾アップ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_8 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, kidan2, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan2, 0 );
setEffRotateKey( spep_8 + 56, kidan2, 0 );
setEffAlphaKey( spep_8 + 0, kidan2, 255 );
setEffAlphaKey( spep_8 + 54, kidan2, 255 );
setEffAlphaKey( spep_8 + 55, kidan2, 255 );
setEffAlphaKey( spep_8 + 56, kidan2, 0 );

--SE
--気弾飛んでいく
SE030 = playSeVer2( spep_8 + 0, 1202, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0,60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
--気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_9 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 146, beam_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 146, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam_f, 0 );
setEffRotateKey( spep_9 + 146, beam_f, 0 );
setEffAlphaKey( spep_9 + 0, beam_f, 255 );
setEffAlphaKey( spep_9 + 144, beam_f, 255 );
setEffAlphaKey( spep_9 + 145, beam_f, 255 );
setEffAlphaKey( spep_9 + 146, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_9 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 146, beam_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, beam_b, 0 );
setEffRotateKey( spep_9 + 146, beam_b, 0 );
setEffAlphaKey( spep_9 + 0, beam_b, 255 );
setEffAlphaKey( spep_9 + 144, beam_b, 255 );
setEffAlphaKey( spep_9 + 145, beam_b, 255 );
setEffAlphaKey( spep_9 + 146, beam_b, 0 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 60, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );

setBlendColor(spep_9 + 30 ,1 ,3 ,0 ,0 ,0 ,0);
setBlendColor(spep_9 + 31 ,1 ,3 ,0 ,0 ,0 ,0.034);
setBlendColor(spep_9 + 32 ,1 ,3 ,0 ,0 ,0 ,0.068);
setBlendColor(spep_9 + 33 ,1 ,3 ,0 ,0 ,0 ,0.102);
setBlendColor(spep_9 + 34 ,1 ,3 ,0 ,0 ,0 ,0.136);
setBlendColor(spep_9 + 35 ,1 ,3 ,0 ,0 ,0 ,0.17);
setBlendColor(spep_9 + 36 ,1 ,3 ,0 ,0 ,0 ,0.204);
setBlendColor(spep_9 + 37 ,1 ,3 ,0 ,0 ,0 ,0.238);
setBlendColor(spep_9 + 38 ,1 ,3 ,0 ,0 ,0 ,0.272);
setBlendColor(spep_9 + 39 ,1 ,3 ,0 ,0 ,0 ,0.306);
setBlendColor(spep_9 + 40 ,1 ,3 ,0 ,0 ,0 ,0.34);
setBlendColor(spep_9 + 41 ,1 ,3 ,0 ,0 ,0 ,0.374);
setBlendColor(spep_9 + 42 ,1 ,3 ,0 ,0 ,0 ,0.408);
setBlendColor(spep_9 + 43 ,1 ,3 ,0 ,0 ,0 ,0.442);
setBlendColor(spep_9 + 44 ,1 ,3 ,0 ,0 ,0 ,0.476);
setBlendColor(spep_9 + 45 ,1 ,3 ,0 ,0 ,0 ,0.51);
setBlendColor(spep_9 + 46 ,1 ,3 ,0 ,0 ,0 ,0.544);
setBlendColor(spep_9 + 47 ,1 ,3 ,0 ,0 ,0 ,0.578);
setBlendColor(spep_9 + 48 ,1 ,3 ,0 ,0 ,0 ,0.612);
setBlendColor(spep_9 + 49 ,1 ,3 ,0 ,0 ,0 ,0.646);
setBlendColor(spep_9 + 50 ,1 ,3 ,0 ,0 ,0 ,0.68);
setBlendColor(spep_9 + 51 ,1 ,3 ,0 ,0 ,0 ,0.714);
setBlendColor(spep_9 + 52 ,1 ,3 ,0 ,0 ,0 ,0.748);
setBlendColor(spep_9 + 53 ,1 ,3 ,0 ,0 ,0 ,0.782);
setBlendColor(spep_9 + 54 ,1 ,3 ,0 ,0 ,0 ,0.816);
setBlendColor(spep_9 + 55 ,1 ,3 ,0 ,0 ,0 ,0.85);
setBlendColor(spep_9 + 56 ,1 ,3 ,0 ,0 ,0 ,0.884);
setBlendColor(spep_9 + 57 ,1 ,3 ,0 ,0 ,0 ,0.918);
setBlendColor(spep_9 + 58 ,1 ,3 ,0 ,0 ,0 ,0.952);
setBlendColor(spep_9 + 59 ,1 ,3 ,0 ,0 ,0 ,0.986);
setBlendColor(spep_9 + 60 ,1 ,3 ,0 ,0 ,0 ,1);
setBlendColor(spep_9 + 62 ,1 ,3 ,0 ,0 ,0 ,0);

setMoveKey( spep_9 + 0, 1, -94, 244.1 , 0 );
setMoveKey( spep_9 + 2, 1, -92, 240.3 , 0 );
setMoveKey( spep_9 + 4, 1, -90, 236.5 , 0 );
setMoveKey( spep_9 + 6, 1, -88, 232.7 , 0 );
setMoveKey( spep_9 + 8, 1, -85.9, 228.9 , 0 );
setMoveKey( spep_9 + 10, 1, -83.9, 225.1 , 0 );
setMoveKey( spep_9 + 12, 1, -81.9, 221.3 , 0 );
setMoveKey( spep_9 + 14, 1, -79.9, 217.5 , 0 );
setMoveKey( spep_9 + 16, 1, -77.8, 213.7 , 0 );
setMoveKey( spep_9 + 18, 1, -75.8, 209.9 , 0 );
setMoveKey( spep_9 + 20, 1, -73.8, 206.1 , 0 );
setMoveKey( spep_9 + 22, 1, -71.8, 202.3 , 0 );
setMoveKey( spep_9 + 24, 1, -69.7, 198.5 , 0 );
setMoveKey( spep_9 + 26, 1, -67.7, 194.7 , 0 );
setMoveKey( spep_9 + 28, 1, -65.7, 191 , 0 );
setMoveKey( spep_9 + 30, 1, -62.7, 188.1 , 0 );
setMoveKey( spep_9 + 32, 1, -59.7, 185.3 , 0 );
setMoveKey( spep_9 + 34, 1, -59.7, 180.5 , 0 );
setMoveKey( spep_9 + 36, 1, -59.7, 175.6 , 0 );
setMoveKey( spep_9 + 38, 1, -54.6, 169.9 , 0 );
setMoveKey( spep_9 + 40, 1, -49.4, 164.2 , 0 );
setMoveKey( spep_9 + 42, 1, -49.6, 162.6 , 0 );
setMoveKey( spep_9 + 44, 1, -49.7, 160.9 , 0 );
setMoveKey( spep_9 + 46, 1, -43.8, 153.2 , 0 );
setMoveKey( spep_9 + 48, 1, -42.4, 157.8 , 0 );
setMoveKey( spep_9 + 50, 1, -33.2, 147.2 , 0 );
setMoveKey( spep_9 + 52, 1, -39.5, 142 , 0 );
setMoveKey( spep_9 + 54, 1, -40.1, 143.2 , 0 );
setMoveKey( spep_9 + 56, 1, -31.9, 142.5 , 0 );
setMoveKey( spep_9 + 58, 1, -35.3, 134 , 0 );
setMoveKey( spep_9 + 60, 1, -31.4, 137.9 , 0 );

setScaleKey( spep_9 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_9 + 2, 1, 0.54, 0.54 );
setScaleKey( spep_9 + 4, 1, 0.57, 0.57 );
setScaleKey( spep_9 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_9 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_9 + 10, 1, 0.64, 0.64 );
setScaleKey( spep_9 + 12, 1, 0.67, 0.67 );
setScaleKey( spep_9 + 14, 1, 0.69, 0.69 );
setScaleKey( spep_9 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_9 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_9 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_9 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_9 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_9 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_9 + 28, 1, 0.86, 0.86 );
setScaleKey( spep_9 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_9 + 32, 1, 0.91, 0.91 );
setScaleKey( spep_9 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_9 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_9 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_9 + 40, 1, 1.01, 1.01 );
setScaleKey( spep_9 + 42, 1, 1.03, 1.03 );
setScaleKey( spep_9 + 44, 1, 1.06, 1.06 );
setScaleKey( spep_9 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_9 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_9 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_9 + 52, 1, 1.16, 1.16 );
setScaleKey( spep_9 + 54, 1, 1.18, 1.18 );
setScaleKey( spep_9 + 56, 1, 1.21, 1.21 );
setScaleKey( spep_9 + 58, 1, 1.23, 1.23 );
setScaleKey( spep_9 + 60, 1, 1.23, 1.23 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 60, 1, 0 );

--SE
--気弾敵に向かっていく
SE031 = playSeVer2( spep_9 + 0, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE032 = playSeVer2( spep_9 + 60, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_9 + 60, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+146;
------------------------------------------------------
--フィニッシュ絵
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 120, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 120, finish, 255 );

--SE
--ラスト爆発
SE034 = playSeVer2( spep_10 + 0, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_10 + 0, 1188, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_10+10);
endPhase( spep_10 + 110 );
end