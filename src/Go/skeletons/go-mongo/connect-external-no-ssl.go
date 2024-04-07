//
// Connect to MongoDB server. No SSL
//
package main

import (
	"context"
	"fmt"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
)

func main() {
	uri = "mongodb://X_MONGODB_USER_X:X_MONGODB_PWD_X@X_MONGODB_SERVER_X:27017"
	client, error := mongo.Connect(context.TODO(), options.Client().ApplyURI(uri))

	if error != nil {
		panic(error)
	}
	defer func() {
		if error = client.Disconnect(context.TODO()); error != nil {
			panic(error)
		}
	}()
}
