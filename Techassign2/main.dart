// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Class to create student and teacher objects and call methods to print information
class School {
  void run() {
    // Create a student object
    var student = Student('Alice', 15, '10th');

    // Create a teacher object
    var teacher = Teacher('Mr. Smith', 35, 'Mathematics');

    // Print student and teacher information
    student.printStudentInfo();
    print('\n'); // Adding newline for clarity
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create an instance of School class
  var school = School();

  // Call the run method to execute the program
  school.run();
}
