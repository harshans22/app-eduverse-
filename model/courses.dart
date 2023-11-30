class FeaturedCourse {
  final String courseUuid;
  final String title;
  final int studentNo;
  final Author author;
  final String price;

  FeaturedCourse({
    required this.courseUuid,
    required this.title,
    required this.studentNo,
    required this.author,
    required this.price,
  });

  factory FeaturedCourse.fromJson(Map<String, dynamic> json) {
    return FeaturedCourse(
      courseUuid: json['course_uuid'],
      title: json['title'],
      studentNo: json['student_no'],
      author: Author.fromJson(json['author']),
      price: json['price'],
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

class Sector {
  final String sectorName;
  final String sectorUuid;
  final List<FeaturedCourse> featuredCourses;

  Sector({
    required this.sectorName,
    required this.sectorUuid,
    required this.featuredCourses,
  });

  factory Sector.fromJson(Map<String, dynamic> json) {
    List<FeaturedCourse> featuredCourses = (json['featured_course'] as List)
        .map((course) => FeaturedCourse.fromJson(course))
        .toList();

    return Sector(
      sectorName: json['sector_name'],
      sectorUuid: json['sector_uuid'],
      featuredCourses: featuredCourses,
    );
  }
}
