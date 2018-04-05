# Tanca Server

Server that can host Championship events from the Tanca client software.

## Final goal

Website that can host & display Championships and Clubs data.

## Protocol

Client --> Server
Ask for Token


CouchDB organization

{
    "organization_id": "123e4567-e89b-12d3-a456-426655440000",
    "email": "essai@tanca.fr",
    "tokens": [
        {}
    ]
}


## Development plan

1. First step: NoSQL online backup of events

Story: first step of the server, test the NoSQL schema, test the anonymous access with a token (prepare the paid access)

  a. Create a simple server with CouchDB that can get/set events
  b. Modify Tanca to allow events saving on the cloud
  c. Manage a token to allow read/write on the DB

Event JSON format:

{
   "date": "2017-07-04T04:43:50Z",
   "organization_id": "123e4567-e89b-12d3-a456-426655440000",
   "description": "Tournoi ouverture saison",
   "type": "round-robin",
   "championship": true
   "teams": [
      { "id": 34, "team_name": "zouzou", "players": [
           "3ed862e7-6ae9-4386-8992-96a07b19155b",
           "f25d069a-a686-404d-b2a9-2c4b429c463e"
        ]
      },
      { "id": 125, "team_name": "les jacky", "players": [
           "612dd17a-eca3-48bc-a069-2c21cfaa9621",
           "66a90bf4-ea5b-44a4-a5d8-ddce0fadd00d"
        ]
      }
   ],
   "games": [
      ""
   ]
}


2. Second step: minimal dashboard

  a.
