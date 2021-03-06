SELECT USERS.*, KNOWLEDGE_USERS.KNOWLEDGE_ID FROM KNOWLEDGE_USERS
INNER JOIN USERS ON KNOWLEDGE_USERS.USER_ID = USERS.USER_ID
WHERE KNOWLEDGE_USERS.KNOWLEDGE_ID IN (${knowledgeIds}) AND KNOWLEDGE_USERS.USER_ID NOT IN (0, KNOWLEDGE_USERS.INSERT_USER)
ORDER BY KNOWLEDGE_USERS.KNOWLEDGE_ID
