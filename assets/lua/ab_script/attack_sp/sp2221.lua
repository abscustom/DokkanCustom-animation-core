--1022590:スーパージャネンバ_獄襲突
--sp_effect_a2_00165
--sp2221

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
SP_01= 157649 ;-- 登場
SP_02= 157651 ;-- パンチ_手前
SP_03= 157653 ;-- パンチ_奥
SP_04= 157654 ;-- パンチから気弾_手前
SP_05= 157656 ;-- パンチから気弾_奥
SP_06= 157657 ;-- 気弾発射_手前
SP_07= 157659 ;-- 気弾発射_奥
SP_08= 157660 ;-- 着弾
SP_09= 157662 ;-- 破片掴む
SP_10= 157663 ;-- 破片を変形させて攻撃
SP_11= 157665 ;-- エネミーに迫る_手前
SP_12= 157666 ;-- エネミーに迫る_奥
SP_13= 157667 ;-- エネミー吹っ飛びから腕出現_手前
SP_14= 157669 ;-- エネミー吹っ飛びから腕出現_奥
SP_15= 157670 ;-- 気弾爆発_手前
SP_16= 157672 ;-- 気弾爆発_奥

--エフェクト(敵)
SP_01x= 157650 ;-- 登場 (敵)
SP_02x= 157652 ;-- パンチ_手前 (敵)
SP_03x= 157653 ;-- パンチ_奥 
SP_04x= 157655 ;-- パンチから気弾_手前 (敵)
SP_05x= 157656 ;-- パンチから気弾_奥 
SP_06x= 157658 ;-- 気弾発射_手前 (敵)
SP_07x= 157659 ;-- 気弾発射_奥 
SP_08x= 157661 ;-- 着弾 (敵)
SP_09x= 157662 ;-- 破片掴む 
SP_10x= 157664 ;-- 破片を変形させて攻撃 (敵)
SP_11x= 157665 ;-- エネミーに迫る_手前 
SP_12x= 157666 ;-- エネミーに迫る_奥 
SP_13x= 157668 ;-- エネミー吹っ飛びから腕出現_手前 (敵)
SP_14x= 157669 ;-- エネミー吹っ飛びから腕出現_奥 
SP_15x= 157671 ;-- 気弾爆発_手前 (敵)
SP_16x= 157672 ;-- 気弾爆発_奥 

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end
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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 56, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 54, appearance, 255 );
setEffAlphaKey( spep_0 + 55, appearance, 255 );
setEffAlphaKey( spep_0 + 56, appearance, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 48,  906, 10, 0x100, -1, 0, -108.2, 100 );
setEffShake( spep_0-3 + 48, shuchusen1, 10, 20 );
setEffMoveKey( spep_0-3 + 48, shuchusen1, -108.2, 100 , 0 );
setEffMoveKey( spep_0-3 + 58, shuchusen1, -108.2, 100 , 0 );

setEffScaleKey( spep_0-3 + 48, shuchusen1, 1.6, 1.2 );
setEffScaleKey( spep_0-3 + 58, shuchusen1, 1.6, 1.2 );

setEffRotateKey( spep_0-3 + 48, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 58, shuchusen1, 255 );

--SE
--向かってくる
SE001 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 115 );
SE002 = playSe( spep_0 + 0, 1072 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 115 );
setTimeStretch( SE002, 0.91, 10, 1 );
SE003 = playSe( spep_0 + 0, 1314 );
SE004 = playSe( spep_0 + 8, 1167 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 51 );
setPitch( spep_0 + 8, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );


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
--SE
--振りかぶる
SE005 = playSe( spep_0 + 44, 1116 );

--次の準備
spep_1=spep_0+56;
------------------------------------------------------
-- パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 40, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 38, punch_f, 255 );
setEffAlphaKey( spep_1 + 39, punch_f, 255 );
setEffAlphaKey( spep_1 + 40, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 40, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 38, punch_b, 255 );
setEffAlphaKey( spep_1 + 39, punch_b, 255 );
setEffAlphaKey( spep_1 + 40, punch_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 16,  906, 14, 0x100, -1, 0, 100, -60 );
setEffShake( spep_1-3 + 16, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 16, shuchusen2, 100, -60 , 0 );
setEffMoveKey( spep_1-3 + 30, shuchusen2, 100, -60 , 0 );

setEffScaleKey( spep_1-3 + 16, shuchusen2, 1.4, 1.2 );
setEffScaleKey( spep_1-3 + 30, shuchusen2, 1.4, 1.2 );

setEffRotateKey( spep_1-3 + 16, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 30, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 16, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 30, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 16, 1, 108 );

setMoveKey( spep_1 + 0, 1, 198.9, -155 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 197.1, -151.4 , 0 );
setMoveKey( spep_1-3 + 4, 1, 194.5, -146.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 191.1, -139.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 186.7, -130.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 181.1, -119.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 173.9, -105.2 , 0 );
setMoveKey( spep_1-3 + 15, 1, 163.5, -84.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 18, 1, 149, -65 , 0 );
setMoveKey( spep_1-3 + 20, 1, 159.1, -95 , 0 );
setMoveKey( spep_1-3 + 22, 1, 149, -65 , 0 );
setMoveKey( spep_1-3 + 24, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 26, 1, 179, -75 , 0 );
setMoveKey( spep_1-3 + 28, 1, 219.1, -115 , 0 );
setMoveKey( spep_1-3 + 30, 1, 179, -75 , 0 );
setMoveKey( spep_1-3 + 32, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 34, 1, 158.9, -55 , 0 );
setMoveKey( spep_1-3 + 36, 1, 178.9, -75 , 0 );
setMoveKey( spep_1-3 + 38, 1, 199, -95 , 0 );
setMoveKey( spep_1-3 + 40, 1, 219, -115 , 0 );
setMoveKey( spep_1-3 + 42, 1, 239, -135 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_1-3 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 4, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 6, 1, 2.34, 2.34 );
setScaleKey( spep_1-3 + 8, 1, 2.81, 2.81 );
setScaleKey( spep_1-3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_1-3 + 12, 1, 4.19, 4.19 );
setScaleKey( spep_1-3 + 15, 1, 5.3, 5.3 );
setScaleKey( spep_1-3 + 16, 1, 7.99, 7.99 );
setScaleKey( spep_1-3 + 18, 1, 6.55, 6.55 );
setScaleKey( spep_1-3 + 20, 1, 5.12, 5.12 );
setScaleKey( spep_1-3 + 22, 1, 6.55, 6.55 );
setScaleKey( spep_1-3 + 24, 1, 7.99, 7.99 );
setScaleKey( spep_1-3 + 26, 1, 7.29, 7.29 );
setScaleKey( spep_1-3 + 28, 1, 6.58, 6.58 );
setScaleKey( spep_1-3 + 30, 1, 7.04, 7.04 );
setScaleKey( spep_1-3 + 32, 1, 7.5, 7.5 );
setScaleKey( spep_1-3 + 34, 1, 7, 7 );
setScaleKey( spep_1-3 + 36, 1, 6.5, 6.5 );
setScaleKey( spep_1-3 + 38, 1, 6, 6 );
setScaleKey( spep_1-3 + 40, 1, 5.5, 5.5 );
setScaleKey( spep_1-3 + 42, 1, 5, 5 );

setRotateKey( spep_1 + 0, 1, 10 );
setRotateKey( spep_1-3 + 42, 1, 10 );

--SE
--向かってくる
stopSe( spep_1 + 4, SE003, 18 );

--振りかぶる
stopSe( spep_1 + 0, SE005, 14 );

--パンチ
SE006 = playSe( spep_1 + 2, 1003 );
setPitch( spep_1 + 2, SE006, -400 );
setTimeStretch( SE006, 0.73, 10, 1 );
SE007 = playSe( spep_1 + 14, 1187 );
setSeVolumeByWorkId( spep_1 + 14, SE007, 75 );
SE008 = playSe( spep_1 + 14, 1009 );
SE009 = playSe( spep_1 + 14, 1153 );
setSeVolumeByWorkId( spep_1 + 14, SE009, 86 );
SE010 = playSe( spep_1 + 14, 1011 );
setSeVolumeByWorkId( spep_1 + 14, SE010, 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 44, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+40;
------------------------------------------------------
-- パンチから気弾
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan_f, 0 );
setEffRotateKey( spep_2 + 76, kidan_f, 0 );
setEffAlphaKey( spep_2 + 0, kidan_f, 255 );
setEffAlphaKey( spep_2 + 74, kidan_f, 255 );
setEffAlphaKey( spep_2 + 75, kidan_f, 255 );
setEffAlphaKey( spep_2 + 76, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan_b, 0 );
setEffRotateKey( spep_2 + 76, kidan_b, 0 );
setEffAlphaKey( spep_2 + 0, kidan_b, 255 );
setEffAlphaKey( spep_2 + 74, kidan_b, 255 );
setEffAlphaKey( spep_2 + 75, kidan_b, 255 );
setEffAlphaKey( spep_2 + 76, kidan_b, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 50,  906, 28, 0x100, -1, 0, 0, -29.9 );
setEffShake( spep_2-3 + 50, shuchusen3, 10, 20 );
setEffMoveKey( spep_2-3 + 50, shuchusen3, 0, -29.9 , 0 );
setEffMoveKey( spep_2-3 + 78, shuchusen3, 0, -29.9 , 0 );

setEffScaleKey( spep_2-3 + 50, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2-3 + 78, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2-3 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 78, shuchusen3, 255 );

--敵の動き
changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 46, 1, 106 );

setMoveKey( spep_2 + 0, 1, -396.2, 194.4 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -325.3, 172.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, -153.1, 119.2 , 0 );
setMoveKey( spep_2-3 + 6, 1, 84.1, 45.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 354.5, -38 , 0 );
setMoveKey( spep_2-3 + 10, 1, 338.5, -53.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, 324, -67.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 311.8, -79.3 , 0 );
setMoveKey( spep_2-3 + 16, 1, 302.6, -88.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 296.8, -94 , 0 );
setMoveKey( spep_2-3 + 20, 1, 294.4, -95.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 277.3, -90.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 261.2, -85.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 246.3, -81.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 232.8, -77.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 220.5, -73.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 209.5, -70.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 199.8, -67.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 191.6, -65 , 0 );
setMoveKey( spep_2-3 + 38, 1, 184.8, -63 , 0 );
setMoveKey( spep_2-3 + 40, 1, 179.4, -61.4 , 0 );
setMoveKey( spep_2-3 + 42, 1, 175.5, -60.3 , 0 );
setMoveKey( spep_2-3 + 45, 1, 173.3, -59.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 335.3, -45.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 327.8, -45.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 320.3, -45.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 312.8, -46 , 0 );
setMoveKey( spep_2-3 + 54, 1, 305.3, -46.2 , 0 );
setMoveKey( spep_2-3 + 56, 1, 297.8, -46.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 301.5, -47.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 305.2, -48.6 , 0 );
setMoveKey( spep_2-3 + 62, 1, 308.9, -49.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 312.6, -50.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, 316.3, -51.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, 320, -53 , 0 );
setMoveKey( spep_2-3 + 70, 1, 323.7, -54.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 327.4, -55.2 , 0 );
setMoveKey( spep_2-3 + 74, 1, 331.1, -56.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, 334.8, -57.4 , 0 );
setMoveKey( spep_2-3 + 78, 1, 338.5, -58.5 , 0 );

setScaleKey( spep_2 + 0, 1, 5.25,5.25);
setScaleKey( spep_2-3 + 4, 1, 4.56,4.56);
setScaleKey( spep_2-3 + 6, 1, 3.9,3.9);
setScaleKey( spep_2-3 + 8, 1, 3.15,3.15);
setScaleKey( spep_2-3 + 10, 1, 2.75,2.75);
setScaleKey( spep_2-3 + 12, 1, 2.39,2.39);
setScaleKey( spep_2-3 + 14, 1, 2.1,2.1);
setScaleKey( spep_2-3 + 16, 1, 1.87,1.87);
setScaleKey( spep_2-3 + 18, 1, 1.72,1.72);
setScaleKey( spep_2-3 + 20, 1, 1.68,1.68);
setScaleKey( spep_2-3 + 22, 1, 1.62,1.62);
setScaleKey( spep_2-3 + 24, 1, 1.56,1.56);
setScaleKey( spep_2-3 + 26, 1, 1.51,1.51);
setScaleKey( spep_2-3 + 28, 1, 1.47,1.47);
setScaleKey( spep_2-3 + 30, 1, 1.42,1.42);
setScaleKey( spep_2-3 + 32, 1, 1.38,1.38);
setScaleKey( spep_2-3 + 34, 1, 1.34,1.34);
setScaleKey( spep_2-3 + 36, 1, 1.31,1.31);
setScaleKey( spep_2-3 + 38, 1, 1.3,1.3);
setScaleKey( spep_2-3 + 40, 1, 1.27,1.27);
setScaleKey( spep_2-3 + 42, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 45, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 46, 1, 1.17,1.17);
setScaleKey( spep_2-3 + 78, 1, 1.17,1.17);

