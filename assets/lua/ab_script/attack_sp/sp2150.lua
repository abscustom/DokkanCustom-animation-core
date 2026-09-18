--1021640:URクリリン&人造人間18号_夫婦コンビネーション
--sp_effect_b1_00146

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
SP_01=	156784	;--	立ち合い
SP_02=	156785	;--	顔を合わせる
SP_03=	156786	;--	格闘
SP_04=	156787	;--	格闘
SP_05=	156788	;--	アップ絵　画面手前に突っ込む
SP_06=	156789	;--	敵を殴る
SP_07=	156790	;--	敵を殴る
SP_08=	156791	;--	アップ絵　回し蹴り
SP_09=	156792	;--	敵を蹴る
SP_10=	156793	;--	敵を蹴る
SP_11=	156794	;--	敵が地面に激突
SP_12=	156795	;--	気弾を放つ(クリリン)
SP_13=	156796	;--	気弾を弾く(18号)
SP_14=	156797	;--	気弾が迫る(1回目)
SP_15=	156798	;--	気弾を弾く(クリリン)
SP_16=	156799	;--	気弾が迫る(2回目)
SP_17=	156800	;--	18号顔アップ
SP_18=	156801	;--	気弾を放つ(18号)
SP_19=	156802	;--	クリリンが叫ぶ
SP_20=	156803	;--	気弾が敵に迫る
SP_21=	156804	;--	爆発

--エフェクト(てき)
SP_01x=	156805	;--	立ち合い	(敵)
SP_02x=	156806	;--	顔を合わせる	(敵)
SP_03x=	156786	;--	格闘	
SP_04x=	156807	;--	格闘	(敵)
SP_05x=	156788	;--	アップ絵　画面手前に突っ込む	
SP_06x=	156789	;--	敵を殴る	
SP_07x=	156790	;--	敵を殴る	(敵)
SP_08x=	156791	;--	アップ絵　回し蹴り	
SP_09x=	156792	;--	敵を蹴る	
SP_10x=	156808	;--	敵を蹴る	(敵)
SP_11x=	156809	;--	敵が地面に激突	(敵)
SP_12x=	156795	;--	気弾を放つ(クリリン)	
SP_13x=	156796	;--	気弾を弾く(18号)	
SP_14x=	156797	;--	気弾が迫る(1回目)	
SP_15x=	156798	;--	気弾を弾く(クリリン)	
SP_16x=	156799	;--	気弾が迫る(2回目)	
SP_17x=	156800	;--	18号顔アップ	
SP_18x=	156801	;--	気弾を放つ(18号)	
SP_19x=	156802	;--	クリリンが叫ぶ	
SP_20x=	156803	;--	気弾が敵に迫る	
SP_21x=	156804	;--	爆発	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 立ち合い
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
witness = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, witness, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, witness, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, witness, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, witness, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, witness, 0 );
setEffRotateKey( spep_0 + 36, witness, 0 );
setEffAlphaKey( spep_0 + 0, witness, 255 );
setEffAlphaKey( spep_0 + 34, witness, 255 );
setEffAlphaKey( spep_0 + 35, witness, 255 );
setEffAlphaKey( spep_0 + 36, witness, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 36, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 175.6, -139.1 , 0 );
setMoveKey( spep_0 + 1, 1, 175.6, -139.1 , 0 );
setMoveKey( spep_0 + 2, 1, 176.2, -139.9 , 0 );
setMoveKey( spep_0 + 3, 1, 176.2, -139.9 , 0 );
setMoveKey( spep_0 + 4, 1, 176.8, -140.7 , 0 );
setMoveKey( spep_0 + 5, 1, 176.8, -140.7 , 0 );
setMoveKey( spep_0 + 6, 1, 177.4, -141.5 , 0 );
setMoveKey( spep_0 + 8, 1, 178, -142.3 , 0 );
setMoveKey( spep_0 + 10, 1, 178.6, -143.1 , 0 );
setMoveKey( spep_0 + 12, 1, 179.2, -144 , 0 );
setMoveKey( spep_0 + 14, 1, 179.8, -144.8 , 0 );
setMoveKey( spep_0 + 16, 1, 180.4, -145.5 , 0 );
setMoveKey( spep_0 + 18, 1, 181, -146.4 , 0 );
setMoveKey( spep_0 + 20, 1, 181.7, -147.2 , 0 );
setMoveKey( spep_0 + 22, 1, 182.3, -148 , 0 );
setMoveKey( spep_0 + 24, 1, 182.9, -148.8 , 0 );
setMoveKey( spep_0 + 26, 1, 183.5, -149.6 , 0 );
setMoveKey( spep_0 + 28, 1, 184.1, -150.4 , 0 );
setMoveKey( spep_0 + 30, 1, 184.7, -151.2 , 0 );
setMoveKey( spep_0 + 32, 1, 185.3, -152 , 0 );
setMoveKey( spep_0 + 34, 1, 185.9, -152.8 , 0 );
setMoveKey( spep_0 + 36, 1, 186.5, -153.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 1, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 2, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 3, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 5, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 6, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 10, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 18, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 34, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 36, 1, 1.84, 1.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 36, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 3.5 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 7 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 10.5 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 14 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 17.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 21 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 24.5 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 28 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 35 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 38.5 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 42 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 45.5 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 49 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 52.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 56 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 59.5 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 63 );
setStartTimeMs( SE001,  167 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+36;
------------------------------------------------------
-- 顔を合わせる
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_1 + 92, face, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_1 + 92, face, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 92, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 92, face, 255 );
setEffAlphaKey( spep_1 + 93, face, 0 );
setEffAlphaKey( spep_1 + 94, face, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 8,  906, 84+3, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_1-3 + 8, shuchusen1, 84+3, 20 );
setEffMoveKey( spep_1-3 + 8, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_1-3 + 8, shuchusen1, 1.69, 1.69 );
setEffScaleKey( spep_1 + 92, shuchusen1, 1.69, 1.69 );

setEffRotateKey( spep_1-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_1 + 92, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 92, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

     speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
SE003 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+92;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 56, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 54, fighting_f, 255 );
setEffAlphaKey( spep_2 + 55, fighting_f, 255 );
setEffAlphaKey( spep_2 + 56, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 56, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 54, fighting_b, 255 );
setEffAlphaKey( spep_2 + 55, fighting_b, 255 );
setEffAlphaKey( spep_2 + 56, fighting_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 18,  906, 6, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_2-3 + 18, shuchusen2, 6, 20 );
setEffMoveKey( spep_2-3 + 18, shuchusen2, 0, -20.3 , 0 );
setEffMoveKey( spep_2-3 + 24, shuchusen2, 0, -20.3 , 0 );

setEffScaleKey( spep_2-3 + 18, shuchusen2, 1.69, 1.69 );
setEffScaleKey( spep_2-3 + 24, shuchusen2, 1.69, 1.69 );

setEffRotateKey( spep_2-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 24, shuchusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-2 + 10,  10020, 46, 0x100, -1, 0, 60.3, 114.7 );--バキッ
setEffShake( spep_2-2 + 10, ctbaki, 46, 10 );
setEffMoveKey( spep_2-2 + 10, ctbaki, 60.3, 114.7 , 0 );
setEffMoveKey( spep_2-2 + 12, ctbaki, 61.4, 117.4 , 0 );
setEffMoveKey( spep_2-2 + 14, ctbaki, 65.9, 128 , 0 );
setEffMoveKey( spep_2-2 + 16, ctbaki, 46.5, 117.5 , 0 );
setEffMoveKey( spep_2-2 + 18, ctbaki, 60.2, 96.8 , 0 );
setEffMoveKey( spep_2-2 + 20, ctbaki, 71.9, 100.3 , 0 );
setEffMoveKey( spep_2-2 + 22, ctbaki, 70.8, 135.2 , 0 );
setEffMoveKey( spep_2-2 + 24, ctbaki, 81.5, 125.1 , 0 );
setEffMoveKey( spep_2-2 + 26, ctbaki, 92.1, 115 , 0 );
setEffMoveKey( spep_2-2 + 28, ctbaki, 80.4, 118.1 , 0 );
setEffMoveKey( spep_2-2 + 30, ctbaki, 68.6, 121.2 , 0 );
setEffMoveKey( spep_2-2 + 32, ctbaki, 64.6, 118.3 , 0 );
setEffMoveKey( spep_2-2 + 34, ctbaki, 60.5, 115.3 , 0 );
setEffMoveKey( spep_2-2 + 38, ctbaki, 60.5, 115.3 , 0 );
setEffMoveKey( spep_2-2 + 40, ctbaki, 60.5, 115.4 , 0 );
setEffMoveKey( spep_2-2 + 46, ctbaki, 60.5, 115.4 , 0 );
setEffMoveKey( spep_2-2 + 48, ctbaki, 65.9, 128 , 0 );
setEffMoveKey( spep_2-2 + 50, ctbaki, 37.9, 119.2 , 0 );
setEffMoveKey( spep_2-2 + 52, ctbaki, 59.9, 74.9 , 0 );
setEffMoveKey( spep_2-2 + 54, ctbaki, 93.2, 73.8 , 0 );
setEffMoveKey( spep_2-2 + 56, ctbaki, 100.3, 65 , 0 );

setEffScaleKey( spep_2-2 + 10, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_2-2 + 12, ctbaki, 0.63, 0.63 );
setEffScaleKey( spep_2-2 + 14, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2-2 + 48, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2-2 + 50, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_2-2 + 52, ctbaki, 2.79, 2.79 );
setEffScaleKey( spep_2-2 + 54, ctbaki, 3.56, 3.56 );
setEffScaleKey( spep_2-2 + 56, ctbaki, 4.34, 4.34 )

setEffRotateKey( spep_2-2 + 10, ctbaki, -33.8 );
setEffRotateKey( spep_2-2 + 12, ctbaki, -27 );
setEffRotateKey( spep_2-2 + 14, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 16, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 18, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 22, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 24, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 38, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 40, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 48, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 50, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 56, ctbaki, -20.2 );

setEffAlphaKey( spep_2-2 + 10, ctbaki, 255 );
setEffAlphaKey( spep_2-2 + 48, ctbaki, 255 );
setEffAlphaKey( spep_2-2 + 50, ctbaki, 191 );
setEffAlphaKey( spep_2-2 + 52, ctbaki, 128 );
setEffAlphaKey( spep_2-2 + 54, ctbaki, 64 );
setEffAlphaKey( spep_2-2 + 56, ctbaki, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 12, 1, 106 );

setMoveKey( spep_2 + 0, 1, 212.2, -53 , 0 );
setMoveKey( spep_2-3 + 11, 1, 212.2, -53 , 0 );
setMoveKey( spep_2-3 + 12, 1, 154.2, -23.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 146.3, -22.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, 138.5, -21.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 139.6, -11.2 , 0 );
setMoveKey( spep_2-3 + 20, 1, 129.6, -21.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 135.6, -26 , 0 );
setMoveKey( spep_2-3 + 24, 1, 124.8, -15.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 124.5, -25.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 127.3, -22.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 130, -20 , 0 );
setMoveKey( spep_2-3 + 32, 1, 128.4, -19.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 126.7, -19 , 0 );
setMoveKey( spep_2-3 + 36, 1, 128, -19.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 129.3, -20 , 0 );
setMoveKey( spep_2-3 + 40, 1, 131.3, -17.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 133.4, -15.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, 131.1, -17.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 128.8, -19.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 131.9, -23.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 135, -26.4 , 0 );
setMoveKey( spep_2-3 + 52, 1, 132.7, -23.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 130.4, -19.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 128.1, -22 , 0 );
setMoveKey( spep_2-1 + 58, 1, 125.9, -24.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 12, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_2-3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_2-1 + 58, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 11, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, -59 );
setRotateKey( spep_2-1 + 58, 1, -59 );

--SE
--環境音
stopSe( spep_2-2, SE002, 0 );

