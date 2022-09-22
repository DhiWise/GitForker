class GetIssuesResp {
  dynamic totalCount;
  bool? incompleteResults;
  List<Items>? items;

  GetIssuesResp({this.totalCount, this.incompleteResults, this.items});

  GetIssuesResp.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.totalCount != null) {
      data['total_count'] = this.totalCount;
    }
    if (this.incompleteResults != null) {
      data['incomplete_results'] = this.incompleteResults;
    }
    if (this.items != null) {
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? url;
  String? repositoryUrl;
  String? labelsUrl;
  String? commentsUrl;
  String? eventsUrl;
  String? htmlUrl;
  dynamic id;
  String? nodeId;
  dynamic number;
  String? title;
  User? user;
  List<Labels>? labels;
  String? state;
  bool? locked;
  Assignee? assignee;
  List<Assignees>? assignees;
  dynamic milestone;
  dynamic comments;
  String? createdAt;
  String? updatedAt;
  String? closedAt;
  String? authorAssociation;
  dynamic activeLockReason;
  bool? draft;
  PullRequest? pullRequest;
  dynamic body;
  Reactions? reactions;
  String? timelineUrl;
  dynamic performedViaGithubApp;
  dynamic stateReason;
  dynamic score;

  Items(
      {this.url,
      this.repositoryUrl,
      this.labelsUrl,
      this.commentsUrl,
      this.eventsUrl,
      this.htmlUrl,
      this.id,
      this.nodeId,
      this.number,
      this.title,
      this.user,
      this.labels,
      this.state,
      this.locked,
      this.assignee,
      this.assignees,
      this.milestone,
      this.comments,
      this.createdAt,
      this.updatedAt,
      this.closedAt,
      this.authorAssociation,
      this.activeLockReason,
      this.draft,
      this.pullRequest,
      this.body,
      this.reactions,
      this.timelineUrl,
      this.performedViaGithubApp,
      this.stateReason,
      this.score});

  Items.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    repositoryUrl = json['repository_url'];
    labelsUrl = json['labels_url'];
    commentsUrl = json['comments_url'];
    eventsUrl = json['events_url'];
    htmlUrl = json['html_url'];
    id = json['id'];
    nodeId = json['node_id'];
    number = json['number'];
    title = json['title'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['labels'] != null) {
      labels = <Labels>[];
      json['labels'].forEach((v) {
        labels?.add(Labels.fromJson(v));
      });
    }
    state = json['state'];
    locked = json['locked'];
    assignee =
        json['assignee'] != null ? Assignee.fromJson(json['assignee']) : null;
    if (json['assignees'] != null) {
      assignees = <Assignees>[];
      json['assignees'].forEach((v) {
        assignees?.add(Assignees.fromJson(v));
      });
    }
    milestone = json['milestone'];
    comments = json['comments'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    closedAt = json['closed_at'];
    authorAssociation = json['author_association'];
    activeLockReason = json['active_lock_reason'];
    draft = json['draft'];
    pullRequest = json['pull_request'] != null
        ? PullRequest.fromJson(json['pull_request'])
        : null;
    body = json['body'];
    reactions = json['reactions'] != null
        ? Reactions.fromJson(json['reactions'])
        : null;
    timelineUrl = json['timeline_url'];
    performedViaGithubApp = json['performed_via_github_app'];
    stateReason = json['state_reason'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.repositoryUrl != null) {
      data['repository_url'] = this.repositoryUrl;
    }
    if (this.labelsUrl != null) {
      data['labels_url'] = this.labelsUrl;
    }
    if (this.commentsUrl != null) {
      data['comments_url'] = this.commentsUrl;
    }
    if (this.eventsUrl != null) {
      data['events_url'] = this.eventsUrl;
    }
    if (this.htmlUrl != null) {
      data['html_url'] = this.htmlUrl;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.nodeId != null) {
      data['node_id'] = this.nodeId;
    }
    if (this.number != null) {
      data['number'] = this.number;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    if (this.labels != null) {
      data['labels'] = this.labels?.map((v) => v.toJson()).toList();
    }
    if (this.state != null) {
      data['state'] = this.state;
    }
    if (this.locked != null) {
      data['locked'] = this.locked;
    }
    if (this.assignee != null) {
      data['assignee'] = this.assignee?.toJson();
    }
    if (this.assignees != null) {
      data['assignees'] = this.assignees?.map((v) => v.toJson()).toList();
    }
    if (this.milestone != null) {
      data['milestone'] = this.milestone;
    }
    if (this.comments != null) {
      data['comments'] = this.comments;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.closedAt != null) {
      data['closed_at'] = this.closedAt;
    }
    if (this.authorAssociation != null) {
      data['author_association'] = this.authorAssociation;
    }
    if (this.activeLockReason != null) {
      data['active_lock_reason'] = this.activeLockReason;
    }
    if (this.draft != null) {
      data['draft'] = this.draft;
    }
    if (this.pullRequest != null) {
      data['pull_request'] = this.pullRequest?.toJson();
    }
    if (this.body != null) {
      data['body'] = this.body;
    }
    if (this.reactions != null) {
      data['reactions'] = this.reactions?.toJson();
    }
    if (this.timelineUrl != null) {
      data['timeline_url'] = this.timelineUrl;
    }
    if (this.performedViaGithubApp != null) {
      data['performed_via_github_app'] = this.performedViaGithubApp;
    }
    if (this.stateReason != null) {
      data['state_reason'] = this.stateReason;
    }
    if (this.score != null) {
      data['score'] = this.score;
    }
    return data;
  }
}

class User {
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

  User(
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
      this.siteAdmin});

  User.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class Labels {
  dynamic id;
  String? nodeId;
  String? url;
  String? name;
  String? color;
  bool? kdefault;
  String? description;

  Labels(
      {this.id,
      this.nodeId,
      this.url,
      this.name,
      this.color,
      this.kdefault,
      this.description});

  Labels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    name = json['name'];
    color = json['color'];
    kdefault = json['default'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.nodeId != null) {
      data['node_id'] = this.nodeId;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.color != null) {
      data['color'] = this.color;
    }
    if (this.kdefault != null) {
      data['default'] = this.kdefault;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    return data;
  }
}

class Assignee {
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

  Assignee(
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
      this.siteAdmin});

  Assignee.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class Assignees {
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

  Assignees(
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
      this.siteAdmin});

  Assignees.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class PullRequest {
  String? url;
  String? htmlUrl;
  String? diffUrl;
  String? patchUrl;
  String? mergedAt;

  PullRequest(
      {this.url, this.htmlUrl, this.diffUrl, this.patchUrl, this.mergedAt});

  PullRequest.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    htmlUrl = json['html_url'];
    diffUrl = json['diff_url'];
    patchUrl = json['patch_url'];
    mergedAt = json['merged_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.htmlUrl != null) {
      data['html_url'] = this.htmlUrl;
    }
    if (this.diffUrl != null) {
      data['diff_url'] = this.diffUrl;
    }
    if (this.patchUrl != null) {
      data['patch_url'] = this.patchUrl;
    }
    if (this.mergedAt != null) {
      data['merged_at'] = this.mergedAt;
    }
    return data;
  }
}

