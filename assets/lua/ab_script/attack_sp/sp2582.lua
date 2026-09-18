--1027060：UR_超サイヤ人孫悟飯(少年期)_必殺技：爆裂乱魔
--sp_effect_b4_00295
--sp2582

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162075; --開幕〜カードカットインまで	ef_001
SP_01b = 162077; --開幕〜カードカットインまで	ef_002
SP_02 = 162079;	--白画面から孫悟飯空中登場〜フィニッシュまで	ef_003
SP_02b = 162081;	--白画面から孫悟飯空中登場〜フィニッシュまで	ef_004

--エフェクト(てき)
SP_01r = 162076;	--開幕〜カードカットインまで	ef_001r
SP_01br = 162078;	--開幕〜カードカットインまで	ef_002r
SP_02r = 162080;	--白画面から孫悟飯空中登場〜フィニッシュまで	ef_003r
SP_02br = 162082;	--白画面から孫悟飯空中登場〜フィニッシュまで	ef_004r



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで（232F）
-------------------------------------------------


MAX_FRAME_0 = 232;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 100 + OFFSET_X, 1, 1);
setDisp( spep_0 + 194 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 100 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 118 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 199.7, -11.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 199.7, -11.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 199.2, -11.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 199.2, -11.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 198.6, -11.3 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 198.6, -11.3 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 197.5, -11.3 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 197.5, -11.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 197, -11.3 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 197, -11.3 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 196.6, -11.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 196.6, -11.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 196.2, -11.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 196.2, -11.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 196.1, -11.3 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 196.1, -11.3 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 214.3, 14.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 214.3, 14.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 172.3, -35.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 172.3, -35.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 176, 4.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 176, 4.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 201.5, -27.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 201.5, -27.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 190.7, -5.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 190.7, -5.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 175.7, -17.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 175.7, -17.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 173.5, -5.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 173.5, -5.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 185.5, -19.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 185.5, -19.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 181.6, -11.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 181.6, -11.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 185.7, -11.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 185.7, -11.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 191.8, -11.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 191.8, -11.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 220, 14.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 220, 14.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 190.1, -35.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 190.1, -35.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 189.6, 4.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 189.6, 4.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 210.6, -27.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 210.6, -27.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 194.8, -5.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 194.8, -5.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 174.2, -17.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 174.2, -17.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 167.7, -14.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 167.7, -14.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 163.1, -11.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 163.1, -11.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 154.4, -11.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 154.4, -11.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 167.5, -11.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 167.5, -11.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 179, -11.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 179, -11.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 188.7, -11.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 188.7, -11.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 196.3, -11.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 196.3, -11.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 202.1, -11.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 202.1, -11.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 206.5, -11.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 206.5, -11.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 210.7, -11.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 210.7, -11.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 210.2, 14.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 210.2, 14.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 152.8, -35.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 152.8, -35.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 145.6, 82.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 145.6, 82.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 162.1, 306.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 162.1, 306.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 133.6, 572.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 127.4, 841 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 135.1, 1083.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 126.3, 1347.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 124.8, 1603.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 123.8, 1859.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 122.8, 2116 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 121.8, 2372.2 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -69.7 );

-- ** 音 ** --
--ジャンプして飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 133 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 74 );
SE004 = playSeVer2( spep_0 + 0, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 76 );

--ジャンプして飛んでくる
SE006 = playSeVer2( spep_0 + 40, 1116, "",spep_0 + 78, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 40, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 40, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE008, 62 );
SE009 = playSeVer2( spep_0 + 52, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE009, 56 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
-- ** 音 ** --
--ラッシュから蹴り上げ
SE010 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 110, 1153, "",spep_0 + 142, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 65 );
SE012 = playSeVer2( spep_0 + 110, 1010, "", 0, 0, 0, -1);

--ジャンプして飛んでくる
SE013 = playSeVer2( spep_0 + 116, 1019, "",spep_0 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 116, SE013, 56 );

--ラッシュから蹴り上げ
SE014 = playSeVer2( spep_0 + 132, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 132, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE015, 66 );
SE016 = playSeVer2( spep_0 + 164, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 164, 1187, "",spep_0 + 242, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 164, SE017, 87 );

--回転
SE018 = playSeVer2( spep_0 + 198, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE018, 71 );