setRotateKey( spep_2 + 0, 1, 14.8 );
setRotateKey( spep_2-3 + 46, 1, 14.8 );
setRotateKey( spep_2-3 + 48, 1, 15.1 );
setRotateKey( spep_2-3 + 50, 1, 15.4 );
setRotateKey( spep_2-3 + 52, 1, 15.8 );
setRotateKey( spep_2-3 + 54, 1, 16.1 );
setRotateKey( spep_2-3 + 56, 1, 16.4 );
setRotateKey( spep_2-3 + 58, 1, 16.7 );
setRotateKey( spep_2-3 + 60, 1, 17 );
setRotateKey( spep_2-3 + 62, 1, 17.3 );
setRotateKey( spep_2-3 + 64, 1, 17.6 );
setRotateKey( spep_2-3 + 66, 1, 18 );
setRotateKey( spep_2-3 + 68, 1, 18.3 );
setRotateKey( spep_2-3 + 70, 1, 18.6 );
setRotateKey( spep_2-3 + 72, 1, 18.9 );
setRotateKey( spep_2-3 + 74, 1, 19.2 );
setRotateKey( spep_2-3 + 76, 1, 19.5 );
setRotateKey( spep_2-3 + 78, 1, 19.8 );

--SE
--気弾溜め
SE011 = playSe( spep_2 + 18, 1240 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 110 );
stopSe( spep_2 + 48, SE011, 24 );
setPitch( spep_2 + 18, SE011, -400 );
setTimeStretch( SE011, 0.73, 40, 4 );
SE012 = playSe( spep_2 + 18, 1191 );
setSeVolumeByWorkId( spep_2 + 18, SE012, 153 );
stopSe( spep_2 + 48, SE012, 24 );

--気弾発射
SE013 = playSe( spep_2 + 46, 1133 ,"",0.6 );
SE014 = playSe( spep_2 + 46, 1177 );
SE015 = playSe( spep_2 + 52, 1130 ,"",0.6 );
setSeVolumeByWorkId( spep_2 + 52, SE015, 84 );
setPitch( spep_2 + 52, SE015, -400 );
setTimeStretch( SE015, 0.73, 40, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 56, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 54, beam_f, 255 );
setEffAlphaKey( spep_3 + 55, beam_f, 255 );
setEffAlphaKey( spep_3 + 56, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 56, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 54, beam_b, 255 );
setEffAlphaKey( spep_3 + 55, beam_b, 255 );
setEffAlphaKey( spep_3 + 56, beam_b, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 0,  906, 58, 0x100, -1, 0, -8.3, 108 );
setEffShake( spep_3 + 0, shuchusen4, 58, 20 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 108 , 0 );
--setEffMoveKey( spep_3-3 + 2, shuchusen4, -4.2, 113.6 , 0 );
setEffMoveKey( spep_3-3 + 4, shuchusen4, -8.3, 119.2 , 0 );
setEffMoveKey( spep_3-3 + 6, shuchusen4, -12.5, 124.8 , 0 );
setEffMoveKey( spep_3-3 + 8, shuchusen4, -16.6, 130.3 , 0 );
setEffMoveKey( spep_3-3 + 10, shuchusen4,-20.8, 135.9 , 0 );
setEffMoveKey( spep_3-3 + 12, shuchusen4,-24.9, 141.5 , 0 );
setEffMoveKey( spep_3-3 + 14, shuchusen4,-29.1, 147.1 , 0 );
setEffMoveKey( spep_3-3 + 16, shuchusen4,-33.2, 152.7 , 0 );
setEffMoveKey( spep_3-3 + 18, shuchusen4,-37.4, 158.3 , 0 );
setEffMoveKey( spep_3-3 + 20, shuchusen4,-41.5, 163.9 , 0 );
setEffMoveKey( spep_3-3 + 22, shuchusen4,-45.7, 169.4 , 0 );
setEffMoveKey( spep_3-3 + 24, shuchusen4,-49.8, 175 , 0 );
setEffMoveKey( spep_3-3 + 26, shuchusen4,-53.9, 180.6 , 0 );
setEffMoveKey( spep_3-3 + 28, shuchusen4,-58.1, 186.2 , 0 );
setEffMoveKey( spep_3-3 + 30, shuchusen4,-62.2, 191.8 , 0 );
setEffMoveKey( spep_3-3 + 32, shuchusen4,-66.4, 197.4 , 0 );
setEffMoveKey( spep_3-3 + 34, shuchusen4,-70.5, 203 , 0 );
setEffMoveKey( spep_3-3 + 36, shuchusen4,-74.7, 208.6 , 0 );
setEffMoveKey( spep_3-3 + 38, shuchusen4,-78.8, 214.1 , 0 );
setEffMoveKey( spep_3-3 + 40, shuchusen4,-83, 219.7 , 0 );
setEffMoveKey( spep_3-3 + 42, shuchusen4,-87.1, 225.3 , 0 );
setEffMoveKey( spep_3-3 + 44, shuchusen4,-91.3, 230.9 , 0 );
setEffMoveKey( spep_3-3 + 46, shuchusen4,-95.4, 236.5 , 0 );
setEffMoveKey( spep_3-3 + 48, shuchusen4,-99.5, 242.1 , 0 );
setEffMoveKey( spep_3-3 + 50, shuchusen4,-103.7, 247.7 , 0 );
setEffMoveKey( spep_3-3 + 52, shuchusen4,-107.8, 253.2 , 0 );
setEffMoveKey( spep_3-3 + 54, shuchusen4,-112, 258.8 , 0 );
setEffMoveKey( spep_3-3 + 56, shuchusen4,-116.1, 264.4 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen4,-120.3, 270 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.1, 1.2 );
--setEffScaleKey( spep_3-3 + 2, shuchusen4, 1.12, 1.21 );
setEffScaleKey( spep_3-3 + 4, shuchusen4, 1.13, 1.22 );
setEffScaleKey( spep_3-3 + 6, shuchusen4, 1.15, 1.23 );
setEffScaleKey( spep_3-3 + 8, shuchusen4, 1.16, 1.24 );
setEffScaleKey( spep_3-3 + 10, shuchusen4, 1.18, 1.25 );
setEffScaleKey( spep_3-3 + 12, shuchusen4, 1.19, 1.26 );
setEffScaleKey( spep_3-3 + 14, shuchusen4, 1.21, 1.27 );
setEffScaleKey( spep_3-3 + 16, shuchusen4, 1.22, 1.28 );
setEffScaleKey( spep_3-3 + 18, shuchusen4, 1.24, 1.29 );
setEffScaleKey( spep_3-3 + 20, shuchusen4, 1.26, 1.3 );
setEffScaleKey( spep_3-3 + 22, shuchusen4, 1.27, 1.31 );
setEffScaleKey( spep_3-3 + 24, shuchusen4, 1.29, 1.32 );
setEffScaleKey( spep_3-3 + 26, shuchusen4, 1.3, 1.33 );
setEffScaleKey( spep_3-3 + 28, shuchusen4, 1.32, 1.34 );
setEffScaleKey( spep_3-3 + 30, shuchusen4, 1.33, 1.36 );
setEffScaleKey( spep_3-3 + 32, shuchusen4, 1.35, 1.37 );
setEffScaleKey( spep_3-3 + 34, shuchusen4, 1.36, 1.38 );
setEffScaleKey( spep_3-3 + 36, shuchusen4, 1.38, 1.39 );
setEffScaleKey( spep_3-3 + 38, shuchusen4, 1.39, 1.4 );
setEffScaleKey( spep_3-3 + 40, shuchusen4, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 42, shuchusen4, 1.43, 1.42 );
setEffScaleKey( spep_3-3 + 44, shuchusen4, 1.44, 1.43 );
setEffScaleKey( spep_3-3 + 46, shuchusen4, 1.46, 1.44 );
setEffScaleKey( spep_3-3 + 48, shuchusen4, 1.47, 1.45 );
setEffScaleKey( spep_3-3 + 50, shuchusen4, 1.49, 1.46 );
setEffScaleKey( spep_3-3 + 52, shuchusen4, 1.5, 1.47 );
setEffScaleKey( spep_3-3 + 54, shuchusen4, 1.52, 1.48 );
setEffScaleKey( spep_3-3 + 56, shuchusen4, 1.53, 1.49 );
setEffScaleKey( spep_3-3 + 58, shuchusen4, 1.55, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3-3 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen4, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 24, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 642, -1380.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 408.8, -856.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 317.5, -650.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 262.7, -527.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 242, -480.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 248.5, -491.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 266.2, -520.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 293.1, -565.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 329, -624.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 374.8, -700.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 433.1, -796.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 512.3, -927.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 702, -1241 , 0 );

setScaleKey( spep_3 + 0, 1, 4, 4 );
--setScaleKey( spep_3-3 + 2, 1, 2.83, 2.83 );
setScaleKey( spep_3-3 + 4, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_3-3 + 8, 1, 2, 2 );
setScaleKey( spep_3-3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 14, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 16, 1, 2.19, 2.19 );
setScaleKey( spep_3-3 + 18, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 20, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 22, 1, 2.59, 2.59 );
setScaleKey( spep_3-3 + 24, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 20 );
setRotateKey( spep_3-3 + 24, 1, 20 );

--SE
--気弾発射
stopSe( spep_3 + 30, SE014, 28 );

--敵飛んでいく
SE016 = playSe( spep_3 + 0, 1183 );
SE017 = playSe( spep_3 + 2, 1027 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- 着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 76, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 74, hit, 255 );
setEffAlphaKey( spep_4 + 75, hit, 255 );
setEffAlphaKey( spep_4 + 76, hit, 0 );

--SE
--敵飛んでいく
stopSe( spep_4 + 18, SE016, 18 );

--剣山に突っ込む
SE018 = playSe( spep_4 + 10, 1188 );
setSeVolumeByWorkId( spep_4 + 10, SE018, 52 );

--爆発
SE019 = playSe( spep_4 + 26, 1135 );
SE020 = playSe( spep_4 + 30, 1159 );
setSeVolumeByWorkId( spep_4 + 30, SE020, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+76;
------------------------------------------------------
-- 破片掴む
------------------------------------------------------
-- ** エフェクト等 ** --
grab = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, grab, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, grab, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, grab, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, grab, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, grab, 0 );
setEffRotateKey( spep_5 + 120, grab, 0 );
setEffAlphaKey( spep_5 + 0, grab, 255 );
setEffAlphaKey( spep_5 + 120, grab, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen5 = entryEffectLife( spep_5-3 + 38,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 38, shuchusen5, 80, 20 );
setEffMoveKey( spep_5-3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 38, shuchusen5, 1, 1 );
setEffScaleKey( spep_5-3 + 118, shuchusen5, 1, 1 );

setEffRotateKey( spep_5-3 + 38, shuchusen5, 180 );
setEffRotateKey( spep_5-3 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_5-3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_5-3 + 118, shuchusen5, 255 );

--SE
--爆発
stopSe( spep_5 + 116, SE020, 12 );

--破片キャッチ
SE022 = playSe( spep_5 + 34, 1006 );
setSeVolumeByWorkId( spep_5 + 34, SE022, 111 );
setPitch( spep_5 + 34, SE022, -400 );
setTimeStretch( SE022, 0.73, 10, 1 );
SE023 = playSe( spep_5 + 36, 1001 );
setSeVolumeByWorkId( spep_5 + 36, SE023, 68 );
stopSe( spep_5 + 48, SE023, 14 );

--カードカットイン
SE024 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
-- 破片を変形させて攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, attack, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, attack, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, attack, 0 );
setEffRotateKey( spep_7 + 66, attack, 0 );
setEffAlphaKey( spep_7 + 0, attack, 255 );
setEffAlphaKey( spep_7 + 64, attack, 255 );
setEffAlphaKey( spep_7 + 65, attack, 255 );
setEffAlphaKey( spep_7 + 66, attack, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_7-3 + 14,  906, 54, 0x100, -1, 0, -101.6, -62 );
setEffShake( spep_7-3 + 14, shuchusen6, 54, 20 );
setEffMoveKey( spep_7-3 + 14, shuchusen6, -101.6, -62 , 0 );
setEffMoveKey( spep_7-3 + 68, shuchusen6, -101.6, -62 , 0 );

setEffScaleKey( spep_7-3 + 14, shuchusen6, 1.2, 1.2 );
setEffScaleKey( spep_7-3 + 68, shuchusen6, 1.2, 1.2 );

