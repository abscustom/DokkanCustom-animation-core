--1023420:超サイヤ人孫悟飯(未来)&トランクス(少年期)(未来)/超サイヤ人孫悟飯(未来)_爆裂乱舞
--sp_effect_b1_00179
--sp2303

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 158739	--構える	ef_001
SP_02 = 158740	--画面手前に飛ぶ〜パンチ	ef_003		敵の手前に表示
SP_03 = 158742	--画面手前に飛ぶ〜パンチ	ef_003_back		敵の奥に表示
SP_04 = 158744	--蹴り	ef_004		敵の手前に表示
SP_05 = 158746	--蹴り	ef_004_back		敵の奥に表示
SP_06 = 158748	--画面手前に飛ぶ〜連続攻撃	ef_005		敵の手前に表示
SP_07 = 158750	--画面手前に飛ぶ〜連続攻撃	ef_005_back		敵の奥に表示
SP_08 = 158752	--蹴り〜フィニッシュ	ef_006		敵の手前に表示
SP_09 = 158754	--蹴り〜フィニッシュ	ef_006_back		敵の奥に表示

--エフェクト(敵)
SP_10 = 158741	--画面手前に飛ぶ〜パンチ	ef_003_r		敵の手前に表示 敵側
SP_11 = 158743	--画面手前に飛ぶ〜パンチ	ef_003_back_r		敵の奥に表示 敵側
SP_12 = 158745	--蹴り	ef_004_r		敵の手前に表示 敵側
SP_13 = 158747	--蹴り	ef_004_back_r		敵の奥に表示 敵側
SP_14 = 158749	--画面手前に飛ぶ〜連続攻撃	ef_005_r		敵の手前に表示 敵側
SP_15 = 158751	--画面手前に飛ぶ〜連続攻撃	ef_005_back_r		敵の奥に表示 敵側
SP_16 = 158753	--蹴り〜フィニッシュ	ef_006_r		敵の手前に表示 敵側
SP_17 = 158755	--蹴り〜フィニッシュ	ef_006_back_r		敵の奥に表示 敵側


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;

------------------------------------------------------
-- 構える(136 -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --構える	ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 136 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 136 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 136 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 136 -5, base1, 255);
setEffAlphaKey( spep_1 + 136 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 60;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 144, 0, 16, -1);	--環境音
setSeVolumeByWorkId( spep_1 + 0, SE001, 40 );

SE002 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE002, 73 );

SE003 = playSeVer2( spep_1 + 52, 1233, "", 0, 0, 0, -1);	--構える

SE004 = playSeVer2( spep_1 + 64, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE005 = playSeVer2( spep_1 + 64, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_1 + 64, SE005, 79 );


-- ** 次の準備 ** --
spep_c = spep_1 + 136 -4;


-------------------------------------------------
--カードカットイン（94F）
-------------------------------------------------

-- ** カードカットイン ** --
--speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speffc, 1, 1);
--setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
--setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 画面手前に飛ぶ〜パンチ（104 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --画面手前に飛ぶ〜パンチ	ef_003
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 104 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 104 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 104 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 104 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 104 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --画面手前に飛ぶ〜パンチ	ef_003_back
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 104 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 104 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 104 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 104 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 104 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2 + 0, 1, 37, 21.9 , 0 );

sRate = 1.2;
setScaleKey( spep_2 -3 + 0, 1, 2.4 *sRate, 2.4 *sRate );

setRotateKey( spep_2 + 0, 1, -24.2 );


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);	--向かっていく

SE008 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);	--向かっていく
setSeVolumeByWorkId( spep_2 + 0, SE008, 56 );
setPitch( spep_2 + 0, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );

SE009 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);	--向かっていく
setTimeStretch( SE009, 1.11, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
setDisp( spep_2 -3 + 60, 1, 1 ); --impact
setDisp( spep_2 -4 + 104, 1, 0 );

setMoveKey( spep_2 -3 + 60, 1, 104.8, 91.1 , 0 ); --impact
setMoveKey( spep_2 -3 + 62, 1, 111.2, 114 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 111.3, 41.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 91.6, 46.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 119.1, 36.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 93.2, 94.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 115.3, 80.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 50, 67.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 127.4, 47.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 116.9, 71.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 134.2, 83.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 115.7, 94.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 174.6, 139.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 210.5, 153.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 239.2, 164.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 261.6, 172.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 278.5, 179 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 290.5, 183.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 298.6, 186.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 303.5, 188.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 306, 189.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 306.9, 189.7 , 0 );
setMoveKey( spep_2 -5 + 104, 1, 306.9, 189.7 , 0 );

setScaleKey( spep_2 -3 + 60, 1, 2.4 *sRate, 2.4 *sRate ); --impact
setScaleKey( spep_2 -5 + 104, 1, 2.4 *sRate, 2.4 *sRate );

setRotateKey( spep_2 -3 + 60, 1, -24.2 ); --impact
setRotateKey( spep_2 -5 + 104, 1, -24.2 );


-- ** 音 ** --
SE010 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);	--パンチ
setSeVolumeByWorkId( spep_2 + 54, SE010, 188 );

SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);	--パンチ

SE012 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);	--パンチ
setSeVolumeByWorkId( spep_2 + 60, SE012, 79 );

SE013 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);	--パンチ


-- ** 次の準備 ** --
spep_3 = spep_2 + 104 -4;


-------------------------------------------------
-- 蹴り（116 -4）
-------------------------------------------------


-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 116 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 116 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 116 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 116 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 116 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 116 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 116 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 116 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 116 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 116 -4, base3_b, 0);


-- ** 音 ** --
SE014 = playSeVer2( spep_3 + 0 -4, 1116, "",spep_3 + 354 -318 -4, 0, 12, 0.6);--振りかぶる

SE015 = playSeVer2( spep_3 + 4 -4, 1188, "",spep_3 + 366 -318 -4, 8, 16, 0.6);	--振りかぶる
setStartTimeMs( SE015,  67 );

SE016 = playSeVer2( spep_3 + 32 -4, 1004, "", 0, 0, 0, -1);	--振りかぶる

SE017 = playSeVer2( spep_3 + 44 -4, 1120, "", 0, 0, 0, -1);	--蹴り上げる

SE018 = playSeVer2( spep_3 + 68 -4, 1027, "", 0, 0, 0, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 68 -4, SE018, 81 );



-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 0 );
setDisp( spep_3 -3 + 44, 1, 1 );
setDisp( spep_3 -3 + 80, 1, 0 );
-- setDisp( spep_3 -4 + 116, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 19.5, -21.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 19.5, -21.6 , 0 ); --impact
setMoveKey( spep_3 -3 + 48, 1, 23.5, -21.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 34.7, -94.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -8.5, 24.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -24.3, -69 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 19.6, -55.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 74.6, -9.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 59.9, 48.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 103.3, 19.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 141.5, -6.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 40.7, -27.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 328.9, -577.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 493.6, -846.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 599.1, -1122.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 582.3, -1277.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 695.9, -1357 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 691, -1356.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 703.4, -1342.7 , 0 );

sRate = 0.4;
setScaleKey( spep_3 + 0, 1, 5.34 *sRate, 5.34 *sRate );
setScaleKey( spep_3 -3 + 44, 1, 5.34 *sRate, 5.34 *sRate ); --impact
setScaleKey( spep_3 -3 + 48, 1, 5.43 *sRate, 5.43 *sRate );
setScaleKey( spep_3 -3 + 50, 1, 5.53 *sRate, 5.53 *sRate );
setScaleKey( spep_3 -3 + 52, 1, 5.62 *sRate, 5.62 *sRate );
setScaleKey( spep_3 -3 + 54, 1, 5.72 *sRate, 5.72 *sRate );
setScaleKey( spep_3 -3 + 56, 1, 5.82 *sRate, 5.82 *sRate );
setScaleKey( spep_3 -3 + 58, 1, 5.88 *sRate, 5.88 *sRate );
setScaleKey( spep_3 -3 + 60, 1, 5.94 *sRate, 5.94 *sRate );
setScaleKey( spep_3 -3 + 62, 1, 6 *sRate, 6 *sRate );
setScaleKey( spep_3 -3 + 64, 1, 6.05 *sRate, 6.05 *sRate );
setScaleKey( spep_3 -3 + 66, 1, 6.11 *sRate, 6.11 *sRate );
setScaleKey( spep_3 -3 + 68, 1, 7.48 *sRate, 7.48 *sRate );
setScaleKey( spep_3 -3 + 70, 1, 8.44 *sRate, 8.44 *sRate );
setScaleKey( spep_3 -3 + 72, 1, 9.06 *sRate, 9.06 *sRate );
setScaleKey( spep_3 -3 + 74, 1, 9.4 *sRate, 9.4 *sRate );
setScaleKey( spep_3 -3 + 76, 1, 9.55 *sRate, 9.55 *sRate );
setScaleKey( spep_3 -3 + 78, 1, 9.57 *sRate, 9.57 *sRate );
setScaleKey( spep_3 -3 + 80, 1, 9.52 *sRate, 9.52 *sRate );