--18号パンチ
SE005 = playSe( spep_2 + 0, 1189 );
SE006 = playSe( spep_2 + 4, 1009 );
setSeVolumeByWorkId( spep_2 + 4, SE006, 75 );
SE007 = playSe( spep_2 + 4, 1026 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 71 );
setPitch( spep_2 + 4, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
stopSe( spep_2 + 26, SE007, 12 );
SE008 = playSe( spep_2 + 6, 1110 );
SE009 = playSe( spep_2 + 6, 1001 );
setSeVolumeByWorkId( spep_2 + 6, SE009, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
-- アップ絵　画面手前に突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, plunge, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, plunge, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, plunge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, plunge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, plunge, 0 );
setEffRotateKey( spep_3 + 56, plunge, 0 );
setEffAlphaKey( spep_3 + 0, plunge, 255 );
setEffAlphaKey( spep_3 + 54, plunge, 255 );
setEffAlphaKey( spep_3 + 55, plunge, 255 );
setEffAlphaKey( spep_3 + 56, plunge, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 36,  906, 22, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_3-3 + 36, shuchusen3, 22, 20 );
setEffMoveKey( spep_3-3 + 36, shuchusen3, 0, -20.3 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen3, 0, -20.3 , 0 );

setEffScaleKey( spep_3-3 + 36, shuchusen3, 1.69, 1.69 );
setEffScaleKey( spep_3-3 + 58, shuchusen3, 1.69, 1.69 );

setEffRotateKey( spep_3-3 + 36, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 36, shuchusen3, 36 );
setEffAlphaKey( spep_3-3 + 38, shuchusen3, 73 );
setEffAlphaKey( spep_3-3 + 40, shuchusen3, 109 );
setEffAlphaKey( spep_3-3 + 42, shuchusen3, 146 );
setEffAlphaKey( spep_3-3 + 44, shuchusen3, 182 );
setEffAlphaKey( spep_3-3 + 46, shuchusen3, 219 );
setEffAlphaKey( spep_3-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen3, 255 );

--SE
--クリリンダッシュ
SE010 = playSe( spep_3 + 0, 1314 );
SE011 = playSe( spep_3 + 0, 1182 );

--クリリンパンチ
SE012 = playSe( spep_3 + 46, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- 敵を殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, punch_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 36, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 34, punch_f, 255 );
setEffAlphaKey( spep_4 + 35, punch_f, 255 );
setEffAlphaKey( spep_4 + 36, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, punch_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 36, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 34, punch_b, 255 );
setEffAlphaKey( spep_4 + 35, punch_b, 255 );
setEffAlphaKey( spep_4 + 36, punch_b, 0 );

--文字エントリー
ctdigon = entryEffectLife( spep_4 + 0,  10018, 26-3, 0x100, -1, 0, 183.9, 419.1 );--ドゴォンッ
setEffShake( spep_4 + 0, ctdigon, 26-3, 10 );
setEffMoveKey( spep_4 + 0, ctdigon, 183.9, 419.1 , 0 );
--setEffMoveKey( spep_4-3 + 2, ctdigon, 180.4, 450.4 , 0 );
setEffMoveKey( spep_4-3 + 4, ctdigon, 185.3, 400.6 , 0 );
setEffMoveKey( spep_4-3 + 6, ctdigon, 152.9, 417.6 , 0 );
setEffMoveKey( spep_4-3 + 8, ctdigon, 203.8, 431.5 , 0 );
setEffMoveKey( spep_4-3 + 10, ctdigon, 192.2, 428 , 0 );
setEffMoveKey( spep_4-3 + 12, ctdigon, 180.6, 424.5 , 0 );
setEffMoveKey( spep_4-3 + 14, ctdigon, 179.2, 427.4 , 0 );
setEffMoveKey( spep_4-3 + 16, ctdigon, 177.9, 430.2 , 0 );
setEffMoveKey( spep_4-3 + 18, ctdigon, 179.2, 427.4 , 0 );
setEffMoveKey( spep_4-3 + 20, ctdigon, 176.7, 431.1 , 0 );
setEffMoveKey( spep_4-3 + 22, ctdigon, 168.4, 447.2 , 0 );
setEffMoveKey( spep_4-3 + 24, ctdigon, 157.1, 469.7 , 0 );
setEffMoveKey( spep_4-3 + 26, ctdigon, 150.2, 482.9 , 0 );

setEffScaleKey( spep_4 + 0, ctdigon, 1.82, 1.9 );
setEffScaleKey( spep_4 + 2, ctdigon, 1.83, 1.9 );
setEffScaleKey( spep_4-3 + 18, ctdigon, 1.83, 1.9 );
setEffScaleKey( spep_4-3 + 20, ctdigon, 3.97, 4.13 );
setEffScaleKey( spep_4-3 + 22, ctdigon, 6.11, 6.36 );
setEffScaleKey( spep_4-3 + 24, ctdigon, 8.25, 8.59 );
setEffScaleKey( spep_4-3 + 26, ctdigon, 10.39, 10.82 );

setEffRotateKey( spep_4 + 0, ctdigon, 8.2 );
setEffRotateKey( spep_4 + 2, ctdigon, 8 );
setEffRotateKey( spep_4-3 + 26, ctdigon, 8 );

setEffAlphaKey( spep_4 + 0, ctdigon, 255 );
setEffAlphaKey( spep_4-3 + 18, ctdigon, 255 );
setEffAlphaKey( spep_4-3 + 20, ctdigon, 191 );
setEffAlphaKey( spep_4-3 + 22, ctdigon, 128 );
setEffAlphaKey( spep_4-3 + 24, ctdigon, 64 );
setEffAlphaKey( spep_4-3 + 26, ctdigon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 38, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 95.2, 182 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 111.8, 167.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 71.6, 199.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, 65.3, 147.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 111.2, 196.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, 78, 196 , 0 );
setMoveKey( spep_4-3 + 12, 1, 92.2, 147.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 76.4, 168.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 71.3, 162.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, 68.6, 161.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 67.6, 161.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 61.3, 156.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 60.7, 151.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 56.8, 153.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, 53.9, 151 , 0 );
setMoveKey( spep_4-3 + 30, 1, 52.8, 150.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 46.6, 145 , 0 );
setMoveKey( spep_4-3 + 34, 1, 45.8, 140.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 42.1, 141.9 , 0 );
setMoveKey( spep_4-1 + 38, 1, 39.6, 139.6 , 0 );

setScaleKey( spep_4 + 0, 1,4.83,4.83);
setScaleKey( spep_4-3 + 4, 1,4.44,4.44);
setScaleKey( spep_4-3 + 6, 1,4.25,4.25);
setScaleKey( spep_4-3 + 8, 1,4.08,4.08);
setScaleKey( spep_4-3 + 10, 1,3.88,3.88);
setScaleKey( spep_4-3 + 12, 1,3.69,3.69);
setScaleKey( spep_4-3 + 14, 1,3.5,3.5);
setScaleKey( spep_4-3 + 16, 1,3.31,3.31);
setScaleKey( spep_4-3 + 18, 1,3.12,3.12);
setScaleKey( spep_4-3 + 20, 1,2.94,2.94);
setScaleKey( spep_4-3 + 22, 1,2.75,2.75);
setScaleKey( spep_4-3 + 24, 1,2.56,2.56);
setScaleKey( spep_4-3 + 26, 1,2.36,2.36);
setScaleKey( spep_4-3 + 28, 1,2.17,2.17);
setScaleKey( spep_4-3 + 30, 1,1.98,1.98);
setScaleKey( spep_4-3 + 32, 1,1.8,1.8);
setScaleKey( spep_4-3 + 34, 1,1.61,1.61);
setScaleKey( spep_4-3 + 36, 1,1.42,1.42);
setScaleKey( spep_4-1 + 38, 1,1.23,1.23);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-1 + 38, 1, 0 );

--SE
--クリリンダッシュ
stopSe( spep_4 + 12, SE010, 28 );

--クリリンパンチ
SE013 = playSe( spep_4 + 0, 1233 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE013, 35.3 );
setSeVolumeByWorkId( spep_4 + 2, SE013, 70.6 );
setSeVolumeByWorkId( spep_4 + 3, SE013, 105.9 );
setSeVolumeByWorkId( spep_4 + 4, SE013, 141 );
setStartTimeMs( SE013,  117 );
SE014 = playSe( spep_4 + 2, 1009 );
SE015 = playSe( spep_4 + 4, 1187 );
setPitch( spep_4 + 4, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+36;
------------------------------------------------------
-- アップ絵　回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, kick, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, kick, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick, 0 );
setEffRotateKey( spep_5 + 46, kick, 0 );
setEffAlphaKey( spep_5 + 0, kick, 255 );
setEffAlphaKey( spep_5 + 44, kick, 255 );
setEffAlphaKey( spep_5 + 45, kick, 255 );
setEffAlphaKey( spep_5 + 46, kick, 0 );

--SE
--18号ジャンプ
SE016 = playSe( spep_5 + 0, 1182 );
setSeVolumeByWorkId( spep_5 + 0, SE016, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE016, 10.9 );
setSeVolumeByWorkId( spep_5 + 2, SE016, 21.8 );
setSeVolumeByWorkId( spep_5 + 3, SE016, 32.7 );
setSeVolumeByWorkId( spep_5 + 4, SE016, 43.6 );
setSeVolumeByWorkId( spep_5 + 5, SE016, 54.5 );
setSeVolumeByWorkId( spep_5 + 6, SE016, 65.4 );
setSeVolumeByWorkId( spep_5 + 7, SE016, 76.3 );
setSeVolumeByWorkId( spep_5 + 8, SE016, 87 );
setStartTimeMs( SE016,  133 );
SE017 = playSe( spep_5 + 2, 44 );
setSeVolumeByWorkId( spep_5 + 2, SE017, 81 );
SE018 = playSe( spep_5 + 2, 1116 );
setSeVolumeByWorkId( spep_5 + 2, SE018, 79 );
stopSe( spep_5 + 24, SE018, 20 );

--蹴りふりかぶり
SE019 = playSe( spep_5 + 20, 1117 );
stopSe( spep_5 + 34, SE019, 18 );
SE020 = playSe( spep_5 + 20, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+46;
------------------------------------------------------
-- 敵を蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 46, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 44, hit_f, 255 );
setEffAlphaKey( spep_6 + 45, hit_f, 255 );
setEffAlphaKey( spep_6 + 46, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 46, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 44, hit_b, 255 );
setEffAlphaKey( spep_6 + 45, hit_b, 255 );
setEffAlphaKey( spep_6 + 46, hit_b, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_6 + 0,  10021, 30, 0x100, -1, 0, -173.2, 408.3 );--バゴォッ
setEffShake( spep_6 + 0, ctbago, 30, 10 );
setEffMoveKey( spep_6 + 0, ctbago, -173.2, 408.3 , 0 );
setEffMoveKey( spep_6 + 2, ctbago, -186.2, 424.7 , 0 );
setEffMoveKey( spep_6 + 4, ctbago, -156.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 6, ctbago, -192.8, 384 , 0 );
setEffMoveKey( spep_6 + 8, ctbago, -170.6, 424.2 , 0 );
setEffMoveKey( spep_6 + 10, ctbago, -198.2, 411.7 , 0 );
setEffMoveKey( spep_6 + 12, ctbago, -180.5, 379.9 , 0 );
setEffMoveKey( spep_6 + 14, ctbago, -162.9, 383.6 , 0 );
setEffMoveKey( spep_6 + 16, ctbago, -159.5, 435.2 , 0 );
setEffMoveKey( spep_6 + 18, ctbago, -144.8, 419.3 , 0 );
setEffMoveKey( spep_6 + 20, ctbago, -130.2, 403.4 , 0 );
setEffMoveKey( spep_6 + 22, ctbago, -145.5, 409.7 , 0 );
setEffMoveKey( spep_6 + 24, ctbago, -160.8, 416 , 0 );
setEffMoveKey( spep_6 + 26, ctbago, -163.6, 414.2 , 0 );
setEffMoveKey( spep_6 + 28, ctbago, -172.7, 408.5 , 0 );
setEffMoveKey( spep_6 + 30, ctbago, -172.5, 408.6 , 0 );

setEffScaleKey( spep_6 + 0, ctbago, 0.01, 0.01 );
setEffScaleKey( spep_6 + 2, ctbago, 0.89, 0.93 );
setEffScaleKey( spep_6 + 4, ctbago, 1.77, 1.84 );
setEffScaleKey( spep_6 + 24, ctbago, 1.77, 1.84 );
setEffScaleKey( spep_6 + 26, ctbago, 2.69, 2.74 );
setEffScaleKey( spep_6 + 28, ctbago, 3.61, 3.63 );
setEffScaleKey( spep_6 + 30, ctbago, 4.53, 4.53 );

setEffRotateKey( spep_6 + 0, ctbago, -28.8 );
setEffRotateKey( spep_6 + 2, ctbago, -29 );
setEffRotateKey( spep_6 + 30, ctbago, -29 );

setEffAlphaKey( spep_6 + 0, ctbago, 255 );
setEffAlphaKey( spep_6 + 24, ctbago, 255 );
setEffAlphaKey( spep_6 + 26, ctbago, 170 );
setEffAlphaKey( spep_6 + 28, ctbago, 85 );
setEffAlphaKey( spep_6 + 30, ctbago, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_6-3 + 6,  906, 42, 0x100, -1, 0, 0, 124.6 );
setEffShake( spep_6-3 + 6, shuchusen4, 42, 20 );
setEffMoveKey( spep_6-3 + 6, shuchusen4, 0, 124.6 , 0 );
setEffMoveKey( spep_6-3 + 48, shuchusen4, 30, 124.6 , 0 );

setEffScaleKey( spep_6-3 + 6, shuchusen4, 1.66, 1.66 );
setEffScaleKey( spep_6-3 + 48, shuchusen4, 1.66, 1.66 );

setEffRotateKey( spep_6-3 + 6, shuchusen4, 180 );
setEffRotateKey( spep_6-3 + 48, shuchusen4, 180 );

setEffAlphaKey( spep_6-3 + 6, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 48, shuchusen4, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -63.4, 175.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -83.5, 194.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, -118.4, 151.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, -100.8, 113.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, -112.5, 146.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, -146.8, 125.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, -148.3, 121.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, -148.6, 118.3 , 0 );
setMoveKey( spep_6-3 + 16, 1, -154.5, 117.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, -159, 117.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, -169.1, 107 , 0 );
setMoveKey( spep_6-3 + 22, 1, -178.9, 96.5 , 0 );
setMoveKey( spep_6-3 + 24, 1, -188.6, 86.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, -197.9, 76 , 0 );
setMoveKey( spep_6-3 + 28, 1, -207.1, 66.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, -215.9, 56.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, -224.5, 47 , 0 );
setMoveKey( spep_6-3 + 34, 1, -232.8, 37.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, -240.9, 28.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, -248.7, 20.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, -256.2, 11.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, -263.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, -270.6, -4.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, -277.4, -12.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -283.9, -20.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.77, 0.77 );
--setScaleKey( spep_6-3 + 2, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 4, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 6, 1, 1, 1 );
setScaleKey( spep_6-3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_6-3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_6-3 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_6-3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_6-3 + 18, 1, 1.13, 1.12 );
setScaleKey( spep_6-3 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_6-3 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_6-3 + 24, 1, 1.26, 1.26 );
setScaleKey( spep_6-3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_6-3 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_6-3 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_6-3 + 34, 1, 1.46, 1.46 );
setScaleKey( spep_6-3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_6-3 + 38, 1, 1.54, 1.54 );
setScaleKey( spep_6-3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_6-3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_6-3 + 48, 1, 1.7, 1.7 );

a=50;

setRotateKey( spep_6 + 0, 1, 92.8+a );
--setRotateKey( spep_6-3 + 2, 1, 93.3 );
setRotateKey( spep_6-3 + 4, 1, 93.6+a );
setRotateKey( spep_6-3 + 6, 1, 93.9+a );
setRotateKey( spep_6-3 + 8, 1, 94.2+a );
setRotateKey( spep_6-3 + 10, 1, 94.5+a );
setRotateKey( spep_6-3 + 12, 1, 94.7+a );
setRotateKey( spep_6-3 + 14, 1, 95+a );
setRotateKey( spep_6-3 + 16, 1, 95.3+a );
setRotateKey( spep_6-3 + 18, 1, 95.6+a );
setRotateKey( spep_6-3 + 20, 1, 95.9+a );
setRotateKey( spep_6-3 + 22, 1, 96.2+a );
setRotateKey( spep_6-3 + 24, 1, 96.5+a );
setRotateKey( spep_6-3 + 26, 1, 96.8+a );
setRotateKey( spep_6-3 + 28, 1, 97.1+a );
setRotateKey( spep_6-3 + 30, 1, 97.4+a );
setRotateKey( spep_6-3 + 32, 1, 97.7+a );
setRotateKey( spep_6-3 + 34, 1, 98+a );
setRotateKey( spep_6-3 + 36, 1, 98.2+a );
setRotateKey( spep_6-3 + 38, 1, 98.5+a );
setRotateKey( spep_6-3 + 40, 1, 98.8+a );
setRotateKey( spep_6-3 + 42, 1, 99.1+a );
setRotateKey( spep_6-3 + 44, 1, 99.4+a );
setRotateKey( spep_6-3 + 46, 1, 99.7+a );
setRotateKey( spep_6-3 + 48, 1, 100+a );