setEffRotateKey( spep_7-3 + 14, shuchusen6, 180 );
setEffRotateKey( spep_7-3 + 68, shuchusen6, 180 );

setEffAlphaKey( spep_7-3 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_7-3 + 68, shuchusen6, 255 );

--SE
--トゲ伸ばす
SE025 = playSe( spep_7 + 12, 1336 );
setSeVolumeByWorkId( spep_7 + 40, SE025, 173 );
stopSe( spep_7 + 118, SE025, 12 );
setStartTimeMs( SE025,  2683 );
setPitch( spep_7 + 12, SE025, -300 );
setTimeStretch( SE025, 0.5, 40, 4 );
SE026 = playSe( spep_7 + 12, 1338 );
setSeVolumeByWorkId( spep_7 + 12, SE026, 176 );
SE027 = playSe( spep_7 + 12, 1337 );
setSeVolumeByWorkId( spep_7 + 12, SE027, 143 );
stopSe( spep_7 + 118, SE027, 12 );
SE028 = playSe( spep_7 + 12, 1027 );
setSeVolumeByWorkId( spep_7 + 12, SE028, 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+65;
------------------------------------------------------
-- エネミーに迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, approaching_f, 0 );
setEffRotateKey( spep_8 + 76, approaching_f, 0 );
setEffAlphaKey( spep_8 + 0, approaching_f, 255 );
setEffAlphaKey( spep_8 + 74, approaching_f, 255 );
setEffAlphaKey( spep_8 + 75, approaching_f, 255 );
setEffAlphaKey( spep_8 + 76, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, approaching_b, 0 );
setEffRotateKey( spep_8 + 76, approaching_b, 0 );
setEffAlphaKey( spep_8 + 0, approaching_b, 255 );
setEffAlphaKey( spep_8 + 74, approaching_b, 255 );
setEffAlphaKey( spep_8 + 75, approaching_b, 255 );
setEffAlphaKey( spep_8 + 76, approaching_b, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_8-3 + 48,  906, 18, 0x100, -1, 0, 0, 216 );
setEffShake( spep_8-3 + 48, shuchusen7, 18, 20 );
setEffMoveKey( spep_8-3 + 48, shuchusen7, 0, 216 , 0 );
setEffMoveKey( spep_8-3 + 66, shuchusen7, 0, 216 , 0 );

setEffScaleKey( spep_8-3 + 48, shuchusen7, 1.05, 1.4 );
setEffScaleKey( spep_8-3 + 66, shuchusen7, 1.05, 1.4 );

setEffRotateKey( spep_8-3 + 48, shuchusen7, 180 );
setEffRotateKey( spep_8-3 + 66, shuchusen7, 180 );

setEffAlphaKey( spep_8-3 + 48, shuchusen7, 255 );
setEffAlphaKey( spep_8-3 + 66, shuchusen7, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 46, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-3 + 46, 1, 105 );

setMoveKey( spep_8 + 0, 1, 1.9, -4 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 2, -4.3 , 0 );
setMoveKey( spep_8-3 + 4, 1, 2, -4.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 2.1, -6 , 0 );
setMoveKey( spep_8-3 + 8, 1, 2.2, -7.5 , 0 );
setMoveKey( spep_8-3 + 10, 1, 2.3, -9.3 , 0 );
setMoveKey( spep_8-3 + 12, 1, 2.4, -11.5 , 0 );
setMoveKey( spep_8-3 + 14, 1, 2.6, -14 , 0 );
setMoveKey( spep_8-3 + 16, 1, 2.8, -16.9 , 0 );
setMoveKey( spep_8-3 + 18, 1, 3, -20.2 , 0 );
setMoveKey( spep_8-3 + 20, 1, 3.3, -23.8 , 0 );
setMoveKey( spep_8-3 + 22, 1, 3.5, -27.8 , 0 );
setMoveKey( spep_8-3 + 24, 1, 3.8, -32.3 , 0 );
setMoveKey( spep_8-3 + 26, 1, 4.2, -37.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, 4.5, -42.6 , 0 );
setMoveKey( spep_8-3 + 30, 1, 4.9, -48.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, 5.4, -55.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, 5.9, -63.4 , 0 );
setMoveKey( spep_8-3 + 36, 1, 6.6, -73.4 , 0 );
setMoveKey( spep_8-3 + 38, 1, 7.9, -91.4 , 0 );
setMoveKey( spep_8-3 + 40, 1, -32.1, -80.6 , 0 );
setMoveKey( spep_8-3 + 45, 1, -32.1, -80.6 , 0 );
setMoveKey( spep_8-3 + 46, 1, 39.4, -52.2 , 0 );
setMoveKey( spep_8-1 + 46, 1, 39.4, -52.2 , 0 );

setScaleKey( spep_8 + 0, 1, 0.6, 0.6 );
--setScaleKey( spep_8-3 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_8-3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_8-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_8-3 + 8, 1, 0.67, 0.67 );
setScaleKey( spep_8-3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_8-3 + 12, 1, 0.75, 0.75 );
setScaleKey( spep_8-3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_8-3 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_8-3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_8-3 + 20, 1, 1.01, 1.01 );
setScaleKey( spep_8-3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_8-3 + 24, 1, 1.18, 1.18 );
setScaleKey( spep_8-3 + 26, 1, 1.28, 1.28 );
setScaleKey( spep_8-3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_8-3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_8-3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_8-3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_8-3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_8-3 + 38, 1, 2.4, 2.4 );
setScaleKey( spep_8-3 + 40, 1, 3.5, 3.5 );
setScaleKey( spep_8-3 + 45, 1, 3.5, 3.5 );
setScaleKey( spep_8-3 + 46, 1, 3.15, 3.15 );
setScaleKey( spep_8-1 + 46, 1, 3.15, 3.15 );

setRotateKey( spep_8 + 0, 1, -50 );
setRotateKey( spep_8-3 + 45, 1, -50 );
setRotateKey( spep_8-3 + 46, 1, -9.8 );
setRotateKey( spep_8-1 + 46, 1, -9.8 );

--SE
--トゲ伸ばす
stopSe( spep_8 + 48, SE025, 12 );
stopSe( spep_8 + 48, SE027, 12 );

--トゲ衝突
SE029 = playSe( spep_8 + 44, 1067 );
SE030 = playSe( spep_8 + 44, 1017 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0,80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+76;
------------------------------------------------------
-- エネミー吹っ飛びから腕出現
------------------------------------------------------
-- ** エフェクト等 ** --
arm_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, arm_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 112, arm_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, arm_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 112, arm_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, arm_f, 0 );
setEffRotateKey( spep_9 + 112, arm_f, 0 );
setEffAlphaKey( spep_9 + 0, arm_f, 255 );
setEffAlphaKey( spep_9 + 110, arm_f, 255 );
setEffAlphaKey( spep_9 + 111, arm_f, 255 );
setEffAlphaKey( spep_9 + 112, arm_f, 0 );

-- ** エフェクト等 ** --
arm_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, arm_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 112, arm_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, arm_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 112, arm_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, arm_b, 0 );
setEffRotateKey( spep_9 + 112, arm_b, 0 );
setEffAlphaKey( spep_9 + 0, arm_b, 255 );
setEffAlphaKey( spep_9 + 110, arm_b, 255 );
setEffAlphaKey( spep_9 + 111, arm_b, 255 );
setEffAlphaKey( spep_9 + 112, arm_b, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_9 + 2,  906, 6, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 2, shuchusen8, 6, 20 );
setEffMoveKey( spep_9 + 2, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_9 + 8, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_9 + 2, shuchusen8, 1.1, 1.1 );
setEffScaleKey( spep_9 + 8, shuchusen8, 1.1, 1.1 );

setEffRotateKey( spep_9 + 2, shuchusen8, 180 );
setEffRotateKey( spep_9 + 8, shuchusen8, 180 );

setEffAlphaKey( spep_9 + 2, shuchusen8, 255 );
setEffAlphaKey( spep_9 + 8, shuchusen8, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_9-3 + 38,  906, 20, 0x100, -1, 0, 265.1, 320 );
setEffShake( spep_9-3 + 38, shuchusen9, 20, 20 );
setEffMoveKey( spep_9-3 + 38, shuchusen9, 265.1, 320 , 0 );
setEffMoveKey( spep_9-3 + 40, shuchusen9, 259.1, 298 , 0 );
setEffMoveKey( spep_9-3 + 42, shuchusen9, 253.1, 276 , 0 );
setEffMoveKey( spep_9-3 + 44, shuchusen9, 247.1, 254 , 0 );
setEffMoveKey( spep_9-3 + 46, shuchusen9, 241.1, 232 , 0 );
setEffMoveKey( spep_9-3 + 48, shuchusen9, 235.1, 210 , 0 );
setEffMoveKey( spep_9-3 + 50, shuchusen9, 229.1, 188 , 0 );
setEffMoveKey( spep_9-3 + 52, shuchusen9, 223.1, 166 , 0 );
setEffMoveKey( spep_9-3 + 54, shuchusen9, 217.1, 144 , 0 );
setEffMoveKey( spep_9-3 + 56, shuchusen9, 211.1, 122 , 0 );
setEffMoveKey( spep_9-3 + 58, shuchusen9, 205.1, 100 , 0 );

setEffScaleKey( spep_9-3 + 38, shuchusen9, 1.5, 1.6 );
setEffScaleKey( spep_9-3 + 58, shuchusen9, 1.5, 1.6 );

setEffRotateKey( spep_9-3 + 38, shuchusen9, 180 );
setEffRotateKey( spep_9-3 + 58, shuchusen9, 180 );

setEffAlphaKey( spep_9-3 + 38, shuchusen9, 255 );
setEffAlphaKey( spep_9-3 + 58, shuchusen9, 255 );

--敵の動き
setDisp( spep_9-3 + 18, 1, 1 );

changeAnime( spep_9-3 + 18, 1, 5 );

setMoveKey( spep_9-3 + 18, 1, -37.4, -51.5 , 0 );
setMoveKey( spep_9-3 + 20, 1, 36.8, 63.3 , 0 );
setMoveKey( spep_9-3 + 22, 1, 64.2, 110.1 , 0 );
setMoveKey( spep_9-3 + 24, 1, 90.3, 148.1 , 0 );
setMoveKey( spep_9-3 + 26, 1, 111, 178.2 , 0 );
setMoveKey( spep_9-3 + 28, 1, 128, 202.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 141.9, 223.2 , 0 );
setMoveKey( spep_9-3 + 32, 1, 153.2, 239.6 , 0 );
setMoveKey( spep_9-3 + 34, 1, 161.9, 252.2 , 0 );
setMoveKey( spep_9-3 + 36, 1, 167.7, 260.6 , 0 );
setMoveKey( spep_9-3 + 38, 1, 169.9, 263.8 , 0 );
setMoveKey( spep_9-3 + 40, 1, 186.5, 117.7 , 0 );
setMoveKey( spep_9-3 + 42, 1, 196.1, 33.4 , 0 );
setMoveKey( spep_9-3 + 44, 1, 203.4, -31.3 , 0 );
setMoveKey( spep_9-3 + 46, 1, 209.5, -84.5 , 0 );
setMoveKey( spep_9-3 + 48, 1, 214.7, -129.6 , 0 );
setMoveKey( spep_9-3 + 50, 1, 219, -167.8 , 0 );
setMoveKey( spep_9-3 + 52, 1, 222.7, -199.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, 225.7, -225.7 , 0 );
setMoveKey( spep_9-3 + 56, 1, 227.8, -244.1 , 0 );
setMoveKey( spep_9-3 + 58, 1, 228.5, -251.7 , 0 );
setMoveKey( spep_9-3 + 60, 1, 228.5, -249.5 , 0 );
setMoveKey( spep_9-3 + 62, 1, 228.5, -247.4 , 0 );
setMoveKey( spep_9-3 + 64, 1, 228.5, -245.2 , 0 );
setMoveKey( spep_9-3 + 66, 1, 228.5, -243.1 , 0 );
setMoveKey( spep_9-3 + 68, 1, 228.5, -240.9 , 0 );
setMoveKey( spep_9-3 + 70, 1, 228.5, -238.8 , 0 );
setMoveKey( spep_9-3 + 72, 1, 228.5, -236.6 , 0 );
setMoveKey( spep_9-3 + 74, 1, 228.5, -234.5 , 0 );
setMoveKey( spep_9-3 + 76, 1, 228.5, -232.3 , 0 );
setMoveKey( spep_9-3 + 78, 1, 228.5, -230.2 , 0 );
setMoveKey( spep_9-3 + 80, 1, 228.5, -228 , 0 );
setMoveKey( spep_9-3 + 82, 1, 228.5, -225.9 , 0 );
setMoveKey( spep_9-3 + 84, 1, 228.5, -223.7 , 0 );
setMoveKey( spep_9-3 + 86, 1, 228.5, -221.6 , 0 );
setMoveKey( spep_9-3 + 88, 1, 228.5, -219.4 , 0 );
setMoveKey( spep_9-3 + 90, 1, 228.5, -217.3 , 0 );
setMoveKey( spep_9-3 + 92, 1, 228.5, -215.1 , 0 );
setMoveKey( spep_9-3 + 94, 1, 228.5, -213 , 0 );
setMoveKey( spep_9-3 + 96, 1, 228.5, -210.8 , 0 );
setMoveKey( spep_9-3 + 98, 1, 228.5, -208.7 , 0 );
setMoveKey( spep_9-3 + 100, 1, 228.5, -206.5 , 0 );
setMoveKey( spep_9-3 + 102, 1, 228.5, -204.4 , 0 );
setMoveKey( spep_9-3 + 104, 1, 228.6, -202.2 , 0 );
setMoveKey( spep_9-3 + 106, 1, 228.6, -200.1 , 0 );
setMoveKey( spep_9-3 + 108, 1, 228.6, -197.9 , 0 );
setMoveKey( spep_9-3 + 110, 1, 228.6, -195.8 , 0 );
setMoveKey( spep_9-3 + 112, 1, 228.6, -193.7 , 0 );
setMoveKey( spep_9-3 + 114, 1, 228.6, -191.5 , 0 );

