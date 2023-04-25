enum Difficulty {
  easy(emptyTiles: 10),
  advanced(emptyTiles: 20);

  const Difficulty({required this.emptyTiles});

  final int emptyTiles;
}