--SE
--18号キック
SE021 = playSe( spep_6 + 0, 1001 );
setSeVolumeByWorkId( spep_6 + 0, SE021, 53 );
SE022 = playSe( spep_6 + 2, 1187 );
setSeVolumeByWorkId( spep_6 + 2, SE022, 84 );
SE023 = playSe( spep_6 + 4, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+46;
------------------------------------------------------
-- 敵が地面に激突
------------------------------------------------------
-- ** エフェクト等 ** --
collision = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, collision, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision, 1.0, 1.0 );
setEffScaleKey( spep_7 + 50, collision, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision, 0 );
setEffRotateKey( spep_7 + 50, collision, 0 );
setEffAlphaKey( spep_7 + 0, collision, 255 );
setEffAlphaKey( spep_7 + 50, collision, 255 );
setEffAlphaKey( spep_7 + 51, collision, 0 );
setEffAlphaKey( spep_7 + 52, collision, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 16,  906, 34+2, 0x100, -1, 0, 0, 2 );
setEffShake( spep_7-3 + 16, shuchusen5, 34+2, 20 );
setEffMoveKey( spep_7-3 + 16, shuchusen5, 0, 2 , 0 );
setEffMoveKey( spep_7-1 + 50, shuchusen5, 0, 2 , 0 );

setEffScaleKey( spep_7-3 + 16, shuchusen5, 1.56, 1.56 );
setEffScaleKey( spep_7-1 + 50, shuchusen5, 1.56, 1.56 );

setEffRotateKey( spep_7-3 + 16, shuchusen5, 180 );
setEffRotateKey( spep_7-1 + 50, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 16, shuchusen5, 255 );
setEffAlphaKey( spep_7-1 + 50, shuchusen5, 255 );

--敵の動き
setDisp( spep_7-1 + 14, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, 240, 225.8 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 189.3, 163.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 157.1, 122.8 , 0 );
setMoveKey( spep_7-3 + 6, 1, 129.1, 88.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, 102.7, 57.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 77.1, 28.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 51.7, 2 , 0 );
setMoveKey( spep_7-1 + 14, 1, 26.8, -23.6 , 0 );

setScaleKey( spep_7 + 0, 1, 6.57, 6.57 );
--setScaleKey( spep_7-3 + 2, 1, 5.56, 5.51 );
setScaleKey( spep_7-3 + 4, 1, 4.67, 4.61 );
setScaleKey( spep_7-3 + 6, 1, 3.87, 3.82 );
setScaleKey( spep_7-3 + 8, 1, 3.14, 3.1 );
setScaleKey( spep_7-3 + 10, 1, 2.47, 2.45 );
setScaleKey( spep_7-3 + 12, 1, 1.86, 1.85 );
setScaleKey( spep_7-1 + 14, 1, 1.3, 1.3 );

setRotateKey( spep_7 + 0, 1, -108 );
--setRotateKey( spep_7-3 + 2, 1, -113.4 );
setRotateKey( spep_7-3 + 4, 1, -118.9 );
setRotateKey( spep_7-3 + 6, 1, -124.3 );
setRotateKey( spep_7-3 + 8, 1, -129.7 );
setRotateKey( spep_7-3 + 10, 1, -135.1 );
setRotateKey( spep_7-3 + 12, 1, -140.6 );
setRotateKey( spep_7-3 + 14, 1, -146 );

--SE
--敵飛んでいく
SE024 = playSe( spep_7 + 0, 1183 );	
stopSe( spep_7 + 24, SE024, 10 );