setScaleKey( spep_9-3 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_9-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_9-3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_9-3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_9-3 + 26, 1, 0.58, 0.58 );
setScaleKey( spep_9-3 + 28, 1, 0.56, 0.56 );
setScaleKey( spep_9-3 + 30, 1, 0.54, 0.54 );
setScaleKey( spep_9-3 + 32, 1, 0.52, 0.52 );
setScaleKey( spep_9-3 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_9-3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_9-3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_9-3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_9-3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_9-3 + 44, 1, 3.3, 3.3 );
setScaleKey( spep_9-3 + 46, 1, 3.81, 3.81 );
setScaleKey( spep_9-3 + 48, 1, 4.23, 4.24 );
setScaleKey( spep_9-3 + 50, 1, 4.6, 4.6 );
setScaleKey( spep_9-3 + 52, 1, 4.9, 4.9 );
setScaleKey( spep_9-3 + 54, 1, 5.15, 5.15 );
setScaleKey( spep_9-3 + 56, 1, 5.32, 5.32 );
setScaleKey( spep_9-3 + 58, 1, 5.4, 5.4 );
setScaleKey( spep_9-3 + 60, 1, 5.38, 5.38 );
setScaleKey( spep_9-3 + 62, 1, 5.37, 5.37 );
setScaleKey( spep_9-3 + 64, 1, 5.35, 5.35 );
setScaleKey( spep_9-3 + 66, 1, 5.34, 5.34 );
setScaleKey( spep_9-3 + 68, 1, 5.33, 5.33 );
setScaleKey( spep_9-3 + 70, 1, 5.31, 5.31 );
setScaleKey( spep_9-3 + 72, 1, 5.3, 5.3 );
setScaleKey( spep_9-3 + 74, 1, 5.28, 5.28 );
setScaleKey( spep_9-3 + 76, 1, 5.27, 5.27 );
setScaleKey( spep_9-3 + 78, 1, 5.25, 5.25 );
setScaleKey( spep_9-3 + 80, 1, 5.24, 5.24 );
setScaleKey( spep_9-3 + 82, 1, 5.23, 5.23 );
setScaleKey( spep_9-3 + 84, 1, 5.21, 5.21 );
setScaleKey( spep_9-3 + 86, 1, 5.2, 5.2 );
setScaleKey( spep_9-3 + 88, 1, 5.18, 5.18 );
setScaleKey( spep_9-3 + 90, 1, 5.17, 5.17 );
setScaleKey( spep_9-3 + 92, 1, 5.15, 5.16 );
setScaleKey( spep_9-3 + 94, 1, 5.14, 5.14 );
setScaleKey( spep_9-3 + 96, 1, 5.13, 5.13 );
setScaleKey( spep_9-3 + 98, 1, 5.11, 5.11 );
setScaleKey( spep_9-3 + 100, 1, 5.1, 5.1 );
setScaleKey( spep_9-3 + 102, 1, 5.08, 5.08 );
setScaleKey( spep_9-3 + 104, 1, 5.07, 5.07 );
setScaleKey( spep_9-3 + 106, 1, 5.06, 5.06 );
setScaleKey( spep_9-3 + 108, 1, 5.04, 5.04 );
setScaleKey( spep_9-3 + 110, 1, 5.03, 5.03 );
setScaleKey( spep_9-3 + 112, 1, 5.01, 5.01 );
setScaleKey( spep_9-3 + 114, 1, 5, 5 );

setRotateKey( spep_9-3 + 18, 1, 60 );
setRotateKey( spep_9-3 + 20, 1, 49.3 );
setRotateKey( spep_9-3 + 22, 1, 44.4 );
setRotateKey( spep_9-3 + 24, 1, 40.9 );
setRotateKey( spep_9-3 + 26, 1, 38 );
setRotateKey( spep_9-3 + 28, 1, 35.7 );
setRotateKey( spep_9-3 + 30, 1, 33.8 );
setRotateKey( spep_9-3 + 32, 1, 32.3 );
setRotateKey( spep_9-3 + 34, 1, 31.1 );
setRotateKey( spep_9-3 + 36, 1, 30.3 );
setRotateKey( spep_9-3 + 38, 1, 30 );
setRotateKey( spep_9-3 + 40, 1, 24.3 );
setRotateKey( spep_9-3 + 42, 1, 21.1 );
setRotateKey( spep_9-3 + 44, 1, 18.6 );
setRotateKey( spep_9-3 + 46, 1, 16.5 );
setRotateKey( spep_9-3 + 48, 1, 14.8 );
setRotateKey( spep_9-3 + 50, 1, 13.3 );
setRotateKey( spep_9-3 + 52, 1, 12 );
setRotateKey( spep_9-3 + 54, 1, 11 );
setRotateKey( spep_9-3 + 56, 1, 10.3 );
setRotateKey( spep_9-3 + 58, 1, 10 );
setRotateKey( spep_9-3 + 60, 1, 9.8 );
setRotateKey( spep_9-3 + 62, 1, 9.7 );
setRotateKey( spep_9-3 + 64, 1, 9.5 );
setRotateKey( spep_9-3 + 66, 1, 9.3 );
setRotateKey( spep_9-3 + 68, 1, 9.1 );
setRotateKey( spep_9-3 + 70, 1, 8.9 );
setRotateKey( spep_9-3 + 72, 1, 8.8 );
setRotateKey( spep_9-3 + 74, 1, 8.6 );
setRotateKey( spep_9-3 + 76, 1, 8.4 );
setRotateKey( spep_9-3 + 78, 1, 8.2 );
setRotateKey( spep_9-3 + 80, 1, 8 );
setRotateKey( spep_9-3 + 82, 1, 7.9 );
setRotateKey( spep_9-3 + 84, 1, 7.7 );
setRotateKey( spep_9-3 + 86, 1, 7.5 );
setRotateKey( spep_9-3 + 88, 1, 7.3 );
setRotateKey( spep_9-3 + 90, 1, 7.1 );
setRotateKey( spep_9-3 + 92, 1, 7 );
setRotateKey( spep_9-3 + 94, 1, 6.8 );
setRotateKey( spep_9-3 + 96, 1, 6.6 );
setRotateKey( spep_9-3 + 98, 1, 6.4 );
setRotateKey( spep_9-3 + 100, 1, 6.3 );
setRotateKey( spep_9-3 + 102, 1, 6.1 );
setRotateKey( spep_9-3 + 104, 1, 5.9 );
setRotateKey( spep_9-3 + 106, 1, 5.7 );
setRotateKey( spep_9-3 + 108, 1, 5.5 );
setRotateKey( spep_9-3 + 110, 1, 5.4 );
setRotateKey( spep_9-3 + 112, 1, 5.2 );
setRotateKey( spep_9-3 + 114, 1, 5 );

--SE
--敵飛んでいく
SE031 = playSe( spep_9 + 10, 1027 );
setSeVolumeByWorkId( spep_9 + 10, SE031, 72 );
SE032 = playSe( spep_9 + 10, 1159 );
setSeVolumeByWorkId( spep_9 + 10, SE032, 62 );
stopSe( spep_9 + 82, SE032, 70 );
SE033 = playSe( spep_9 + 20, 1121 );
setSeVolumeByWorkId( spep_9 + 20, SE033, 85 );

--ジャネンバ腕がワープしてくる
SE034 = playSe( spep_9 + 64, 1337 );
setSeVolumeByWorkId( spep_9 + 64, SE034, 0 );
setSeVolumeByWorkId( spep_9 + 65, SE034, 26.1 );
setSeVolumeByWorkId( spep_9 + 66, SE034, 52.2 );
setSeVolumeByWorkId( spep_9 + 67, SE034, 78.3 );
setSeVolumeByWorkId( spep_9 + 68, SE034, 104.4 );
setSeVolumeByWorkId( spep_9 + 69, SE034, 130.5 );
setSeVolumeByWorkId( spep_9 + 70, SE034, 157 );
stopSe( spep_9 + 162, SE034, 10 );
setStartTimeMs( SE034,  300 );

--気弾溜め
SE035 = playSe( spep_9 + 78, 1276 ,"",0.6 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0,116, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+112;
------------------------------------------------------
-- 気弾爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_10 + 0, SP_15, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_f, 0 );
setEffRotateKey( spep_10 + 240, finish_f, 0 );
setEffAlphaKey( spep_10 + 0, finish_f, 255 );
setEffAlphaKey( spep_10 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_10 + 0, SP_16, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_b, 0 );
setEffRotateKey( spep_10 + 240, finish_b, 0 );
setEffAlphaKey( spep_10 + 0, finish_b, 255 );
setEffAlphaKey( spep_10 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_10 + 58, 1, 0 );

changeAnime( spep_10 + 0, 1, 106 );

setMoveKey( spep_10 + 0, 1, -11.2, -6.9 , 0 );
setMoveKey( spep_10 + 28, 1, -11.2, -6.9 , 0 );
setMoveKey( spep_10 + 30, 1, -11.3, -7 , 0 );
setMoveKey( spep_10 + 32, 1, 16.7, -17 , 0 );
setMoveKey( spep_10 + 34, 1, 17.4, -17.3 , 0 );
setMoveKey( spep_10 + 36, 1, 18.1, -17.6 , 0 );
setMoveKey( spep_10 + 38, 1, 18.8, -18 , 0 );
setMoveKey( spep_10 + 40, 1, 19.5, -18.3 , 0 );
setMoveKey( spep_10 + 42, 1, 20.3, -18.7 , 0 );
setMoveKey( spep_10 + 44, 1, 21.1, -19.1 , 0 );
setMoveKey( spep_10 + 46, 1, 21.9, -19.5 , 0 );
setMoveKey( spep_10 + 48, 1, 22.8, -20 , 0 );
setMoveKey( spep_10 + 50, 1, 22.8, -20 , 0 );
setMoveKey( spep_10 + 52, 1, 28.4, -3.3 , 0 );
setMoveKey( spep_10 + 54, 1, 27.1, -12.4 , 0 );
setMoveKey( spep_10 + 56, 1, 25.7, -21.4 , 0 );
setMoveKey( spep_10 + 58, 1, 28.1, -17.8 , 0 );

setScaleKey( spep_10 + 0, 1, 2.17,2.17);
setScaleKey( spep_10 + 50, 1, 2.17,2.17);
setScaleKey( spep_10 + 52, 1, 2.61,2.61);
setScaleKey( spep_10 + 54, 1, 2.39,2.39);
setScaleKey( spep_10 + 56, 1, 2.17,2.17);
setScaleKey( spep_10 + 58, 1, 2.27,2.27);

setRotateKey( spep_10 + 0, 1, -30 );
setRotateKey( spep_10 + 58, 1, -30 );

--SE
--敵飛んでいく
stopSe( spep_10 + 8, SE033, 24 );

--ジャネンバ腕がワープしてくる
stopSe( spep_10 + 32, SE034, 10 );

--気弾爆発
SE036 = playSe( spep_10 + 18, 1145 );
setSeVolumeByWorkId( spep_10 + 18, SE036, 62 );
stopSe( spep_10 + 52, SE036, 24 );
SE037 = playSe( spep_10 + 18, 1023 );
setSeVolumeByWorkId( spep_10 + 18, SE037, 86 );
SE038 = playSe( spep_10 + 18, 1067 );
setSeVolumeByWorkId( spep_10 + 18, SE038, 88 );

