import ballerina/http;
import ballerina/io;


public type Lecturer record {
    string staffNumber;
    string officeNumber;
    string staffName;
    string title;
    Course[] course;
    string lecturer;
};


type Course record {
    string courseName;
    string courseCode;
    int nqfLevel;
};


map<Lecturer> lecturers = {};
map<Lecturer> Courses = {};

public function addLecturer(http:Caller caller, Lecturer lecturer) returns error? {

    if (lecturers.hasKey(lecturer.staffNumber)) {
        return error ("Lecturer already exists");
    }
    
    lecturers[lecturer.staffNumber] = lecturer;
    return ();
}


# Description.
#
# + caller - parameter description
# + return - return value description
public function getLecturers(http:Caller caller) returns Lecturer[] {

    () request = ();
    var payload = ();

    Lecturer[] lecturerArray =[];

    if(payload is json[]){
        json[] lecturers = <json[]>payload;

        json[] lecturesArray = [];
    }

    foreach  var lecturer in lecturers {
        var staffNumber = lecturer["staffNumber"].toString();
        var officeNumber = lecturer["officeNumber"].toString();
        var lectureRecord = {staffNumber: staffNumber, officeNumber: officeNumber};
        lecturerArray.push();
       
    }
    
    return lecturerArray;
}


public function updateLecturer(http:Caller caller, string staffNumber, Lecturer updatedLecturer) returns error? {
    
    if (!lecturers.hasKey(staffNumber)) {
        return error ("Lecturer not found");
    }
    
    lecturers[staffNumber] = updatedLecturer;
    return ();
}


public function getLecturerByStaffNumber(http:Caller caller, string staffNumber) returns Lecturer? {
    return lecturers[staffNumber];
}


public function deleteLecturer(http:Caller caller, string staffNumber) returns error? {
   
    if (!lecturers.hasKey(staffNumber)) {
        return error ("Lecturer not found");
    }
    
    _ = lecturers.remove(staffNumber);
    return ();
}


# Description.
#
# + caller - parameter description  
# + courseCode - parameter description
# + return - return value description
public function getLecturersByCourse(http:Caller caller, string courseCode) returns Lecturer[] {
    
    Lecturer[] lecturersByCourse = [];
    foreach var lecturer in lecturers {
        foreach var course in lecturers.course {
            if (courseCode == courseCode) {
                lecturersByCourse.push();
                break;
            }
        }
    }
    
    io:print("Lectures by Course: " +lecturersByCourse.toString());
    return lecturersByCourse;
}

public function getLecturersByOffice(http:Caller caller, string officeNumber) returns Lecturer[] {
Lecturer[] lecturers =[]; 
  
    Lecturer[] lecturersByOffice = [];
    foreach var lecturer in lecturers{

        if (lecturer.officeNumber == officeNumber) {
            lecturersByOffice.push();
        }
    }
    
    return lecturersByOffice;
}