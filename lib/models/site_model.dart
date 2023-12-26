part of direct_link;

class SiteModel {
  final String? title;
  final String? thumbnail;
  final String? duration;
  final List<Link>? links;

  SiteModel({
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.links,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'thumbnail': thumbnail,
      'duration': duration,
      'links': links?.map((x) => x.toJson()).toList(),
    };
  }
}

class Link {
  final String quality;
  final String link;
  final String? type;

  Link({
    required this.quality,
    required this.link,
    required this.type,
  });

  Map<String, dynamic> toJson() => {
        'quality': quality,
        'link': link,
        'type': type,
      };
}