--ラスト爆発
SE039 = playSe( spep_10 + 38, 1024 );
SE040 = playSe( spep_10 + 38, 1068 );
setSeVolumeByWorkId( spep_10 + 38, SE040, 88 );

--終わり
dealDamage( spep_10 +78 );
endPhase( spep_10 + 178 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 56, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 54, appearance, 255 );
setEffAlphaKey( spep_0 + 55, appearance, 255 );
setEffAlphaKey( spep_0 + 56, appearance, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 48,  906, 10, 0x100, -1, 0, -108.2, 100 );
setEffShake( spep_0-3 + 48, shuchusen1, 10, 20 );
setEffMoveKey( spep_0-3 + 48, shuchusen1, -108.2, 100 , 0 );
setEffMoveKey( spep_0-3 + 58, shuchusen1, -108.2, 100 , 0 );

setEffScaleKey( spep_0-3 + 48, shuchusen1, 1.6, 1.2 );
setEffScaleKey( spep_0-3 + 58, shuchusen1, 1.6, 1.2 );

setEffRotateKey( spep_0-3 + 48, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 58, shuchusen1, 255 );

--SE
--向かってくる
SE001 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 115 );
SE002 = playSe( spep_0 + 0, 1072 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 115 );
setTimeStretch( SE002, 0.91, 10, 1 );
SE003 = playSe( spep_0 + 0, 1314 );
SE004 = playSe( spep_0 + 8, 1167 );
setSeVolumeByWorkId( spep_0 + 8, SE004, 51 );
setPitch( spep_0 + 8, SE004, -600 );
setTimeStretch( SE004, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );


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
--SE
--振りかぶる
SE005 = playSe( spep_0 + 44, 1116 );

--次の準備
spep_1=spep_0+56;
------------------------------------------------------
-- パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 40, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 38, punch_f, 255 );
setEffAlphaKey( spep_1 + 39, punch_f, 255 );
setEffAlphaKey( spep_1 + 40, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 40, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 38, punch_b, 255 );
setEffAlphaKey( spep_1 + 39, punch_b, 255 );
setEffAlphaKey( spep_1 + 40, punch_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 16,  906, 14, 0x100, -1, 0, 100, -60 );
setEffShake( spep_1-3 + 16, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 16, shuchusen2, 100, -60 , 0 );
setEffMoveKey( spep_1-3 + 30, shuchusen2, 100, -60 , 0 );

setEffScaleKey( spep_1-3 + 16, shuchusen2, 1.4, 1.2 );
setEffScaleKey( spep_1-3 + 30, shuchusen2, 1.4, 1.2 );

setEffRotateKey( spep_1-3 + 16, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 30, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 16, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 30, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 16, 1, 108 );

setMoveKey( spep_1 + 0, 1, 198.9, -155 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 197.1, -151.4 , 0 );
setMoveKey( spep_1-3 + 4, 1, 194.5, -146.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 191.1, -139.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 186.7, -130.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 181.1, -119.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 173.9, -105.2 , 0 );
setMoveKey( spep_1-3 + 15, 1, 163.5, -84.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 18, 1, 149, -65 , 0 );
setMoveKey( spep_1-3 + 20, 1, 159.1, -95 , 0 );
setMoveKey( spep_1-3 + 22, 1, 149, -65 , 0 );
setMoveKey( spep_1-3 + 24, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 26, 1, 179, -75 , 0 );
setMoveKey( spep_1-3 + 28, 1, 219.1, -115 , 0 );
setMoveKey( spep_1-3 + 30, 1, 179, -75 , 0 );
setMoveKey( spep_1-3 + 32, 1, 138.9, -35 , 0 );
setMoveKey( spep_1-3 + 34, 1, 158.9, -55 , 0 );
setMoveKey( spep_1-3 + 36, 1, 178.9, -75 , 0 );
setMoveKey( spep_1-3 + 38, 1, 199, -95 , 0 );
setMoveKey( spep_1-3 + 40, 1, 219, -115 , 0 );
setMoveKey( spep_1-3 + 42, 1, 239, -135 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_1-3 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 4, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 6, 1, 2.34, 2.34 );
setScaleKey( spep_1-3 + 8, 1, 2.81, 2.81 );
setScaleKey( spep_1-3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_1-3 + 12, 1, 4.19, 4.19 );
setScaleKey( spep_1-3 + 15, 1, 5.3, 5.3 );
setScaleKey( spep_1-3 + 16, 1, 7.99, 7.99 );
setScaleKey( spep_1-3 + 18, 1, 6.55, 6.55 );
setScaleKey( spep_1-3 + 20, 1, 5.12, 5.12 );
setScaleKey( spep_1-3 + 22, 1, 6.55, 6.55 );
setScaleKey( spep_1-3 + 24, 1, 7.99, 7.99 );
setScaleKey( spep_1-3 + 26, 1, 7.29, 7.29 );
setScaleKey( spep_1-3 + 28, 1, 6.58, 6.58 );
setScaleKey( spep_1-3 + 30, 1, 7.04, 7.04 );
setScaleKey( spep_1-3 + 32, 1, 7.5, 7.5 );
setScaleKey( spep_1-3 + 34, 1, 7, 7 );
setScaleKey( spep_1-3 + 36, 1, 6.5, 6.5 );
setScaleKey( spep_1-3 + 38, 1, 6, 6 );
setScaleKey( spep_1-3 + 40, 1, 5.5, 5.5 );
setScaleKey( spep_1-3 + 42, 1, 5, 5 );

setRotateKey( spep_1 + 0, 1, 10 );
setRotateKey( spep_1-3 + 42, 1, 10 );

--SE
--向かってくる
stopSe( spep_1 + 4, SE003, 18 );

--振りかぶる
stopSe( spep_1 + 0, SE005, 14 );

--パンチ
SE006 = playSe( spep_1 + 2, 1003 );
setPitch( spep_1 + 2, SE006, -400 );
setTimeStretch( SE006, 0.73, 10, 1 );
SE007 = playSe( spep_1 + 14, 1187 );
setSeVolumeByWorkId( spep_1 + 14, SE007, 75 );
SE008 = playSe( spep_1 + 14, 1009 );
SE009 = playSe( spep_1 + 14, 1153 );
setSeVolumeByWorkId( spep_1 + 14, SE009, 86 );
SE010 = playSe( spep_1 + 14, 1011 );
setSeVolumeByWorkId( spep_1 + 14, SE010, 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 44, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+40;
------------------------------------------------------
-- パンチから気弾
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan_f, 0 );
setEffRotateKey( spep_2 + 76, kidan_f, 0 );
setEffAlphaKey( spep_2 + 0, kidan_f, 255 );
setEffAlphaKey( spep_2 + 74, kidan_f, 255 );
setEffAlphaKey( spep_2 + 75, kidan_f, 255 );
setEffAlphaKey( spep_2 + 76, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidan_b, 0 );
setEffRotateKey( spep_2 + 76, kidan_b, 0 );
setEffAlphaKey( spep_2 + 0, kidan_b, 255 );
setEffAlphaKey( spep_2 + 74, kidan_b, 255 );
setEffAlphaKey( spep_2 + 75, kidan_b, 255 );
setEffAlphaKey( spep_2 + 76, kidan_b, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 50,  906, 28, 0x100, -1, 0, 0, -29.9 );
setEffShake( spep_2-3 + 50, shuchusen3, 10, 20 );
setEffMoveKey( spep_2-3 + 50, shuchusen3, 0, -29.9 , 0 );
setEffMoveKey( spep_2-3 + 78, shuchusen3, 0, -29.9 , 0 );

setEffScaleKey( spep_2-3 + 50, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_2-3 + 78, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_2-3 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 78, shuchusen3, 255 );

--敵の動き
changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2-3 + 46, 1, 106 );

setMoveKey( spep_2 + 0, 1, -396.2, 194.4 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -325.3, 172.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, -153.1, 119.2 , 0 );
setMoveKey( spep_2-3 + 6, 1, 84.1, 45.8 , 0 );
setMoveKey( spep_2-3 + 8, 1, 354.5, -38 , 0 );
setMoveKey( spep_2-3 + 10, 1, 338.5, -53.4 , 0 );
setMoveKey( spep_2-3 + 12, 1, 324, -67.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 311.8, -79.3 , 0 );
setMoveKey( spep_2-3 + 16, 1, 302.6, -88.3 , 0 );
setMoveKey( spep_2-3 + 18, 1, 296.8, -94 , 0 );
setMoveKey( spep_2-3 + 20, 1, 294.4, -95.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 277.3, -90.7 , 0 );
setMoveKey( spep_2-3 + 24, 1, 261.2, -85.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 246.3, -81.4 , 0 );
setMoveKey( spep_2-3 + 28, 1, 232.8, -77.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 220.5, -73.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 209.5, -70.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 199.8, -67.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 191.6, -65 , 0 );
setMoveKey( spep_2-3 + 38, 1, 184.8, -63 , 0 );
setMoveKey( spep_2-3 + 40, 1, 179.4, -61.4 , 0 );
setMoveKey( spep_2-3 + 42, 1, 175.5, -60.3 , 0 );
setMoveKey( spep_2-3 + 45, 1, 173.3, -59.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 335.3, -45.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 327.8, -45.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 320.3, -45.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 312.8, -46 , 0 );
setMoveKey( spep_2-3 + 54, 1, 305.3, -46.2 , 0 );
setMoveKey( spep_2-3 + 56, 1, 297.8, -46.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 301.5, -47.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 305.2, -48.6 , 0 );
setMoveKey( spep_2-3 + 62, 1, 308.9, -49.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 312.6, -50.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, 316.3, -51.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, 320, -53 , 0 );
setMoveKey( spep_2-3 + 70, 1, 323.7, -54.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 327.4, -55.2 , 0 );
setMoveKey( spep_2-3 + 74, 1, 331.1, -56.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, 334.8, -57.4 , 0 );
setMoveKey( spep_2-3 + 78, 1, 338.5, -58.5 , 0 );

setScaleKey( spep_2 + 0, 1, 5.25,5.25);
setScaleKey( spep_2-3 + 4, 1, 4.56,4.56);
setScaleKey( spep_2-3 + 6, 1, 3.9,3.9);
setScaleKey( spep_2-3 + 8, 1, 3.15,3.15);
setScaleKey( spep_2-3 + 10, 1, 2.75,2.75);
setScaleKey( spep_2-3 + 12, 1, 2.39,2.39);
setScaleKey( spep_2-3 + 14, 1, 2.1,2.1);
setScaleKey( spep_2-3 + 16, 1, 1.87,1.87);
setScaleKey( spep_2-3 + 18, 1, 1.72,1.72);
setScaleKey( spep_2-3 + 20, 1, 1.68,1.68);
setScaleKey( spep_2-3 + 22, 1, 1.62,1.62);
setScaleKey( spep_2-3 + 24, 1, 1.56,1.56);
setScaleKey( spep_2-3 + 26, 1, 1.51,1.51);
setScaleKey( spep_2-3 + 28, 1, 1.47,1.47);
setScaleKey( spep_2-3 + 30, 1, 1.42,1.42);
setScaleKey( spep_2-3 + 32, 1, 1.38,1.38);
setScaleKey( spep_2-3 + 34, 1, 1.34,1.34);
setScaleKey( spep_2-3 + 36, 1, 1.31,1.31);
setScaleKey( spep_2-3 + 38, 1, 1.3,1.3);
setScaleKey( spep_2-3 + 40, 1, 1.27,1.27);
setScaleKey( spep_2-3 + 42, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 45, 1, 1.26,1.26);
setScaleKey( spep_2-3 + 46, 1, 1.17,1.17);
setScaleKey( spep_2-3 + 78, 1, 1.17,1.17);

setRotateKey( spep_2 + 0, 1, 14.8 );
setRotateKey( spep_2-3 + 46, 1, 14.8 );
setRotateKey( spep_2-3 + 48, 1, 15.1 );
setRotateKey( spep_2-3 + 50, 1, 15.4 );
setRotateKey( spep_2-3 + 52, 1, 15.8 );
setRotateKey( spep_2-3 + 54, 1, 16.1 );
setRotateKey( spep_2-3 + 56, 1, 16.4 );
setRotateKey( spep_2-3 + 58, 1, 16.7 );
setRotateKey( spep_2-3 + 60, 1, 17 );
setRotateKey( spep_2-3 + 62, 1, 17.3 );
setRotateKey( spep_2-3 + 64, 1, 17.6 );
setRotateKey( spep_2-3 + 66, 1, 18 );
setRotateKey( spep_2-3 + 68, 1, 18.3 );
setRotateKey( spep_2-3 + 70, 1, 18.6 );
setRotateKey( spep_2-3 + 72, 1, 18.9 );
setRotateKey( spep_2-3 + 74, 1, 19.2 );
setRotateKey( spep_2-3 + 76, 1, 19.5 );
setRotateKey( spep_2-3 + 78, 1, 19.8 );

