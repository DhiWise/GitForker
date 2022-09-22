class GetStarredResp {
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
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;
  String? homepage;
  dynamic size;
  dynamic stargazersCount;
  dynamic watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  dynamic forksCount;
  Null? mirrorUrl;
  bool? archived;
  bool? disabled;
  dynamic openIssuesCount;
  dynamic license;
  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;
  List? topics;
  String? visibility;
  dynamic forks;
  dynamic openIssues;
  dynamic watchers;
  String? defaultBranch;
  Permissions? permissions;

  GetStarredResp(
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
        this.deploymentsUrl,
        this.createdAt,
        this.updatedAt,
        this.pushedAt,
        this.gitUrl,
        this.sshUrl,
        this.cloneUrl,
        this.svnUrl,
        this.homepage,
        this.size,
        this.stargazersCount,
        this.watchersCount,
        this.language,
        this.hasIssues,
        this.hasProjects,
        this.hasDownloads,
        this.hasWiki,
        this.hasPages,
        this.forksCount,
        this.mirrorUrl,
        this.archived,
        this.disabled,
        this.openIssuesCount,
        this.license,
        this.allowForking,
        this.isTemplate,
        this.webCommitSignoffRequired,
        this.topics,
        this.visibility,
        this.forks,
        this.openIssues,
        this.watchers,
        this.defaultBranch,
        this.permissions});

  GetStarredResp.fromJson(Map<String, dynamic> json) {
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
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasDownloads = json['has_downloads'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    forksCount = json['forks_count'];
    mirrorUrl = json['mirror_url'];
    archived = json['archived'];
    disabled = json['disabled'];
    openIssuesCount = json['open_issues_count'];
    license = json['license'];
    allowForking = json['allow_forking'];
    isTemplate = json['is_template'];
    webCommitSignoffRequired = json['web_commit_signoff_required'];
    if (json['topics'] != null) {
      topics = [];
      json['topics'].forEach((v) {
        topics?.add(v);
      });
    }
    visibility = json['visibility'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    defaultBranch = json['default_branch'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
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
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.pushedAt != null) {
      data['pushed_at'] = this.pushedAt;
    }
    if (this.gitUrl != null) {
      data['git_url'] = this.gitUrl;
    }
    if (this.sshUrl != null) {
      data['ssh_url'] = this.sshUrl;
    }
    if (this.cloneUrl != null) {
      data['clone_url'] = this.cloneUrl;
    }
    if (this.svnUrl != null) {
      data['svn_url'] = this.svnUrl;
    }
    if (this.homepage != null) {
      data['homepage'] = this.homepage;
    }
    if (this.size != null) {
      data['size'] = this.size;
    }
    if (this.stargazersCount != null) {
      data['stargazers_count'] = this.stargazersCount;
    }
    if (this.watchersCount != null) {
      data['watchers_count'] = this.watchersCount;
    }
    if (this.language != null) {
      data['language'] = this.language;
    }
    if (this.hasIssues != null) {
      data['has_issues'] = this.hasIssues;
    }
    if (this.hasProjects != null) {
      data['has_projects'] = this.hasProjects;
    }
    if (this.hasDownloads != null) {
      data['has_downloads'] = this.hasDownloads;
    }
    if (this.hasWiki != null) {
      data['has_wiki'] = this.hasWiki;
    }
    if (this.hasPages != null) {
      data['has_pages'] = this.hasPages;
    }
    if (this.forksCount != null) {
      data['forks_count'] = this.forksCount;
    }
    if (this.mirrorUrl != null) {
      data['mirror_url'] = this.mirrorUrl;
    }
    if (this.archived != null) {
      data['archived'] = this.archived;
    }
    if (this.disabled != null) {
      data['disabled'] = this.disabled;
    }
    if (this.openIssuesCount != null) {
      data['open_issues_count'] = this.openIssuesCount;
    }
    if (this.license != null) {
      data['license'] = this.license;
    }
    if (this.allowForking != null) {
      data['allow_forking'] = this.allowForking;
    }
    if (this.isTemplate != null) {
      data['is_template'] = this.isTemplate;
    }
    if (this.webCommitSignoffRequired != null) {
      data['web_commit_signoff_required'] = this.webCommitSignoffRequired;
    }
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v).toList();
    }
    if (this.visibility != null) {
      data['visibility'] = this.visibility;
    }
    if (this.forks != null) {
      data['forks'] = this.forks;
    }
    if (this.openIssues != null) {
      data['open_issues'] = this.openIssues;
    }
    if (this.watchers != null) {
      data['watchers'] = this.watchers;
    }
    if (this.defaultBranch != null) {
      data['default_branch'] = this.defaultBranch;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
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

class Permissions {
  bool? admin;
  bool? maintain;
  bool? push;
  bool? triage;
  bool? pull;

  Permissions({this.admin, this.maintain, this.push, this.triage, this.pull});

  Permissions.fromJson(Map<String, dynamic> json) {
    admin = json['admin'];
    maintain = json['maintain'];
    push = json['push'];
    triage = json['triage'];
    pull = json['pull'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.admin != null) {
      data['admin'] = this.admin;
    }
    if (this.maintain != null) {
      data['maintain'] = this.maintain;
    }
    if (this.push != null) {
      data['push'] = this.push;
    }
    if (this.triage != null) {
      data['triage'] = this.triage;
    }
    if (this.pull != null) {
      data['pull'] = this.pull;
    }
    return data;
  }
}

class License {
  String? key;
  String? name;
  String? spdxId;
  String? url;
  String? nodeId;

  License({this.key, this.name, this.spdxId, this.url, this.nodeId});

  License.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
    spdxId = json['spdx_id'];
    url = json['url'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.key != null) {
      data['key'] = this.key;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.spdxId != null) {
      data['spdx_id'] = this.spdxId;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.nodeId != null) {
      data['node_id'] = this.nodeId;
    }
    return data;
  }
}
