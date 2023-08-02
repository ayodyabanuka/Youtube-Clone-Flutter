class VideoCard {
  String image;
  String title;
  String user;
  String views;

  String get getImage => this.image;

  set setImage(String image) => this.image = image;

  get getTitle => this.title;

  set setTitle(title) => this.title = title;

  get getUser => this.user;

  set setUser(user) => this.user = user;

  get getViews => this.views;

  set setViews(views) => this.views = views;

  VideoCard(this.image, this.title, this.user, this.views);
}