--SE
--気弾溜め
SE011 = playSe( spep_2 + 18, 1240 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 110 );
stopSe( spep_2 + 48, SE011, 24 );
setPitch( spep_2 + 18, SE011, -400 );
setTimeStretch( SE011, 0.73, 40, 4 );
SE012 = playSe( spep_2 + 18, 1191 );
setSeVolumeByWorkId( spep_2 + 18, SE012, 153 );
stopSe( spep_2 + 48, SE012, 24 );

--気弾発射
SE013 = playSe( spep_2 + 46, 1133 ,"",0.6 );
SE014 = playSe( spep_2 + 46, 1177 );
SE015 = playSe( spep_2 + 52, 1130 ,"",0.6 );
setSeVolumeByWorkId( spep_2 + 52, SE015, 84 );
setPitch( spep_2 + 52, SE015, -400 );
setTimeStretch( SE015, 0.73, 40, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+76;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 56, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 54, beam_f, 255 );
setEffAlphaKey( spep_3 + 55, beam_f, 255 );
setEffAlphaKey( spep_3 + 56, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 56, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 54, beam_b, 255 );
setEffAlphaKey( spep_3 + 55, beam_b, 255 );
setEffAlphaKey( spep_3 + 56, beam_b, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 0,  906, 58, 0x100, -1, 0, -8.3, 108 );
setEffShake( spep_3 + 0, shuchusen4, 58, 20 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 108 , 0 );
--setEffMoveKey( spep_3-3 + 2, shuchusen4, -4.2, 113.6 , 0 );
setEffMoveKey( spep_3-3 + 4, shuchusen4, -8.3, 119.2 , 0 );
setEffMoveKey( spep_3-3 + 6, shuchusen4, -12.5, 124.8 , 0 );
setEffMoveKey( spep_3-3 + 8, shuchusen4, -16.6, 130.3 , 0 );
setEffMoveKey( spep_3-3 + 10, shuchusen4,-20.8, 135.9 , 0 );
setEffMoveKey( spep_3-3 + 12, shuchusen4,-24.9, 141.5 , 0 );
setEffMoveKey( spep_3-3 + 14, shuchusen4,-29.1, 147.1 , 0 );
setEffMoveKey( spep_3-3 + 16, shuchusen4,-33.2, 152.7 , 0 );
setEffMoveKey( spep_3-3 + 18, shuchusen4,-37.4, 158.3 , 0 );
setEffMoveKey( spep_3-3 + 20, shuchusen4,-41.5, 163.9 , 0 );
setEffMoveKey( spep_3-3 + 22, shuchusen4,-45.7, 169.4 , 0 );
setEffMoveKey( spep_3-3 + 24, shuchusen4,-49.8, 175 , 0 );
setEffMoveKey( spep_3-3 + 26, shuchusen4,-53.9, 180.6 , 0 );
setEffMoveKey( spep_3-3 + 28, shuchusen4,-58.1, 186.2 , 0 );
setEffMoveKey( spep_3-3 + 30, shuchusen4,-62.2, 191.8 , 0 );
setEffMoveKey( spep_3-3 + 32, shuchusen4,-66.4, 197.4 , 0 );
setEffMoveKey( spep_3-3 + 34, shuchusen4,-70.5, 203 , 0 );
setEffMoveKey( spep_3-3 + 36, shuchusen4,-74.7, 208.6 , 0 );
setEffMoveKey( spep_3-3 + 38, shuchusen4,-78.8, 214.1 , 0 );
setEffMoveKey( spep_3-3 + 40, shuchusen4,-83, 219.7 , 0 );
setEffMoveKey( spep_3-3 + 42, shuchusen4,-87.1, 225.3 , 0 );
setEffMoveKey( spep_3-3 + 44, shuchusen4,-91.3, 230.9 , 0 );
setEffMoveKey( spep_3-3 + 46, shuchusen4,-95.4, 236.5 , 0 );
setEffMoveKey( spep_3-3 + 48, shuchusen4,-99.5, 242.1 , 0 );
setEffMoveKey( spep_3-3 + 50, shuchusen4,-103.7, 247.7 , 0 );
setEffMoveKey( spep_3-3 + 52, shuchusen4,-107.8, 253.2 , 0 );
setEffMoveKey( spep_3-3 + 54, shuchusen4,-112, 258.8 , 0 );
setEffMoveKey( spep_3-3 + 56, shuchusen4,-116.1, 264.4 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen4,-120.3, 270 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.1, 1.2 );
--setEffScaleKey( spep_3-3 + 2, shuchusen4, 1.12, 1.21 );
setEffScaleKey( spep_3-3 + 4, shuchusen4, 1.13, 1.22 );
setEffScaleKey( spep_3-3 + 6, shuchusen4, 1.15, 1.23 );
setEffScaleKey( spep_3-3 + 8, shuchusen4, 1.16, 1.24 );
setEffScaleKey( spep_3-3 + 10, shuchusen4, 1.18, 1.25 );
setEffScaleKey( spep_3-3 + 12, shuchusen4, 1.19, 1.26 );
setEffScaleKey( spep_3-3 + 14, shuchusen4, 1.21, 1.27 );
setEffScaleKey( spep_3-3 + 16, shuchusen4, 1.22, 1.28 );
setEffScaleKey( spep_3-3 + 18, shuchusen4, 1.24, 1.29 );
setEffScaleKey( spep_3-3 + 20, shuchusen4, 1.26, 1.3 );
setEffScaleKey( spep_3-3 + 22, shuchusen4, 1.27, 1.31 );
setEffScaleKey( spep_3-3 + 24, shuchusen4, 1.29, 1.32 );
setEffScaleKey( spep_3-3 + 26, shuchusen4, 1.3, 1.33 );
setEffScaleKey( spep_3-3 + 28, shuchusen4, 1.32, 1.34 );
setEffScaleKey( spep_3-3 + 30, shuchusen4, 1.33, 1.36 );
setEffScaleKey( spep_3-3 + 32, shuchusen4, 1.35, 1.37 );
setEffScaleKey( spep_3-3 + 34, shuchusen4, 1.36, 1.38 );
setEffScaleKey( spep_3-3 + 36, shuchusen4, 1.38, 1.39 );
setEffScaleKey( spep_3-3 + 38, shuchusen4, 1.39, 1.4 );
setEffScaleKey( spep_3-3 + 40, shuchusen4, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 42, shuchusen4, 1.43, 1.42 );
setEffScaleKey( spep_3-3 + 44, shuchusen4, 1.44, 1.43 );
setEffScaleKey( spep_3-3 + 46, shuchusen4, 1.46, 1.44 );
setEffScaleKey( spep_3-3 + 48, shuchusen4, 1.47, 1.45 );
setEffScaleKey( spep_3-3 + 50, shuchusen4, 1.49, 1.46 );
setEffScaleKey( spep_3-3 + 52, shuchusen4, 1.5, 1.47 );
setEffScaleKey( spep_3-3 + 54, shuchusen4, 1.52, 1.48 );
setEffScaleKey( spep_3-3 + 56, shuchusen4, 1.53, 1.49 );
setEffScaleKey( spep_3-3 + 58, shuchusen4, 1.55, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3-3 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen4, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 24, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 642, -1380.8 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 408.8, -856.3 , 0 );
setMoveKey( spep_3-3 + 4, 1, 317.5, -650.7 , 0 );
setMoveKey( spep_3-3 + 6, 1, 262.7, -527.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, 242, -480.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 248.5, -491.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 266.2, -520.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 293.1, -565.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 329, -624.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 374.8, -700.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 433.1, -796.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 512.3, -927.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 702, -1241 , 0 );

setScaleKey( spep_3 + 0, 1, 4, 4 );
--setScaleKey( spep_3-3 + 2, 1, 2.83, 2.83 );
setScaleKey( spep_3-3 + 4, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_3-3 + 8, 1, 2, 2 );
setScaleKey( spep_3-3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 14, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 16, 1, 2.19, 2.19 );
setScaleKey( spep_3-3 + 18, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 20, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 22, 1, 2.59, 2.59 );
setScaleKey( spep_3-3 + 24, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 20 );
setRotateKey( spep_3-3 + 24, 1, 20 );

--SE
--気弾発射
stopSe( spep_3 + 30, SE014, 28 );

--敵飛んでいく
SE016 = playSe( spep_3 + 0, 1183 );
SE017 = playSe( spep_3 + 2, 1027 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- 着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 76, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 74, hit, 255 );
setEffAlphaKey( spep_4 + 75, hit, 255 );
setEffAlphaKey( spep_4 + 76, hit, 0 );

--SE
--敵飛んでいく
stopSe( spep_4 + 18, SE016, 18 );

--剣山に突っ込む
SE018 = playSe( spep_4 + 10, 1188 );
setSeVolumeByWorkId( spep_4 + 10, SE018, 52 );

--爆発
SE019 = playSe( spep_4 + 26, 1135 );
SE020 = playSe( spep_4 + 30, 1159 );
setSeVolumeByWorkId( spep_4 + 30, SE020, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+76;
------------------------------------------------------
-- 破片掴む
------------------------------------------------------
-- ** エフェクト等 ** --
grab = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, grab, 0, 0, 0 );
setEffMoveKey( spep_5 + 120, grab, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, grab, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, grab, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, grab, 0 );
setEffRotateKey( spep_5 + 120, grab, 0 );
setEffAlphaKey( spep_5 + 0, grab, 255 );
setEffAlphaKey( spep_5 + 120, grab, 255 );

--顔カットインのタイミング指定
spep_x=spep_5 +22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen5 = entryEffectLife( spep_5-3 + 38,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 38, shuchusen5, 80, 20 );
setEffMoveKey( spep_5-3 + 38, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 38, shuchusen5, 1, 1 );
setEffScaleKey( spep_5-3 + 118, shuchusen5, 1, 1 );

setEffRotateKey( spep_5-3 + 38, shuchusen5, 180 );
setEffRotateKey( spep_5-3 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_5-3 + 38, shuchusen5, 255 );
setEffAlphaKey( spep_5-3 + 118, shuchusen5, 255 );

--SE
--爆発
stopSe( spep_5 + 116, SE020, 12 );

--破片キャッチ
SE022 = playSe( spep_5 + 34, 1006 );
setSeVolumeByWorkId( spep_5 + 34, SE022, 111 );
setPitch( spep_5 + 34, SE022, -400 );
setTimeStretch( SE022, 0.73, 10, 1 );
SE023 = playSe( spep_5 + 36, 1001 );
setSeVolumeByWorkId( spep_5 + 36, SE023, 68 );
stopSe( spep_5 + 48, SE023, 14 );

--カードカットイン
SE024 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_6=spep_5+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );
 
-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
-- 破片を変形させて攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_7 + 66, attack, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, attack, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, attack, 0 );
setEffRotateKey( spep_7 + 66, attack, 0 );
setEffAlphaKey( spep_7 + 0, attack, 255 );
setEffAlphaKey( spep_7 + 64, attack, 255 );
setEffAlphaKey( spep_7 + 65, attack, 255 );
setEffAlphaKey( spep_7 + 66, attack, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_7-3 + 14,  906, 54, 0x100, -1, 0, -101.6, -62 );
setEffShake( spep_7-3 + 14, shuchusen6, 54, 20 );
setEffMoveKey( spep_7-3 + 14, shuchusen6, -101.6, -62 , 0 );
setEffMoveKey( spep_7-3 + 68, shuchusen6, -101.6, -62 , 0 );

setEffScaleKey( spep_7-3 + 14, shuchusen6, 1.2, 1.2 );
setEffScaleKey( spep_7-3 + 68, shuchusen6, 1.2, 1.2 );

setEffRotateKey( spep_7-3 + 14, shuchusen6, 180 );
setEffRotateKey( spep_7-3 + 68, shuchusen6, 180 );

setEffAlphaKey( spep_7-3 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_7-3 + 68, shuchusen6, 255 );