setRotateKey( spep_3 + 0, 1, 45 );
setRotateKey( spep_3 -3 + 44, 1, 45 );
setRotateKey( spep_3 -3 + 80, 1, 45 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 116 -4;


-------------------------------------------------
-- 画面手前に飛ぶ〜連続攻撃（148 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --画面手前に飛ぶ〜連続攻撃
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 148 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 148 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 148 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --画面手前に飛ぶ〜連続攻撃
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 148 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 148 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 148 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 0 );
setDisp( spep_4 -3 + 56, 1, 1 );
setDisp( spep_4 -3 + 134, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 64, 1, 106 );
-- changeAnime( spep_4 -3 + 78, 1, 104 );
changeAnime( spep_4 -3 + 86, 1, 108 );
-- changeAnime( spep_4 -3 + 108, 1, 104 );
changeAnime( spep_4 -3 + 118, 1, 106 );

setMoveKey( spep_4 + 0, 1, -38.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -38.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -34.8, -14.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -31.2, -14.7 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -27.5, -14.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -21.2, -29.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 4.5, -38.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 29.1, 25.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 1, -48.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 5.7, -58.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -3.2, -33.6 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 10.7, -29.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -32.9, -51.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -27, -52.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -21.2, -53.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -15.6, -54.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 29.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 53.8, -1.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 54.4, 34.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 84.4, 59 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 72.2, 34.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 84.9, 30.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 85.7, 18.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 80.8, 12.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 74.9, 6.6 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 68.5, 0.2 , 0 );
setMoveKey( spep_4 -3 + 107, 1, 68.6, 7.6 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -21 +80, -2.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -21.5 +70, 4.6 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -22 +60, 11.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -22.6 +60, 19.1 , 0 );
setMoveKey( spep_4 -3 + 117, 1, -23.1 +60, 26.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -35.3 +60, 97.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 33, 144 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 30.2, 112.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -13.2, 106.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 76.5, 147.1 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 431.9, 305.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 521.6, 324.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 550.9, 360.1 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 568.4, 376.9 , 0 );

sRate1 = 1.25;
sRate2 = 1.35;
setScaleKey( spep_4 + 0, 1, 1.61 *sRate1, 1.61 *sRate1 );
setScaleKey( spep_4 -3 + 56, 1, 1.61 *sRate1, 1.61 *sRate1 );
setScaleKey( spep_4 -3 + 58, 1, 1.63 *sRate1, 1.63 *sRate1 );
setScaleKey( spep_4 -3 + 60, 1, 1.65 *sRate1, 1.65 *sRate1 );
setScaleKey( spep_4 -3 + 63, 1, 1.68 *sRate1, 1.68 *sRate1 );
setScaleKey( spep_4 -3 + 64, 1, 1.7 *sRate1, 1.7 *sRate1 );
setScaleKey( spep_4 -3 + 66, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 68, 1, 1.74 *sRate1, 1.74 *sRate1 );
setScaleKey( spep_4 -3 + 70, 1, 1.76 *sRate1, 1.76 *sRate1 );
setScaleKey( spep_4 -3 + 72, 1, 1.78 *sRate1, 1.78 *sRate1 );
setScaleKey( spep_4 -3 + 74, 1, 1.81 *sRate1, 1.81 *sRate1 );
setScaleKey( spep_4 -3 + 77, 1, 1.79 *sRate1, 1.79 *sRate1 );
setScaleKey( spep_4 -3 + 78, 1, 1.77 *sRate1, 1.77 *sRate1 );
setScaleKey( spep_4 -3 + 80, 1, 1.76 *sRate1, 1.76 *sRate1 );
setScaleKey( spep_4 -3 + 82, 1, 1.74 *sRate1, 1.74 *sRate1 );
setScaleKey( spep_4 -3 + 84, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 85, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 86, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 87, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 88, 1, 1.75 *sRate2, 1.75 *sRate2 );
setScaleKey( spep_4 -3 + 90, 1, 1.76 *sRate2, 1.76 *sRate2 );
setScaleKey( spep_4 -3 + 92, 1, 1.77 *sRate2, 1.77 *sRate2 );
setScaleKey( spep_4 -3 + 94, 1, 1.79 *sRate2, 1.79 *sRate2 );
setScaleKey( spep_4 -3 + 96, 1, 1.76 *sRate2, 1.76 *sRate2 );
setScaleKey( spep_4 -3 + 98, 1, 1.74 *sRate2, 1.74 *sRate2 );
setScaleKey( spep_4 -3 + 100, 1, 1.71 *sRate2, 1.71 *sRate2 );
setScaleKey( spep_4 -3 + 102, 1, 1.69 *sRate2, 1.69 *sRate2 );
setScaleKey( spep_4 -3 + 104, 1, 1.66 *sRate2, 1.66 *sRate2 );
setScaleKey( spep_4 -3 + 107, 1, 1.67 *sRate2, 1.67 *sRate2 );
setScaleKey( spep_4 -3 + 108, 1, 1.69 *sRate2, 1.69 *sRate2 );
setScaleKey( spep_4 -3 + 110, 1, 1.7 *sRate2, 1.7 *sRate2 );
setScaleKey( spep_4 -3 + 112, 1, 1.71 *sRate2, 1.71 *sRate2 );
setScaleKey( spep_4 -3 + 114, 1, 1.72 *sRate2, 1.72 *sRate2 );
setScaleKey( spep_4 -3 + 117, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 118, 1, 1.86 *sRate1, 1.86 *sRate1 );
setScaleKey( spep_4 -3 + 120, 1, 1.99 *sRate1, 1.99 *sRate1 );
setScaleKey( spep_4 -3 + 134, 1, 1.99 *sRate1, 1.99 *sRate1 );

setRotateKey( spep_4 + 0, 1, -0.3 );
setRotateKey( spep_4 -3 + 56, 1, -0.3 );
setRotateKey( spep_4 -3 + 63, 1, -0.3 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
setRotateKey( spep_4 -3 + 77, 1, 0 );
setRotateKey( spep_4 -3 + 78, 1, -0.3 );
setRotateKey( spep_4 -3 + 134, 1, -0.3 );


-- ** 音 ** --
SE019 = playSeVer2( spep_4 + 14 -8, 1182, "", 0, 0, 0, -1);	--トランクス向かってくる

SE020 = playSeVer2( spep_4 + 14 -8, 1019, "",spep_4 + 74 -4, 0, 12, -1);	--トランクス向かってくる

SE021 = playSeVer2( spep_4 + 14 -8, 9, "", 0, 0, 0, -1);	--トランクス向かってくる

SE022 = playSeVer2( spep_4 + 62 -8, 1189, "", 0, 0, 0, -1);	 --ラッシュ

SE023 = playSeVer2( spep_4 + 68 -8, 1000, "", 0, 0, 0, -1);	 --ラッシュ

SE024 = playSeVer2( spep_4 + 68 -8, 1110, "", 0, 0, 0, -1);	 --ラッシュ
setSeVolumeByWorkId( spep_4 + 68 -8, SE024, 81 );

SE025 = playSeVer2( spep_4 + 88 -8, 1001, "", 0, 0, 0, -1);	 --ラッシュ
setSeVolumeByWorkId( spep_4 + 88 -8, SE025, 68 );

SE026 = playSeVer2( spep_4 + 90 -8, 1010, "",spep_4 + 122 -8, 0, 20, -1);	--ラッシュ

SE027 = playSeVer2( spep_4 + 118 -8, 1003, "", 0, 0, 0, -1);	 --ラッシュ

SE028 = playSeVer2( spep_4 + 124 -8, 1009, "", 0, 0, 0, -1);	 --ラッシュ

SE029 = playSeVer2( spep_4 + 124 -8, 1000, "", 0, 0, 0, -1);	 --ラッシュ

SE030 = playSeVer2( spep_4 + 126 -8, 1110, "", 0, 0, 0, -1);	 --ラッシュ

SE031 = playSeVer2( spep_4 + 126 -8, 1183, "",spep_4 + 230, 0, 10, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_4 + 126 -8, SE031, 62 );



-- ** 次の準備 ** --
spep_5 = spep_4 + 148 -4;


-------------------------------------------------
-- 蹴り〜フィニッシュ（250 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0); --蹴り〜フィニッシュ
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 250 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 250 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 250 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 250 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 250 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --蹴り〜フィニッシュ
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 250 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 250 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 250 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 250 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 250 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 220, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );
changeAnime( spep_5 -3 + 48, 1, 106 );
changeAnime( spep_5 -3 + 66, 1, 108 ); --impact
changeAnime( spep_5 -3 + 100, 1, 105 );

