import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelInteractionSidebar extends StatelessWidget {
  const ReelInteractionSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildInteractionButton(Icons.favorite_outline, '1.2M'),
            SizedBox(height: 16),
            _buildInteractionButton(FontAwesomeIcons.comment, '1.2K'),
            SizedBox(height: 16),
            _buildInteractionButton(FontAwesomeIcons.paperPlane, 'Send'),
            SizedBox(height: 16),
            _buildInteractionButton(Icons.more_horiz, ''),
            SizedBox(height: 16),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                border: Border.all( width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://picsum.photos/100',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInteractionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon,  size: 28 , color: Colors.white,),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle( fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}