--SE
--トゲ伸ばす
SE025 = playSe( spep_7 + 12, 1336 );
setSeVolumeByWorkId( spep_7 + 40, SE025, 173 );
stopSe( spep_7 + 118, SE025, 12 );
setStartTimeMs( SE025,  2683 );
setPitch( spep_7 + 12, SE025, -300 );
setTimeStretch( SE025, 0.5, 40, 4 );
SE026 = playSe( spep_7 + 12, 1338 );
setSeVolumeByWorkId( spep_7 + 12, SE026, 176 );
SE027 = playSe( spep_7 + 12, 1337 );
setSeVolumeByWorkId( spep_7 + 12, SE027, 143 );
stopSe( spep_7 + 118, SE027, 12 );
SE028 = playSe( spep_7 + 12, 1027 );
setSeVolumeByWorkId( spep_7 + 12, SE028, 43 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+65;
------------------------------------------------------
-- エネミーに迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, approaching_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 76, approaching_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, approaching_f, 0 );
setEffRotateKey( spep_8 + 76, approaching_f, 0 );
setEffAlphaKey( spep_8 + 0, approaching_f, 255 );
setEffAlphaKey( spep_8 + 74, approaching_f, 255 );
setEffAlphaKey( spep_8 + 75, approaching_f, 255 );
setEffAlphaKey( spep_8 + 76, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, approaching_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 76, approaching_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, approaching_b, 0 );
setEffRotateKey( spep_8 + 76, approaching_b, 0 );
setEffAlphaKey( spep_8 + 0, approaching_b, 255 );
setEffAlphaKey( spep_8 + 74, approaching_b, 255 );
setEffAlphaKey( spep_8 + 75, approaching_b, 255 );
setEffAlphaKey( spep_8 + 76, approaching_b, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_8-3 + 48,  906, 18, 0x100, -1, 0, 0, 216 );
setEffShake( spep_8-3 + 48, shuchusen7, 18, 20 );
setEffMoveKey( spep_8-3 + 48, shuchusen7, 0, 216 , 0 );
setEffMoveKey( spep_8-3 + 66, shuchusen7, 0, 216 , 0 );

setEffScaleKey( spep_8-3 + 48, shuchusen7, 1.05, 1.4 );
setEffScaleKey( spep_8-3 + 66, shuchusen7, 1.05, 1.4 );

setEffRotateKey( spep_8-3 + 48, shuchusen7, 180 );
setEffRotateKey( spep_8-3 + 66, shuchusen7, 180 );

setEffAlphaKey( spep_8-3 + 48, shuchusen7, 255 );
setEffAlphaKey( spep_8-3 + 66, shuchusen7, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-1 + 46, 1, 0 );

changeAnime( spep_8 + 0, 1, 6 );
changeAnime( spep_8-3 + 46, 1, 5 );

setMoveKey( spep_8 + 0, 1, -1.9, -4 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 2, -4.3 , 0 );
setMoveKey( spep_8-3 + 4, 1, -2, -4.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, -2.1, -6 , 0 );
setMoveKey( spep_8-3 + 8, 1, -2.2, -7.5 , 0 );
setMoveKey( spep_8-3 + 10, 1, -2.3, -9.3 , 0 );
setMoveKey( spep_8-3 + 12, 1, -2.4, -11.5 , 0 );
setMoveKey( spep_8-3 + 14, 1, -2.6, -14 , 0 );
setMoveKey( spep_8-3 + 16, 1, -2.8, -16.9 , 0 );
setMoveKey( spep_8-3 + 18, 1, -3, -20.2 , 0 );
setMoveKey( spep_8-3 + 20, 1, -3.3, -23.8 , 0 );
setMoveKey( spep_8-3 + 22, 1, -3.5, -27.8 , 0 );
setMoveKey( spep_8-3 + 24, 1, -3.8, -32.3 , 0 );
setMoveKey( spep_8-3 + 26, 1, -4.2, -37.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, -4.5, -42.6 , 0 );
setMoveKey( spep_8-3 + 30, 1, -4.9, -48.6 , 0 );
setMoveKey( spep_8-3 + 32, 1, -5.4, -55.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, -5.9, -63.4 , 0 );
setMoveKey( spep_8-3 + 36, 1, -6.6, -73.4 , 0 );
setMoveKey( spep_8-3 + 38, 1, -7.9, -91.4 , 0 );
setMoveKey( spep_8-3 + 40, 1, 32.1, -80.6 , 0 );
setMoveKey( spep_8-3 + 45, 1, 32.1, -80.6 , 0 );
setMoveKey( spep_8-3 + 46, 1, -39.4, -52.2 , 0 );
setMoveKey( spep_8-1 + 46, 1, -39.4, -52.2 , 0 );

setScaleKey( spep_8 + 0, 1, 0.6, 0.6 );
--setScaleKey( spep_8-3 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_8-3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_8-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_8-3 + 8, 1, 0.67, 0.67 );
setScaleKey( spep_8-3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_8-3 + 12, 1, 0.75, 0.75 );
setScaleKey( spep_8-3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_8-3 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_8-3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_8-3 + 20, 1, 1.01, 1.01 );
setScaleKey( spep_8-3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_8-3 + 24, 1, 1.18, 1.18 );
setScaleKey( spep_8-3 + 26, 1, 1.28, 1.28 );
setScaleKey( spep_8-3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_8-3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_8-3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_8-3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_8-3 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_8-3 + 38, 1, 2.4, 2.4 );
setScaleKey( spep_8-3 + 40, 1, 3.5, 3.5 );
setScaleKey( spep_8-3 + 45, 1, 3.5, 3.5 );
setScaleKey( spep_8-3 + 46, 1, 3.15, 3.15 );
setScaleKey( spep_8-1 + 46, 1, 3.15, 3.15 );

setRotateKey( spep_8 + 0, 1, 50 );
setRotateKey( spep_8-3 + 45, 1, 50 );
setRotateKey( spep_8-3 + 46, 1, 9.8 );
setRotateKey( spep_8-1 + 46, 1, 9.8 );

--SE
--トゲ伸ばす
stopSe( spep_8 + 48, SE025, 12 );
stopSe( spep_8 + 48, SE027, 12 );

--トゲ衝突
SE029 = playSe( spep_8 + 44, 1067 );
SE030 = playSe( spep_8 + 44, 1017 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0,80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+76;
------------------------------------------------------
-- エネミー吹っ飛びから腕出現
------------------------------------------------------
-- ** エフェクト等 ** --
arm_f = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, arm_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 112, arm_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, arm_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 112, arm_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, arm_f, 0 );
setEffRotateKey( spep_9 + 112, arm_f, 0 );
setEffAlphaKey( spep_9 + 0, arm_f, 255 );
setEffAlphaKey( spep_9 + 110, arm_f, 255 );
setEffAlphaKey( spep_9 + 111, arm_f, 255 );
setEffAlphaKey( spep_9 + 112, arm_f, 0 );

-- ** エフェクト等 ** --
arm_b = entryEffect( spep_9 + 0, SP_14x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, arm_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 112, arm_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, arm_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 112, arm_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, arm_b, 0 );
setEffRotateKey( spep_9 + 112, arm_b, 0 );
setEffAlphaKey( spep_9 + 0, arm_b, 255 );
setEffAlphaKey( spep_9 + 110, arm_b, 255 );
setEffAlphaKey( spep_9 + 111, arm_b, 255 );
setEffAlphaKey( spep_9 + 112, arm_b, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_9 + 2,  906, 6, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 2, shuchusen8, 6, 20 );
setEffMoveKey( spep_9 + 2, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_9 + 8, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_9 + 2, shuchusen8, 1.1, 1.1 );
setEffScaleKey( spep_9 + 8, shuchusen8, 1.1, 1.1 );

setEffRotateKey( spep_9 + 2, shuchusen8, 180 );
setEffRotateKey( spep_9 + 8, shuchusen8, 180 );

setEffAlphaKey( spep_9 + 2, shuchusen8, 255 );
setEffAlphaKey( spep_9 + 8, shuchusen8, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_9-3 + 38,  906, 20, 0x100, -1, 0, 265.1, 320 );
setEffShake( spep_9-3 + 38, shuchusen9, 20, 20 );
setEffMoveKey( spep_9-3 + 38, shuchusen9, 265.1, 320 , 0 );
setEffMoveKey( spep_9-3 + 40, shuchusen9, 259.1, 298 , 0 );
setEffMoveKey( spep_9-3 + 42, shuchusen9, 253.1, 276 , 0 );
setEffMoveKey( spep_9-3 + 44, shuchusen9, 247.1, 254 , 0 );
setEffMoveKey( spep_9-3 + 46, shuchusen9, 241.1, 232 , 0 );
setEffMoveKey( spep_9-3 + 48, shuchusen9, 235.1, 210 , 0 );
setEffMoveKey( spep_9-3 + 50, shuchusen9, 229.1, 188 , 0 );
setEffMoveKey( spep_9-3 + 52, shuchusen9, 223.1, 166 , 0 );
setEffMoveKey( spep_9-3 + 54, shuchusen9, 217.1, 144 , 0 );
setEffMoveKey( spep_9-3 + 56, shuchusen9, 211.1, 122 , 0 );
setEffMoveKey( spep_9-3 + 58, shuchusen9, 205.1, 100 , 0 );

setEffScaleKey( spep_9-3 + 38, shuchusen9, 1.5, 1.6 );
setEffScaleKey( spep_9-3 + 58, shuchusen9, 1.5, 1.6 );

setEffRotateKey( spep_9-3 + 38, shuchusen9, 180 );
setEffRotateKey( spep_9-3 + 58, shuchusen9, 180 );

setEffAlphaKey( spep_9-3 + 38, shuchusen9, 255 );
setEffAlphaKey( spep_9-3 + 58, shuchusen9, 255 );

--敵の動き
setDisp( spep_9-3 + 18, 1, 1 );

changeAnime( spep_9-3 + 18, 1, 5 );

setMoveKey( spep_9-3 + 18, 1, -37.4, -51.5 , 0 );
setMoveKey( spep_9-3 + 20, 1, 36.8, 63.3 , 0 );
setMoveKey( spep_9-3 + 22, 1, 64.2, 110.1 , 0 );
setMoveKey( spep_9-3 + 24, 1, 90.3, 148.1 , 0 );
setMoveKey( spep_9-3 + 26, 1, 111, 178.2 , 0 );
setMoveKey( spep_9-3 + 28, 1, 128, 202.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 141.9, 223.2 , 0 );
setMoveKey( spep_9-3 + 32, 1, 153.2, 239.6 , 0 );
setMoveKey( spep_9-3 + 34, 1, 161.9, 252.2 , 0 );
setMoveKey( spep_9-3 + 36, 1, 167.7, 260.6 , 0 );
setMoveKey( spep_9-3 + 38, 1, 169.9, 263.8 , 0 );
setMoveKey( spep_9-3 + 40, 1, 186.5, 117.7 , 0 );
setMoveKey( spep_9-3 + 42, 1, 196.1, 33.4 , 0 );
setMoveKey( spep_9-3 + 44, 1, 203.4, -31.3 , 0 );
setMoveKey( spep_9-3 + 46, 1, 209.5, -84.5 , 0 );
setMoveKey( spep_9-3 + 48, 1, 214.7, -129.6 , 0 );
setMoveKey( spep_9-3 + 50, 1, 219, -167.8 , 0 );
setMoveKey( spep_9-3 + 52, 1, 222.7, -199.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, 225.7, -225.7 , 0 );
setMoveKey( spep_9-3 + 56, 1, 227.8, -244.1 , 0 );
setMoveKey( spep_9-3 + 58, 1, 228.5, -251.7 , 0 );
setMoveKey( spep_9-3 + 60, 1, 228.5, -249.5 , 0 );
setMoveKey( spep_9-3 + 62, 1, 228.5, -247.4 , 0 );
setMoveKey( spep_9-3 + 64, 1, 228.5, -245.2 , 0 );
setMoveKey( spep_9-3 + 66, 1, 228.5, -243.1 , 0 );
setMoveKey( spep_9-3 + 68, 1, 228.5, -240.9 , 0 );
setMoveKey( spep_9-3 + 70, 1, 228.5, -238.8 , 0 );
setMoveKey( spep_9-3 + 72, 1, 228.5, -236.6 , 0 );
setMoveKey( spep_9-3 + 74, 1, 228.5, -234.5 , 0 );
setMoveKey( spep_9-3 + 76, 1, 228.5, -232.3 , 0 );
setMoveKey( spep_9-3 + 78, 1, 228.5, -230.2 , 0 );
setMoveKey( spep_9-3 + 80, 1, 228.5, -228 , 0 );
setMoveKey( spep_9-3 + 82, 1, 228.5, -225.9 , 0 );
setMoveKey( spep_9-3 + 84, 1, 228.5, -223.7 , 0 );
setMoveKey( spep_9-3 + 86, 1, 228.5, -221.6 , 0 );
setMoveKey( spep_9-3 + 88, 1, 228.5, -219.4 , 0 );
setMoveKey( spep_9-3 + 90, 1, 228.5, -217.3 , 0 );
setMoveKey( spep_9-3 + 92, 1, 228.5, -215.1 , 0 );
setMoveKey( spep_9-3 + 94, 1, 228.5, -213 , 0 );
setMoveKey( spep_9-3 + 96, 1, 228.5, -210.8 , 0 );
setMoveKey( spep_9-3 + 98, 1, 228.5, -208.7 , 0 );
setMoveKey( spep_9-3 + 100, 1, 228.5, -206.5 , 0 );
setMoveKey( spep_9-3 + 102, 1, 228.5, -204.4 , 0 );
setMoveKey( spep_9-3 + 104, 1, 228.6, -202.2 , 0 );
setMoveKey( spep_9-3 + 106, 1, 228.6, -200.1 , 0 );
setMoveKey( spep_9-3 + 108, 1, 228.6, -197.9 , 0 );
setMoveKey( spep_9-3 + 110, 1, 228.6, -195.8 , 0 );
setMoveKey( spep_9-3 + 112, 1, 228.6, -193.7 , 0 );
setMoveKey( spep_9-3 + 114, 1, 228.6, -191.5 , 0 );

