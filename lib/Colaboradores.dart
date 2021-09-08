import 'package:flutter/material.dart';

class Colaboradores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5F11),
        title: Center(
          child: SizedBox(
            width: 200,
            child: Text(
              "Colaboradores",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Samuel Baker'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Pedro Afonso'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://exame.com/wp-content/uploads/2016/12/fisher.jpg'),
              ),
              title: Text('Amanda'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://exame.com/wp-content/uploads/2016/12/fisher.jpg'),
              ),
              title: Text('Stella'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Guilherme'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Ezequiel'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://exame.com/wp-content/uploads/2016/12/fisher.jpg'),
              ),
              title: Text('Elaine'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://exame.com/wp-content/uploads/2016/12/fisher.jpg'),
              ),
              title: Text('Ana'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Leo'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Carlos'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Dioni'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Felipe'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://exame.com/wp-content/uploads/2016/12/fisher.jpg'),
              ),
              title: Text('Hellen'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Marcos'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Arthur'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('João'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Jonatas'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Thiago'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Rodrigo'),
            ),
            const ListTile(
              leading: ImageIcon(
                NetworkImage(
                    'https://media.timeout.com/images/101902661/750/562/image.jpg'),
              ),
              title: Text('Gabriel'),
            ),
          ],
        ),
      ),
    );
  }
}
