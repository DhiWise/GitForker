class readMe {
  String? name;
  String? path;
  String? sha;
  dynamic size;
  String? url;
  String? htmlUrl;
  String? gitUrl;
  String? downloadUrl;
  String? type;
  String? content;
  String? encoding;
  Links? lLinks;

  readMe(
      {this.name,
        this.path,
        this.sha,
        this.size,
        this.url,
        this.htmlUrl,
        this.gitUrl,
        this.downloadUrl,
        this.type,
        this.content,
        this.encoding,
        this.lLinks});

  readMe.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    path = json['path'];
    sha = json['sha'];
    size = json['size'];
    url = json['url'];
    htmlUrl = json['html_url'];
    gitUrl = json['git_url'];
    downloadUrl = json['download_url'];
    type = json['type'];
    content = json['content'];
    encoding = json['encoding'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['path'] = this.path;
    data['sha'] = this.sha;
    data['size'] = this.size;
    data['url'] = this.url;
    data['html_url'] = this.htmlUrl;
    data['git_url'] = this.gitUrl;
    data['download_url'] = this.downloadUrl;
    data['type'] = this.type;
    data['content'] = this.content;
    data['encoding'] = this.encoding;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? git;
  String? html;

  Links({this.self, this.git, this.html});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    git = json['git'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['git'] = this.git;
    data['html'] = this.html;
    return data;
  }
}