setScaleKey( spep_9-3 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_9-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_9-3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_9-3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_9-3 + 26, 1, 0.58, 0.58 );
setScaleKey( spep_9-3 + 28, 1, 0.56, 0.56 );
setScaleKey( spep_9-3 + 30, 1, 0.54, 0.54 );
setScaleKey( spep_9-3 + 32, 1, 0.52, 0.52 );
setScaleKey( spep_9-3 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_9-3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_9-3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_9-3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_9-3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_9-3 + 44, 1, 3.3, 3.3 );
setScaleKey( spep_9-3 + 46, 1, 3.81, 3.81 );
setScaleKey( spep_9-3 + 48, 1, 4.23, 4.24 );
setScaleKey( spep_9-3 + 50, 1, 4.6, 4.6 );
setScaleKey( spep_9-3 + 52, 1, 4.9, 4.9 );
setScaleKey( spep_9-3 + 54, 1, 5.15, 5.15 );
setScaleKey( spep_9-3 + 56, 1, 5.32, 5.32 );
setScaleKey( spep_9-3 + 58, 1, 5.4, 5.4 );
setScaleKey( spep_9-3 + 60, 1, 5.38, 5.38 );
setScaleKey( spep_9-3 + 62, 1, 5.37, 5.37 );
setScaleKey( spep_9-3 + 64, 1, 5.35, 5.35 );
setScaleKey( spep_9-3 + 66, 1, 5.34, 5.34 );
setScaleKey( spep_9-3 + 68, 1, 5.33, 5.33 );
setScaleKey( spep_9-3 + 70, 1, 5.31, 5.31 );
setScaleKey( spep_9-3 + 72, 1, 5.3, 5.3 );
setScaleKey( spep_9-3 + 74, 1, 5.28, 5.28 );
setScaleKey( spep_9-3 + 76, 1, 5.27, 5.27 );
setScaleKey( spep_9-3 + 78, 1, 5.25, 5.25 );
setScaleKey( spep_9-3 + 80, 1, 5.24, 5.24 );
setScaleKey( spep_9-3 + 82, 1, 5.23, 5.23 );
setScaleKey( spep_9-3 + 84, 1, 5.21, 5.21 );
setScaleKey( spep_9-3 + 86, 1, 5.2, 5.2 );
setScaleKey( spep_9-3 + 88, 1, 5.18, 5.18 );
setScaleKey( spep_9-3 + 90, 1, 5.17, 5.17 );
setScaleKey( spep_9-3 + 92, 1, 5.15, 5.16 );
setScaleKey( spep_9-3 + 94, 1, 5.14, 5.14 );
setScaleKey( spep_9-3 + 96, 1, 5.13, 5.13 );
setScaleKey( spep_9-3 + 98, 1, 5.11, 5.11 );
setScaleKey( spep_9-3 + 100, 1, 5.1, 5.1 );
setScaleKey( spep_9-3 + 102, 1, 5.08, 5.08 );
setScaleKey( spep_9-3 + 104, 1, 5.07, 5.07 );
setScaleKey( spep_9-3 + 106, 1, 5.06, 5.06 );
setScaleKey( spep_9-3 + 108, 1, 5.04, 5.04 );
setScaleKey( spep_9-3 + 110, 1, 5.03, 5.03 );
setScaleKey( spep_9-3 + 112, 1, 5.01, 5.01 );
setScaleKey( spep_9-3 + 114, 1, 5, 5 );

setRotateKey( spep_9-3 + 18, 1, 60 );
setRotateKey( spep_9-3 + 20, 1, 49.3 );
setRotateKey( spep_9-3 + 22, 1, 44.4 );
setRotateKey( spep_9-3 + 24, 1, 40.9 );
setRotateKey( spep_9-3 + 26, 1, 38 );
setRotateKey( spep_9-3 + 28, 1, 35.7 );
setRotateKey( spep_9-3 + 30, 1, 33.8 );
setRotateKey( spep_9-3 + 32, 1, 32.3 );
setRotateKey( spep_9-3 + 34, 1, 31.1 );
setRotateKey( spep_9-3 + 36, 1, 30.3 );
setRotateKey( spep_9-3 + 38, 1, 30 );
setRotateKey( spep_9-3 + 40, 1, 24.3 );
setRotateKey( spep_9-3 + 42, 1, 21.1 );
setRotateKey( spep_9-3 + 44, 1, 18.6 );
setRotateKey( spep_9-3 + 46, 1, 16.5 );
setRotateKey( spep_9-3 + 48, 1, 14.8 );
setRotateKey( spep_9-3 + 50, 1, 13.3 );
setRotateKey( spep_9-3 + 52, 1, 12 );
setRotateKey( spep_9-3 + 54, 1, 11 );
setRotateKey( spep_9-3 + 56, 1, 10.3 );
setRotateKey( spep_9-3 + 58, 1, 10 );
setRotateKey( spep_9-3 + 60, 1, 9.8 );
setRotateKey( spep_9-3 + 62, 1, 9.7 );
setRotateKey( spep_9-3 + 64, 1, 9.5 );
setRotateKey( spep_9-3 + 66, 1, 9.3 );
setRotateKey( spep_9-3 + 68, 1, 9.1 );
setRotateKey( spep_9-3 + 70, 1, 8.9 );
setRotateKey( spep_9-3 + 72, 1, 8.8 );
setRotateKey( spep_9-3 + 74, 1, 8.6 );
setRotateKey( spep_9-3 + 76, 1, 8.4 );
setRotateKey( spep_9-3 + 78, 1, 8.2 );
setRotateKey( spep_9-3 + 80, 1, 8 );
setRotateKey( spep_9-3 + 82, 1, 7.9 );
setRotateKey( spep_9-3 + 84, 1, 7.7 );
setRotateKey( spep_9-3 + 86, 1, 7.5 );
setRotateKey( spep_9-3 + 88, 1, 7.3 );
setRotateKey( spep_9-3 + 90, 1, 7.1 );
setRotateKey( spep_9-3 + 92, 1, 7 );
setRotateKey( spep_9-3 + 94, 1, 6.8 );
setRotateKey( spep_9-3 + 96, 1, 6.6 );
setRotateKey( spep_9-3 + 98, 1, 6.4 );
setRotateKey( spep_9-3 + 100, 1, 6.3 );
setRotateKey( spep_9-3 + 102, 1, 6.1 );
setRotateKey( spep_9-3 + 104, 1, 5.9 );
setRotateKey( spep_9-3 + 106, 1, 5.7 );
setRotateKey( spep_9-3 + 108, 1, 5.5 );
setRotateKey( spep_9-3 + 110, 1, 5.4 );
setRotateKey( spep_9-3 + 112, 1, 5.2 );
setRotateKey( spep_9-3 + 114, 1, 5 );

--SE
--敵飛んでいく
SE031 = playSe( spep_9 + 10, 1027 );
setSeVolumeByWorkId( spep_9 + 10, SE031, 72 );
SE032 = playSe( spep_9 + 10, 1159 );
setSeVolumeByWorkId( spep_9 + 10, SE032, 62 );
stopSe( spep_9 + 82, SE032, 70 );
SE033 = playSe( spep_9 + 20, 1121 );
setSeVolumeByWorkId( spep_9 + 20, SE033, 85 );

--ジャネンバ腕がワープしてくる
SE034 = playSe( spep_9 + 64, 1337 );
setSeVolumeByWorkId( spep_9 + 64, SE034, 0 );
setSeVolumeByWorkId( spep_9 + 65, SE034, 26.1 );
setSeVolumeByWorkId( spep_9 + 66, SE034, 52.2 );
setSeVolumeByWorkId( spep_9 + 67, SE034, 78.3 );
setSeVolumeByWorkId( spep_9 + 68, SE034, 104.4 );
setSeVolumeByWorkId( spep_9 + 69, SE034, 130.5 );
setSeVolumeByWorkId( spep_9 + 70, SE034, 157 );
stopSe( spep_9 + 162, SE034, 10 );
setStartTimeMs( SE034,  300 );

--気弾溜め
SE035 = playSe( spep_9 + 78, 1276 ,"",0.6 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0,116, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+112;
------------------------------------------------------
-- 気弾爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_10 + 0, SP_15x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish_f, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_f, 0 );
setEffRotateKey( spep_10 + 240, finish_f, 0 );
setEffAlphaKey( spep_10 + 0, finish_f, 255 );
setEffAlphaKey( spep_10 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_10 + 0, SP_16x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_10 + 240, finish_b, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish_b, 0 );
setEffRotateKey( spep_10 + 240, finish_b, 0 );
setEffAlphaKey( spep_10 + 0, finish_b, 255 );
setEffAlphaKey( spep_10 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_10 + 58, 1, 0 );

changeAnime( spep_10 + 0, 1, 106 );

setMoveKey( spep_10 + 0, 1, -11.2, -6.9 , 0 );
setMoveKey( spep_10 + 28, 1, -11.2, -6.9 , 0 );
setMoveKey( spep_10 + 30, 1, -11.3, -7 , 0 );
setMoveKey( spep_10 + 32, 1, 16.7, -17 , 0 );
setMoveKey( spep_10 + 34, 1, 17.4, -17.3 , 0 );
setMoveKey( spep_10 + 36, 1, 18.1, -17.6 , 0 );
setMoveKey( spep_10 + 38, 1, 18.8, -18 , 0 );
setMoveKey( spep_10 + 40, 1, 19.5, -18.3 , 0 );
setMoveKey( spep_10 + 42, 1, 20.3, -18.7 , 0 );
setMoveKey( spep_10 + 44, 1, 21.1, -19.1 , 0 );
setMoveKey( spep_10 + 46, 1, 21.9, -19.5 , 0 );
setMoveKey( spep_10 + 48, 1, 22.8, -20 , 0 );
setMoveKey( spep_10 + 50, 1, 22.8, -20 , 0 );
setMoveKey( spep_10 + 52, 1, 28.4, -3.3 , 0 );
setMoveKey( spep_10 + 54, 1, 27.1, -12.4 , 0 );
setMoveKey( spep_10 + 56, 1, 25.7, -21.4 , 0 );
setMoveKey( spep_10 + 58, 1, 28.1, -17.8 , 0 );

setScaleKey( spep_10 + 0, 1, 2.17,2.17);
setScaleKey( spep_10 + 50, 1, 2.17,2.17);
setScaleKey( spep_10 + 52, 1, 2.61,2.61);
setScaleKey( spep_10 + 54, 1, 2.39,2.39);
setScaleKey( spep_10 + 56, 1, 2.17,2.17);
setScaleKey( spep_10 + 58, 1, 2.27,2.27);

setRotateKey( spep_10 + 0, 1, -30 );
setRotateKey( spep_10 + 58, 1, -30 );

--SE
--敵飛んでいく
stopSe( spep_10 + 8, SE033, 24 );

--ジャネンバ腕がワープしてくる
stopSe( spep_10 + 32, SE034, 10 );

--気弾爆発
SE036 = playSe( spep_10 + 18, 1145 );
setSeVolumeByWorkId( spep_10 + 18, SE036, 62 );
stopSe( spep_10 + 52, SE036, 24 );
SE037 = playSe( spep_10 + 18, 1023 );
setSeVolumeByWorkId( spep_10 + 18, SE037, 86 );
SE038 = playSe( spep_10 + 18, 1067 );
setSeVolumeByWorkId( spep_10 + 18, SE038, 88 );

--ラスト爆発
SE039 = playSe( spep_10 + 38, 1024 );
SE040 = playSe( spep_10 + 38, 1068 );
setSeVolumeByWorkId( spep_10 + 38, SE040, 88 );

--終わり
dealDamage( spep_10 +78 );
endPhase( spep_10 + 178 );
end