--爆発
SE025 = playSe( spep_7 + 14, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 50;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[
speff2 = entryEffect( spep_8 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 86, shuchusen, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 86, shuchusen, 255 );

-- ** 音 ** --
--爆発
stopSe( spep_8 + 6, SE025, 10 );

--playSe( spep_8 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;
------------------------------------------------------
-- 気弾を放つ(クリリン)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_9 + 50-2, kidan, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_9 + 50-2, kidan, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kidan, 0 );
setEffRotateKey( spep_9 + 50-2, kidan, 0 );
setEffAlphaKey( spep_9 + 0, kidan, 255 );
setEffAlphaKey( spep_9 + 48-2, kidan, 255 );
setEffAlphaKey( spep_9 + 49-2, kidan, 255 );
setEffAlphaKey( spep_9 + 50-2, kidan, 0 );

--SE
--クリリン振りかぶる
SE026 = playSe( spep_9 + 0, 1117 );
stopSe( spep_9 + 12, SE026, 16 );

--クリリン気弾投げる１
SE027 = playSe( spep_9 + 18, 1256 );
setSeVolumeByWorkId( spep_9 + 18, SE027, 0 );
setSeVolumeByWorkId( spep_9 + 19, SE027, 35.3 );
setSeVolumeByWorkId( spep_9 + 20, SE027, 70.6 );
setSeVolumeByWorkId( spep_9 + 21, SE027, 105.9 );
setSeVolumeByWorkId( spep_9 + 22, SE027, 141 );
setStartTimeMs( SE027,  67 );
setPitch( spep_9 + 18, SE027, -500 );
setTimeStretch( SE027, 0.67, 10, 1 );
SE028 = playSe( spep_9 + 18, 1021 );
stopSe( spep_9 + 34, SE028, 48 );
SE029 = playSe( spep_9 + 18, 1038 );
setSeVolumeByWorkId( spep_9 + 18, SE029, 178 );
stopSe( spep_9 + 42, SE029, 40 );

--気弾道
SE030 = playSe( spep_9 + 36, 1241 );
setSeVolumeByWorkId( spep_9 + 36, SE030, 85 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 50-2;
------------------------------------------------------
-- 気弾を弾く(18号)
------------------------------------------------------
-- ** エフェクト等 ** --
flip = entryEffect( spep_10 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, flip, 0, 0, 0 );
setEffMoveKey( spep_10 + 76, flip, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, flip, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, flip, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flip, 0 );
setEffRotateKey( spep_10 + 76, flip, 0 );
setEffAlphaKey( spep_10 + 0, flip, 255 );
setEffAlphaKey( spep_10 + 74, flip, 255 );
setEffAlphaKey( spep_10 + 75, flip, 255 );
setEffAlphaKey( spep_10 + 76, flip, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_10-3 + 44,  906, 34, 0x100, -1, 100, 0, 154 );
setEffShake( spep_10-3 + 16, shuchusen6, 34, 20 );
setEffMoveKey( spep_10-3 + 44, shuchusen6, 100, 154 , 0 );
setEffMoveKey( spep_10-3 + 78, shuchusen6, 100, 154 , 0 );

setEffScaleKey( spep_10-3 + 44, shuchusen6, 2.14, 2.14 );
setEffScaleKey( spep_10-3 + 78, shuchusen6, 2.14, 2.14 );

setEffRotateKey( spep_10-3 + 44, shuchusen6, 180 );
setEffRotateKey( spep_10-3 + 78, shuchusen6, 180 );

setEffAlphaKey( spep_10-3 + 44, shuchusen6, 255 );
setEffAlphaKey( spep_10-3 + 78, shuchusen6, 255 );

--SE
--気弾道
stopSe( spep_10 + 32, SE030, 16 );

--18号機弾投げる１
SE031 = playSe( spep_10 + 36, 1256 );
setSeVolumeByWorkId( spep_10 + 36, SE031, 0 );
setSeVolumeByWorkId( spep_10 + 37, SE031, 31.5 );
setSeVolumeByWorkId( spep_10 + 38, SE031, 63 );
setSeVolumeByWorkId( spep_10 + 39, SE031, 94.5 );
setSeVolumeByWorkId( spep_10 + 40, SE031, 126 );
setStartTimeMs( SE031,  50 );
setPitch( spep_10 + 36, SE031, -500 );
setTimeStretch( SE031, 0.67, 10, 1 );
SE032 = playSe( spep_10 + 36, 1038 );
setSeVolumeByWorkId( spep_10 + 36, SE032, 178 );
stopSe( spep_10 + 62, SE032, 38 );

--気弾大きくなる１
SE033 = playSe( spep_10 + 50, 1072,"",0.7 );
setSeVolumeByWorkId( spep_10 + 50, SE033, 158 );


-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;
------------------------------------------------------
--気弾が迫る(1回目)
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_11 + 0, SP_14, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_11 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, approaching, 1.0, 1.0 );
setEffScaleKey( spep_11 + 56, approaching, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, approaching, 0 );
setEffRotateKey( spep_11 + 56, approaching, 0 );
setEffAlphaKey( spep_11 + 0, approaching, 255 );
setEffAlphaKey( spep_11 +54, approaching, 255 );
setEffAlphaKey( spep_11 +55, approaching, 255 );
setEffAlphaKey( spep_11 + 56, approaching, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_11-3 + 12,  10012, 26, 0x100, -1, 0, 96.2, 311.5 );--ズオッ
setEffShake( spep_11-3 + 12, ctzuo, 26, 10 );
setEffMoveKey( spep_11-3 + 12, ctzuo, 96.2, 311.5 , 0 );
setEffMoveKey( spep_11-3 + 14, ctzuo, 107.8, 332.1 , 0 );
setEffMoveKey( spep_11-3 + 16, ctzuo, 127.3, 348.9 , 0 );
setEffMoveKey( spep_11-3 + 18, ctzuo, 140.4, 368.4 , 0 );
setEffMoveKey( spep_11-3 + 20, ctzuo, 142.8, 394.6 , 0 );
setEffMoveKey( spep_11-3 + 22, ctzuo, 142.7, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 24, ctzuo, 142.7, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 26, ctzuo, 142.6, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 28, ctzuo, 153.5, 387.7 , 0 );
setEffMoveKey( spep_11-3 + 30, ctzuo, 153.5, 387.7 , 0 );
setEffMoveKey( spep_11-3 + 32, ctzuo, 142.5, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 34, ctzuo, 142.5, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 36, ctzuo, 142.4, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 38, ctzuo, 142.4, 394.7 , 0 );

setEffScaleKey( spep_11-3 + 12, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_11-3 + 14, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_11-3 + 16, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_11-3 + 18, ctzuo, 1.93, 1.93 );
setEffScaleKey( spep_11-3 + 20, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_11-3 + 22, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_11-3 + 24, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_11-3 + 26, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_11-3 + 28, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_11-3 + 30, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_11-3 + 32, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_11-3 + 34, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_11-3 + 36, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_11-3 + 38, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_11-3 + 12, ctzuo, 6 );
setEffRotateKey( spep_11-3 + 14, ctzuo, 9 );
setEffRotateKey( spep_11-3 + 16, ctzuo, 12 );
setEffRotateKey( spep_11-3 + 18, ctzuo, 15 );
setEffRotateKey( spep_11-3 + 20, ctzuo, 18 );
setEffRotateKey( spep_11-3 + 26, ctzuo, 18 );
setEffRotateKey( spep_11-3 + 28, ctzuo, 17.9 );
setEffRotateKey( spep_11-3 + 38, ctzuo, 17.9 );

setEffAlphaKey( spep_11-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_11-3 + 38, ctzuo, 255 );

--SE
--気弾大きくなる１
SE034 = playSe( spep_11 + 0, 1241,"",0.7 );
SE035 = playSe( spep_11 + 0, 44,"",0.7 );
setPitch( spep_11 + 0, SE035, -600 );
setTimeStretch( SE035, 0.6, 10, 1 );
stopSe( spep_11 + 20, SE035, 48 );



-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 56;
------------------------------------------------------
-- 気弾を弾く(クリリン)
------------------------------------------------------
-- ** エフェクト等 ** --
flip2 = entryEffect( spep_12 + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, flip2, 0, 0, 0 );
setEffMoveKey( spep_12 + 56, flip2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, flip2, 1.0, 1.0 );
setEffScaleKey( spep_12 + 56, flip2, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, flip2, 0 );
setEffRotateKey( spep_12 + 56, flip2, 0 );
setEffAlphaKey( spep_12 + 0, flip2, 255 );
setEffAlphaKey( spep_12 + 54, flip2, 255 );
setEffAlphaKey( spep_12 + 55, flip2, 255 );
setEffAlphaKey( spep_12 + 56, flip2, 0 );

--SE
--クリリン気弾投げる2
SE036 = playSe( spep_12 + 24, 1256 );
setSeVolumeByWorkId( spep_12 + 24, SE036, 0 );
setSeVolumeByWorkId( spep_12 + 25, SE036, 17.7 );
setSeVolumeByWorkId( spep_12 + 26, SE036, 35.4 );
setSeVolumeByWorkId( spep_12 + 27, SE036, 53.1 );
setSeVolumeByWorkId( spep_12 + 28, SE036, 71);
setStartTimeMs( SE036,  50 );
setPitch( spep_12 + 24, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );
SE037 = playSe( spep_12 + 24, 1027 );
setSeVolumeByWorkId( spep_12 + 24, SE037, 77 );
SE038 = playSe( spep_12 + 26, 1038 );
setSeVolumeByWorkId( spep_12 + 26, SE038, 124 );
stopSe( spep_12 + 50, SE038, 40 );

--気弾大きくなる2
SE039 = playSe( spep_12 + 30, 1072,"",0.7 );
setSeVolumeByWorkId( spep_12 + 30, SE039, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 56;
------------------------------------------------------
-- 気弾が迫る(2回目)
------------------------------------------------------
-- ** エフェクト等 ** --
approaching2 = entryEffect( spep_13 + 0, SP_16, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, approaching2, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, approaching2, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, approaching2, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, approaching2, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, approaching2, 0 );
setEffRotateKey( spep_13 + 56, approaching2, 0 );
setEffAlphaKey( spep_13 + 0, approaching2, 255 );
setEffAlphaKey( spep_13 +54, approaching2, 255 );
setEffAlphaKey( spep_13 +55, approaching2, 255 );
setEffAlphaKey( spep_13 + 56, approaching2, 0 );

ctzuo2 = entryEffectLife( spep_13-3 + 10,  10012, 28, 0x100, -1, 0, -147.6, 361.5 );--ズオッ
setEffShake( spep_13-3 + 10, ctzuo2, 28, 10 );
setEffMoveKey( spep_13-3 + 10, ctzuo2, -147.6, 361.5 , 0 );
setEffMoveKey( spep_13-3 + 12, ctzuo2, -136, 382.1 , 0 );
setEffMoveKey( spep_13-3 + 14, ctzuo2, -116.5, 398.8 , 0 );
setEffMoveKey( spep_13-3 + 16, ctzuo2, -103.4, 418.3 , 0 );
setEffMoveKey( spep_13-3 + 18, ctzuo2, -101, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 20, ctzuo2, -101.1, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 22, ctzuo2, -101.1, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 24, ctzuo2, -101.2, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 26, ctzuo2, -90.3, 437.7 , 0 );
setEffMoveKey( spep_13-3 + 28, ctzuo2, -90.3, 437.6 , 0 );
setEffMoveKey( spep_13-3 + 30, ctzuo2, -101.3, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 32, ctzuo2, -101.3, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 34, ctzuo2, -101.4, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 36, ctzuo2, -101.4, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 38, ctzuo2, -62.1, 445 , 0 );

setEffScaleKey( spep_13-3 + 10, ctzuo2, 0.9, 0.9 );
setEffScaleKey( spep_13-3 + 12, ctzuo2, 1.24, 1.24 );
setEffScaleKey( spep_13-3 + 14, ctzuo2, 1.59, 1.59 );
setEffScaleKey( spep_13-3 + 16, ctzuo2, 1.93, 1.93 );
setEffScaleKey( spep_13-3 + 18, ctzuo2, 2.28, 2.28 );
setEffScaleKey( spep_13-3 + 20, ctzuo2, 2.29, 2.29 );
setEffScaleKey( spep_13-3 + 22, ctzuo2, 2.31, 2.31 );
setEffScaleKey( spep_13-3 + 24, ctzuo2, 2.32, 2.32 );
setEffScaleKey( spep_13-3 + 26, ctzuo2, 2.33, 2.33 );
setEffScaleKey( spep_13-3 + 28, ctzuo2, 2.34, 2.34 );
setEffScaleKey( spep_13-3 + 30, ctzuo2, 2.36, 2.36 );
setEffScaleKey( spep_13-3 + 32, ctzuo2, 2.37, 2.37 );
setEffScaleKey( spep_13-3 + 34, ctzuo2, 2.38, 2.38 );
setEffScaleKey( spep_13-3 + 36, ctzuo2, 2.4, 2.4 );
setEffScaleKey( spep_13-3 + 38, ctzuo2, 3.48, 3.48 );

setEffRotateKey( spep_13-3 + 10, ctzuo2, 6 );
setEffRotateKey( spep_13-3 + 12, ctzuo2, 9 );
setEffRotateKey( spep_13-3 + 14, ctzuo2, 12 );
setEffRotateKey( spep_13-3 + 16, ctzuo2, 15 );
setEffRotateKey( spep_13-3 + 18, ctzuo2, 18 );
setEffRotateKey( spep_13-3 + 24, ctzuo2, 18 );
setEffRotateKey( spep_13-3 + 26, ctzuo2, 17.9 );
setEffRotateKey( spep_13-3 + 38, ctzuo2, 17.9 );

setEffAlphaKey( spep_13-3 + 10, ctzuo2, 255 );
setEffAlphaKey( spep_13-3 + 36, ctzuo2, 255 );
setEffAlphaKey( spep_13-3 + 38, ctzuo2, 170 );

--SE
--気弾大きくなる2
SE040 = playSe( spep_13 + 0, 1182,"",0.7 );
setSeVolumeByWorkId( spep_13 + 0, SE040, 0 );
setSeVolumeByWorkId( spep_13 + 1, SE040, 23.6 );
setSeVolumeByWorkId( spep_13 + 2, SE040, 47.2 );
setSeVolumeByWorkId( spep_13 + 3, SE040, 70.8 );
setSeVolumeByWorkId( spep_13 + 4, SE040, 94.4 );
setSeVolumeByWorkId( spep_13 + 5, SE040, 118 );
setSeVolumeByWorkId( spep_13 + 6, SE040, 141 );
setStartTimeMs( SE040,  117 );
SE041 = playSe( spep_13 + 0, 1241,"",0.7 );
setSeVolumeByWorkId( spep_13 + 4, SE042, 126 );
SE042 = playSe( spep_13 + 4, 8,"",0.7 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 56;
------------------------------------------------------
-- 18号顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_14 + 0, SP_17, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_14 + 46, face, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_14 + 46, face, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, face, 0 );
setEffRotateKey( spep_14 + 46, face, 0 );
setEffAlphaKey( spep_14 + 0, face, 255 );
setEffAlphaKey( spep_14 +44, face, 255 );
setEffAlphaKey( spep_14 +45, face, 255 );
setEffAlphaKey( spep_14 + 46, face, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_14-3 + 12,  906, 36, 0x100, -1, 0, 0, 2 );
setEffShake( spep_14-3 + 12, shuchusen7, 36, 20 );
setEffMoveKey( spep_14-3 + 12,shuchusen7, 100, 2 , 0 );
setEffMoveKey( spep_14-3 + 48,shuchusen7, 100, 2 , 0 );

setEffScaleKey( spep_14-3 + 12,shuchusen7, 1.56, 1.56 );
setEffScaleKey( spep_14-3 + 48,shuchusen7, 1.56, 1.56 );

setEffRotateKey( spep_14-3 + 12,shuchusen7, 180 );
setEffRotateKey( spep_14-3 + 48,shuchusen7, 180 );

setEffAlphaKey( spep_14-3 + 12,shuchusen7, 255 )
setEffAlphaKey( spep_14-3 + 48,shuchusen7, 255 )

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_15 = spep_14 + 46;
------------------------------------------------------
-- 気弾を放つ(18号)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_15 + 0, SP_18, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_15 + 96, kidan2, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, kidan2, 1.0, 1.0 );
setEffScaleKey( spep_15 + 96, kidan2, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, kidan2, 0 );
setEffRotateKey( spep_15 + 96, kidan2, 0 );
setEffAlphaKey( spep_15 + 0, kidan2, 255 );
setEffAlphaKey( spep_15 + 94, kidan2, 255 );
setEffAlphaKey( spep_15 + 95, kidan2, 255 );
setEffAlphaKey( spep_15 + 96, kidan2, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_15-3 + 58,  906, 42, 0x100, -1, 0, 100, 2 );
setEffShake( spep_15-3 + 58, shuchusen8, 36, 20 );
setEffMoveKey( spep_15-3 + 58, shuchusen8, 100, 2 , 0 );
setEffMoveKey( spep_15-3 + 100, shuchusen8, 100, 2 , 0 );

setEffScaleKey( spep_15-3 + 58, shuchusen8, 1.17, 1.17 );
setEffScaleKey( spep_15-3 + 100, shuchusen8, 1.17, 1.17 );

setEffRotateKey( spep_15-3 + 58, shuchusen8, 180 );
setEffRotateKey( spep_15-3 + 100, shuchusen8, 180 );

setEffAlphaKey( spep_15-3 + 58, shuchusen8, 255 );
setEffAlphaKey( spep_15-3 + 100, shuchusen8, 255 );

--SE
--18号振りかぶる
SE043 = playSe( spep_15 + 0, 1265 );
stopSe( spep_15 + 44, SE043, 22 );
SE044 = playSe( spep_15 + 0, 1004 );
SE045 = playSe( spep_15 + 2, 1003 );
setSeVolumeByWorkId( spep_15 + 2, SE045, 81 );

--18号機弾投げる2
SE046 = playSe( spep_15 + 42, 1256 );
setSeVolumeByWorkId( spep_15 + 42, SE046, 0 );
setSeVolumeByWorkId( spep_15 + 43, SE046, 18.5 );
setSeVolumeByWorkId( spep_15 + 44, SE046, 50 );
setSeVolumeByWorkId( spep_15 + 45, SE046, 100 );
setSeVolumeByWorkId( spep_15 + 46, SE046, 200 );
setStartTimeMs( SE046,  67 );
setPitch( spep_15 + 42, SE046, -500 );
setTimeStretch( SE046, 0.67, 10, 1 );
SE047 = playSe( spep_15 + 40, 1027 );
setSeVolumeByWorkId( spep_15 + 40, SE047, 86 );
SE048 = playSe( spep_15 + 44, 1038 );
setSeVolumeByWorkId( spep_15 + 44, SE048, 123 );
stopSe( spep_15 + 68, SE048, 40 );
SE049 = playSe( spep_15 + 44, 1254 );
setSeVolumeByWorkId( spep_15 + 44, SE049, 100 );
SE050 = playSe( spep_15 + 52, 1212 );
setSeVolumeByWorkId( spep_15 + 52, SE050, 80 );

-- ** くろ背景 ** --
entryFadeBg( spep_15 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_16 = spep_15 + 96;
------------------------------------------------------
-- クリリンが叫ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
cry = entryEffect( spep_16 + 0, SP_19, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_16 + 0, cry, 0, 0, 0 );
setEffMoveKey( spep_16 + 56, cry, 0, 0, 0 );
setEffScaleKey( spep_16 + 0, cry, 1.0, 1.0 );
setEffScaleKey( spep_16 + 56, cry, 1.0, 1.0 );
setEffRotateKey( spep_16 + 0, cry, 0 );
setEffRotateKey( spep_16 + 56, cry, 0 );
setEffAlphaKey( spep_16 + 0, cry, 255 );
setEffAlphaKey( spep_16 + 54, cry, 255 );
setEffAlphaKey( spep_16 + 55, cry, 255 );
setEffAlphaKey( spep_16 + 56, cry, 0 );

--集中線
shuchusen9 = entryEffectLife( spep_16 + 0,  906, 56, 0x100, -1, 0, 50, 1.8 );
setEffShake( spep_16 + 0, shuchusen9, 56, 20 );
setEffMoveKey( spep_16 + 0, shuchusen9, 50, 1.8 , 0 );
setEffMoveKey( spep_16 + 56, shuchusen9, 50, 1.8 , 0 );

setEffScaleKey( spep_16 + 0, shuchusen9, 1.56, 1.56 );
setEffScaleKey( spep_16 + 56, shuchusen9, 1.56, 1.56 );

setEffRotateKey( spep_16 + 0, shuchusen9, 180 );
setEffRotateKey( spep_16 + 56, shuchusen9, 180 );

setEffAlphaKey( spep_16 + 0, shuchusen9, 255 );
setEffAlphaKey( spep_16 + 56, shuchusen9, 255 );

--SE
--18号機弾投げる2
stopSe( spep_16 + 18, SE050, 38 );

--クリリンアップ
SE051 = playSe( spep_16 + 0, 1278 );
setSeVolumeByWorkId( spep_16 + 0, SE051, 78 );
SE052 = playSe( spep_16 + 4, 9 );
setSeVolumeByWorkId( spep_16 + 4, SE052, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_16 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_17 = spep_16 + 56;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching3 = entryEffect( spep_17 + 0, SP_20, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_17 + 0, approaching3, 0, 0, 0 );
setEffMoveKey( spep_17 + 36, approaching3, 0, 0, 0 );
setEffScaleKey( spep_17 + 0, approaching3, 1.0, 1.0 );
setEffScaleKey( spep_17 + 36, approaching3, 1.0, 1.0 );
setEffRotateKey( spep_17 + 0, approaching3, 0 );
setEffRotateKey( spep_17 + 36, approaching3, 0 );
setEffAlphaKey( spep_17 + 0, approaching3, 255 );
setEffAlphaKey( spep_17 +34, approaching3, 255 );
setEffAlphaKey( spep_17 +35, approaching3, 255 );
setEffAlphaKey( spep_17 + 36, approaching3, 0 );

--集中線
shuchusen10 = entryEffectLife( spep_17 + 0,  906, 36, 0x100, -1, 0, 100, 2 );
setEffShake( spep_17 + 0, shuchusen10, 36, 20 );
setEffMoveKey( spep_17 + 0, shuchusen10, 100, 2 , 0 );
setEffMoveKey( spep_17 + 36, shuchusen10, 100, 2 , 0 );

setEffScaleKey( spep_17 + 0, shuchusen10, 1.56, 1.56 );
setEffScaleKey( spep_17 + 36, shuchusen10, 1.56, 1.56 );

setEffRotateKey( spep_17 + 0, shuchusen10, 180 );
setEffRotateKey( spep_17 + 36, shuchusen10, 180 );

setEffAlphaKey( spep_17 + 0, shuchusen10, 255 );
setEffAlphaKey( spep_17 + 36, shuchusen10, 255 );

--SE
--クリリンアップ
stopSe( spep_17 + 30, SE051, 34 );

--気弾飛んでいく
SE053 = playSe( spep_17 + 0, 1272 );
setSeVolumeByWorkId( spep_17 + 0, SE053, 63 );
setPitch( spep_17 + 0, SE053, 500 );
setTimeStretch( SE053, 1.33, 10, 1 );
SE054 = playSe( spep_17 + 0, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_17 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_18 = spep_17 + 36;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_18 + 0, SP_21, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_18 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_18 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_18 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_18 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_18 + 0, finish, 0 );
setEffRotateKey( spep_18 + 120, finish, 0 );
setEffAlphaKey( spep_18 + 0, finish, 255 );
setEffAlphaKey( spep_18 + 120, finish, 255 );

--集中線
shuchusen11 = entryEffectLife( spep_18 + 0,  906, 118, 0x100, -1, 0, 50, 2 );
setEffShake( spep_18 + 0, shuchusen11, 118, 20 );
setEffMoveKey( spep_18 + 0, shuchusen11, 50, 2 , 0 );
setEffMoveKey( spep_18 + 118, shuchusen11, 50, 2 , 0 );

setEffScaleKey( spep_18 + 0, shuchusen11, 1.56, 1.56 );
setEffScaleKey( spep_18 + 118, shuchusen11, 1.56, 1.56 );

setEffRotateKey( spep_18 + 0, shuchusen11, 180 );
setEffRotateKey( spep_18 + 118, shuchusen11, 180 );

setEffAlphaKey( spep_18 + 0, shuchusen11, 255 );
setEffAlphaKey( spep_18 + 118, shuchusen11, 255 );

--爆発
SE055 = playSe( spep_18 + 0, 1159 );
setSeVolumeByWorkId( spep_18 + 0, SE055, 77 );
SE056 = playSe( spep_18 + 0, 1023 );

-- ** ダメージ表示 ** --
dealDamage( spep_18 + 10 );
endPhase( spep_18 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 立ち合い
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
witness = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, witness, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, witness, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, witness, -1.0, 1.0 );
setEffScaleKey( spep_0 + 36, witness, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, witness, 0 );
setEffRotateKey( spep_0 + 36, witness, 0 );
setEffAlphaKey( spep_0 + 0, witness, 255 );
setEffAlphaKey( spep_0 + 34, witness, 255 );
setEffAlphaKey( spep_0 + 35, witness, 255 );
setEffAlphaKey( spep_0 + 36, witness, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 36, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 175.6, -139.1 , 0 );
setMoveKey( spep_0 + 1, 1, 175.6, -139.1 , 0 );
setMoveKey( spep_0 + 2, 1, 176.2, -139.9 , 0 );
setMoveKey( spep_0 + 3, 1, 176.2, -139.9 , 0 );
setMoveKey( spep_0 + 4, 1, 176.8, -140.7 , 0 );
setMoveKey( spep_0 + 5, 1, 176.8, -140.7 , 0 );
setMoveKey( spep_0 + 6, 1, 177.4, -141.5 , 0 );
setMoveKey( spep_0 + 8, 1, 178, -142.3 , 0 );
setMoveKey( spep_0 + 10, 1, 178.6, -143.1 , 0 );
setMoveKey( spep_0 + 12, 1, 179.2, -144 , 0 );
setMoveKey( spep_0 + 14, 1, 179.8, -144.8 , 0 );
setMoveKey( spep_0 + 16, 1, 180.4, -145.5 , 0 );
setMoveKey( spep_0 + 18, 1, 181, -146.4 , 0 );
setMoveKey( spep_0 + 20, 1, 181.7, -147.2 , 0 );
setMoveKey( spep_0 + 22, 1, 182.3, -148 , 0 );
setMoveKey( spep_0 + 24, 1, 182.9, -148.8 , 0 );
setMoveKey( spep_0 + 26, 1, 183.5, -149.6 , 0 );
setMoveKey( spep_0 + 28, 1, 184.1, -150.4 , 0 );
setMoveKey( spep_0 + 30, 1, 184.7, -151.2 , 0 );
setMoveKey( spep_0 + 32, 1, 185.3, -152 , 0 );
setMoveKey( spep_0 + 34, 1, 185.9, -152.8 , 0 );
setMoveKey( spep_0 + 36, 1, 186.5, -153.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 1, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 2, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 3, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 4, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 5, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 6, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 10, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 18, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 34, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 36, 1, 1.84, 1.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 36, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 1, SE001, 3.5 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 7 );
setSeVolumeByWorkId( spep_0 + 3, SE001, 10.5 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 14 );
setSeVolumeByWorkId( spep_0 + 5, SE001, 17.5 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 21 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 24.5 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 28 );
setSeVolumeByWorkId( spep_0 + 9, SE001, 31.5 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 35 );
setSeVolumeByWorkId( spep_0 + 11, SE001, 38.5 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 42 );
setSeVolumeByWorkId( spep_0 + 13, SE001, 45.5 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 49 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 52.5 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 56 );
setSeVolumeByWorkId( spep_0 + 17, SE001, 59.5 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 63 );
setStartTimeMs( SE001,  167 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+36;
------------------------------------------------------
-- 顔を合わせる
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_1 + 92, face, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, face, -1.0, 1.0 );
setEffScaleKey( spep_1 + 92, face, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 92, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 92, face, 255 );
setEffAlphaKey( spep_1 + 93, face, 0 );
setEffAlphaKey( spep_1 + 94, face, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 8,  906, 84+3, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_1-3 + 8, shuchusen1, 84+3, 20 );
setEffMoveKey( spep_1-3 + 8, shuchusen1, 0, -20.3 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen1, 0, -20.3 , 0 );

setEffScaleKey( spep_1-3 + 8, shuchusen1, 1.69, 1.69 );
setEffScaleKey( spep_1 + 92, shuchusen1, 1.69, 1.69 );

setEffRotateKey( spep_1-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_1 + 92, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 92, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
    pauseAll( SP_dodge, 67);

     speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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
SE003 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+92;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 56, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 54, fighting_f, 255 );
setEffAlphaKey( spep_2 + 55, fighting_f, 255 );
setEffAlphaKey( spep_2 + 56, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 56, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 54, fighting_b, 255 );
setEffAlphaKey( spep_2 + 55, fighting_b, 255 );
setEffAlphaKey( spep_2 + 56, fighting_b, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 18,  906, 6, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_2-3 + 18, shuchusen2, 6, 20 );
setEffMoveKey( spep_2-3 + 18, shuchusen2, 0, -20.3 , 0 );
setEffMoveKey( spep_2-3 + 24, shuchusen2, 0, -20.3 , 0 );

setEffScaleKey( spep_2-3 + 18, shuchusen2, 1.69, 1.69 );
setEffScaleKey( spep_2-3 + 24, shuchusen2, 1.69, 1.69 );

setEffRotateKey( spep_2-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 24, shuchusen2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-2 + 10,  10020, 46, 0x100, -1, 0, 60.3, 114.7 );--バキッ
setEffShake( spep_2-2 + 10, ctbaki, 46, 10 );
setEffMoveKey( spep_2-2 + 10, ctbaki, 60.3, 114.7 , 0 );
setEffMoveKey( spep_2-2 + 12, ctbaki, 61.4, 117.4 , 0 );
setEffMoveKey( spep_2-2 + 14, ctbaki, 65.9, 128 , 0 );
setEffMoveKey( spep_2-2 + 16, ctbaki, 46.5, 117.5 , 0 );
setEffMoveKey( spep_2-2 + 18, ctbaki, 60.2, 96.8 , 0 );
setEffMoveKey( spep_2-2 + 20, ctbaki, 71.9, 100.3 , 0 );
setEffMoveKey( spep_2-2 + 22, ctbaki, 70.8, 135.2 , 0 );
setEffMoveKey( spep_2-2 + 24, ctbaki, 81.5, 125.1 , 0 );
setEffMoveKey( spep_2-2 + 26, ctbaki, 92.1, 115 , 0 );
setEffMoveKey( spep_2-2 + 28, ctbaki, 80.4, 118.1 , 0 );
setEffMoveKey( spep_2-2 + 30, ctbaki, 68.6, 121.2 , 0 );
setEffMoveKey( spep_2-2 + 32, ctbaki, 64.6, 118.3 , 0 );
setEffMoveKey( spep_2-2 + 34, ctbaki, 60.5, 115.3 , 0 );
setEffMoveKey( spep_2-2 + 38, ctbaki, 60.5, 115.3 , 0 );
setEffMoveKey( spep_2-2 + 40, ctbaki, 60.5, 115.4 , 0 );
setEffMoveKey( spep_2-2 + 46, ctbaki, 60.5, 115.4 , 0 );
setEffMoveKey( spep_2-2 + 48, ctbaki, 65.9, 128 , 0 );
setEffMoveKey( spep_2-2 + 50, ctbaki, 37.9, 119.2 , 0 );
setEffMoveKey( spep_2-2 + 52, ctbaki, 59.9, 74.9 , 0 );
setEffMoveKey( spep_2-2 + 54, ctbaki, 93.2, 73.8 , 0 );
setEffMoveKey( spep_2-2 + 56, ctbaki, 100.3, 65 , 0 );

setEffScaleKey( spep_2-2 + 10, ctbaki, 0.01, 0.01 );
setEffScaleKey( spep_2-2 + 12, ctbaki, 0.63, 0.63 );
setEffScaleKey( spep_2-2 + 14, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2-2 + 48, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2-2 + 50, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_2-2 + 52, ctbaki, 2.79, 2.79 );
setEffScaleKey( spep_2-2 + 54, ctbaki, 3.56, 3.56 );
setEffScaleKey( spep_2-2 + 56, ctbaki, 4.34, 4.34 )

setEffRotateKey( spep_2-2 + 10, ctbaki, -33.8 );
setEffRotateKey( spep_2-2 + 12, ctbaki, -27 );
setEffRotateKey( spep_2-2 + 14, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 16, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 18, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 22, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 24, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 38, ctbaki, -20.1 );
setEffRotateKey( spep_2-2 + 40, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 48, ctbaki, -20 );
setEffRotateKey( spep_2-2 + 50, ctbaki, -20.2 );
setEffRotateKey( spep_2-2 + 56, ctbaki, -20.2 );

setEffAlphaKey( spep_2-2 + 10, ctbaki, 255 );
setEffAlphaKey( spep_2-2 + 48, ctbaki, 255 );
setEffAlphaKey( spep_2-2 + 50, ctbaki, 191 );
setEffAlphaKey( spep_2-2 + 52, ctbaki, 128 );
setEffAlphaKey( spep_2-2 + 54, ctbaki, 64 );
setEffAlphaKey( spep_2-2 + 56, ctbaki, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 58, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 12, 1, 106 );

setMoveKey( spep_2 + 0, 1, 212.2, -53 , 0 );
setMoveKey( spep_2-3 + 11, 1, 212.2, -53 , 0 );
setMoveKey( spep_2-3 + 12, 1, 154.2, -23.9 , 0 );
setMoveKey( spep_2-3 + 14, 1, 146.3, -22.6 , 0 );
setMoveKey( spep_2-3 + 16, 1, 138.5, -21.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 139.6, -11.2 , 0 );
setMoveKey( spep_2-3 + 20, 1, 129.6, -21.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 135.6, -26 , 0 );
setMoveKey( spep_2-3 + 24, 1, 124.8, -15.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 124.5, -25.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 127.3, -22.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, 130, -20 , 0 );
setMoveKey( spep_2-3 + 32, 1, 128.4, -19.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 126.7, -19 , 0 );
setMoveKey( spep_2-3 + 36, 1, 128, -19.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 129.3, -20 , 0 );
setMoveKey( spep_2-3 + 40, 1, 131.3, -17.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, 133.4, -15.7 , 0 );
setMoveKey( spep_2-3 + 44, 1, 131.1, -17.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 128.8, -19.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, 131.9, -23.1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 135, -26.4 , 0 );
setMoveKey( spep_2-3 + 52, 1, 132.7, -23.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 130.4, -19.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 128.1, -22 , 0 );
setMoveKey( spep_2-1 + 58, 1, 125.9, -24.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 12, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_2-3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_2-1 + 58, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 11, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, -59 );
setRotateKey( spep_2-1 + 58, 1, -59 );

--SE
--環境音
stopSe( spep_2-2, SE002, 0 );

--18号パンチ
SE005 = playSe( spep_2 + 0, 1189 );
SE006 = playSe( spep_2 + 4, 1009 );
setSeVolumeByWorkId( spep_2 + 4, SE006, 75 );
SE007 = playSe( spep_2 + 4, 1026 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 71 );
setPitch( spep_2 + 4, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
stopSe( spep_2 + 26, SE007, 12 );
SE008 = playSe( spep_2 + 6, 1110 );
SE009 = playSe( spep_2 + 6, 1001 );
setSeVolumeByWorkId( spep_2 + 6, SE009, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+56;
------------------------------------------------------
-- アップ絵　画面手前に突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, plunge, 0, 0, 0 );
setEffMoveKey( spep_3 + 56, plunge, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, plunge, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, plunge, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, plunge, 0 );
setEffRotateKey( spep_3 + 56, plunge, 0 );
setEffAlphaKey( spep_3 + 0, plunge, 255 );
setEffAlphaKey( spep_3 + 54, plunge, 255 );
setEffAlphaKey( spep_3 + 55, plunge, 255 );
setEffAlphaKey( spep_3 + 56, plunge, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 36,  906, 22, 0x100, -1, 0, 0, -20.3 );
setEffShake( spep_3-3 + 36, shuchusen3, 22, 20 );
setEffMoveKey( spep_3-3 + 36, shuchusen3, 0, -20.3 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen3, 0, -20.3 , 0 );

setEffScaleKey( spep_3-3 + 36, shuchusen3, 1.69, 1.69 );
setEffScaleKey( spep_3-3 + 58, shuchusen3, 1.69, 1.69 );

setEffRotateKey( spep_3-3 + 36, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 36, shuchusen3, 36 );
setEffAlphaKey( spep_3-3 + 38, shuchusen3, 73 );
setEffAlphaKey( spep_3-3 + 40, shuchusen3, 109 );
setEffAlphaKey( spep_3-3 + 42, shuchusen3, 146 );
setEffAlphaKey( spep_3-3 + 44, shuchusen3, 182 );
setEffAlphaKey( spep_3-3 + 46, shuchusen3, 219 );
setEffAlphaKey( spep_3-3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen3, 255 );

--SE
--クリリンダッシュ
SE010 = playSe( spep_3 + 0, 1314 );
SE011 = playSe( spep_3 + 0, 1182 );

--クリリンパンチ
SE012 = playSe( spep_3 + 46, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+56;
------------------------------------------------------
-- 敵を殴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, punch_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 36, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 36, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 34, punch_f, 255 );
setEffAlphaKey( spep_4 + 35, punch_f, 255 );
setEffAlphaKey( spep_4 + 36, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, punch_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 36, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 36, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 34, punch_b, 255 );
setEffAlphaKey( spep_4 + 35, punch_b, 255 );
setEffAlphaKey( spep_4 + 36, punch_b, 0 );

--文字エントリー
ctdigon = entryEffectLife( spep_4 + 0,  10018, 26-3, 0x100, -1, 0, -183.9, 419.1 );--ドゴォンッ
setEffShake( spep_4 + 0, ctdigon, 26-3, 10 );
setEffMoveKey( spep_4 + 0, ctdigon, -183.9, 419.1 , 0 );
--setEffMoveKey( spep_4-3 + 2, ctdigon, 180.4, 450.4 , 0 );
setEffMoveKey( spep_4-3 + 4, ctdigon, -185.3, 400.6 , 0 );
setEffMoveKey( spep_4-3 + 6, ctdigon, -152.9, 417.6 , 0 );
setEffMoveKey( spep_4-3 + 8, ctdigon, -203.8, 431.5 , 0 );
setEffMoveKey( spep_4-3 + 10, ctdigon, -192.2, 428 , 0 );
setEffMoveKey( spep_4-3 + 12, ctdigon, -180.6, 424.5 , 0 );
setEffMoveKey( spep_4-3 + 14, ctdigon, -179.2, 427.4 , 0 );
setEffMoveKey( spep_4-3 + 16, ctdigon, -177.9, 430.2 , 0 );
setEffMoveKey( spep_4-3 + 18, ctdigon, -179.2, 427.4 , 0 );
setEffMoveKey( spep_4-3 + 20, ctdigon, -176.7, 431.1 , 0 );
setEffMoveKey( spep_4-3 + 22, ctdigon, -168.4, 447.2 , 0 );
setEffMoveKey( spep_4-3 + 24, ctdigon, -157.1, 469.7 , 0 );
setEffMoveKey( spep_4-3 + 26, ctdigon, -150.2, 482.9 , 0 );

setEffScaleKey( spep_4 + 0, ctdigon, 1.82, 1.9 );
setEffScaleKey( spep_4 + 2, ctdigon, 1.83, 1.9 );
setEffScaleKey( spep_4-3 + 18, ctdigon, 1.83, 1.9 );
setEffScaleKey( spep_4-3 + 20, ctdigon, 3.97, 4.13 );
setEffScaleKey( spep_4-3 + 22, ctdigon, 6.11, 6.36 );
setEffScaleKey( spep_4-3 + 24, ctdigon, 8.25, 8.59 );
setEffScaleKey( spep_4-3 + 26, ctdigon, 10.39, 10.82 );

setEffRotateKey( spep_4 + 0, ctdigon, -8.2 );
setEffRotateKey( spep_4 + 2, ctdigon, -8 );
setEffRotateKey( spep_4-3 + 26, ctdigon, -8 );

setEffAlphaKey( spep_4 + 0, ctdigon, 255 );
setEffAlphaKey( spep_4-3 + 18, ctdigon, 255 );
setEffAlphaKey( spep_4-3 + 20, ctdigon, 191 );
setEffAlphaKey( spep_4-3 + 22, ctdigon, 128 );
setEffAlphaKey( spep_4-3 + 24, ctdigon, 64 );
setEffAlphaKey( spep_4-3 + 26, ctdigon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 38, 1, 0 );

changeAnime( spep_4 + 0, 1, 8 );

setMoveKey( spep_4 + 0, 1, -95.2, 182 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 111.8, 167.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, -71.6, 199.2 , 0 );
setMoveKey( spep_4-3 + 6, 1, -65.3, 147.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, -111.2, 196.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, -78, 196 , 0 );
setMoveKey( spep_4-3 + 12, 1, -92.2, 147.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, -76.4, 168.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, -71.3, 162.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -68.6, 161.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, -67.6, 161.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, -61.3, 156.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, -60.7, 151.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, -56.8, 153.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, -53.9, 151 , 0 );
setMoveKey( spep_4-3 + 30, 1, -52.8, 150.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, -46.6, 145 , 0 );
setMoveKey( spep_4-3 + 34, 1, -45.8, 140.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, -42.1, 141.9 , 0 );
setMoveKey( spep_4-1 + 38, 1, -39.6, 139.6 , 0 );

setScaleKey( spep_4 + 0, 1,4.83,4.83);
setScaleKey( spep_4-3 + 4, 1,4.44,4.44);
setScaleKey( spep_4-3 + 6, 1,4.25,4.25);
setScaleKey( spep_4-3 + 8, 1,4.08,4.08);
setScaleKey( spep_4-3 + 10, 1,3.88,3.88);
setScaleKey( spep_4-3 + 12, 1,3.69,3.69);
setScaleKey( spep_4-3 + 14, 1,3.5,3.5);
setScaleKey( spep_4-3 + 16, 1,3.31,3.31);
setScaleKey( spep_4-3 + 18, 1,3.12,3.12);
setScaleKey( spep_4-3 + 20, 1,2.94,2.94);
setScaleKey( spep_4-3 + 22, 1,2.75,2.75);
setScaleKey( spep_4-3 + 24, 1,2.56,2.56);
setScaleKey( spep_4-3 + 26, 1,2.36,2.36);
setScaleKey( spep_4-3 + 28, 1,2.17,2.17);
setScaleKey( spep_4-3 + 30, 1,1.98,1.98);
setScaleKey( spep_4-3 + 32, 1,1.8,1.8);
setScaleKey( spep_4-3 + 34, 1,1.61,1.61);
setScaleKey( spep_4-3 + 36, 1,1.42,1.42);
setScaleKey( spep_4-1 + 38, 1,1.23,1.23);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-1 + 38, 1, 0 );

--SE
--クリリンダッシュ
stopSe( spep_4 + 12, SE010, 28 );

--クリリンパンチ
SE013 = playSe( spep_4 + 0, 1233 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE013, 35.3 );
setSeVolumeByWorkId( spep_4 + 2, SE013, 70.6 );
setSeVolumeByWorkId( spep_4 + 3, SE013, 105.9 );
setSeVolumeByWorkId( spep_4 + 4, SE013, 141 );
setStartTimeMs( SE013,  117 );
SE014 = playSe( spep_4 + 2, 1009 );
SE015 = playSe( spep_4 + 4, 1187 );
setPitch( spep_4 + 4, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+36;
------------------------------------------------------
-- アップ絵　回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, kick, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_5 + 46, kick, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick, 0 );
setEffRotateKey( spep_5 + 46, kick, 0 );
setEffAlphaKey( spep_5 + 0, kick, 255 );
setEffAlphaKey( spep_5 + 44, kick, 255 );
setEffAlphaKey( spep_5 + 45, kick, 255 );
setEffAlphaKey( spep_5 + 46, kick, 0 );

--SE
--18号ジャンプ
SE016 = playSe( spep_5 + 0, 1182 );
setSeVolumeByWorkId( spep_5 + 0, SE016, 0 );
setSeVolumeByWorkId( spep_5 + 1, SE016, 10.9 );
setSeVolumeByWorkId( spep_5 + 2, SE016, 21.8 );
setSeVolumeByWorkId( spep_5 + 3, SE016, 32.7 );
setSeVolumeByWorkId( spep_5 + 4, SE016, 43.6 );
setSeVolumeByWorkId( spep_5 + 5, SE016, 54.5 );
setSeVolumeByWorkId( spep_5 + 6, SE016, 65.4 );
setSeVolumeByWorkId( spep_5 + 7, SE016, 76.3 );
setSeVolumeByWorkId( spep_5 + 8, SE016, 87 );
setStartTimeMs( SE016,  133 );
SE017 = playSe( spep_5 + 2, 44 );
setSeVolumeByWorkId( spep_5 + 2, SE017, 81 );
SE018 = playSe( spep_5 + 2, 1116 );
setSeVolumeByWorkId( spep_5 + 2, SE018, 79 );
stopSe( spep_5 + 24, SE018, 20 );

--蹴りふりかぶり
SE019 = playSe( spep_5 + 20, 1117 );
stopSe( spep_5 + 34, SE019, 18 );
SE020 = playSe( spep_5 + 20, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+46;
------------------------------------------------------
-- 敵を蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 46, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 44, hit_f, 255 );
setEffAlphaKey( spep_6 + 45, hit_f, 255 );
setEffAlphaKey( spep_6 + 46, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 46, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 44, hit_b, 255 );
setEffAlphaKey( spep_6 + 45, hit_b, 255 );
setEffAlphaKey( spep_6 + 46, hit_b, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_6 + 0,  10021, 30, 0x100, -1, 0, -173.2, 408.3 );--バゴォッ
setEffShake( spep_6 + 0, ctbago, 30, 10 );
setEffMoveKey( spep_6 + 0, ctbago, -173.2, 408.3 , 0 );
setEffMoveKey( spep_6 + 2, ctbago, -186.2, 424.7 , 0 );
setEffMoveKey( spep_6 + 4, ctbago, -156.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 6, ctbago, -192.8, 384 , 0 );
setEffMoveKey( spep_6 + 8, ctbago, -170.6, 424.2 , 0 );
setEffMoveKey( spep_6 + 10, ctbago, -198.2, 411.7 , 0 );
setEffMoveKey( spep_6 + 12, ctbago, -180.5, 379.9 , 0 );
setEffMoveKey( spep_6 + 14, ctbago, -162.9, 383.6 , 0 );
setEffMoveKey( spep_6 + 16, ctbago, -159.5, 435.2 , 0 );
setEffMoveKey( spep_6 + 18, ctbago, -144.8, 419.3 , 0 );
setEffMoveKey( spep_6 + 20, ctbago, -130.2, 403.4 , 0 );
setEffMoveKey( spep_6 + 22, ctbago, -145.5, 409.7 , 0 );
setEffMoveKey( spep_6 + 24, ctbago, -160.8, 416 , 0 );
setEffMoveKey( spep_6 + 26, ctbago, -163.6, 414.2 , 0 );
setEffMoveKey( spep_6 + 28, ctbago, -172.7, 408.5 , 0 );
setEffMoveKey( spep_6 + 30, ctbago, -172.5, 408.6 , 0 );

setEffScaleKey( spep_6 + 0, ctbago, 0.01, 0.01 );
setEffScaleKey( spep_6 + 2, ctbago, 0.89, 0.93 );
setEffScaleKey( spep_6 + 4, ctbago, 1.77, 1.84 );
setEffScaleKey( spep_6 + 24, ctbago, 1.77, 1.84 );
setEffScaleKey( spep_6 + 26, ctbago, 2.69, 2.74 );
setEffScaleKey( spep_6 + 28, ctbago, 3.61, 3.63 );
setEffScaleKey( spep_6 + 30, ctbago, 4.53, 4.53 );

setEffRotateKey( spep_6 + 0, ctbago, -28.8 );
setEffRotateKey( spep_6 + 2, ctbago, -29 );
setEffRotateKey( spep_6 + 30, ctbago, -29 );

setEffAlphaKey( spep_6 + 0, ctbago, 255 );
setEffAlphaKey( spep_6 + 24, ctbago, 255 );
setEffAlphaKey( spep_6 + 26, ctbago, 170 );
setEffAlphaKey( spep_6 + 28, ctbago, 85 );
setEffAlphaKey( spep_6 + 30, ctbago, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_6-3 + 6,  906, 42, 0x100, -1, 0, 0, 124.6 );
setEffShake( spep_6-3 + 6, shuchusen4, 42, 20 );
setEffMoveKey( spep_6-3 + 6, shuchusen4, 0, 124.6 , 0 );
setEffMoveKey( spep_6-3 + 48, shuchusen4, 30, 124.6 , 0 );

setEffScaleKey( spep_6-3 + 6, shuchusen4, 1.66, 1.66 );
setEffScaleKey( spep_6-3 + 48, shuchusen4, 1.66, 1.66 );

setEffRotateKey( spep_6-3 + 6, shuchusen4, 180 );
setEffRotateKey( spep_6-3 + 48, shuchusen4, 180 );

setEffAlphaKey( spep_6-3 + 6, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 48, shuchusen4, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -63.4, 175.9 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -83.5, 194.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, -118.4, 151.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, -100.8, 113.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, -112.5, 146.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, -146.8, 125.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, -148.3, 121.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, -148.6, 118.3 , 0 );
setMoveKey( spep_6-3 + 16, 1, -154.5, 117.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, -159, 117.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, -169.1, 107 , 0 );
setMoveKey( spep_6-3 + 22, 1, -178.9, 96.5 , 0 );
setMoveKey( spep_6-3 + 24, 1, -188.6, 86.1 , 0 );
setMoveKey( spep_6-3 + 26, 1, -197.9, 76 , 0 );
setMoveKey( spep_6-3 + 28, 1, -207.1, 66.1 , 0 );
setMoveKey( spep_6-3 + 30, 1, -215.9, 56.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, -224.5, 47 , 0 );
setMoveKey( spep_6-3 + 34, 1, -232.8, 37.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, -240.9, 28.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, -248.7, 20.1 , 0 );
setMoveKey( spep_6-3 + 40, 1, -256.2, 11.5 , 0 );
setMoveKey( spep_6-3 + 42, 1, -263.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, -270.6, -4.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, -277.4, -12.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, -283.9, -20.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.77, 0.77 );
--setScaleKey( spep_6-3 + 2, 1, 0.85, 0.85 );
setScaleKey( spep_6-3 + 4, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 6, 1, 1, 1 );
setScaleKey( spep_6-3 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_6-3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_6-3 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_6-3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_6-3 + 18, 1, 1.13, 1.12 );
setScaleKey( spep_6-3 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_6-3 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_6-3 + 24, 1, 1.26, 1.26 );
setScaleKey( spep_6-3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_6-3 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_6-3 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_6-3 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_6-3 + 34, 1, 1.46, 1.46 );
setScaleKey( spep_6-3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_6-3 + 38, 1, 1.54, 1.54 );
setScaleKey( spep_6-3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_6-3 + 42, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_6-3 + 46, 1, 1.67, 1.67 );
setScaleKey( spep_6-3 + 48, 1, 1.7, 1.7 );

a=50;

setRotateKey( spep_6 + 0, 1, 92.8+a );
--setRotateKey( spep_6-3 + 2, 1, 93.3 );
setRotateKey( spep_6-3 + 4, 1, 93.6+a );
setRotateKey( spep_6-3 + 6, 1, 93.9+a );
setRotateKey( spep_6-3 + 8, 1, 94.2+a );
setRotateKey( spep_6-3 + 10, 1, 94.5+a );
setRotateKey( spep_6-3 + 12, 1, 94.7+a );
setRotateKey( spep_6-3 + 14, 1, 95+a );
setRotateKey( spep_6-3 + 16, 1, 95.3+a );
setRotateKey( spep_6-3 + 18, 1, 95.6+a );
setRotateKey( spep_6-3 + 20, 1, 95.9+a );
setRotateKey( spep_6-3 + 22, 1, 96.2+a );
setRotateKey( spep_6-3 + 24, 1, 96.5+a );
setRotateKey( spep_6-3 + 26, 1, 96.8+a );
setRotateKey( spep_6-3 + 28, 1, 97.1+a );
setRotateKey( spep_6-3 + 30, 1, 97.4+a );
setRotateKey( spep_6-3 + 32, 1, 97.7+a );
setRotateKey( spep_6-3 + 34, 1, 98+a );
setRotateKey( spep_6-3 + 36, 1, 98.2+a );
setRotateKey( spep_6-3 + 38, 1, 98.5+a );
setRotateKey( spep_6-3 + 40, 1, 98.8+a );
setRotateKey( spep_6-3 + 42, 1, 99.1+a );
setRotateKey( spep_6-3 + 44, 1, 99.4+a );
setRotateKey( spep_6-3 + 46, 1, 99.7+a );
setRotateKey( spep_6-3 + 48, 1, 100+a );

--SE
--18号キック
SE021 = playSe( spep_6 + 0, 1001 );
setSeVolumeByWorkId( spep_6 + 0, SE021, 53 );
SE022 = playSe( spep_6 + 2, 1187 );
setSeVolumeByWorkId( spep_6 + 2, SE022, 84 );
SE023 = playSe( spep_6 + 4, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+46;
------------------------------------------------------
-- 敵が地面に激突
------------------------------------------------------
-- ** エフェクト等 ** --
collision = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, collision, 0, 0, 0 );
setEffMoveKey( spep_7 + 50, collision, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, collision, 1.0, 1.0 );
setEffScaleKey( spep_7 + 50, collision, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, collision, 0 );
setEffRotateKey( spep_7 + 50, collision, 0 );
setEffAlphaKey( spep_7 + 0, collision, 255 );
setEffAlphaKey( spep_7 + 50, collision, 255 );
setEffAlphaKey( spep_7 + 51, collision, 0 );
setEffAlphaKey( spep_7 + 52, collision, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_7-3 + 16,  906, 34+2, 0x100, -1, 0, 0, 2 );
setEffShake( spep_7-3 + 16, shuchusen5, 34+2, 20 );
setEffMoveKey( spep_7-3 + 16, shuchusen5, 0, 2 , 0 );
setEffMoveKey( spep_7-1 + 50, shuchusen5, 0, 2 , 0 );

setEffScaleKey( spep_7-3 + 16, shuchusen5, 1.56, 1.56 );
setEffScaleKey( spep_7-1 + 50, shuchusen5, 1.56, 1.56 );

setEffRotateKey( spep_7-3 + 16, shuchusen5, 180 );
setEffRotateKey( spep_7-1 + 50, shuchusen5, 180 );

setEffAlphaKey( spep_7-3 + 16, shuchusen5, 255 );
setEffAlphaKey( spep_7-1 + 50, shuchusen5, 255 );

--敵の動き
setDisp( spep_7-1 + 14, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, 240, 225.8 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 189.3, 163.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 157.1, 122.8 , 0 );
setMoveKey( spep_7-3 + 6, 1, 129.1, 88.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, 102.7, 57.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 77.1, 28.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 51.7, 2 , 0 );
setMoveKey( spep_7-1 + 14, 1, 26.8, -23.6 , 0 );

setScaleKey( spep_7 + 0, 1, 6.57, 6.57 );
--setScaleKey( spep_7-3 + 2, 1, 5.56, 5.51 );
setScaleKey( spep_7-3 + 4, 1, 4.67, 4.61 );
setScaleKey( spep_7-3 + 6, 1, 3.87, 3.82 );
setScaleKey( spep_7-3 + 8, 1, 3.14, 3.1 );
setScaleKey( spep_7-3 + 10, 1, 2.47, 2.45 );
setScaleKey( spep_7-3 + 12, 1, 1.86, 1.85 );
setScaleKey( spep_7-1 + 14, 1, 1.3, 1.3 );

setRotateKey( spep_7 + 0, 1, -108 );
--setRotateKey( spep_7-3 + 2, 1, -113.4 );
setRotateKey( spep_7-3 + 4, 1, -118.9 );
setRotateKey( spep_7-3 + 6, 1, -124.3 );
setRotateKey( spep_7-3 + 8, 1, -129.7 );
setRotateKey( spep_7-3 + 10, 1, -135.1 );
setRotateKey( spep_7-3 + 12, 1, -140.6 );
setRotateKey( spep_7-3 + 14, 1, -146 );

--SE
--敵飛んでいく
SE024 = playSe( spep_7 + 0, 1183 ); 
stopSe( spep_7 + 24, SE024, 10 );

--爆発
SE025 = playSe( spep_7 + 14, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 50;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[
speff2 = entryEffect( spep_8 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 86, shuchusen, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 86, shuchusen, 255 );

-- ** 音 ** --
--爆発
stopSe( spep_8 + 6, SE025, 10 );

--playSe( spep_8 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;
------------------------------------------------------
-- 気弾を放つ(クリリン)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_9 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_9 + 50 -2, kidan, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_9 + 50 -2, kidan, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kidan, 0 );
setEffRotateKey( spep_9 + 50 -2, kidan, 0 );
setEffAlphaKey( spep_9 + 0, kidan, 255 );
setEffAlphaKey( spep_9 + 48 -2, kidan, 255 );
setEffAlphaKey( spep_9 + 49 -2, kidan, 255 );
setEffAlphaKey( spep_9 + 50 -2, kidan, 0 );

--SE
--クリリン振りかぶる
SE026 = playSe( spep_9 + 0, 1117 );
stopSe( spep_9 + 12, SE026, 16 );

--クリリン気弾投げる１
SE027 = playSe( spep_9 + 18, 1256 );
setSeVolumeByWorkId( spep_9 + 18, SE027, 0 );
setSeVolumeByWorkId( spep_9 + 19, SE027, 35.3 );
setSeVolumeByWorkId( spep_9 + 20, SE027, 70.6 );
setSeVolumeByWorkId( spep_9 + 21, SE027, 105.9 );
setSeVolumeByWorkId( spep_9 + 22, SE027, 141 );
setStartTimeMs( SE027,  67 );
setPitch( spep_9 + 18, SE027, -500 );
setTimeStretch( SE027, 0.67, 10, 1 );
SE028 = playSe( spep_9 + 18, 1021 );
stopSe( spep_9 + 34, SE028, 48 );
SE029 = playSe( spep_9 + 18, 1038 );
setSeVolumeByWorkId( spep_9 + 18, SE029, 178 );
stopSe( spep_9 + 42, SE029, 40 );

--気弾道
SE030 = playSe( spep_9 + 36, 1241 );
setSeVolumeByWorkId( spep_9 + 36, SE030, 85 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 50 -2;
------------------------------------------------------
-- 気弾を弾く(18号)
------------------------------------------------------
-- ** エフェクト等 ** --
flip = entryEffect( spep_10 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, flip, 0, 0, 0 );
setEffMoveKey( spep_10 + 76, flip, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, flip, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76, flip, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flip, 0 );
setEffRotateKey( spep_10 + 76, flip, 0 );
setEffAlphaKey( spep_10 + 0, flip, 255 );
setEffAlphaKey( spep_10 + 74, flip, 255 );
setEffAlphaKey( spep_10 + 75, flip, 255 );
setEffAlphaKey( spep_10 + 76, flip, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_10-3 + 44,  906, 34, 0x100, -1, 100, 0, 154 );
setEffShake( spep_10-3 + 16, shuchusen6, 34, 20 );
setEffMoveKey( spep_10-3 + 44, shuchusen6, 100, 154 , 0 );
setEffMoveKey( spep_10-3 + 78, shuchusen6, 100, 154 , 0 );

setEffScaleKey( spep_10-3 + 44, shuchusen6, 2.14, 2.14 );
setEffScaleKey( spep_10-3 + 78, shuchusen6, 2.14, 2.14 );

setEffRotateKey( spep_10-3 + 44, shuchusen6, 180 );
setEffRotateKey( spep_10-3 + 78, shuchusen6, 180 );

setEffAlphaKey( spep_10-3 + 44, shuchusen6, 255 );
setEffAlphaKey( spep_10-3 + 78, shuchusen6, 255 );

--SE
--気弾道
stopSe( spep_10 + 32, SE030, 16 );

--18号機弾投げる１
SE031 = playSe( spep_10 + 36, 1256 );
setSeVolumeByWorkId( spep_10 + 36, SE031, 0 );
setSeVolumeByWorkId( spep_10 + 37, SE031, 31.5 );
setSeVolumeByWorkId( spep_10 + 38, SE031, 63 );
setSeVolumeByWorkId( spep_10 + 39, SE031, 94.5 );
setSeVolumeByWorkId( spep_10 + 40, SE031, 126 );
setStartTimeMs( SE031,  50 );
setPitch( spep_10 + 36, SE031, -500 );
setTimeStretch( SE031, 0.67, 10, 1 );
SE032 = playSe( spep_10 + 36, 1038 );
setSeVolumeByWorkId( spep_10 + 36, SE032, 178 );
stopSe( spep_10 + 62, SE032, 38 );

--気弾大きくなる１
SE033 = playSe( spep_10 + 50, 1072,"",0.7 );
setSeVolumeByWorkId( spep_10 + 50, SE033, 158 );


-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;
------------------------------------------------------
--気弾が迫る(1回目)
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_11 + 0, SP_14x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_11 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, approaching, -1.0, 1.0 );
setEffScaleKey( spep_11 + 56, approaching, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, approaching, 0 );
setEffRotateKey( spep_11 + 56, approaching, 0 );
setEffAlphaKey( spep_11 + 0, approaching, 255 );
setEffAlphaKey( spep_11 +54, approaching, 255 );
setEffAlphaKey( spep_11 +55, approaching, 255 );
setEffAlphaKey( spep_11 + 56, approaching, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_11-3 + 12,  10012, 26, 0x100, -1, 0, -96.2, 311.5 );--ズオッ
setEffShake( spep_11-3 + 12, ctzuo, 26, 10 );
setEffMoveKey( spep_11-3 + 12, ctzuo, -96.2, 311.5 , 0 );
setEffMoveKey( spep_11-3 + 14, ctzuo, -107.8, 332.1 , 0 );
setEffMoveKey( spep_11-3 + 16, ctzuo, -127.3, 348.9 , 0 );
setEffMoveKey( spep_11-3 + 18, ctzuo, -140.4, 368.4 , 0 );
setEffMoveKey( spep_11-3 + 20, ctzuo, -142.8, 394.6 , 0 );
setEffMoveKey( spep_11-3 + 22, ctzuo, -142.7, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 24, ctzuo, -142.7, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 26, ctzuo, -142.6, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 28, ctzuo, -153.5, 387.7 , 0 );
setEffMoveKey( spep_11-3 + 30, ctzuo, -153.5, 387.7 , 0 );
setEffMoveKey( spep_11-3 + 32, ctzuo, -142.5, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 34, ctzuo, -142.5, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 36, ctzuo, -142.4, 394.7 , 0 );
setEffMoveKey( spep_11-3 + 38, ctzuo, -142.4, 394.7 , 0 );

setEffScaleKey( spep_11-3 + 12, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_11-3 + 14, ctzuo, 1.24, 1.24 );
setEffScaleKey( spep_11-3 + 16, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_11-3 + 18, ctzuo, 1.93, 1.93 );
setEffScaleKey( spep_11-3 + 20, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_11-3 + 22, ctzuo, 2.29, 2.29 );
setEffScaleKey( spep_11-3 + 24, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_11-3 + 26, ctzuo, 2.32, 2.32 );
setEffScaleKey( spep_11-3 + 28, ctzuo, 2.33, 2.33 );
setEffScaleKey( spep_11-3 + 30, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_11-3 + 32, ctzuo, 2.36, 2.36 );
setEffScaleKey( spep_11-3 + 34, ctzuo, 2.37, 2.37 );
setEffScaleKey( spep_11-3 + 36, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_11-3 + 38, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_11-3 + 12, ctzuo, -6 );
setEffRotateKey( spep_11-3 + 14, ctzuo, -9 );
setEffRotateKey( spep_11-3 + 16, ctzuo, -12 );
setEffRotateKey( spep_11-3 + 18, ctzuo, -15 );
setEffRotateKey( spep_11-3 + 20, ctzuo, -18 );
setEffRotateKey( spep_11-3 + 26, ctzuo, -18 );
setEffRotateKey( spep_11-3 + 28, ctzuo, -17.9 );
setEffRotateKey( spep_11-3 + 38, ctzuo, -17.9 );

setEffAlphaKey( spep_11-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_11-3 + 38, ctzuo, 255 );

--SE
--気弾大きくなる１
SE034 = playSe( spep_11 + 0, 1241,"",0.7 );
SE035 = playSe( spep_11 + 0, 44,"",0.7 );
setPitch( spep_11 + 0, SE035, -600 );
setTimeStretch( SE035, 0.6, 10, 1 );
stopSe( spep_11 + 20, SE035, 48 );



-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 56;
------------------------------------------------------
-- 気弾を弾く(クリリン)
------------------------------------------------------
-- ** エフェクト等 ** --
flip2 = entryEffect( spep_12 + 0, SP_15x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, flip2, 0, 0, 0 );
setEffMoveKey( spep_12 + 56, flip2, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, flip2, -1.0, 1.0 );
setEffScaleKey( spep_12 + 56, flip2, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, flip2, 0 );
setEffRotateKey( spep_12 + 56, flip2, 0 );
setEffAlphaKey( spep_12 + 0, flip2, 255 );
setEffAlphaKey( spep_12 + 54, flip2, 255 );
setEffAlphaKey( spep_12 + 55, flip2, 255 );
setEffAlphaKey( spep_12 + 56, flip2, 0 );

--SE
--クリリン気弾投げる2
SE036 = playSe( spep_12 + 24, 1256 );
setSeVolumeByWorkId( spep_12 + 24, SE036, 0 );
setSeVolumeByWorkId( spep_12 + 25, SE036, 17.7 );
setSeVolumeByWorkId( spep_12 + 26, SE036, 35.4 );
setSeVolumeByWorkId( spep_12 + 27, SE036, 53.1 );
setSeVolumeByWorkId( spep_12 + 28, SE036, 71);
setStartTimeMs( SE036,  50 );
setPitch( spep_12 + 24, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );
SE037 = playSe( spep_12 + 24, 1027 );
setSeVolumeByWorkId( spep_12 + 24, SE037, 77 );
SE038 = playSe( spep_12 + 26, 1038 );
setSeVolumeByWorkId( spep_12 + 26, SE038, 124 );
stopSe( spep_12 + 50, SE038, 40 );

--気弾大きくなる2
SE039 = playSe( spep_12 + 30, 1072,"",0.7 );
setSeVolumeByWorkId( spep_12 + 30, SE039, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 56;
------------------------------------------------------
-- 気弾が迫る(2回目)
------------------------------------------------------
-- ** エフェクト等 ** --
approaching2 = entryEffect( spep_13 + 0, SP_16x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, approaching2, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, approaching2, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, approaching2, -1.0, 1.0 );
setEffScaleKey( spep_13 + 56, approaching2, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, approaching2, 0 );
setEffRotateKey( spep_13 + 56, approaching2, 0 );
setEffAlphaKey( spep_13 + 0, approaching2, 255 );
setEffAlphaKey( spep_13 +54, approaching2, 255 );
setEffAlphaKey( spep_13 +55, approaching2, 255 );
setEffAlphaKey( spep_13 + 56, approaching2, 0 );

ctzuo2 = entryEffectLife( spep_13-3 + 10,  10012, 28, 0x100, -1, 0, 147.6, 361.5 );--ズオッ
setEffShake( spep_13-3 + 10, ctzuo2, 28, 10 );
setEffMoveKey( spep_13-3 + 10, ctzuo2, 147.6, 361.5 , 0 );
setEffMoveKey( spep_13-3 + 12, ctzuo2, 136, 382.1 , 0 );
setEffMoveKey( spep_13-3 + 14, ctzuo2, 116.5, 398.8 , 0 );
setEffMoveKey( spep_13-3 + 16, ctzuo2, 103.4, 418.3 , 0 );
setEffMoveKey( spep_13-3 + 18, ctzuo2, 101, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 20, ctzuo2, 101.1, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 22, ctzuo2, 101.1, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 24, ctzuo2, 101.2, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 26, ctzuo2, 90.3, 437.7 , 0 );
setEffMoveKey( spep_13-3 + 28, ctzuo2, 90.3, 437.6 , 0 );
setEffMoveKey( spep_13-3 + 30, ctzuo2, 101.3, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 32, ctzuo2, 101.3, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 34, ctzuo2, 101.4, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 36, ctzuo2, 101.4, 444.6 , 0 );
setEffMoveKey( spep_13-3 + 38, ctzuo2, 62.1, 445 , 0 );

setEffScaleKey( spep_13-3 + 10, ctzuo2, 0.9, 0.9 );
setEffScaleKey( spep_13-3 + 12, ctzuo2, 1.24, 1.24 );
setEffScaleKey( spep_13-3 + 14, ctzuo2, 1.59, 1.59 );
setEffScaleKey( spep_13-3 + 16, ctzuo2, 1.93, 1.93 );
setEffScaleKey( spep_13-3 + 18, ctzuo2, 2.28, 2.28 );
setEffScaleKey( spep_13-3 + 20, ctzuo2, 2.29, 2.29 );
setEffScaleKey( spep_13-3 + 22, ctzuo2, 2.31, 2.31 );
setEffScaleKey( spep_13-3 + 24, ctzuo2, 2.32, 2.32 );
setEffScaleKey( spep_13-3 + 26, ctzuo2, 2.33, 2.33 );
setEffScaleKey( spep_13-3 + 28, ctzuo2, 2.34, 2.34 );
setEffScaleKey( spep_13-3 + 30, ctzuo2, 2.36, 2.36 );
setEffScaleKey( spep_13-3 + 32, ctzuo2, 2.37, 2.37 );
setEffScaleKey( spep_13-3 + 34, ctzuo2, 2.38, 2.38 );
setEffScaleKey( spep_13-3 + 36, ctzuo2, 2.4, 2.4 );
setEffScaleKey( spep_13-3 + 38, ctzuo2, 3.48, 3.48 );

setEffRotateKey( spep_13-3 + 10, ctzuo2, -6 );
setEffRotateKey( spep_13-3 + 12, ctzuo2, -9 );
setEffRotateKey( spep_13-3 + 14, ctzuo2, -12 );
setEffRotateKey( spep_13-3 + 16, ctzuo2, -15 );
setEffRotateKey( spep_13-3 + 18, ctzuo2, -18 );
setEffRotateKey( spep_13-3 + 24, ctzuo2, -18 );
setEffRotateKey( spep_13-3 + 26, ctzuo2, -17.9 );
setEffRotateKey( spep_13-3 + 38, ctzuo2, -17.9 );

setEffAlphaKey( spep_13-3 + 10, ctzuo2, 255 );
setEffAlphaKey( spep_13-3 + 36, ctzuo2, 255 );
setEffAlphaKey( spep_13-3 + 38, ctzuo2, 170 );

--SE
--気弾大きくなる2
SE040 = playSe( spep_13 + 0, 1182,"",0.7 );
setSeVolumeByWorkId( spep_13 + 0, SE040, 0 );
setSeVolumeByWorkId( spep_13 + 1, SE040, 23.6 );
setSeVolumeByWorkId( spep_13 + 2, SE040, 47.2 );
setSeVolumeByWorkId( spep_13 + 3, SE040, 70.8 );
setSeVolumeByWorkId( spep_13 + 4, SE040, 94.4 );
setSeVolumeByWorkId( spep_13 + 5, SE040, 118 );
setSeVolumeByWorkId( spep_13 + 6, SE040, 141 );
setStartTimeMs( SE040,  117 );
SE041 = playSe( spep_13 + 0, 1241,"",0.7 );
setSeVolumeByWorkId( spep_13 + 4, SE042, 126 );
SE042 = playSe( spep_13 + 4, 8,"",0.7 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 56;
------------------------------------------------------
-- 18号顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_14 + 0, SP_17x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_14 + 46, face, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, face, -1.0, 1.0 );
setEffScaleKey( spep_14 + 46, face, -1.0, 1.0 );
setEffRotateKey( spep_14 + 0, face, 0 );
setEffRotateKey( spep_14 + 46, face, 0 );
setEffAlphaKey( spep_14 + 0, face, 255 );
setEffAlphaKey( spep_14 +44, face, 255 );
setEffAlphaKey( spep_14 +45, face, 255 );
setEffAlphaKey( spep_14 + 46, face, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_14-3 + 12,  906, 36, 0x100, -1, 0, 0, 2 );
setEffShake( spep_14-3 + 12, shuchusen7, 36, 20 );
setEffMoveKey( spep_14-3 + 12,shuchusen7, 100, 2 , 0 );
setEffMoveKey( spep_14-3 + 48,shuchusen7, 100, 2 , 0 );

setEffScaleKey( spep_14-3 + 12,shuchusen7, 1.56, 1.56 );
setEffScaleKey( spep_14-3 + 48,shuchusen7, 1.56, 1.56 );

setEffRotateKey( spep_14-3 + 12,shuchusen7, 180 );
setEffRotateKey( spep_14-3 + 48,shuchusen7, 180 );

setEffAlphaKey( spep_14-3 + 12,shuchusen7, 255 )
setEffAlphaKey( spep_14-3 + 48,shuchusen7, 255 )

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_15 = spep_14 + 46;
------------------------------------------------------
-- 気弾を放つ(18号)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan2 = entryEffect( spep_15 + 0, SP_18x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, kidan2, 0, 0, 0 );
setEffMoveKey( spep_15 + 96, kidan2, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, kidan2, -1.0, 1.0 );
setEffScaleKey( spep_15 + 96, kidan2, -1.0, 1.0 );
setEffRotateKey( spep_15 + 0, kidan2, 0 );
setEffRotateKey( spep_15 + 96, kidan2, 0 );
setEffAlphaKey( spep_15 + 0, kidan2, 255 );
setEffAlphaKey( spep_15 + 94, kidan2, 255 );
setEffAlphaKey( spep_15 + 95, kidan2, 255 );
setEffAlphaKey( spep_15 + 96, kidan2, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_15-3 + 58,  906, 42, 0x100, -1, 0, 100, 2 );
setEffShake( spep_15-3 + 58, shuchusen8, 36, 20 );
setEffMoveKey( spep_15-3 + 58, shuchusen8, 100, 2 , 0 );
setEffMoveKey( spep_15-3 + 100, shuchusen8, 100, 2 , 0 );

setEffScaleKey( spep_15-3 + 58, shuchusen8, 1.17, 1.17 );
setEffScaleKey( spep_15-3 + 100, shuchusen8, 1.17, 1.17 );

setEffRotateKey( spep_15-3 + 58, shuchusen8, 180 );
setEffRotateKey( spep_15-3 + 100, shuchusen8, 180 );

setEffAlphaKey( spep_15-3 + 58, shuchusen8, 255 );
setEffAlphaKey( spep_15-3 + 100, shuchusen8, 255 );

--SE
--18号振りかぶる
SE043 = playSe( spep_15 + 0, 1265 );
stopSe( spep_15 + 44, SE043, 22 );
SE044 = playSe( spep_15 + 0, 1004 );
SE045 = playSe( spep_15 + 2, 1003 );
setSeVolumeByWorkId( spep_15 + 2, SE045, 81 );

--18号機弾投げる2
SE046 = playSe( spep_15 + 42, 1256 );
setSeVolumeByWorkId( spep_15 + 42, SE046, 0 );
setSeVolumeByWorkId( spep_15 + 43, SE046, 18.5 );
setSeVolumeByWorkId( spep_15 + 44, SE046, 50 );
setSeVolumeByWorkId( spep_15 + 45, SE046, 100 );
setSeVolumeByWorkId( spep_15 + 46, SE046, 200 );
setStartTimeMs( SE046,  67 );
setPitch( spep_15 + 42, SE046, -500 );
setTimeStretch( SE046, 0.67, 10, 1 );
SE047 = playSe( spep_15 + 40, 1027 );
setSeVolumeByWorkId( spep_15 + 40, SE047, 86 );
SE048 = playSe( spep_15 + 44, 1038 );
setSeVolumeByWorkId( spep_15 + 44, SE048, 123 );
stopSe( spep_15 + 68, SE048, 40 );
SE049 = playSe( spep_15 + 44, 1254 );
setSeVolumeByWorkId( spep_15 + 44, SE049, 100 );
SE050 = playSe( spep_15 + 52, 1212 );
setSeVolumeByWorkId( spep_15 + 52, SE050, 80 );

-- ** くろ背景 ** --
entryFadeBg( spep_15 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_16 = spep_15 + 96;
------------------------------------------------------
-- クリリンが叫ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
cry = entryEffect( spep_16 + 0, SP_19x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_16 + 0, cry, 0, 0, 0 );
setEffMoveKey( spep_16 + 56, cry, 0, 0, 0 );
setEffScaleKey( spep_16 + 0, cry, -1.0, 1.0 );
setEffScaleKey( spep_16 + 56, cry, -1.0, 1.0 );
setEffRotateKey( spep_16 + 0, cry, 0 );
setEffRotateKey( spep_16 + 56, cry, 0 );
setEffAlphaKey( spep_16 + 0, cry, 255 );
setEffAlphaKey( spep_16 + 54, cry, 255 );
setEffAlphaKey( spep_16 + 55, cry, 255 );
setEffAlphaKey( spep_16 + 56, cry, 0 );

--集中線
shuchusen9 = entryEffectLife( spep_16 + 0,  906, 56, 0x100, -1, 0, 50, 1.8 );
setEffShake( spep_16 + 0, shuchusen9, 56, 20 );
setEffMoveKey( spep_16 + 0, shuchusen9, 50, 1.8 , 0 );
setEffMoveKey( spep_16 + 56, shuchusen9, 50, 1.8 , 0 );

setEffScaleKey( spep_16 + 0, shuchusen9, 1.56, 1.56 );
setEffScaleKey( spep_16 + 56, shuchusen9, 1.56, 1.56 );

setEffRotateKey( spep_16 + 0, shuchusen9, 180 );
setEffRotateKey( spep_16 + 56, shuchusen9, 180 );

setEffAlphaKey( spep_16 + 0, shuchusen9, 255 );
setEffAlphaKey( spep_16 + 56, shuchusen9, 255 );

--SE
--18号機弾投げる2
stopSe( spep_16 + 18, SE050, 38 );

--クリリンアップ
SE051 = playSe( spep_16 + 0, 1278 );
setSeVolumeByWorkId( spep_16 + 0, SE051, 78 );
SE052 = playSe( spep_16 + 4, 9 );
setSeVolumeByWorkId( spep_16 + 4, SE052, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_16 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_17 = spep_16 + 56;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching3 = entryEffect( spep_17 + 0, SP_20x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_17 + 0, approaching3, 0, 0, 0 );
setEffMoveKey( spep_17 + 36, approaching3, 0, 0, 0 );
setEffScaleKey( spep_17 + 0, approaching3, -1.0, 1.0 );
setEffScaleKey( spep_17 + 36, approaching3, -1.0, 1.0 );
setEffRotateKey( spep_17 + 0, approaching3, 0 );
setEffRotateKey( spep_17 + 36, approaching3, 0 );
setEffAlphaKey( spep_17 + 0, approaching3, 255 );
setEffAlphaKey( spep_17 +34, approaching3, 255 );
setEffAlphaKey( spep_17 +35, approaching3, 255 );
setEffAlphaKey( spep_17 + 36, approaching3, 0 );

--集中線
shuchusen10 = entryEffectLife( spep_17 + 0,  906, 36, 0x100, -1, 0, 100, 2 );
setEffShake( spep_17 + 0, shuchusen10, 36, 20 );
setEffMoveKey( spep_17 + 0, shuchusen10, 100, 2 , 0 );
setEffMoveKey( spep_17 + 36, shuchusen10, 100, 2 , 0 );

setEffScaleKey( spep_17 + 0, shuchusen10, 1.56, 1.56 );
setEffScaleKey( spep_17 + 36, shuchusen10, 1.56, 1.56 );

setEffRotateKey( spep_17 + 0, shuchusen10, 180 );
setEffRotateKey( spep_17 + 36, shuchusen10, 180 );

setEffAlphaKey( spep_17 + 0, shuchusen10, 255 );
setEffAlphaKey( spep_17 + 36, shuchusen10, 255 );

--SE
--クリリンアップ
stopSe( spep_17 + 30, SE051, 34 );

--気弾飛んでいく
SE053 = playSe( spep_17 + 0, 1272 );
setSeVolumeByWorkId( spep_17 + 0, SE053, 63 );
setPitch( spep_17 + 0, SE053, 500 );
setTimeStretch( SE053, 1.33, 10, 1 );
SE054 = playSe( spep_17 + 0, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_17 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_18 = spep_17 + 36;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_18 + 0, SP_21x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_18 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_18 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_18 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_18 + 120, finish, -1.0, 1.0 );
setEffRotateKey( spep_18 + 0, finish, 0 );
setEffRotateKey( spep_18 + 120, finish, 0 );
setEffAlphaKey( spep_18 + 0, finish, 255 );
setEffAlphaKey( spep_18 + 120, finish, 255 );

--集中線
shuchusen11 = entryEffectLife( spep_18 + 0,  906, 118, 0x100, -1, 0, 50, 2 );
setEffShake( spep_18 + 0, shuchusen11, 118, 20 );
setEffMoveKey( spep_18 + 0, shuchusen11, 50, 2 , 0 );
setEffMoveKey( spep_18 + 118, shuchusen11, 50, 2 , 0 );

setEffScaleKey( spep_18 + 0, shuchusen11, 1.56, 1.56 );
setEffScaleKey( spep_18 + 118, shuchusen11, 1.56, 1.56 );

setEffRotateKey( spep_18 + 0, shuchusen11, 180 );
setEffRotateKey( spep_18 + 118, shuchusen11, 180 );

setEffAlphaKey( spep_18 + 0, shuchusen11, 255 );
setEffAlphaKey( spep_18 + 118, shuchusen11, 255 );

--爆発
SE055 = playSe( spep_18 + 0, 1159 );
setSeVolumeByWorkId( spep_18 + 0, SE055, 77 );
SE056 = playSe( spep_18 + 0, 1023 );

-- ** ダメージ表示 ** --
dealDamage( spep_18 + 10 );
endPhase( spep_18 + 110 );
end