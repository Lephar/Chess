class Knight extends Piece
{
  Knight(int i, int j, boolean t)
  {
    super(i, j, t);
    icon = loadImage(t ? "knight1.png" : "knight0.png");
    icon.resize(size,size);
  }
  
  int value()
  {
    return 3 * super.value();
  }
  
  boolean possible(int u, int w)
  {
    int dmin = min(abs(u-x), abs(w-y)), dmax = max(abs(u-x), abs(w-y));
    if(exists && dmin == 1 && dmax == 2 && (!square[u][w].ocp || (square[u][w].ocp && team != square[u][w].piece.team)))
      return true;
    else
      return false;
  }
}