--飛び上がる
SE019 = playSeVer2( spep_0 + 222, 1182, "",spep_0 + 242, 0, 6, -1);
SE020 = playSeVer2( spep_0 + 222, 1117, "",spep_0 + 242, 0, 6, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 白画面から孫悟飯空中登場〜フィニッシュまで(334F)
-------------------------------------------------


MAX_FRAME_1 = 334;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f,255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 120 + OFFSET_X, 1, 1);
setDisp( spep_1 + 158 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 120 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 120 + OFFSET_X, 1, 197.2, 368.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 197.2, 368.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 207.2, 354.5 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 207.2, 354.5 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 207.3, 364.5 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 207.3, 364.5 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 197.5, 354.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 197.5, 354.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 197.8, 368.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 197.8, 368.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 208.3, 353.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 208.3, 353.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 209, 362.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 209, 362.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 200.1, 351.9 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 200.1, 351.9 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 201.5, 364.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 201.5, 364.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 213.3, 349 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 213.3, 349 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 221.5, 366.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 221.5, 366.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 204.3, 334.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 204.3, 334.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 201.6, 361.3 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 201.6, 361.3 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 231.4, 327.7 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 231.4, 327.7 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 236, 353.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 236, 353.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 221.2, 318.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 221.2, 318.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 221.2, 343.2 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 221.2, 343.2 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 254, 306.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 254, 306.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 261.6, 329.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 261.6, 329.9 , 0 );

setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 2.68, 2.68 );

setRotateKey( spep_1 + 120 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -27.4 );

-- ** 音 ** --
--飛行中
SE022 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 36, 0, 16, -1);
SE023 = playSeVer2( spep_1 + 2, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 2, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE024, 65 );
SE025 = playSeVer2( spep_1 + 58, 1019, "",spep_1 + 98, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 58, SE025, 65 );

--気弾溜め
SE026 = playSeVer2( spep_1 + 68, 1296, "",spep_1 + 112, 0, 18, -1);

--気弾発射
SE027 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE027, 85 );
SE028 = playSeVer2( spep_1 + 90, 1133, "",spep_1 + 144, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 90, SE028, 73 );

--気弾飛んでいく
SE029 = playSeVer2( spep_1 + 120, 1021, "", 0, 0, 0, -1);

--ギャン
SE030 = playSeVer2( spep_1 + 164, 1023, "", 0, 0, 0, -1);

--爆発
SE031 = playSeVer2( spep_1 + 222, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 222, SE031, 79 );
SE032 = playSeVer2( spep_1 + 230, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 230); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで(232F)
-------------------------------------------------


MAX_FRAME_0 = 232;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 100 + OFFSET_X, 1, 1);
setDisp( spep_0 + 194 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 100 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 118 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 199.7, -11.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 199.7, -11.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 199.2, -11.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 199.2, -11.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 198.6, -11.3 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 198.6, -11.3 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 198.1, -11.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 197.5, -11.3 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 197.5, -11.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 197, -11.3 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 197, -11.3 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 196.6, -11.3 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 196.6, -11.3 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 196.2, -11.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 196.2, -11.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 196.1, -11.3 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 196.1, -11.3 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 214.3, 14.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 214.3, 14.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 172.3, -35.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 172.3, -35.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 176, 4.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 176, 4.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 201.5, -27.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 201.5, -27.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 190.7, -5.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 190.7, -5.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 175.7, -17.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 175.7, -17.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 173.5, -5.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 173.5, -5.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 185.5, -19.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 185.5, -19.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 181.6, -11.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 181.6, -11.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 185.7, -11.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 185.7, -11.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 191.8, -11.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 191.8, -11.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 220, 14.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 220, 14.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 190.1, -35.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 190.1, -35.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 189.6, 4.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 189.6, 4.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 210.6, -27.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 210.6, -27.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 194.8, -5.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 194.8, -5.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 174.2, -17.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 174.2, -17.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 167.7, -14.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 167.7, -14.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 163.1, -11.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 163.1, -11.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 154.4, -11.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 154.4, -11.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 167.5, -11.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 167.5, -11.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 179, -11.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 179, -11.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 188.7, -11.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 188.7, -11.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 196.3, -11.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 196.3, -11.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 202.1, -11.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 202.1, -11.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 206.5, -11.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 206.5, -11.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 210.7, -11.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 210.7, -11.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 210.2, 14.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 210.2, 14.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 152.8, -35.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 152.8, -35.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 145.6, 82.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 145.6, 82.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 162.1, 306.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 162.1, 306.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 133.6, 572.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 127.4, 841 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 135.1, 1083.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 126.3, 1347.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 124.8, 1603.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 123.8, 1859.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 122.8, 2116 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 121.8, 2372.2 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.88, 1.88 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -69.7 );

