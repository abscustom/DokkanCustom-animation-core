--1028720:LR_ギニュー(特戦隊)_必殺技：先攻ジャンケン(ジース)
--sp_effect_a1_00430
--sp2695

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162791;	--じゃんけん	ef_001
SP_02 = 162792;	--攻撃	ef_002
SP_02b = 162793;--背景	ef_002b

--エフェクト(敵)
SP_02r = 162794;--攻撃　敵側	ef_002r


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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- じゃんけん	
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- 攻撃	ef_002
-------------------------------------------------

MAX_FRAME_1 = 336;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 124 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 152 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 124 + OFFSET_X, 1, 174.4, -52.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 174.4, -52.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 174.4, -53 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 174.4, -53 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 174.5, -51.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 174.5, -51.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 174.6, -53.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 174.6, -53.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 174.6, -51.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 174.6, -51.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 174.7, -52.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 174.7, -52.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 174.8, -50.7 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 174.8, -50.7 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 174.9, -52.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 174.9, -52.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 174.9, -50 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 174.9, -50 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 175, -52.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 175, -52.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 175.1, -49.6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 175.1, -49.6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 175.2, -52.2 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 175.2, -52.2 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 175.2, -49.9 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 175.2, -49.9 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 175.3, -51.9 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 175.3, -51.9 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 194.6, -62.9 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 194.6, -62.9 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 188.6, -45.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 188.6, -45.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 191, -63.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 191, -63.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 194.4, -50.1 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 194.4, -50.1 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 198.3, -65.7 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 198.3, -65.7 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 202.3, -55.5 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 202.3, -55.5 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 214.1, -73.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 214.1, -73.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 225.9, -69.6 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 225.9, -69.6 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 237.7, -86.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 237.7, -86.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 249.5, -84.5 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 249.5, -84.5 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 261.3, -98.6 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 261.3, -98.6 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 273.2, -99 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 273.2, -99 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 285, -109.3 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 285, -109.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -364.6, 269.3 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -364.6, 269.3 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -352.5, 257.6 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -352.5, 257.6 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -332, 234.7 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, -332, 234.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -308.3, 211.8 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, -308.3, 211.8 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, -282.5, 183.4 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, -282.5, 183.4 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, -254.9, 155.9 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, -254.9, 155.9 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, -225.8, 124.4 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, -225.8, 124.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, -195.2, 93.8 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, -195.2, 93.8 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, -163.2, 59.2 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, -163.2, 59.2 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, -129.5, 25.4 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, -129.5, 25.4 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, -93.9, -12.7 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, -93.9, -12.7 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, -56.1, -51.1 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -56.1, -51.1 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, -15.3, -94.5 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, -15.3, -94.5 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 29.6, -140.3 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 29.6, -140.3 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 81.7, -195.2 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 81.7, -195.2 , 0 );

setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 165 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 167 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 185 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_1 + 124 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 46.1 );

