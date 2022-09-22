class GetNotificationsResp {
  String? id;
  bool? unread;
  String? reason;
  String? updatedAt;
  dynamic lastReadAt;
  Subject? subject;
  Repository? repository;
  String? url;
  String? subscriptionUrl;

  GetNotificationsResp(
      {this.id,
      this.unread,
      this.reason,
      this.updatedAt,
      this.lastReadAt,
      this.subject,
      this.repository,
      this.url,
      this.subscriptionUrl});

  GetNotificationsResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    unread = json['unread'];
    reason = json['reason'];
    updatedAt = json['updated_at'];
    lastReadAt = json['last_read_at'];
    subject =
        json['subject'] != null ? Subject.fromJson(json['subject']) : null;
    repository = json['repository'] != null
        ? Repository.fromJson(json['repository'])
        : null;
    url = json['url'];
    subscriptionUrl = json['subscription_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.unread != null) {
      data['unread'] = this.unread;
    }
    if (this.reason != null) {
      data['reason'] = this.reason;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.lastReadAt != null) {
      data['last_read_at'] = this.lastReadAt;
    }
    if (this.subject != null) {
      data['subject'] = this.subject?.toJson();
    }
    if (this.repository != null) {
      data['repository'] = this.repository?.toJson();
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.subscriptionUrl != null) {
      data['subscription_url'] = this.subscriptionUrl;
    }
    return data;
  }
}

class Subject {
  String? title;
  String? url;
  String? latestCommentUrl;
  String? type;

  Subject({this.title, this.url, this.latestCommentUrl, this.type});

  Subject.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    latestCommentUrl = json['latest_comment_url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.latestCommentUrl != null) {
      data['latest_comment_url'] = this.latestCommentUrl;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}

class Repository {
  dynamic id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  Owner? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;

  Repository(
      {this.id,
      this.nodeId,
      this.name,
      this.fullName,
      this.private,
      this.owner,
      this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      this.forksUrl,
      this.keysUrl,
      this.collaboratorsUrl,
      this.teamsUrl,
      this.hooksUrl,
      this.issueEventsUrl,
      this.eventsUrl,
      this.assigneesUrl,
      this.branchesUrl,
      this.tagsUrl,
      this.blobsUrl,
      this.gitTagsUrl,
      this.gitRefsUrl,
      this.treesUrl,
      this.statusesUrl,
      this.languagesUrl,
      this.stargazersUrl,
      this.contributorsUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.commitsUrl,
      this.gitCommitsUrl,
      this.commentsUrl,
      this.issueCommentUrl,
      this.contentsUrl,
      this.compareUrl,
      this.mergesUrl,
      this.archiveUrl,
      this.downloadsUrl,
      this.issuesUrl,
      this.pullsUrl,
      this.milestonesUrl,
      this.notificationsUrl,
      this.labelsUrl,
      this.releasesUrl,
      this.deploymentsUrl});

