class GetUserResp {
  String? login;
  dynamic id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  String? name;
  dynamic company;
  String? blog;
  String? location;
  dynamic email;
  bool? hireable;
  String? bio;
  dynamic twitterUsername;
  dynamic publicRepos;
  dynamic publicGists;
  dynamic followers;
  dynamic following;
  String? createdAt;
  String? updatedAt;
  dynamic privateGists;
  dynamic totalPrivateRepos;
  dynamic ownedPrivateRepos;
  dynamic diskUsage;
  dynamic collaborators;
  bool? twoFactorAuthentication;
  Plan? plan;

  GetUserResp(
      {this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin,
        this.name,
        this.company,
        this.blog,
        this.location,
        this.email,
        this.hireable,
        this.bio,
        this.twitterUsername,
        this.publicRepos,
        this.publicGists,
        this.followers,
        this.following,
        this.createdAt,
        this.updatedAt,
        this.privateGists,
        this.totalPrivateRepos,
        this.ownedPrivateRepos,
        this.diskUsage,
        this.collaborators,
        this.twoFactorAuthentication,
        this.plan});

  GetUserResp.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    privateGists = json['private_gists'];
    totalPrivateRepos = json['total_private_repos'];
    ownedPrivateRepos = json['owned_private_repos'];
    diskUsage = json['disk_usage'];
    collaborators = json['collaborators'];
    twoFactorAuthentication = json['two_factor_authentication'];
    plan = json['plan'] != null ? Plan.fromJson(json['plan']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.login != null) {
      data['login'] = this.login;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.nodeId != null) {
      data['node_id'] = this.nodeId;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.gravatarId != null) {
      data['gravatar_id'] = this.gravatarId;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.htmlUrl != null) {
      data['html_url'] = this.htmlUrl;
    }
    if (this.followersUrl != null) {
      data['followers_url'] = this.followersUrl;
    }
    if (this.followingUrl != null) {
      data['following_url'] = this.followingUrl;
    }
    if (this.gistsUrl != null) {
      data['gists_url'] = this.gistsUrl;
    }
    if (this.starredUrl != null) {
      data['starred_url'] = this.starredUrl;
    }
    if (this.subscriptionsUrl != null) {
      data['subscriptions_url'] = this.subscriptionsUrl;
    }
    if (this.organizationsUrl != null) {
      data['organizations_url'] = this.organizationsUrl;
    }
    if (this.reposUrl != null) {
      data['repos_url'] = this.reposUrl;
    }
    if (this.eventsUrl != null) {
      data['events_url'] = this.eventsUrl;
    }
    if (this.receivedEventsUrl != null) {
      data['received_events_url'] = this.receivedEventsUrl;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.siteAdmin != null) {
      data['site_admin'] = this.siteAdmin;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.company != null) {
      data['company'] = this.company;
    }
    if (this.blog != null) {
      data['blog'] = this.blog;
    }
    if (this.location != null) {
      data['location'] = this.location;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.hireable != null) {
      data['hireable'] = this.hireable;
    }
    if (this.bio != null) {
      data['bio'] = this.bio;
    }
    if (this.twitterUsername != null) {
      data['twitter_username'] = this.twitterUsername;
    }
    if (this.publicRepos != null) {
      data['public_repos'] = this.publicRepos;
    }
    if (this.publicGists != null) {
      data['public_gists'] = this.publicGists;
    }
    if (this.followers != null) {
      data['followers'] = this.followers;
    }
    if (this.following != null) {
      data['following'] = this.following;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.privateGists != null) {
      data['private_gists'] = this.privateGists;
    }
    if (this.totalPrivateRepos != null) {
      data['total_private_repos'] = this.totalPrivateRepos;
    }
    if (this.ownedPrivateRepos != null) {
      data['owned_private_repos'] = this.ownedPrivateRepos;
    }
    if (this.diskUsage != null) {
      data['disk_usage'] = this.diskUsage;
    }
    if (this.collaborators != null) {
      data['collaborators'] = this.collaborators;
    }
    if (this.twoFactorAuthentication != null) {
      data['two_factor_authentication'] = this.twoFactorAuthentication;
    }
    if (this.plan != null) {
      data['plan'] = this.plan?.toJson();
    }
    return data;
  }
}

class Plan {
  String? name;
  dynamic space;
  dynamic collaborators;
  dynamic privateRepos;

  Plan({this.name, this.space, this.collaborators, this.privateRepos});

  Plan.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    space = json['space'];
    collaborators = json['collaborators'];
    privateRepos = json['private_repos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.space != null) {
      data['space'] = this.space;
    }
    if (this.collaborators != null) {
      data['collaborators'] = this.collaborators;
    }
    if (this.privateRepos != null) {
      data['private_repos'] = this.privateRepos;
    }
    return data;
  }
}
