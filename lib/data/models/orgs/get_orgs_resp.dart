class GetOrgsResp {
  String? login;
  dynamic id;
  String? nodeId;
  String? url;
  String? reposUrl;
  String? eventsUrl;
  String? hooksUrl;
  String? issuesUrl;
  String? membersUrl;
  String? publicMembersUrl;
  String? avatarUrl;
  String? description;

  GetOrgsResp(
      {this.login,
      this.id,
      this.nodeId,
      this.url,
      this.reposUrl,
      this.eventsUrl,
      this.hooksUrl,
      this.issuesUrl,
      this.membersUrl,
      this.publicMembersUrl,
      this.avatarUrl,
      this.description});

  GetOrgsResp.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    hooksUrl = json['hooks_url'];
    issuesUrl = json['issues_url'];
    membersUrl = json['members_url'];
    publicMembersUrl = json['public_members_url'];
    avatarUrl = json['avatar_url'];
    description = json['description'];
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
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.reposUrl != null) {
      data['repos_url'] = this.reposUrl;
    }
    if (this.eventsUrl != null) {
      data['events_url'] = this.eventsUrl;
    }
    if (this.hooksUrl != null) {
      data['hooks_url'] = this.hooksUrl;
    }
    if (this.issuesUrl != null) {
      data['issues_url'] = this.issuesUrl;
    }
    if (this.membersUrl != null) {
      data['members_url'] = this.membersUrl;
    }
    if (this.publicMembersUrl != null) {
      data['public_members_url'] = this.publicMembersUrl;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    return data;
  }
}
