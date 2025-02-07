local function T(en, zh, zht) return ChooseTranslationTable({ en, zh = zh, zht = zht or zh }) end

name = T('Auto Open Weekly Gift', '自动领取每周礼物', '自動領取每週禮物')
author = T('Cunning fox, Myxal, liolok', 'Cunning fox、Myxal、李皓奇')
description = T(
  'Get weekly skins without science machine!',
  '无需科学机器即可获得每周皮肤！',
  '無需科學機器即可獲得每週皮膚！'
)
version = '2025.02.08'
api_version = 10
priority = -0.681239
dst_compatible = true
client_only_mod = true
icon = 'modicon.tex'
icon_atlas = 'modicon.xml'
configuration_options = {}