-- ** 音 ** --
--構える
SE007 = playSeVer2( spep_1 + 6, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE008 = playSeVer2( spep_1 + 26, 1209, "",spep_1 + 102, 0, 30, -1);
setPitch( spep_1 + 26, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_1 + 26, 1354, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 26, 1239, "",spep_1 + 112, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 26, SE010, 182 );
setPitch( spep_1 + 26, SE010, -500 );
setTimeStretch( SE010, 0.67, 30, 4 );
SE011 = playSeVer2( spep_1 + 38, 1176, "",spep_1 + 112, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 44, SE011, 30 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
--気弾発射
SE012 = playSeVer2( spep_1 + 84, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 84, 1145, "", 0, 0, 0, -1);
--気弾飛んでく
SE014 = playSeVer2( spep_1 + 134, 1193, "",spep_1 + 244, 32, 32, -1);
setSeVolumeByWorkId( spep_1 + 134, SE014, 75 );
setStartTimeMs( SE014,  600 );
--敵ヒット
SE015 = playSeVer2( spep_1 + 142, 1011, "", 0, 0, 0, -1);
--爆発
SE016 = playSeVer2( spep_1 + 196, 1159, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 210, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 226); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 336F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- じゃんけん	
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 85 );
setStartTimeMs( SE003,  173 );
SE004 = playSeVer2( spep_0 + 56, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 79 );
SE005 = playSeVer2( spep_0 + 56, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- 攻撃	ef_002
-------------------------------------------------

MAX_FRAME_1 = 336;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 攻撃	ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃後ろ	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 124 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 152 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 124 + OFFSET_X, 1, 174.4, -52.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 174.4, -52.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 174.4, -53 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 174.4, -53 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 174.5, -51.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 174.5, -51.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 174.6, -53.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 174.6, -53.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 174.6, -51.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 174.6, -51.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 174.7, -52.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 174.7, -52.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 174.8, -50.7 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 174.8, -50.7 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 174.9, -52.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 174.9, -52.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 174.9, -50 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 174.9, -50 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 175, -52.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 175, -52.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 175.1, -49.6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 175.1, -49.6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 175.2, -52.2 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 175.2, -52.2 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 175.2, -49.9 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 175.2, -49.9 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 175.3, -51.9 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 175.3, -51.9 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 194.6, -62.9 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 194.6, -62.9 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 188.6, -45.5 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 188.6, -45.5 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 191, -63.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 191, -63.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 194.4, -50.1 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 194.4, -50.1 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 198.3, -65.7 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 198.3, -65.7 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 202.3, -55.5 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 202.3, -55.5 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 214.1, -73.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 214.1, -73.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 225.9, -69.6 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 225.9, -69.6 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 237.7, -86.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 237.7, -86.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 249.5, -84.5 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 249.5, -84.5 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 261.3, -98.6 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 261.3, -98.6 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 273.2, -99 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 273.2, -99 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 285, -109.3 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 285, -109.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -364.6, 269.3 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -364.6, 269.3 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -352.5, 257.6 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -352.5, 257.6 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -332, 234.7 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, -332, 234.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -308.3, 211.8 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, -308.3, 211.8 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, -282.5, 183.4 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, -282.5, 183.4 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, -254.9, 155.9 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, -254.9, 155.9 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, -225.8, 124.4 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, -225.8, 124.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, -195.2, 93.8 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, -195.2, 93.8 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, -163.2, 59.2 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, -163.2, 59.2 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, -129.5, 25.4 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, -129.5, 25.4 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, -93.9, -12.7 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, -93.9, -12.7 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, -56.1, -51.1 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, -56.1, -51.1 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, -15.3, -94.5 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, -15.3, -94.5 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 29.6, -140.3 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 29.6, -140.3 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 81.7, -195.2 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 81.7, -195.2 , 0 );

setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 165 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 167 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 185 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_1 + 124 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, 46.1 );

-- ** 音 ** --
--構える
SE007 = playSeVer2( spep_1 + 6, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE008 = playSeVer2( spep_1 + 26, 1209, "",spep_1 + 102, 0, 30, -1);
setPitch( spep_1 + 26, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_1 + 26, 1354, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 26, 1239, "",spep_1 + 112, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 26, SE010, 182 );
setPitch( spep_1 + 26, SE010, -500 );
setTimeStretch( SE010, 0.67, 30, 4 );
SE011 = playSeVer2( spep_1 + 38, 1176, "",spep_1 + 112, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 44, SE011, 30 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
--気弾発射
SE012 = playSeVer2( spep_1 + 84, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 84, 1145, "", 0, 0, 0, -1);
--気弾飛んでく
SE014 = playSeVer2( spep_1 + 134, 1193, "",spep_1 + 244, 32, 32, -1);
setSeVolumeByWorkId( spep_1 + 134, SE014, 75 );
setStartTimeMs( SE014,  600 );
--敵ヒット
SE015 = playSeVer2( spep_1 + 142, 1011, "", 0, 0, 0, -1);
--爆発
SE016 = playSeVer2( spep_1 + 196, 1159, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 210, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 226); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 336F


end
