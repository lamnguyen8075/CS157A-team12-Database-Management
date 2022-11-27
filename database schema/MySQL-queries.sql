# When the request sends by a users, the request table will be updated, the request id will automated apply increment 
INSERT INTO request (requestID, reason, status, URL)
VALUES(1009,'','PENDING','');

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



  

