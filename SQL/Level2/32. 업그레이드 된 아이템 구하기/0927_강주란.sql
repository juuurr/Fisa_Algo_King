SELECT t.ITEM_ID, pi.ITEM_NAME, pi.RARITY
FROM (SELECT * FROM ITEM_INFO WHERE RARITY = 'RARE') i -- 아이템의 희귀도가 'RARE'인 아이템
INNER JOIN ITEM_TREE t ON i.ITEM_ID = t.PARENT_ITEM_ID -- 업그레이드를 위해
INNER JOIN ITEM_INFO pi ON pi.ITEM_ID = t.ITEM_ID -- 업그레이드 아이템 정보
ORDER BY 1 DESC;
