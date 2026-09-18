--9031660:キャラh_必殺技：インペリアルキャノン
--sp_effect_b4_00386
--sp2879

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01r  = 163891;  --ef_001 カードカットイン前 前面
SP_01br  = 163892;  --ef_001b カードカットイン前 背面
SP_02r  = 163893;  --ef_002 カードカットイン〜フィニッシュ 前面
SP_02br = 163894;  --ef_002b カードカットイン〜フィニッシュ 背面

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カードカットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- カードカットイン前(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 書き文字エントリー ** --
spep_x = spep_0 + 0;

ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 18, 300, 3000 ); --ゴゴゴ
setEffMoveKey( spep_x + 14, ctgogo, 18, 300 , 0 );
setEffMoveKey( spep_x + 86, ctgogo, 18, 300 , 0 );
setEffScaleKey( spep_x + 14, ctgogo, -0.85, 0.85);
setEffScaleKey( spep_x + 78, ctgogo, -0.85, 0.85);
setEffScaleKey( spep_x + 80, ctgogo, -1.15, 1.15);
setEffScaleKey( spep_x + 82, ctgogo, -1.24, 1.24);
setEffScaleKey( spep_x + 84, ctgogo, -1.54, 1.54);
setEffScaleKey( spep_x + 86, ctgogo, -1.84, 1.84);
setEffRotateKey( spep_x + 14, ctgogo, 0 );
setEffRotateKey( spep_x + 86, ctgogo, 0 );
setEffAlphaKey( spep_x + 14, ctgogo, 0 );
setEffAlphaKey( spep_x + 15, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 86, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

---- ** 敵キャラクター ** --
setDisp( spep_0 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 238 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 144 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 174 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 144 + OFFSET_X, 1, 860, -92.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 860, -92.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 740, -92.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 740, -92.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 620, -92.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 620, -92.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 500, -92.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 500, -92.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 380, -92.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 380, -92.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 260, -92.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 260, -92.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 140, -92.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 140, -92.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 20, -92.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 20, -92.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 20, -67.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 20, -67.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 21.3, -90.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 21.3, -90.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 21.3, -90.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 21.3, -90.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 21.3, -107.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 20.1, -103.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 20.1, -103.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 20, -81.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 20, -81.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 20, -59.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 20, -59.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 20, -37.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 20, -37.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 20, -14.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 20, -14.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 20, 7.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 20, 7.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 20, 29.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 20, 29.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 20, 51.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 20, 51.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 20, 74.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 20, 74.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 20, 96.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 20, 96.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 20, 118.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 20, 118.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 20, 141 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 20, 141 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 20, 140.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 20, 140.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 20, 139.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 20, 139.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 20, 137.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 20, 137.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 20, 134.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 20, 134.5 , 0 );

setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.42, 1.42 );

setRotateKey( spep_0 + 144 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -51.7 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -46 );

setBlendColor( spep_0 + 168 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.3 );
setBlendColor( spep_0 + 174 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.8 );
setBlendColor( spep_0 + 188 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.75 );
setBlendColor( spep_0 + 190 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.727 );
setBlendColor( spep_0 + 192 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.704 );
setBlendColor( spep_0 + 194 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.681 );
setBlendColor( spep_0 + 196 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.658 );
setBlendColor( spep_0 + 198 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.635 );
setBlendColor( spep_0 + 200 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.612 );
setBlendColor( spep_0 + 202 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.589 );
setBlendColor( spep_0 + 204 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.566 );
setBlendColor( spep_0 + 206 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.543 );
setBlendColor( spep_0 + 208 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.52 );
setBlendColor( spep_0 + 210 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.497 );
setBlendColor( spep_0 + 212 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.474 );
setBlendColor( spep_0 + 214 + OFFSET_X, 1, 0, 0.84, 0.92, 1.0, 0.45 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 266, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 198, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 129 );
SE027 = playSeVer2( spep_0 + 92, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE027, 60 );

