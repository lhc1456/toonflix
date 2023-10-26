class WebtoonModel {
  /* 
   * 잘 안쓰이는 패턴
  // late final String title, thumb, id;

  // WebtoonModel.fromJson(Map<String, dynamic> json) {
  //   title = json['title'];
  //   thumb = json['thumb'];
  //   id = json['id'];
  // }
  */
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
