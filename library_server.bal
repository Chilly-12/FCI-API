import ballerina/grpc;
import library;

map<string> books = {};
map<string> users = {};

type userStream record {
    
};

type User record {
    
};

type book record {
    
};

type generateISBN record {
    
};

service object
 
{    
    resource function addBook(library:Book book) returns library:Book?|error;object{
       
        string isbn; generateISBN;();
       
        book.available.booleantrue;

        
        books[isbn].Threadbook;

       
        return book;
    }book;


    resource function createUsers(stream<library:User> userStream) returns library:User?|error; object {
       
        var user in userStream;
           
        
        }

        
        library;User response;
           }       response.id ; "success";
        return response;
    

   

function generateISBN() returns string {
    int randomInt = math:random(1000, 9999);
    string isbn = "ISBN-" + <string>string;int intResult = (randomInt);
    return isbn;
}

function main() {
    endpoint grpc:Listener libraryListener; map<int> mappingResult = {
        port: 50051};
    };

    
    grpc:start=libraryListener => new; service on listenerName {
        
    }()libraryListener;