--金縛り
SE004 = playSeVer2( spep_0 + 108, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 122, 1052, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE006, 110 );
SE007 = playSeVer2( spep_0 + 122, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE007, 140 );
setTimeStretch( SE007, 0.76, 30, 4 );
SE008 = playSeVer2( spep_0 + 122, 1460, "",spep_0 + 262, 0, 28, -1);
SE009 = playSeVer2( spep_0 + 122, 1326, "",spep_0 + 266, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 122, SE009, 85 );
setPitch( spep_0 + 122, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

    setBlendColor( SP_dodge+9, 1, 0, 0.0, 0.0, 0.0, 0.0 );

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
-----------------------------
--回避しなかった場合
-----------------------------
    
-- ** 音 ** --
--敵ヒット
SE010 = playSeVer2( spep_0 + 166, 1152, "", 0, 4, 0, -1);
setStartTimeMs( SE010,  233 );
SE011 = playSeVer2( spep_0 + 166, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE011, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --236f

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--気弾溜め
SE012 = playSeVer2( spep_1 + 84, 1288, "",spep_1 + 200, 6, 28, -1);
setSeVolumeByWorkId( spep_1 + 84, SE012, 126 );
setStartTimeMs( SE012,  2400 );
SE014 = playSeVer2( spep_1 + 86, 1224, "",spep_1 + 190, 0, 22, -1);
SE015 = playSeVer2( spep_1 + 86, 1191, "",spep_1 + 192, 0, 28, -1);
SE016 = playSeVer2( spep_1 + 86, 1334, "",spep_1 + 186, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 86, SE016, 65 );
setPitch( spep_1 + 86, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

-------------------------------------------------
-- カード ～ フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 334;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 220 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 85.4, 220.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 85.4, 220.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 90.3, 224.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 90.3, 224.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 95.1, 228.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 95.1, 228.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 99.7, 233.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 99.7, 233.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 104.3, 237.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 104.3, 237.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 108.8, 241.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 108.8, 241.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 113.1, 245.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 113.1, 245.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 117.4, 249.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 117.4, 249.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 121.6, 253 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 121.6, 253 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 125.6, 256.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 125.6, 256.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 129.6, 260.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 129.6, 260.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 133.5, 263.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 133.5, 263.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 137.2, 267.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 137.2, 267.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 140.9, 270.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 140.9, 270.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 144.5, 273.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 144.5, 273.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 147.9, 277 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 147.9, 277 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 151.3, 280 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 151.3, 280 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 154.5, 283 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 154.5, 283 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 157.7, 285.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 157.7, 285.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 160.7, 288.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 160.7, 288.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 149.6, 269.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 149.6, 269.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 182.6, 273.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 182.6, 273.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 171.3, 302.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 171.3, 302.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 162, 278.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 162, 278.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 190.6, 279.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 190.6, 279.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 177, 297.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 177, 297.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 171.4, 291.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 171.4, 291.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 165.6, 285.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 165.6, 285.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 184.8, 287.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 184.8, 287.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 203.9, 289.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 203.9, 289.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 199.8, 300.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 199.8, 300.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 195.7, 310.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 195.7, 310.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 188.4, 304.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 188.4, 304.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 181.1, 298 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 181.1, 298 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 193.6, 299.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 193.6, 299.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 206.1, 300.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 206.1, 300.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 202.5, 312 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 202.5, 312 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 198.9, 323.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 198.9, 323.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 200, 324.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 200, 324.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 201, 325.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 201, 325.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 202, 326 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 202, 326 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 202.8, 326.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 202.8, 326.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 203.6, 327.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 203.6, 327.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 204.2, 328.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 204.2, 328.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 204.8, 328.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 204.8, 328.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 205.2, 329 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 205.2, 329 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 205.6, 329.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 205.6, 329.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 205.8, 329.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 205.8, 329.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 206, 329.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 206, 329.7 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.86, 1.87 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.86, 1.87 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.83, 1.84 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.83, 1.84 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.8, 1.81 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.8, 1.81 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.73, 1.74 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.73, 1.74 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.7, 1.71 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.7, 1.71 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.67, 1.68 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.67, 1.68 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.64, 1.65 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.64, 1.65 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.56, 1.57 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.56, 1.57 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.53, 1.54 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.53, 1.54 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.48, 1.49 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.48, 1.49 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.43, 1.44 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.43, 1.44 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.41, 1.42 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.41, 1.42 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.23, 1.24 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.23, 1.24 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.13, 1.14 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.13, 1.14 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.08, 1.09 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.08, 1.09 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.04, 1.04 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -46 );

setBlendColor( spep_2 + 220 + OFFSET_X, 1, 0, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE017 = playSeVer2( spep_2 + 18, 1225, "",spep_2 + 92, 0, 20, -1);

--気弾発射
SE018 = playSeVer2( spep_2 + 66, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE018, 126 );
SE019 = playSeVer2( spep_2 + 66, 1423, "",spep_2 + 248, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 66, SE019, 107 );
SE020 = playSeVer2( spep_2 + 66, 1213, "",spep_2 + 248, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 66, SE020, 46 );

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 130, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE022 = playSeVer2( spep_2 + 148, 1024, "", 0, 0, 0, -1);

--爆発前予兆
SE023 = playSeVer2( spep_2 + 176, 1173, "",spep_2 + 300, 0, 34, -1);
SE024 = playSeVer2( spep_2 + 204, 1229, "",spep_2 + 306, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 204, SE024, 136 );

--爆発
SE025 = playSeVer2( spep_2 + 268, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 268, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 230); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  334f

end