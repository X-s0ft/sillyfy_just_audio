import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

final testmap = <String, AudioSource>{
  '2003 Toyota Corolla - 2010 Toyota Corolla': AudioSource.asset(
    'lib/resources/music/2003 Toyota Corolla - 2010 Toyota Corolla.mp3',
    tag: MediaItem(id: '1', title: '2003 Toyota Corolla - 2010 Toyota Corolla'),
  ),
  'Saeki Chizu Shiki - Track 8': AudioSource.asset(
    'lib/resources/music/Basic Care Recommendation - Saeki Chizu Shiki - Track 8.mp3',

    tag: MediaItem(id: '2', title: 'Saeki Chizu Shiki - Track 8'),
  ),
  'Bust A Move DS - Puzzle Mode Round 4': AudioSource.asset(
    'lib/resources/music/Bust-A-Move DS - Puzzle Mode Round 4.mp3',
    tag: MediaItem(id: '3', title: 'Bust A Move DS - Puzzle Mode Round 4'),
  ),
  'Calum Bowen - Lovely Introduction': AudioSource.asset(
    'lib/resources/music/Calum Bowen - Lovely Introduction_(Mp3Bullet.ru).mp3',

    tag: MediaItem(id: '4', title: 'Calum Bowen - Lovely Introduction'),
  ),
  'EarthBound - Buy Somethin Will Ya': AudioSource.asset(
    'lib/resources/music/EarthBound - Buy Somethin Will Ya.mp3',
    tag: MediaItem(id: '5', title: 'EarthBound - Buy Somethin Will Ya'),
  ),
  'Franco Micalizzi - Flying to Miami': AudioSource.asset(
    'lib/resources/music/Franco_Micalizzi_-_Flying_to_Miami_63982949.mp3',
    tag: MediaItem(id: '6', title: 'Franco Micalizzi - Flying to Miami'),
  ),
  'GroovyDominoes52 - bee': AudioSource.asset(
    'lib/resources/music/GroovyDominoes52 - bee.mp3',
    tag: MediaItem(id: '7', title: 'GroovyDominoes52 - bee'),
  ),
  'In love with a ghost - chilling at nemus place': AudioSource.asset(
    'lib/resources/music/in love with a ghost - chilling at nemus place.mp3',
    tag: MediaItem(
      id: '8',
      title: 'In love with a ghost - chilling at nemus place',
    ),
  ),
  'j1gggs - the cat from ipanema': AudioSource.asset(
    'lib/resources/music/j1gggs - the cat from ipanema.mp3',
    tag: MediaItem(id: '9', title: 'j1gggs - the cat from ipanema'),
  ),
  'Kassin - Bobby in wanderleyland (Michiko to Hatchin OST)': AudioSource.asset(
    'lib/resources/music/Kassin - Bobby in wanderleyland (Michiko to Hatchin OST).mp3',
    tag: MediaItem(
      id: '10',
      title: 'Kassin - Bobby in wanderleyland (Michiko to Hatchin OST)',
    ),
  ),
  'Kirby Soundtrack - Dream Land Theme Song': AudioSource.asset(
    'lib/resources/music/Kirby Soundtrack - Dream Land Theme Song.mp3',
    tag: MediaItem(id: '11', title: 'Kirby Soundtrack - Dream Land Theme Song'),
  ),
  'Kirby Super Star - Dynablade Overworld': AudioSource.asset(
    'lib/resources/music/Kirby Super Star - Dynablade Overworld.mp3',
    tag: MediaItem(id: '12', title: 'Kirby Super Star - Dynablade Overworld'),
  ),
  'Kirbys Dream Course OST - Castles of Cake': AudioSource.asset(
    'lib/resources/music/Kirbys Dream Course OST - Castles of Cake.mp3',
    tag: MediaItem(
      id: '13',
      title: 'Kirbys Dream Course OST - Castles of Cake',
    ),
  ),
  'Koji Kondo - Super Mario world 2 Yoshis island Athletic Theme':
      AudioSource.asset(
        'lib/resources/music/Koji Kondo - Super Mario world 2 Yoshis island Athletic Theme.mp3',
        tag: MediaItem(
          id: '14',
          title:
              'Koji Kondo - Super Mario world 2 Yoshis island Athletic Theme',
        ),
      ),
  'Kotoba no Puzzle Mojipittan DS - Bedtime Puzzler': AudioSource.asset(
    'lib/resources/music/Kotoba no Puzzle_ Mojipittan DS - Bedtime Puzzler.mp3',

    tag: MediaItem(
      id: '15',
      title: 'Kotoba no Puzzle Mojipittan DS - Bedtime Puzzler',
    ),
  ),
  'Leon - frog summer': AudioSource.asset(
    'lib/resources/music/leon - frog summer.mp3',
    tag: MediaItem(id: '16', title: 'Leon - frog summer'),
  ),
  'Lobby - Poinpy': AudioSource.asset(
    'lib/resources/music/Lobby - Poinpy.mp3',
    tag: MediaItem(id: '17', title: 'Lobby - Poinpy'),
  ),
  'lvusm - solitude i think': AudioSource.asset(
    'lib/resources/music/lvusm - solitude i think.mp3',
    tag: MediaItem(id: '18', title: 'lvusm - solitude i think'),
  ),
  'NAPCAST - Seaside Summer': AudioSource.asset(
    'lib/resources/music/NAPCAST - Seaside Summer.mp3',
    tag: MediaItem(id: '19', title: 'NAPCAST - Seaside Summer'),
  ),
  'nobonoko - Picobossa': AudioSource.asset(
    'lib/resources/music/nobonoko - Picobossa.mp3',
    tag: MediaItem(id: '20', title: 'nobonoko - Picobossa'),
  ),
  'OMORI - Space Boyfriends Tape - I Want Nothing More': AudioSource.asset(
    'lib/resources/music/OMORI - Space Boyfriends Tape - I Want Nothing More.mp3',

    tag: MediaItem(
      id: '21',
      title: 'OMORI - Space Boyfriends Tape - I Want Nothing More',
    ),
  ),
  'OMORI - 100 Sunny': AudioSource.asset(
    'lib/resources/music/OMORI_-_100_Sunny.mp3',
    tag: MediaItem(id: '22', title: 'OMORI - 100 Sunny'),
  ),
  'Pedro Silva - Battle! - Greens': AudioSource.asset(
    'lib/resources/music/Pedro Silva - Battle! - Greens.mp3',
    tag: MediaItem(id: '23', title: 'Pedro Silva - Battle! - Greens'),
  ),
  'Pedro Silva - Streetlamp Stroll': AudioSource.asset(
    'lib/resources/music/Pedro Silva - Streetlamp Stroll.mp3',
    tag: MediaItem(id: '24', title: 'Pedro Silva - Streetlamp Stroll'),
  ),
  'Pedro Silva - Ooblets': AudioSource.asset(
    'lib/resources/music/Pedro_Silva_-_Ooblets.mp3',
    tag: MediaItem(id: '25', title: 'Pedro Silva - Ooblets'),
  ),
  'Pikuniku - Mothers Lullaby': AudioSource.asset(
    'lib/resources/music/Pikuniku - Mothers Lullaby.mp3',
    tag: MediaItem(id: '26', title: 'Pikuniku - Mothers Lullaby'),
  ),
  'Pikuniku - The Mountain Village': AudioSource.asset(
    'lib/resources/music/Pikuniku_-_The_Mountain_Village.mp3',
    tag: MediaItem(id: '27', title: 'Pikuniku - The Mountain Village'),
  ),
  'Pokemon Black and White OST - Wi-Fi Connection': AudioSource.asset(
    'lib/resources/music/Pokemon Black and White OST - Wi-Fi Connection.mp3',
    tag: MediaItem(
      id: '28',
      title: 'Pokemon Black and White OST - Wi-Fi Connection',
    ),
  ),
  'Rhythm Heaven - Tunnel': AudioSource.asset(
    'lib/resources/music/Rhythm Heaven - Tunnel.mp3',
    tag: MediaItem(id: '29', title: 'Rhythm Heaven - Tunnel'),
  ),
  'Rosario + Vampire Tanabata no Miss Youkai Gakuen - Map': AudioSource.asset(
    'lib/resources/music/Rosario + Vampire_ Tanabata no Miss Youkai Gakuen - Map.mp3',
    tag: MediaItem(
      id: '30',
      title: 'Rosario + Vampire Tanabata no Miss Youkai Gakuen - Map',
    ),
  ),
};

class _PlaylistScreenState extends State<PlaylistScreen> {
  final player = AudioPlayer();
  var titlekey = testmap.keys.toList();

  void _onPressed() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [Text('Плейлисты'), SizedBox.square(child: Text('data'),)]), // для плейлистов

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 200),
                Text('List of all music'),
                player.playing
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            player.seekToPrevious();
                          },
                          icon: Icon(Icons.skip_previous),
                        ),

                        IconButton(
                          onPressed: () {
                            player.playing ? player.pause() : player.play();
                          },
                          icon: Icon(Icons.play_arrow),
                        ),

                        IconButton(
                          onPressed: () {
                            player.seekToNext();
                          },
                          icon: Icon(Icons.skip_next),
                        ),
                      ],
                    )
                    : Text(''),
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 1,
                  child: ListView.builder(
                    itemCount: testmap.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: [Flexible(child: Text(titlekey[index]))],
                        ),
                        onTap: () {
                          var listitem = testmap.values.toList();
                          player.setAudioSources(
                            listitem,
                            initialIndex: index,
                            initialPosition: Duration.zero,
                            shuffleOrder: DefaultShuffleOrder(),
                          );
                          player.setLoopMode(LoopMode.all);
                          player.setVolume(0.3);
                          player.play();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
