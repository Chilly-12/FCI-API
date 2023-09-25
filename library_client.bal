import ballerina/grpc;


endpoint grpc:Client libraryClient:
    targetUrl: "grpc://localhost:50051"
;

function addBook(library:Book book) returns library:Book?|error {
    var response = grpc:ClientCaller(libraryClient) -> addBook(book);
    match response {
        
        library:Book if bookResponse => {
            return bookResponse;
        }
        error err({}) => {
            return (other|err);
        }
    }
}

type err record {
    
};

function createUsers(stream<library:User> userStream) returns library:User?|error {
    var response = grpc:ClientCaller(libraryClient) -> createUsers(userStream);
    match response {
        library:User userResponse => {
            return userResponse;
        }
        error err ()=> {
            return error("");
        }
    }
}

