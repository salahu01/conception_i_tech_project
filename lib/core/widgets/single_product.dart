import 'package:conception_i_tech/core/widgets/button.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).hintColor, width: .3),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/placeholder.png',
                width: size.width * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  const Text(
                    'Versatile 28G Potters Clay Matt Roofing Sheet Per Metre..',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        'UGX 15,000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Text(
                        'UGX 15,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                        ),
                      ),
                      Spacer(),
                      KButton(
                        width: 38,
                        height: 35,
                        icon: Icons.edit_note_rounded,
                        iconColor: Colors.white,
                        background: Color.fromARGB(255, 122, 193, 155),
                      ),
                      Spacer(),
                      KButton(
                        icon: Icons.not_interested_rounded,
                        width: 38,
                        height: 35,
                        iconColor: Color.fromARGB(255, 255, 213, 213),
                        background: Color.fromARGB(255, 255, 64, 64),
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