-- setMoveKey( spep_5 -3 + 0, 1, -417.7, -494.9 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -395.8, -471.8 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -374, -449 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -352.3, -426.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -330.7, -404.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -309.1, -382.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -287.6, -360.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -266.2, -338.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -244.8, -317.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -223.6, -296.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -202.4, -276.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -181.3, -255.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -160.3, -235.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -139.4, -215.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -118.5, -196.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -97.7, -176.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -77.1, -157.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -56.5, -138.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -36, -120.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -15.6, -102.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 4.7, -84.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 24.9, -66.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 45.1, -48.9 , 0 );
setMoveKey( spep_5 -3 + 47, 1, 65.1, -31.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 412.6, 57.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 405.1, 47 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 397.2, 36.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 389, 26.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 380.5, 16.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 371.7, 6.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 362.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 353.1, -14 , 0 );
setMoveKey( spep_5 -3 + 65, 1, 343.3, -24.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 232.6, -55.6 , 0 ); --impact
setMoveKey( spep_5 -3 + 68, 1, 349.1, 83.7 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 245.8, -70.9 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 136.4, -84.4 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 288.7, -160.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 234.4, -110.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 316, -92.4 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 204.4, -9.2 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 193.5, -83.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 185.9, -88.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 232.5, -81.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 265.8, -37.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 263.5, -36.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 261.8, -36.6 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 260.5, -37 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 259.8, -37.7 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 259.7, -38.9 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 142.8, -90.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 133.5, -88 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 124.6, -86.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 116, -84.2 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 107.7, -82.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 99.8, -80.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 92.2, -79.4 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 84.9, -78 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 78, -76.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 71.3, -75.6 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 65, -74.6 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 59.1, -73.6 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 53.5, -72.8 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 48.3, -72.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 43.3, -71.5 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 38.7, -71 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 34.5, -70.6 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 30.5, -70.4 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 26.9, -70.2 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 23.7, -70.2 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 20.8, -70.3 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 18.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 143, 1, 18.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 36.7, -119.9 , 0 );
setMoveKey( spep_5 -3 + 145, 1, 36.7, -119.9 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -22.5, -3.5 , 0 );
setMoveKey( spep_5 -3 + 147, 1, -22.5, -3.5 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 58.7, -51.3 , 0 );
setMoveKey( spep_5 -3 + 149, 1, 58.7, -51.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, -25.5, -153.1 , 0 );
setMoveKey( spep_5 -3 + 151, 1, -25.5, -153.1 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 46, -91 , 0 );
setMoveKey( spep_5 -3 + 153, 1, 46, -91 , 0 );
setMoveKey( spep_5 -3 + 154, 1, -32, -13 , 0 );

sRate = 1.1;
-- setScaleKey( spep_5 -3 + 0, 1, 6.46, 6.46 );
setScaleKey( spep_5 -2 + 2, 1, 6.23 *sRate, 6.23 *sRate );
setScaleKey( spep_5 -3 + 4, 1, 6.01 *sRate, 6.01 *sRate );
setScaleKey( spep_5 -3 + 6, 1, 5.8 *sRate, 5.8  *sRate);
setScaleKey( spep_5 -3 + 8, 1, 5.58 *sRate, 5.58 *sRate );
setScaleKey( spep_5 -3 + 10, 1, 5.36 *sRate, 5.36 *sRate );
setScaleKey( spep_5 -3 + 12, 1, 5.15 *sRate, 5.15 *sRate );
setScaleKey( spep_5 -3 + 14, 1, 4.94 *sRate, 4.94 *sRate );
setScaleKey( spep_5 -3 + 16, 1, 4.73 *sRate, 4.73 *sRate );
setScaleKey( spep_5 -3 + 18, 1, 4.52 *sRate, 4.52 *sRate );
setScaleKey( spep_5 -3 + 20, 1, 4.31 *sRate, 4.31 *sRate );
setScaleKey( spep_5 -3 + 22, 1, 4.1 *sRate, 4.1 *sRate );
setScaleKey( spep_5 -3 + 24, 1, 3.9 *sRate, 3.9 *sRate );
setScaleKey( spep_5 -3 + 26, 1, 3.7 *sRate, 3.7 *sRate );
setScaleKey( spep_5 -3 + 28, 1, 3.49 *sRate, 3.49 *sRate );
setScaleKey( spep_5 -3 + 30, 1, 3.29 *sRate, 3.29 *sRate );
setScaleKey( spep_5 -3 + 32, 1, 3.1 *sRate, 3.1 *sRate );
setScaleKey( spep_5 -3 + 34, 1, 2.9 *sRate, 2.9 *sRate );
setScaleKey( spep_5 -3 + 36, 1, 2.7 *sRate, 2.7 *sRate );
setScaleKey( spep_5 -3 + 38, 1, 2.51 *sRate, 2.51 *sRate );
setScaleKey( spep_5 -3 + 40, 1, 2.32 *sRate, 2.32 *sRate );
setScaleKey( spep_5 -3 + 42, 1, 2.13 *sRate, 2.13 *sRate );
setScaleKey( spep_5 -3 + 44, 1, 1.94 *sRate, 1.94 *sRate );
setScaleKey( spep_5 -3 + 47, 1, 1.75 *sRate, 1.75 *sRate );
setScaleKey( spep_5 -3 + 48, 1, 2.57 *sRate, 2.57 *sRate );
setScaleKey( spep_5 -3 + 50, 1, 2.6 *sRate, 2.6 *sRate );
setScaleKey( spep_5 -3 + 52, 1, 2.63 *sRate, 2.63 *sRate );
setScaleKey( spep_5 -3 + 54, 1, 2.66 *sRate, 2.66 *sRate );
setScaleKey( spep_5 -3 + 56, 1, 2.69 *sRate, 2.69 *sRate );
setScaleKey( spep_5 -3 + 58, 1, 2.72 *sRate, 2.72 *sRate );
setScaleKey( spep_5 -3 + 60, 1, 2.75 *sRate, 2.75 *sRate );
setScaleKey( spep_5 -3 + 62, 1, 2.79 *sRate, 2.79 *sRate );
setScaleKey( spep_5 -3 + 65, 1, 2.82 *sRate, 2.82 *sRate );
setScaleKey( spep_5 -3 + 66, 1, 3.99 *sRate, 3.99 *sRate ); --impact
setScaleKey( spep_5 -3 + 68, 1, 3.52 *sRate, 3.52 *sRate );
setScaleKey( spep_5 -3 + 70, 1, 3.2 *sRate, 3.2 *sRate );
setScaleKey( spep_5 -3 + 72, 1, 2.97 *sRate, 2.97 *sRate );
setScaleKey( spep_5 -3 + 74, 1, 2.79 *sRate, 2.79 *sRate );
setScaleKey( spep_5 -3 + 76, 1, 2.66 *sRate, 2.66 *sRate );
setScaleKey( spep_5 -3 + 78, 1, 2.56 *sRate, 2.56 *sRate );
setScaleKey( spep_5 -3 + 80, 1, 2.48 *sRate, 2.48 *sRate );
setScaleKey( spep_5 -3 + 82, 1, 2.41 *sRate, 2.41 *sRate );
setScaleKey( spep_5 -3 + 84, 1, 2.36 *sRate, 2.36 *sRate );
setScaleKey( spep_5 -3 + 86, 1, 2.31 *sRate, 2.31 *sRate );
setScaleKey( spep_5 -3 + 88, 1, 2.27 *sRate, 2.27 *sRate );
setScaleKey( spep_5 -3 + 90, 1, 2.23 *sRate, 2.23 *sRate );
setScaleKey( spep_5 -3 + 92, 1, 2.2 *sRate, 2.2 *sRate );
setScaleKey( spep_5 -3 + 94, 1, 2.17 *sRate, 2.17 *sRate );
setScaleKey( spep_5 -3 + 96, 1, 2.14 *sRate, 2.14 *sRate );
setScaleKey( spep_5 -3 + 99, 1, 2.11 *sRate, 2.11 *sRate );
setScaleKey( spep_5 -3 + 100, 1, 1.64 *sRate, 1.64 *sRate );
setScaleKey( spep_5 -3 + 102, 1, 1.52 *sRate, 1.52 *sRate );
setScaleKey( spep_5 -3 + 104, 1, 1.41 *sRate, 1.41 *sRate );
setScaleKey( spep_5 -3 + 106, 1, 1.3 *sRate, 1.3 *sRate );
setScaleKey( spep_5 -3 + 108, 1, 1.2 *sRate, 1.2 *sRate );
setScaleKey( spep_5 -3 + 110, 1, 1.1 *sRate, 1.1 *sRate );
setScaleKey( spep_5 -3 + 112, 1, 1 *sRate, 1 *sRate );
setScaleKey( spep_5 -3 + 114, 1, 0.91 *sRate, 0.91 *sRate );
setScaleKey( spep_5 -3 + 116, 1, 0.83 *sRate, 0.83 *sRate );
setScaleKey( spep_5 -3 + 118, 1, 0.74 *sRate, 0.74 *sRate );
setScaleKey( spep_5 -3 + 120, 1, 0.67 *sRate, 0.67 *sRate );
setScaleKey( spep_5 -3 + 122, 1, 0.6 *sRate, 0.6 *sRate );
setScaleKey( spep_5 -3 + 124, 1, 0.53 *sRate, 0.53 *sRate );
setScaleKey( spep_5 -3 + 126, 1, 0.47 *sRate, 0.47 *sRate );
setScaleKey( spep_5 -3 + 128, 1, 0.41 *sRate, 0.41 *sRate );
setScaleKey( spep_5 -3 + 130, 1, 0.35 *sRate, 0.35 *sRate );
setScaleKey( spep_5 -3 + 132, 1, 0.31 *sRate, 0.31 *sRate );
setScaleKey( spep_5 -3 + 134, 1, 0.26 *sRate, 0.26 *sRate );
setScaleKey( spep_5 -3 + 136, 1, 0.22 *sRate, 0.22 *sRate );
setScaleKey( spep_5 -3 + 138, 1, 0.19 *sRate, 0.19 *sRate );
setScaleKey( spep_5 -3 + 140, 1, 0.16 *sRate, 0.16 *sRate );
setScaleKey( spep_5 -3 + 142, 1, 0.13 *sRate, 0.13 *sRate );
setScaleKey( spep_5 -3 + 144, 1, 0.11 *sRate, 0.11 *sRate );
setScaleKey( spep_5 -3 + 146, 1, 0.09 *sRate, 0.09 *sRate );
setScaleKey( spep_5 -3 + 148, 1, 0.08 *sRate, 0.08 *sRate );
setScaleKey( spep_5 -3 + 150, 1, 0.08 *sRate, 0.08 *sRate );
setScaleKey( spep_5 -3 + 152, 1, 0.07 *sRate, 0.07 *sRate );
setScaleKey( spep_5 -3 + 220, 1, 0.07 *sRate, 0.07 *sRate );

