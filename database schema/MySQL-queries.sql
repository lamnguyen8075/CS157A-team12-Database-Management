# When the request sends by a users, the request table will be updated, the request id will automated apply increment, the send relationship table will be updated
INSERT INTO request (requestID, reason, status, URL, userID)
VALUES(1010,'','IN PROCESS','', 120);

# If the request is approved, the reponse will be updated and restriced website will be updated
INSERT INTO response (responseID, policyID, message)
VALUES('2009','','the request has been aprroved');

DELETE FROM restrictedwebsites
WHERE url = "www.google.com";

UPDATE request
SET status = "Approved"
WHERE requestID = '1009';

# IF the request is denied
UPDATE request
SET status = "Decined"
WHERE requestID = '1009';

#Test Connection
# (1) query data from the resricted table
SELECT url
FROM restrictedwebsites;

# (2) list the information of each employee associate with the request
SELECT url, status
FROM request
WHERE userID = 120;

##Pending request
SELECT url
FROM request
WHERE status = 'pending';


  

