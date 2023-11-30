class Course {
  final String courseUuid;
  final String title;
  final int studentNo;
  final Author author;
  final String price;
  final String description;
  final int totalLectures;

  Course({
    required this.courseUuid,
    required this.title,
    required this.studentNo,
    required this.author,
    required this.price,
    required this.description,
    required this.totalLectures,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseUuid: json['course_uuid'],
      title: json['title'],
      studentNo: json['student_no'],
      author: Author.fromJson(json['author']),
      price: json['price'],
      description: json['description'],
      totalLectures: json['total_lectures'],
    );
  }
}

class Author {
  final String name;

  Author({required this.name});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
    );
  }
}

class Sector2 {
  final List<Course> data;
  final String sectorName;
  final int totalStudents;

  Sector2({
    required this.data,
    required this.sectorName,
    required this.totalStudents,
  });

  factory Sector2.fromJson(Map<String, dynamic> json) {
    var courseList = json['data'] as List;
    List<Course> courses = courseList.map((course) => Course.fromJson(course)).toList();

    return Sector2(
      data: courses,
      sectorName: json['sector_name'],
      totalStudents: json['total_students'],
    );
  }
}
