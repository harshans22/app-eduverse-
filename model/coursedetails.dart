class Comment {
  final User user;
  final String message;
  final DateTime created;

  Comment({
    required this.user,
    required this.message,
    required this.created,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      user: User.fromJson(json['user']),
      message: json['message'],
      created: DateTime.parse(json['created']),
    );
  }
}

class User {
  final String name;

  User({required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
    );
  }
}

class Episode {
  final String title;
  final String length;
  final String file;

  Episode({
    required this.title,
    required this.length,
    required this.file,
  });

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      title: json['title'],
      length: json['length'],
      file: json['file'],
    );
  }
}

class CourseSection {
  final String sectionTitle;
  final List<Episode> episodes;
  final String totalDuration;

  CourseSection({
    required this.sectionTitle,
    required this.episodes,
    required this.totalDuration,
  });

  factory CourseSection.fromJson(Map<String, dynamic> json) {
    var episodeList = json['episodes'] as List;
    List<Episode> episodes = episodeList.map((episode) => Episode.fromJson(episode)).toList();

    return CourseSection(
      sectionTitle: json['section_title'],
      episodes: episodes,
      totalDuration: json['total_duration'],
    );
  }
}

class Coursedetails {
  final List<Comment> comments;
  final User author;
  final List<CourseSection> courseSections;
  final int studentNo;
  final int totalLectures;
  final String totalDuration;
  final String title;
  final String description;
  final DateTime created;
  final DateTime updated;
  final String language;
  final String courseUuid;
  final String price;

  Coursedetails({
    required this.comments,
    required this.author,
    required this.courseSections,
    required this.studentNo,
    required this.totalLectures,
    required this.totalDuration,
    required this.title,
    required this.description,
    required this.created,
    required this.updated,
    required this.language,
    required this.courseUuid,
    required this.price,
  });

  factory Coursedetails.fromJson(Map<String, dynamic> json) {
    var commentList = json['comments'] as List;
    List<Comment> comments = commentList.map((comment) => Comment.fromJson(comment)).toList();

    var courseSectionList = json['course_section'] as List;
    List<CourseSection> courseSections =
        courseSectionList.map((section) => CourseSection.fromJson(section)).toList();

    return Coursedetails(
      comments: comments,
      author: User.fromJson(json['author']),
      courseSections: courseSections,
      studentNo: json['student_no'],
      totalLectures: json['total_lectures'],
      totalDuration: json['total_duration'],
      title: json['title'],
      description: json['description'],
      created: DateTime.parse(json['created']),
      updated: DateTime.parse(json['updated']),
      language: json['language'],
      courseUuid: json['course_uuid'],
      price: json['price'],
    );
  }
}
