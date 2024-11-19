class CricketScore {
  final String matchId;
  final String teamOneName;
  final String teamTwoName;
  final int teamOneScore;
  final int teamTwoScore;
  final bool isMatchRunning;
  final String winnerTeam;

  CricketScore({
    required this.matchId,
    required this.teamOneName,
    required this.teamTwoName,
    required this.teamOneScore,
    required this.teamTwoScore,
    required this.isMatchRunning,
    required this.winnerTeam,
  });

  factory CricketScore.fromJson(String id, Map<String, dynamic> json) {
    return CricketScore(
      matchId: id,
      teamOneName: json['teamOne'],
      teamTwoName: json['teamTwo'],
      teamOneScore: json['teamOneScore'],
      teamTwoScore: json['teamTwoScore'],
      isMatchRunning: json['isMatchRunning'],
      winnerTeam: json['winnerTeam'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'teamOne' : teamOneName,
      'teamTwo' : teamTwoName,
      'teamOneScore' : teamOneScore,
      'teamTwoScore' : teamTwoScore,
      'isMatchRunning' : isMatchRunning,
      'winnerTeam' : winnerTeam,
    };
  }
}