-- setRotateKey( spep_5 -3 + 0, 1, 1.9 );
setRotateKey( spep_5 -2 + 2, 1, 2 );
setRotateKey( spep_5 -3 + 4, 1, 2.1 );
setRotateKey( spep_5 -3 + 6, 1, 2.2 );
setRotateKey( spep_5 -3 + 8, 1, 2.3 );
setRotateKey( spep_5 -3 + 10, 1, 2.4 );
setRotateKey( spep_5 -3 + 12, 1, 2.5 );
setRotateKey( spep_5 -3 + 14, 1, 2.5 );
setRotateKey( spep_5 -3 + 16, 1, 2.6 );
setRotateKey( spep_5 -3 + 18, 1, 2.7 );
setRotateKey( spep_5 -3 + 20, 1, 2.8 );
setRotateKey( spep_5 -3 + 22, 1, 2.9 );
setRotateKey( spep_5 -3 + 24, 1, 3 );
setRotateKey( spep_5 -3 + 26, 1, 3.1 );
setRotateKey( spep_5 -3 + 28, 1, 3.2 );
setRotateKey( spep_5 -3 + 30, 1, 3.2 );
setRotateKey( spep_5 -3 + 32, 1, 3.3 );
setRotateKey( spep_5 -3 + 34, 1, 3.4 );
setRotateKey( spep_5 -3 + 36, 1, 3.5 );
setRotateKey( spep_5 -3 + 38, 1, 3.6 );
setRotateKey( spep_5 -3 + 40, 1, 3.7 );
setRotateKey( spep_5 -3 + 42, 1, 3.8 );
setRotateKey( spep_5 -3 + 44, 1, 3.8 );
setRotateKey( spep_5 -3 + 47, 1, 3.9 );
setRotateKey( spep_5 -3 + 48, 1, -8.4 );
setRotateKey( spep_5 -3 + 65, 1, -8.4 );
setRotateKey( spep_5 -3 + 66, 1, 21.3 ); --impact
setRotateKey( spep_5 -3 + 99, 1, 21.3 );
setRotateKey( spep_5 -3 + 100, 1, 31.6 );
setRotateKey( spep_5 -3 + 102, 1, 28.6 );
setRotateKey( spep_5 -3 + 104, 1, 25.7 );
setRotateKey( spep_5 -3 + 106, 1, 22.9 );
setRotateKey( spep_5 -3 + 108, 1, 20.2 );
setRotateKey( spep_5 -3 + 110, 1, 17.7 );
setRotateKey( spep_5 -3 + 112, 1, 15.3 );
setRotateKey( spep_5 -3 + 114, 1, 13 );
setRotateKey( spep_5 -3 + 116, 1, 10.8 );
setRotateKey( spep_5 -3 + 118, 1, 8.7 );
setRotateKey( spep_5 -3 + 120, 1, 6.8 );
setRotateKey( spep_5 -3 + 122, 1, 4.9 );
setRotateKey( spep_5 -3 + 124, 1, 3.2 );
setRotateKey( spep_5 -3 + 126, 1, 1.6 );
setRotateKey( spep_5 -3 + 128, 1, 0.1 );
setRotateKey( spep_5 -3 + 130, 1, -1.2 );
setRotateKey( spep_5 -3 + 132, 1, -2.5 );
setRotateKey( spep_5 -3 + 134, 1, -3.6 );
setRotateKey( spep_5 -3 + 136, 1, -4.6 );
setRotateKey( spep_5 -3 + 138, 1, -5.5 );
setRotateKey( spep_5 -3 + 140, 1, -6.2 );
setRotateKey( spep_5 -3 + 142, 1, -6.9 );
setRotateKey( spep_5 -3 + 144, 1, -7.4 );
setRotateKey( spep_5 -3 + 146, 1, -7.8 );
setRotateKey( spep_5 -3 + 148, 1, -8.1 );
setRotateKey( spep_5 -3 + 150, 1, -8.3 );
setRotateKey( spep_5 -3 + 152, 1, -8.4 );
setRotateKey( spep_5 -3 + 220, 1, -8.4 );


-- ** 白フェード ** --
entryFade( spep_5 -3 + 66, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 230);  --white fade
-- ** 黒フェード ** --
entryFade( spep_5 -3 + 68, 0, 2, 0, 0, 0, 0, 230);  --white fade