class Reactions {
  String? url;
  dynamic totalCount;
  dynamic s1;
  dynamic laugh;
  dynamic hooray;
  dynamic confused;
  dynamic heart;
  dynamic rocket;
  dynamic eyes;

  Reactions(
      {this.url,
      this.totalCount,
      this.s1,
      this.laugh,
      this.hooray,
      this.confused,
      this.heart,
      this.rocket,
      this.eyes});

  Reactions.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    totalCount = json['total_count'];
    s1 = json['+1'];
    s1 = json['-1'];
    laugh = json['laugh'];
    hooray = json['hooray'];
    confused = json['confused'];
    heart = json['heart'];
    rocket = json['rocket'];
    eyes = json['eyes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.totalCount != null) {
      data['total_count'] = this.totalCount;
    }
    if (this.s1 != null) {
      data['+1'] = this.s1;
    }
    if (this.s1 != null) {
      data['-1'] = this.s1;
    }
    if (this.laugh != null) {
      data['laugh'] = this.laugh;
    }
    if (this.hooray != null) {
      data['hooray'] = this.hooray;
    }
    if (this.confused != null) {
      data['confused'] = this.confused;
    }
    if (this.heart != null) {
      data['heart'] = this.heart;
    }
    if (this.rocket != null) {
      data['rocket'] = this.rocket;
    }
    if (this.eyes != null) {
      data['eyes'] = this.eyes;
    }
    return data;
  }
}
