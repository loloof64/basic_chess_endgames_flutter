import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessWidget extends StatelessWidget
{
  final double dimension;

  const ChessWidget({Key key, @required this.dimension}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChessBoard(
      onMove: (move) {
        print(move);
      },
      onCheckMate: (color) {
        print(color);
      },
      onDraw: () {
        print("Draw");
      },
      size: dimension,
      enableUserMoves: true,
    );
  }
}