-- ** 音 ** --
SE032 = playSeVer2( spep_5 + 8, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE033 = playSeVer2( spep_5 + 52, 1004, "", 0, 0, 0, -1);	--蹴り落とす
setPitch( spep_5 + 52, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

SE034 = playSeVer2( spep_5 + 58, 1123, "", 0, 0, 0, -1);	--蹴り落とす

SE035 = playSeVer2( spep_5 + 88, 1121, "",spep_5 + 154, 0, 12, -1);--敵飛んでいく

SE036 = playSeVer2( spep_5 + 142, 1159, "", 0, 0, 0, -1);	--爆発

SE037 = playSeVer2( spep_5 + 142, 1024, "", 0, 0, 0, -1);	--爆発



-- ** ダメージ表示 ** --
dealDamage( spep_5 + 142);
endPhase( spep_5 + 250 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------

spep_1 = 0;

------------------------------------------------------
-- 構える(136 -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --構える	ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 136 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, -1.0, 1.0);
setEffScaleKey( spep_1 + 136 -4, base1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 136 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 136 -5, base1, 255);
setEffAlphaKey( spep_1 + 136 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 60;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 1349, "",spep_1 + 144, 0, 16, -1);	--環境音
setSeVolumeByWorkId( spep_1 + 0, SE001, 40 );

SE002 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE002, 73 );

SE003 = playSeVer2( spep_1 + 52, 1233, "", 0, 0, 0, -1);	--構える

--SE004 = playSeVer2( spep_1 + 64, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE005 = playSeVer2( spep_1 + 64, 1006, "", 0, 0, 0, -1);	--構える
setSeVolumeByWorkId( spep_1 + 64, SE005, 79 );


-- ** 次の準備 ** --
spep_c = spep_1 + 136 -4;


-------------------------------------------------
--カードカットイン（94F）
-------------------------------------------------

-- ** カードカットイン ** --
speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 画面手前に飛ぶ〜パンチ（104 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_10, 0x100, -1, 0, 0, 0); --画面手前に飛ぶ〜パンチ	ef_003
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 104 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, -1.0, 1.0);
setEffScaleKey( spep_2 + 104 -4, base2_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 104 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 104 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 104 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_11, 0x80, -1, 0, 0, 0); --画面手前に飛ぶ〜パンチ	ef_003_back
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 104 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, -1.0, 1.0);
setEffScaleKey( spep_2 + 104 -4, base2_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 104 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 104 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 104 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 0 );

changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2 + 0, 1, 37, 21.9 , 0 );

sRate = 1.2;
setScaleKey( spep_2 -3 + 0, 1, 2.4 *sRate, 2.4 *sRate );

setRotateKey( spep_2 + 0, 1, -24.2 );


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);	--向かっていく

SE008 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);	--向かっていく
setSeVolumeByWorkId( spep_2 + 0, SE008, 56 );
setPitch( spep_2 + 0, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );

SE009 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);	--向かっていく
setTimeStretch( SE009, 1.11, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
setDisp( spep_2 -3 + 60, 1, 1 ); --impact
setDisp( spep_2 -4 + 104, 1, 0 );

setMoveKey( spep_2 -3 + 60, 1, 104.8, 91.1 , 0 ); --impact
setMoveKey( spep_2 -3 + 62, 1, 111.2, 114 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 111.3, 41.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 91.6, 46.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 119.1, 36.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 93.2, 94.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 115.3, 80.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 50, 67.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 127.4, 47.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 116.9, 71.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 134.2, 83.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 115.7, 94.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 174.6, 139.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 210.5, 153.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 239.2, 164.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 261.6, 172.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 278.5, 179 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 290.5, 183.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 298.6, 186.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 303.5, 188.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 306, 189.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 306.9, 189.7 , 0 );
setMoveKey( spep_2 -5 + 104, 1, 306.9, 189.7 , 0 );

setScaleKey( spep_2 -3 + 60, 1, 2.4 *sRate, 2.4 *sRate ); --impact
setScaleKey( spep_2 -5 + 104, 1, 2.4 *sRate, 2.4 *sRate );

setRotateKey( spep_2 -3 + 60, 1, -24.2 ); --impact
setRotateKey( spep_2 -5 + 104, 1, -24.2 );


-- ** 音 ** --
SE010 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);	--パンチ
setSeVolumeByWorkId( spep_2 + 54, SE010, 188 );

SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);	--パンチ

SE012 = playSeVer2( spep_2 + 60, 1153, "", 0, 0, 0, -1);	--パンチ
setSeVolumeByWorkId( spep_2 + 60, SE012, 79 );

SE013 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);	--パンチ


-- ** 次の準備 ** --
spep_3 = spep_2 + 104 -4;


-------------------------------------------------
-- 蹴り（116 -4）
-------------------------------------------------


-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_12, 0x100, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 116 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 116 -4, base3_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 116 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 116 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 116 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_13, 0x80, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 116 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, -1.0, 1.0);
setEffScaleKey( spep_3 + 116 -4, base3_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 116 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 116 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 116 -4, base3_b, 0);


-- ** 音 ** --
SE014 = playSeVer2( spep_3 + 0 -4, 1116, "",spep_3 + 354 -318 -4, 0, 12, 0.6);--振りかぶる

SE015 = playSeVer2( spep_3 + 4 -4, 1188, "",spep_3 + 366 -318 -4, 8, 16, 0.6);	--振りかぶる
setStartTimeMs( SE015,  67 );

SE016 = playSeVer2( spep_3 + 32 -4, 1004, "", 0, 0, 0, -1);	--振りかぶる

SE017 = playSeVer2( spep_3 + 44 -4, 1120, "", 0, 0, 0, -1);	--蹴り上げる

SE018 = playSeVer2( spep_3 + 68 -4, 1027, "", 0, 0, 0, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 68 -4, SE018, 81 );



-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 0 );
setDisp( spep_3 -3 + 44, 1, 1 );
setDisp( spep_3 -3 + 80, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 19.5, -21.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 19.5, -21.6 , 0 ); --impact
setMoveKey( spep_3 -3 + 48, 1, 23.5, -21.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 34.7, -94.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -8.5, 24.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -24.3, -69 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 19.6, -55.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 74.6, -9.9 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 59.9, 48.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 103.3, 19.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 141.5, -6.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 40.7, -27.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 328.9, -577.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 493.6, -846.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 599.1, -1122.2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 582.3, -1277.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 695.9, -1357 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 691, -1356.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 703.4, -1342.7 , 0 );

sRate = 0.4;
setScaleKey( spep_3 + 0, 1, 5.34 *sRate, 5.34 *sRate );
setScaleKey( spep_3 -3 + 44, 1, 5.34 *sRate, 5.34 *sRate ); --impact
setScaleKey( spep_3 -3 + 48, 1, 5.43 *sRate, 5.43 *sRate );
setScaleKey( spep_3 -3 + 50, 1, 5.53 *sRate, 5.53 *sRate );
setScaleKey( spep_3 -3 + 52, 1, 5.62 *sRate, 5.62 *sRate );
setScaleKey( spep_3 -3 + 54, 1, 5.72 *sRate, 5.72 *sRate );
setScaleKey( spep_3 -3 + 56, 1, 5.82 *sRate, 5.82 *sRate );
setScaleKey( spep_3 -3 + 58, 1, 5.88 *sRate, 5.88 *sRate );
setScaleKey( spep_3 -3 + 60, 1, 5.94 *sRate, 5.94 *sRate );
setScaleKey( spep_3 -3 + 62, 1, 6 *sRate, 6 *sRate );
setScaleKey( spep_3 -3 + 64, 1, 6.05 *sRate, 6.05 *sRate );
setScaleKey( spep_3 -3 + 66, 1, 6.11 *sRate, 6.11 *sRate );
setScaleKey( spep_3 -3 + 68, 1, 7.48 *sRate, 7.48 *sRate );
setScaleKey( spep_3 -3 + 70, 1, 8.44 *sRate, 8.44 *sRate );
setScaleKey( spep_3 -3 + 72, 1, 9.06 *sRate, 9.06 *sRate );
setScaleKey( spep_3 -3 + 74, 1, 9.4 *sRate, 9.4 *sRate );
setScaleKey( spep_3 -3 + 76, 1, 9.55 *sRate, 9.55 *sRate );
setScaleKey( spep_3 -3 + 78, 1, 9.57 *sRate, 9.57 *sRate );
setScaleKey( spep_3 -3 + 80, 1, 9.52 *sRate, 9.52 *sRate );