-- ** 音 ** --
--ジャンプして飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 133 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 74 );
SE004 = playSeVer2( spep_0 + 0, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 76 );

--ジャンプして飛んでくる
SE006 = playSeVer2( spep_0 + 40, 1116, "",spep_0 + 78, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 40, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 40, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE008, 62 );
SE009 = playSeVer2( spep_0 + 52, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE009, 56 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
-- ** 音 ** --
--ラッシュから蹴り上げ
SE010 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 110, 1153, "",spep_0 + 142, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 65 );
SE012 = playSeVer2( spep_0 + 110, 1010, "", 0, 0, 0, -1);

--ジャンプして飛んでくる
SE013 = playSeVer2( spep_0 + 116, 1019, "",spep_0 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 116, SE013, 56 );

--ラッシュから蹴り上げ
SE014 = playSeVer2( spep_0 + 132, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 132, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE015, 66 );
SE016 = playSeVer2( spep_0 + 164, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 164, 1187, "",spep_0 + 242, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 164, SE017, 87 );

--回転
SE018 = playSeVer2( spep_0 + 198, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE018, 71 );

--飛び上がる
SE019 = playSeVer2( spep_0 + 222, 1182, "",spep_0 + 242, 0, 6, -1);
SE020 = playSeVer2( spep_0 + 222, 1117, "",spep_0 + 242, 0, 6, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 白画面から孫悟飯空中登場〜フィニッシュまで(334F)
-------------------------------------------------


MAX_FRAME_1 = 334;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f,255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_1 + 120 + OFFSET_X, 1, 1);
setDisp( spep_1 + 158 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 120 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 120 + OFFSET_X, 1, 197.2, 368.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 197.2, 368.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 207.2, 354.5 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 207.2, 354.5 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 207.3, 364.5 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 207.3, 364.5 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 197.5, 354.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 197.5, 354.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 197.8, 368.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 197.8, 368.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 208.3, 353.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 208.3, 353.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 209, 362.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 209, 362.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 200.1, 351.9 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 200.1, 351.9 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 201.5, 364.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 201.5, 364.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 213.3, 349 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 213.3, 349 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 221.5, 366.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 221.5, 366.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 204.3, 334.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 204.3, 334.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 201.6, 361.3 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 201.6, 361.3 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 231.4, 327.7 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 231.4, 327.7 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 236, 353.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 236, 353.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 221.2, 318.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 221.2, 318.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 221.2, 343.2 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 221.2, 343.2 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 254, 306.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 254, 306.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 261.6, 329.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 261.6, 329.9 , 0 );

setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 2.68, 2.68 );

setRotateKey( spep_1 + 120 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -27.4 );

-- ** 音 ** --
--飛行中
SE022 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 36, 0, 16, -1);
SE023 = playSeVer2( spep_1 + 2, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 2, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE024, 65 );
SE025 = playSeVer2( spep_1 + 58, 1019, "",spep_1 + 98, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 58, SE025, 65 );

--気弾溜め
SE026 = playSeVer2( spep_1 + 68, 1296, "",spep_1 + 112, 0, 18, -1);

--気弾発射
SE027 = playSeVer2( spep_1 + 90, 1145, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE027, 85 );
SE028 = playSeVer2( spep_1 + 90, 1133, "",spep_1 + 144, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 90, SE028, 73 );

--気弾飛んでいく
SE029 = playSeVer2( spep_1 + 120, 1021, "", 0, 0, 0, -1);

--ギャン
SE030 = playSeVer2( spep_1 + 164, 1023, "", 0, 0, 0, -1);

--爆発
SE031 = playSeVer2( spep_1 + 222, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 222, SE031, 79 );
SE032 = playSeVer2( spep_1 + 230, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 230); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム


end
