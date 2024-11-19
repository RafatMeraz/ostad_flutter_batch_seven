import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:live_class_project/cricket_score.dart';

class LiveScoreScreen extends StatefulWidget {
  const LiveScoreScreen({super.key});

  @override
  State<LiveScoreScreen> createState() => _LiveScoreScreenState();
}

class _LiveScoreScreenState extends State<LiveScoreScreen> {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  List<CricketScore> _cricketScoreList = [];
  bool _inProgress = false;

  Future<void> _getScoreData() async {
    _inProgress = true;
    setState(() {});
    _cricketScoreList.clear();
    final QuerySnapshot snapshot =
        await _firebaseFirestore.collection('cricket').get();
    for (DocumentSnapshot doc in snapshot.docs) {
      _cricketScoreList.add(
        CricketScore.fromJson(doc.id, doc.data() as Map<String, dynamic>),
      );
    }
    _inProgress = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getScoreData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Scores'),
      ),
      body: Visibility(
        visible: _inProgress == false,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: _cricketScoreList.length,
          itemBuilder: (context, index) {
            CricketScore cricketScore = _cricketScoreList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: _indicatorColor(cricketScore.isMatchRunning),
                radius: 8,
              ),
              title: Text(cricketScore.matchId),
              subtitle: Text(
                'Team 1: ${cricketScore.teamOneName}\nTeam 2: ${cricketScore.teamTwoName}',
              ),
              trailing: Text(
                '${cricketScore.teamOneScore}/${cricketScore.teamTwoScore}',
              ),
            );
          },
        ),
      ),
    );
  }

  Color _indicatorColor(bool isMatchRunning) {
    return isMatchRunning ? Colors.green : Colors.grey;
  }
}