setRotateKey( spep_3 + 0, 1, 45 );
setRotateKey( spep_3 -3 + 44, 1, 45 );
setRotateKey( spep_3 -3 + 80, 1, 45 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 116 -4;


-------------------------------------------------
-- 画面手前に飛ぶ〜連続攻撃（148 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_14, 0x100, -1, 0, 0, 0); --画面手前に飛ぶ〜連続攻撃
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, -1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base4_f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 148 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 148 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 148 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_15, 0x80, -1, 0, 0, 0); --画面手前に飛ぶ〜連続攻撃
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, -1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base4_b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 148 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 148 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 148 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 0 );
setDisp( spep_4 -3 + 56, 1, 1 );
setDisp( spep_4 -3 + 134, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 64, 1, 106 );
-- changeAnime( spep_4 -3 + 78, 1, 104 );
changeAnime( spep_4 -3 + 86, 1, 108 );
-- changeAnime( spep_4 -3 + 108, 1, 104 );
changeAnime( spep_4 -3 + 118, 1, 106 );

setMoveKey( spep_4 + 0, 1, -38.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -38.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -34.8, -14.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -31.2, -14.7 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -27.5, -14.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -21.2, -29.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 4.5, -38.1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 29.1, 25.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 1, -48.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 5.7, -58.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -3.2, -33.6 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 10.7, -29.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -32.9, -51.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -27, -52.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -21.2, -53.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -15.6, -54.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 29.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 53.8, -1.9 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 54.4, 34.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 84.4, 59 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 72.2, 34.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 84.9, 30.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 85.7, 18.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 80.8, 12.8 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 74.9, 6.6 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 68.5, 0.2 , 0 );
setMoveKey( spep_4 -3 + 107, 1, 68.6, 7.6 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -21 +80, -2.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -21.5 +70, 4.6 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -22 +60, 11.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -22.6 +60, 19.1 , 0 );
setMoveKey( spep_4 -3 + 117, 1, -23.1 +60, 26.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -35.3 +60, 97.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 33, 144 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 30.2, 112.2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -13.2, 106.2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 76.5, 147.1 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 431.9, 305.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 521.6, 324.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 550.9, 360.1 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 568.4, 376.9 , 0 );

sRate1 = 1.25;
sRate2 = 1.35;
setScaleKey( spep_4 + 0, 1, 1.61 *sRate1, 1.61 *sRate1 );
setScaleKey( spep_4 -3 + 56, 1, 1.61 *sRate1, 1.61 *sRate1 );
setScaleKey( spep_4 -3 + 58, 1, 1.63 *sRate1, 1.63 *sRate1 );
setScaleKey( spep_4 -3 + 60, 1, 1.65 *sRate1, 1.65 *sRate1 );
setScaleKey( spep_4 -3 + 63, 1, 1.68 *sRate1, 1.68 *sRate1 );
setScaleKey( spep_4 -3 + 64, 1, 1.7 *sRate1, 1.7 *sRate1 );
setScaleKey( spep_4 -3 + 66, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 68, 1, 1.74 *sRate1, 1.74 *sRate1 );
setScaleKey( spep_4 -3 + 70, 1, 1.76 *sRate1, 1.76 *sRate1 );
setScaleKey( spep_4 -3 + 72, 1, 1.78 *sRate1, 1.78 *sRate1 );
setScaleKey( spep_4 -3 + 74, 1, 1.81 *sRate1, 1.81 *sRate1 );
setScaleKey( spep_4 -3 + 77, 1, 1.79 *sRate1, 1.79 *sRate1 );
setScaleKey( spep_4 -3 + 78, 1, 1.77 *sRate1, 1.77 *sRate1 );
setScaleKey( spep_4 -3 + 80, 1, 1.76 *sRate1, 1.76 *sRate1 );
setScaleKey( spep_4 -3 + 82, 1, 1.74 *sRate1, 1.74 *sRate1 );
setScaleKey( spep_4 -3 + 84, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 85, 1, 1.72 *sRate1, 1.72 *sRate1 );
setScaleKey( spep_4 -3 + 86, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 87, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 88, 1, 1.75 *sRate2, 1.75 *sRate2 );
setScaleKey( spep_4 -3 + 90, 1, 1.76 *sRate2, 1.76 *sRate2 );
setScaleKey( spep_4 -3 + 92, 1, 1.77 *sRate2, 1.77 *sRate2 );
setScaleKey( spep_4 -3 + 94, 1, 1.79 *sRate2, 1.79 *sRate2 );
setScaleKey( spep_4 -3 + 96, 1, 1.76 *sRate2, 1.76 *sRate2 );
setScaleKey( spep_4 -3 + 98, 1, 1.74 *sRate2, 1.74 *sRate2 );
setScaleKey( spep_4 -3 + 100, 1, 1.71 *sRate2, 1.71 *sRate2 );
setScaleKey( spep_4 -3 + 102, 1, 1.69 *sRate2, 1.69 *sRate2 );
setScaleKey( spep_4 -3 + 104, 1, 1.66 *sRate2, 1.66 *sRate2 );
setScaleKey( spep_4 -3 + 107, 1, 1.67 *sRate2, 1.67 *sRate2 );
setScaleKey( spep_4 -3 + 108, 1, 1.69 *sRate2, 1.69 *sRate2 );
setScaleKey( spep_4 -3 + 110, 1, 1.7 *sRate2, 1.7 *sRate2 );
setScaleKey( spep_4 -3 + 112, 1, 1.71 *sRate2, 1.71 *sRate2 );
setScaleKey( spep_4 -3 + 114, 1, 1.72 *sRate2, 1.72 *sRate2 );
setScaleKey( spep_4 -3 + 117, 1, 1.73 *sRate2, 1.73 *sRate2 );
setScaleKey( spep_4 -3 + 118, 1, 1.86 *sRate1, 1.86 *sRate1 );
setScaleKey( spep_4 -3 + 120, 1, 1.99 *sRate1, 1.99 *sRate1 );
setScaleKey( spep_4 -3 + 134, 1, 1.99 *sRate1, 1.99 *sRate1 );

setRotateKey( spep_4 + 0, 1, -0.3 );
setRotateKey( spep_4 -3 + 56, 1, -0.3 );
setRotateKey( spep_4 -3 + 63, 1, -0.3 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
setRotateKey( spep_4 -3 + 77, 1, 0 );
setRotateKey( spep_4 -3 + 78, 1, -0.3 );
setRotateKey( spep_4 -3 + 134, 1, -0.3 );


-- ** 音 ** --
SE019 = playSeVer2( spep_4 + 14 -8, 1182, "", 0, 0, 0, -1);	--トランクス向かってくる

SE020 = playSeVer2( spep_4 + 14 -8, 1019, "",spep_4 + 74 -4, 0, 12, -1);	--トランクス向かってくる

SE021 = playSeVer2( spep_4 + 14 -8, 9, "", 0, 0, 0, -1);	--トランクス向かってくる

SE022 = playSeVer2( spep_4 + 62 -8, 1189, "", 0, 0, 0, -1);	 --ラッシュ

SE023 = playSeVer2( spep_4 + 68 -8, 1000, "", 0, 0, 0, -1);	 --ラッシュ

SE024 = playSeVer2( spep_4 + 68 -8, 1110, "", 0, 0, 0, -1);	 --ラッシュ
setSeVolumeByWorkId( spep_4 + 68 -8, SE024, 81 );

SE025 = playSeVer2( spep_4 + 88 -8, 1001, "", 0, 0, 0, -1);	 --ラッシュ
setSeVolumeByWorkId( spep_4 + 88 -8, SE025, 68 );

SE026 = playSeVer2( spep_4 + 90 -8, 1010, "",spep_4 + 122 -8, 0, 20, -1);	--ラッシュ

SE027 = playSeVer2( spep_4 + 118 -8, 1003, "", 0, 0, 0, -1);	 --ラッシュ

SE028 = playSeVer2( spep_4 + 124 -8, 1009, "", 0, 0, 0, -1);	 --ラッシュ

SE029 = playSeVer2( spep_4 + 124 -8, 1000, "", 0, 0, 0, -1);	 --ラッシュ

SE030 = playSeVer2( spep_4 + 126 -8, 1110, "", 0, 0, 0, -1);	 --ラッシュ

SE031 = playSeVer2( spep_4 + 126 -8, 1183, "",spep_4 + 230, 0, 10, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_4 + 126 -8, SE031, 62 );



-- ** 次の準備 ** --
spep_5 = spep_4 + 148 -4;


-------------------------------------------------
-- 蹴り〜フィニッシュ（250 -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_16, 0x100, -1, 0, 0, 0); --蹴り〜フィニッシュ
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 250 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, -1.0, 1.0);
setEffScaleKey( spep_5 + 250 -4, base5_f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 250 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 250 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 250 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_17, 0x80, -1, 0, 0, 0); --蹴り〜フィニッシュ
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 250 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, -1.0, 1.0);
setEffScaleKey( spep_5 + 250 -4, base5_b, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 250 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 250 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 250 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 220, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );
changeAnime( spep_5 -3 + 48, 1, 106 );
changeAnime( spep_5 -3 + 66, 1, 108 ); --impact
changeAnime( spep_5 -3 + 100, 1, 105 );

