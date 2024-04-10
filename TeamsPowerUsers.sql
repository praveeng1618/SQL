SELECT sender_id, COUNT(message_id) AS message_cnt FROM messages
where EXTRACT(year FROM senT_date) = 2022 and EXTRACT(month FROM senT_date) = 8
GROUP BY SENDER_ID
ORDER BY message_cnt DESC
LIMIT 2
