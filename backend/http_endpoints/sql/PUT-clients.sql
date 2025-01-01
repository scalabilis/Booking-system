USE salon_booking;

UPDATE `clients` 
SET 
    `name` = IF(LENGTH(${name}) > 0, ${name}, `name`),
    `email` = IF(LENGTH(${email}) > 0, ${email}, `email`),
    `phone` = IF(LENGTH(${phone}) > 0, ${phone}, `phone`)
WHERE `client_id` = ${client_id};