-- setMoveKey( spep_5 -3 + 0, 1, -417.7, -494.9 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -395.8, -471.8 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -374, -449 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -352.3, -426.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -330.7, -404.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -309.1, -382.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -287.6, -360.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -266.2, -338.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -244.8, -317.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -223.6, -296.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -202.4, -276.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -181.3, -255.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -160.3, -235.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -139.4, -215.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -118.5, -196.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -97.7, -176.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -77.1, -157.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -56.5, -138.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -36, -120.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -15.6, -102.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 4.7, -84.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 24.9, -66.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 45.1, -48.9 , 0 );
setMoveKey( spep_5 -3 + 47, 1, 65.1, -31.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 412.6, 57.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 405.1, 47 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 397.2, 36.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 389, 26.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 380.5, 16.6 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 371.7, 6.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 362.5, -3.8 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 353.1, -14 , 0 );
setMoveKey( spep_5 -3 + 65, 1, 343.3, -24.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 232.6, -55.6 , 0 ); --impact
setMoveKey( spep_5 -3 + 68, 1, 349.1, 83.7 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 245.8, -70.9 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 136.4, -84.4 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 288.7, -160.8 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 234.4, -110.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 316, -92.4 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 204.4, -9.2 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 193.5, -83.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 185.9, -88.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 232.5, -81.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 265.8, -37.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 263.5, -36.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 261.8, -36.6 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 260.5, -37 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 259.8, -37.7 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 259.7, -38.9 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 142.8, -90.1 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 133.5, -88 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 124.6, -86.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 116, -84.2 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 107.7, -82.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 99.8, -80.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 92.2, -79.4 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 84.9, -78 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 78, -76.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 71.3, -75.6 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 65, -74.6 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 59.1, -73.6 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 53.5, -72.8 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 48.3, -72.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 43.3, -71.5 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 38.7, -71 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 34.5, -70.6 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 30.5, -70.4 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 26.9, -70.2 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 23.7, -70.2 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 20.8, -70.3 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 18.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 143, 1, 18.2, -70.4 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 36.7, -119.9 , 0 );
setMoveKey( spep_5 -3 + 145, 1, 36.7, -119.9 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -22.5, -3.5 , 0 );
setMoveKey( spep_5 -3 + 147, 1, -22.5, -3.5 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 58.7, -51.3 , 0 );
setMoveKey( spep_5 -3 + 149, 1, 58.7, -51.3 , 0 );
setMoveKey( spep_5 -3 + 150, 1, -25.5, -153.1 , 0 );
setMoveKey( spep_5 -3 + 151, 1, -25.5, -153.1 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 46, -91 , 0 );
setMoveKey( spep_5 -3 + 153, 1, 46, -91 , 0 );
setMoveKey( spep_5 -3 + 154, 1, -32, -13 , 0 );

sRate = 1.1;
-- setScaleKey( spep_5 -3 + 0, 1, 6.46, 6.46 );
setScaleKey( spep_5 -2 + 2, 1, 6.23 *sRate, 6.23 *sRate );
setScaleKey( spep_5 -3 + 4, 1, 6.01 *sRate, 6.01 *sRate );
setScaleKey( spep_5 -3 + 6, 1, 5.8 *sRate, 5.8  *sRate);
setScaleKey( spep_5 -3 + 8, 1, 5.58 *sRate, 5.58 *sRate );
setScaleKey( spep_5 -3 + 10, 1, 5.36 *sRate, 5.36 *sRate );
setScaleKey( spep_5 -3 + 12, 1, 5.15 *sRate, 5.15 *sRate );
setScaleKey( spep_5 -3 + 14, 1, 4.94 *sRate, 4.94 *sRate );
setScaleKey( spep_5 -3 + 16, 1, 4.73 *sRate, 4.73 *sRate );
setScaleKey( spep_5 -3 + 18, 1, 4.52 *sRate, 4.52 *sRate );
setScaleKey( spep_5 -3 + 20, 1, 4.31 *sRate, 4.31 *sRate );
setScaleKey( spep_5 -3 + 22, 1, 4.1 *sRate, 4.1 *sRate );
setScaleKey( spep_5 -3 + 24, 1, 3.9 *sRate, 3.9 *sRate );
setScaleKey( spep_5 -3 + 26, 1, 3.7 *sRate, 3.7 *sRate );
setScaleKey( spep_5 -3 + 28, 1, 3.49 *sRate, 3.49 *sRate );
setScaleKey( spep_5 -3 + 30, 1, 3.29 *sRate, 3.29 *sRate );
setScaleKey( spep_5 -3 + 32, 1, 3.1 *sRate, 3.1 *sRate );
setScaleKey( spep_5 -3 + 34, 1, 2.9 *sRate, 2.9 *sRate );
setScaleKey( spep_5 -3 + 36, 1, 2.7 *sRate, 2.7 *sRate );
setScaleKey( spep_5 -3 + 38, 1, 2.51 *sRate, 2.51 *sRate );
setScaleKey( spep_5 -3 + 40, 1, 2.32 *sRate, 2.32 *sRate );
setScaleKey( spep_5 -3 + 42, 1, 2.13 *sRate, 2.13 *sRate );
setScaleKey( spep_5 -3 + 44, 1, 1.94 *sRate, 1.94 *sRate );
setScaleKey( spep_5 -3 + 47, 1, 1.75 *sRate, 1.75 *sRate );
setScaleKey( spep_5 -3 + 48, 1, 2.57 *sRate, 2.57 *sRate );
setScaleKey( spep_5 -3 + 50, 1, 2.6 *sRate, 2.6 *sRate );
setScaleKey( spep_5 -3 + 52, 1, 2.63 *sRate, 2.63 *sRate );
setScaleKey( spep_5 -3 + 54, 1, 2.66 *sRate, 2.66 *sRate );
setScaleKey( spep_5 -3 + 56, 1, 2.69 *sRate, 2.69 *sRate );
setScaleKey( spep_5 -3 + 58, 1, 2.72 *sRate, 2.72 *sRate );
setScaleKey( spep_5 -3 + 60, 1, 2.75 *sRate, 2.75 *sRate );
setScaleKey( spep_5 -3 + 62, 1, 2.79 *sRate, 2.79 *sRate );
setScaleKey( spep_5 -3 + 65, 1, 2.82 *sRate, 2.82 *sRate );
setScaleKey( spep_5 -3 + 66, 1, 3.99 *sRate, 3.99 *sRate ); --impact
setScaleKey( spep_5 -3 + 68, 1, 3.52 *sRate, 3.52 *sRate );
setScaleKey( spep_5 -3 + 70, 1, 3.2 *sRate, 3.2 *sRate );
setScaleKey( spep_5 -3 + 72, 1, 2.97 *sRate, 2.97 *sRate );
setScaleKey( spep_5 -3 + 74, 1, 2.79 *sRate, 2.79 *sRate );
setScaleKey( spep_5 -3 + 76, 1, 2.66 *sRate, 2.66 *sRate );
setScaleKey( spep_5 -3 + 78, 1, 2.56 *sRate, 2.56 *sRate );
setScaleKey( spep_5 -3 + 80, 1, 2.48 *sRate, 2.48 *sRate );
setScaleKey( spep_5 -3 + 82, 1, 2.41 *sRate, 2.41 *sRate );
setScaleKey( spep_5 -3 + 84, 1, 2.36 *sRate, 2.36 *sRate );
setScaleKey( spep_5 -3 + 86, 1, 2.31 *sRate, 2.31 *sRate );
setScaleKey( spep_5 -3 + 88, 1, 2.27 *sRate, 2.27 *sRate );
setScaleKey( spep_5 -3 + 90, 1, 2.23 *sRate, 2.23 *sRate );
setScaleKey( spep_5 -3 + 92, 1, 2.2 *sRate, 2.2 *sRate );
setScaleKey( spep_5 -3 + 94, 1, 2.17 *sRate, 2.17 *sRate );
setScaleKey( spep_5 -3 + 96, 1, 2.14 *sRate, 2.14 *sRate );
setScaleKey( spep_5 -3 + 99, 1, 2.11 *sRate, 2.11 *sRate );
setScaleKey( spep_5 -3 + 100, 1, 1.64 *sRate, 1.64 *sRate );
setScaleKey( spep_5 -3 + 102, 1, 1.52 *sRate, 1.52 *sRate );
setScaleKey( spep_5 -3 + 104, 1, 1.41 *sRate, 1.41 *sRate );
setScaleKey( spep_5 -3 + 106, 1, 1.3 *sRate, 1.3 *sRate );
setScaleKey( spep_5 -3 + 108, 1, 1.2 *sRate, 1.2 *sRate );
setScaleKey( spep_5 -3 + 110, 1, 1.1 *sRate, 1.1 *sRate );
setScaleKey( spep_5 -3 + 112, 1, 1 *sRate, 1 *sRate );
setScaleKey( spep_5 -3 + 114, 1, 0.91 *sRate, 0.91 *sRate );
setScaleKey( spep_5 -3 + 116, 1, 0.83 *sRate, 0.83 *sRate );
setScaleKey( spep_5 -3 + 118, 1, 0.74 *sRate, 0.74 *sRate );
setScaleKey( spep_5 -3 + 120, 1, 0.67 *sRate, 0.67 *sRate );
setScaleKey( spep_5 -3 + 122, 1, 0.6 *sRate, 0.6 *sRate );
setScaleKey( spep_5 -3 + 124, 1, 0.53 *sRate, 0.53 *sRate );
setScaleKey( spep_5 -3 + 126, 1, 0.47 *sRate, 0.47 *sRate );
setScaleKey( spep_5 -3 + 128, 1, 0.41 *sRate, 0.41 *sRate );
setScaleKey( spep_5 -3 + 130, 1, 0.35 *sRate, 0.35 *sRate );
setScaleKey( spep_5 -3 + 132, 1, 0.31 *sRate, 0.31 *sRate );
setScaleKey( spep_5 -3 + 134, 1, 0.26 *sRate, 0.26 *sRate );
setScaleKey( spep_5 -3 + 136, 1, 0.22 *sRate, 0.22 *sRate );
setScaleKey( spep_5 -3 + 138, 1, 0.19 *sRate, 0.19 *sRate );
setScaleKey( spep_5 -3 + 140, 1, 0.16 *sRate, 0.16 *sRate );
setScaleKey( spep_5 -3 + 142, 1, 0.13 *sRate, 0.13 *sRate );
setScaleKey( spep_5 -3 + 144, 1, 0.11 *sRate, 0.11 *sRate );
setScaleKey( spep_5 -3 + 146, 1, 0.09 *sRate, 0.09 *sRate );
setScaleKey( spep_5 -3 + 148, 1, 0.08 *sRate, 0.08 *sRate );
setScaleKey( spep_5 -3 + 150, 1, 0.08 *sRate, 0.08 *sRate );
setScaleKey( spep_5 -3 + 152, 1, 0.07 *sRate, 0.07 *sRate );
setScaleKey( spep_5 -3 + 220, 1, 0.07 *sRate, 0.07 *sRate );

