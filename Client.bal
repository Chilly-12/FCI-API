import ballerina/http;
import ballerina/io;


type delete record {
    
};

type put record {
    
};


public function main() {
    
  
     endpoint http:Client = {
        url: "http://localhost:8080/api/v1"
    };
    
    
    var lecturer = { staffNumber: "A2023", officeNumber: "A20", staffName: "Alex Newman", title: "Lecturer", courses: [] };
    var response = post("/lecturers",lecturer);
    boolean booleanResult = check response is http:Response;
    
    match response.statusCode {
        201 => {io:println("Lecturer added successfully");
        io:println("Failed to add lecturer: " + response.getReasonPhrase());
    }
}   
    response = get("/lecturers");
    boolean booleanResult2 = check response is http:Response;
    
    match response.statusCode 
  {      200 => {
            var lecturers = response.getJsonArrayPayload();
            io:println("List of Lecturers: " + lecturers.toString());
        }
        { io:error("Error: ", + 0)
    }
 =>{  
    
    var updatedLecturer = { staffNumber: "B2023", officeNumber: "B20", staffName: "Alex Newman", title: "Senior Lecturer", courses: []};
    
     }
  error put("/lecturers?staffNumber=B2023")
  

 if   check response is http:Response
    
   => {if (response.statusCode ==200){
         io:println("Lecturer updated successfully");
        io:println("Failed to update lecturer: " + response.getReasonPhrase());
    }
  }
 }
    
    response = get("/lecturers/{staffNumber}");
    boolean booleanResult1 = check response is http:Response;
    
    match response.statusCode {
        200 => {
            var Lecturer = response.getJsonPayload();
            io:println("Lecturer Details: " + lecturer.toString());
        }
        _ => {io:println("Failed to retrieve lecturer details: " + response.getReasonPhrase());
    }
    
   
   error delete("/lecturers/C2023")
 
  if  check response is http:Response
    
    =>{ if (response.statusCode ==200) {
       io:println("Lecturer deleted successfully");
        io:println("Failed to delete lecturer: " + response.getReasonPhrase());
    }
    
    
   get("/courses/DSA611S/lecturers");
    boolean c = check response is http:Response;
    
    match response.statusCode {
        200 => {
            var lecturers = response.getJsonArrayPayload();
            println("DSA612S Lecturers: " + lecturers.toString());
        }
        _ =>{ println("Failed to retrieve lecturers: " + response.reasonPhrase);
    }
    {
    get:()
    
 }  if check response is http:Response
    
     => {
        int statusCode = response.statusCode;
         {
            var lecturers = response.getJsonArrayPayload();
           io:println("Lecturers in office A20: " + lecturers.toString());
        }
          io:println("Failed to retrieve lecturers: " + response.reasonPhrase);
       
      }
     }
    }
   }
  }

function get(string s) {
    
}

function println(any a) {
    
};
