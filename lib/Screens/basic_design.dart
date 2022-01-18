import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        const Title(),
        const ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Aliqua sint veniam ad dolore sunt nulla esse anim aliquip deserunt. Proident pariatur do laboris et irure culpa irure reprehenderit ipsum in sit mollit dolore. Commodo sit occaecat non in voluptate est fugiat deserunt exercitation. Ut consequat mollit ipsum velit labore quis sint minim enim.'),
        )
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomButton(
            icono: Icons.call,
            texto: 'CALL',
          ),
          CustomButton(
            icono: Icons.send,
            texto: 'ROUTE',
          ),
          CustomButton(
            icono: Icons.share,
            texto: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final String texto;
  const CustomButton({Key? key, required this.icono, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.blue[400]),
        const SizedBox(height: 5),
        Text(
          texto,
          style: TextStyle(color: Colors.blue[400]),
        ),
      ],
    );
  }
}