-- setRotateKey( spep_5 -3 + 0, 1, 1.9 );
setRotateKey( spep_5 -2 + 2, 1, 2 );
setRotateKey( spep_5 -3 + 4, 1, 2.1 );
setRotateKey( spep_5 -3 + 6, 1, 2.2 );
setRotateKey( spep_5 -3 + 8, 1, 2.3 );
setRotateKey( spep_5 -3 + 10, 1, 2.4 );
setRotateKey( spep_5 -3 + 12, 1, 2.5 );
setRotateKey( spep_5 -3 + 14, 1, 2.5 );
setRotateKey( spep_5 -3 + 16, 1, 2.6 );
setRotateKey( spep_5 -3 + 18, 1, 2.7 );
setRotateKey( spep_5 -3 + 20, 1, 2.8 );
setRotateKey( spep_5 -3 + 22, 1, 2.9 );
setRotateKey( spep_5 -3 + 24, 1, 3 );
setRotateKey( spep_5 -3 + 26, 1, 3.1 );
setRotateKey( spep_5 -3 + 28, 1, 3.2 );
setRotateKey( spep_5 -3 + 30, 1, 3.2 );
setRotateKey( spep_5 -3 + 32, 1, 3.3 );
setRotateKey( spep_5 -3 + 34, 1, 3.4 );
setRotateKey( spep_5 -3 + 36, 1, 3.5 );
setRotateKey( spep_5 -3 + 38, 1, 3.6 );
setRotateKey( spep_5 -3 + 40, 1, 3.7 );
setRotateKey( spep_5 -3 + 42, 1, 3.8 );
setRotateKey( spep_5 -3 + 44, 1, 3.8 );
setRotateKey( spep_5 -3 + 47, 1, 3.9 );
setRotateKey( spep_5 -3 + 48, 1, -8.4 );
setRotateKey( spep_5 -3 + 65, 1, -8.4 );
setRotateKey( spep_5 -3 + 66, 1, 21.3 ); --impact
setRotateKey( spep_5 -3 + 99, 1, 21.3 );
setRotateKey( spep_5 -3 + 100, 1, 31.6 );
setRotateKey( spep_5 -3 + 102, 1, 28.6 );
setRotateKey( spep_5 -3 + 104, 1, 25.7 );
setRotateKey( spep_5 -3 + 106, 1, 22.9 );
setRotateKey( spep_5 -3 + 108, 1, 20.2 );
setRotateKey( spep_5 -3 + 110, 1, 17.7 );
setRotateKey( spep_5 -3 + 112, 1, 15.3 );
setRotateKey( spep_5 -3 + 114, 1, 13 );
setRotateKey( spep_5 -3 + 116, 1, 10.8 );
setRotateKey( spep_5 -3 + 118, 1, 8.7 );
setRotateKey( spep_5 -3 + 120, 1, 6.8 );
setRotateKey( spep_5 -3 + 122, 1, 4.9 );
setRotateKey( spep_5 -3 + 124, 1, 3.2 );
setRotateKey( spep_5 -3 + 126, 1, 1.6 );
setRotateKey( spep_5 -3 + 128, 1, 0.1 );
setRotateKey( spep_5 -3 + 130, 1, -1.2 );
setRotateKey( spep_5 -3 + 132, 1, -2.5 );
setRotateKey( spep_5 -3 + 134, 1, -3.6 );
setRotateKey( spep_5 -3 + 136, 1, -4.6 );
setRotateKey( spep_5 -3 + 138, 1, -5.5 );
setRotateKey( spep_5 -3 + 140, 1, -6.2 );
setRotateKey( spep_5 -3 + 142, 1, -6.9 );
setRotateKey( spep_5 -3 + 144, 1, -7.4 );
setRotateKey( spep_5 -3 + 146, 1, -7.8 );
setRotateKey( spep_5 -3 + 148, 1, -8.1 );
setRotateKey( spep_5 -3 + 150, 1, -8.3 );
setRotateKey( spep_5 -3 + 152, 1, -8.4 );
setRotateKey( spep_5 -3 + 220, 1, -8.4 );


-- ** 白フェード ** --
entryFade( spep_5 -3 + 66, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 230);  --white fade
-- ** 黒フェード ** --
entryFade( spep_5 -3 + 68, 0, 2, 0, 0, 0, 0, 230);  --white fade


-- ** 音 ** --
SE032 = playSeVer2( spep_5 + 8, 1109, "", 0, 0, 0, -1);	--瞬間移動

SE033 = playSeVer2( spep_5 + 52, 1004, "", 0, 0, 0, -1);	--蹴り落とす
setPitch( spep_5 + 52, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

SE034 = playSeVer2( spep_5 + 58, 1123, "", 0, 0, 0, -1);	--蹴り落とす

SE035 = playSeVer2( spep_5 + 88, 1121, "",spep_5 + 154, 0, 12, -1);--敵飛んでいく

SE036 = playSeVer2( spep_5 + 142, 1159, "", 0, 0, 0, -1);	--爆発

SE037 = playSeVer2( spep_5 + 142, 1024, "", 0, 0, 0, -1);	--爆発



-- ** ダメージ表示 ** --
dealDamage( spep_5 + 142);
endPhase( spep_5 + 250 -8);


end
