curl http://localhost:3000/friends -X POST --data-binary '' | jq

415: Unsupported media type

curl http://localhost:3000/friends -X POST \
  -H 'Content-Type: application/vnd.api+json' \
  --data-binary '' | jq

HTTP 400 property-code 106: Missing Parameter

curl http://localhost:3000/friends -X POST \
  -H 'Content-Type: application/vnd.api+json' \
  --data-binary '{"data": {"type": "friends","attributes": {}}}' | jq


curl http://localhost:3000/friends -X POST \
  -H 'Content-Type: application/vnd.api+json' \-
  --data-binary '{"data":{"type":"friends","attributes":{"first-name": "Cyril","last-name":"Neveu"}}}' | jq

curl http://localhost:3000/friends -X POST \
    -H 'Content-Type: application/vnd.api+json' \
    --data-binary '{"data":{"type":"friends","attributes":{"first-name": "Jutta","last-name":"Kleinschmidt","email":"jutta@dakar.com"}}}' | jq

-- updating

curl -X PATCH http://localhost:3000/friends/1 \
    -H 'Content-Type: application/vnd.api+json' \
    --data-binary '{"data":{"id":"1", "type":"friends","attributes":{"first-name":"Toby","last-name":"Price","email":"toby@ktml.com"}}}' | jq


curl -X PATCH http://localhost:3000/friends/1 \
    -H 'Content-Type: application/vnd.api+json'\
    --data-binary '{"data":{"id":"1", "type":"friends","attributes":{"twitter": "@tobyprice87"}}}' | jq

-- delete


curl  http://localhost:3000/friends/1 -X DELETE -i