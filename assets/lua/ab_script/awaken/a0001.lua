setBgScroll(0, 0);
-- ズーム許可
setEnvZoomEnable(0, 0);

-- 固有オーラ非表示
setEnableAura(0,  0,  0);
setEnableAura(0,  1,  0);

-- 味方登場
changeAnime(0, 0, 3);               -- モーション（ダッシュ）
setMoveKey(0, 0, -700, 0, -128);    -- 画面外

setMoveKey(0, 1, -700, 0, -128);    -- 画面外

setMoveKey(20, 0, 0, 0, -128);      -- 中央に近づく
changeAnime(23, 0, 1);              -- モーション(立ち)
setMoveKey(25, 0, 0, 0, 0);         -- 画面中央 ＆ 元サイズ


------------------------------------------------------
-- 力を貯めてキャラが入ってくる
------------------------------------------------------
RED_AURA_PHASE_START_TIME = 120
entryEffectAwaken(RED_AURA_PHASE_START_TIME + 100, 10, 0x80, 0);

changeAnime(RED_AURA_PHASE_START_TIME, 0, 17);

-- 気溜め(40F)
RED_AURA_PHASE_DURATION = 350;
entryEffect(RED_AURA_PHASE_START_TIME, 310, 0x40, 0, 1, 0, 0);  -- オーラ出る
entryEffectLife(RED_AURA_PHASE_START_TIME, 311, RED_AURA_PHASE_DURATION - 10, 0x40,  0,  1,  0,  0); -- オーラ中
entryEffect(RED_AURA_PHASE_START_TIME + RED_AURA_PHASE_DURATION - 10, 312, 0x40, 0, 1, 0, 0); -- オーラ終わり
entryEffect(RED_AURA_PHASE_START_TIME + 25, 311, 0x40, 0, 1, 0, 0); --
setShake(RED_AURA_PHASE_START_TIME, RED_AURA_PHASE_DURATION, 5); -- 画面揺れ

-- 集中線
shuchusen = entryEffectLife(RED_AURA_PHASE_START_TIME, 906, RED_AURA_PHASE_DURATION, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(RED_AURA_PHASE_START_TIME, shuchusen, 1.0, 1.0);
setEffScaleKey(RED_AURA_PHASE_START_TIME + 5, shuchusen, 1.0, 1.0);
setEffScaleKey(RED_AURA_PHASE_START_TIME + 20, shuchusen, 2.0, 2.0);

-- 気が爆発してホワイてフェイド
fcolor_r = 255;
fcolor_g = 255;
fcolor_b = 255;
-- white 気が爆発するエフェクト 80frames 覚醒専用エフェクト
WHITE_AURA_PHASE_DELAY = 150;
WHITE_AURA_PHASE_START_TIME = RED_AURA_PHASE_START_TIME + RED_AURA_PHASE_DURATION + WHITE_AURA_PHASE_DELAY;
if (_IS_ZAWAKEN_ == 1) then
   -- Z覚醒の時
   kakusei_effect = entryEffect(WHITE_AURA_PHASE_START_TIME, 31012, 0x40, 0, 1, 0, 0);
else
   -- 普通の覚醒の時
   kakusei_effect = entryEffect(WHITE_AURA_PHASE_START_TIME, 31011, 0x40, 0, 1, 0, 0);
end

setEffScaleKey(WHITE_AURA_PHASE_START_TIME + 20, kakusei_effect, 1.0, 1.0);
setEffScaleKey(WHITE_AURA_PHASE_START_TIME + 80, kakusei_effect, 1.0, 1.0);
setEffScaleKey(WHITE_AURA_PHASE_START_TIME + 100, kakusei_effect, 2.0, 2.0);

-- white fade
entryFade(WHITE_AURA_PHASE_START_TIME + 90, 5, 180, 20, fcolor_r, fcolor_g, fcolor_b, 255);

SE001 = playSeVer2(RED_AURA_PHASE_START_TIME + 5, 112, "", 0, 0, 0, -1); -- 気ダメ
SE002 = playSeVer2(RED_AURA_PHASE_START_TIME + 5, 111, "", 0, 0, 0, -1); -- 気ダメ
SE003 = playSeVer2(RED_AURA_PHASE_START_TIME + 240, 44, "", 0, 0, 0, -1); -- メダルが集まる
SE004 = playSeVer2(RED_AURA_PHASE_START_TIME + 310, 115, "", 0, 0, 0, -1); -- キャラと重なる
SE005 = playSeVer2(RED_AURA_PHASE_START_TIME + 310, 113, "", 0, 0, 0, -1); -- キャラと重なる
SE006 = playSeVer2(WHITE_AURA_PHASE_START_TIME, 111, "", 0, 0, 0, -1); -- 気ダメ

endPhase(WHITE_AURA_PHASE_START_TIME + 100);