  Repository.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    private = json['private'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    forksUrl = json['forks_url'];
    keysUrl = json['keys_url'];
    collaboratorsUrl = json['collaborators_url'];
    teamsUrl = json['teams_url'];
    hooksUrl = json['hooks_url'];
    issueEventsUrl = json['issue_events_url'];
    eventsUrl = json['events_url'];
    assigneesUrl = json['assignees_url'];
    branchesUrl = json['branches_url'];
    tagsUrl = json['tags_url'];
    blobsUrl = json['blobs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    statusesUrl = json['statuses_url'];
    languagesUrl = json['languages_url'];
    stargazersUrl = json['stargazers_url'];
    contributorsUrl = json['contributors_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    commitsUrl = json['commits_url'];
    gitCommitsUrl = json['git_commits_url'];
    commentsUrl = json['comments_url'];
    issueCommentUrl = json['issue_comment_url'];
    contentsUrl = json['contents_url'];
    compareUrl = json['compare_url'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.nodeId != null) {
      data['node_id'] = this.nodeId;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.fullName != null) {
      data['full_name'] = this.fullName;
    }
    if (this.private != null) {
      data['private'] = this.private;
    }
    if (this.owner != null) {
      data['owner'] = this.owner?.toJson();
    }
    if (this.htmlUrl != null) {
      data['html_url'] = this.htmlUrl;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.fork != null) {
      data['fork'] = this.fork;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.forksUrl != null) {
      data['forks_url'] = this.forksUrl;
    }
    if (this.keysUrl != null) {
      data['keys_url'] = this.keysUrl;
    }
    if (this.collaboratorsUrl != null) {
      data['collaborators_url'] = this.collaboratorsUrl;
    }
    if (this.teamsUrl != null) {
      data['teams_url'] = this.teamsUrl;
    }
    if (this.hooksUrl != null) {
      data['hooks_url'] = this.hooksUrl;
    }
    if (this.issueEventsUrl != null) {
      data['issue_events_url'] = this.issueEventsUrl;
    }
    if (this.eventsUrl != null) {
      data['events_url'] = this.eventsUrl;
    }
    if (this.assigneesUrl != null) {
      data['assignees_url'] = this.assigneesUrl;
    }
    if (this.branchesUrl != null) {
      data['branches_url'] = this.branchesUrl;
    }
    if (this.tagsUrl != null) {
      data['tags_url'] = this.tagsUrl;
    }
    if (this.blobsUrl != null) {
      data['blobs_url'] = this.blobsUrl;
    }
    if (this.gitTagsUrl != null) {
      data['git_tags_url'] = this.gitTagsUrl;
    }
    if (this.gitRefsUrl != null) {
      data['git_refs_url'] = this.gitRefsUrl;
    }
    if (this.treesUrl != null) {
      data['trees_url'] = this.treesUrl;
    }
    if (this.statusesUrl != null) {
      data['statuses_url'] = this.statusesUrl;
    }
    if (this.languagesUrl != null) {
      data['languages_url'] = this.languagesUrl;
    }
    if (this.stargazersUrl != null) {
      data['stargazers_url'] = this.stargazersUrl;
    }
    if (this.contributorsUrl != null) {
      data['contributors_url'] = this.contributorsUrl;
    }
    if (this.subscribersUrl != null) {
      data['subscribers_url'] = this.subscribersUrl;
    }
    if (this.subscriptionUrl != null) {
      data['subscription_url'] = this.subscriptionUrl;
    }
    if (this.commitsUrl != null) {
      data['commits_url'] = this.commitsUrl;
    }
    if (this.gitCommitsUrl != null) {
      data['git_commits_url'] = this.gitCommitsUrl;
    }
    if (this.commentsUrl != null) {
      data['comments_url'] = this.commentsUrl;
    }
    if (this.issueCommentUrl != null) {
      data['issue_comment_url'] = this.issueCommentUrl;
    }
    if (this.contentsUrl != null) {
      data['contents_url'] = this.contentsUrl;
    }
    if (this.compareUrl != null) {
      data['compare_url'] = this.compareUrl;
    }
    if (this.mergesUrl != null) {
      data['merges_url'] = this.mergesUrl;
    }
    if (this.archiveUrl != null) {
      data['archive_url'] = this.archiveUrl;
    }
    if (this.downloadsUrl != null) {
      data['downloads_url'] = this.downloadsUrl;
    }
    if (this.issuesUrl != null) {
      data['issues_url'] = this.issuesUrl;
    }
    if (this.pullsUrl != null) {
      data['pulls_url'] = this.pullsUrl;
    }
    if (this.milestonesUrl != null) {
      data['milestones_url'] = this.milestonesUrl;
    }
    if (this.notificationsUrl != null) {
      data['notifications_url'] = this.notificationsUrl;
    }
    if (this.labelsUrl != null) {
      data['labels_url'] = this.labelsUrl;
    }
    if (this.releasesUrl != null) {
      data['releases_url'] = this.releasesUrl;
    }
    if (this.deploymentsUrl != null) {
      data['deployments_url'] = this.deploymentsUrl;
    }
    return data;
  }
}

class Owner {
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

  Owner(
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

  Owner.fromJson(Map<String, dynamic> json) {
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
