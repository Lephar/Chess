class Pawn extends Piece
{
  Pawn(int i, int j, boolean t)
  {
    super(i, j, t);
    icon = loadImage(t ? "pawn1.png" : "pawn0.png");
    icon.resize(size, size);
  }
  
  boolean possible(int u, int w)
  {
    int z = team ? -1 : 1;
   
    if(exists && (((u==x && w==y+z && !square[u][w].ocp) || (!moved && u==x && w==y+z*2 && !square[u][w].ocp && !square[x][y+z].ocp)) ||
     ((u==x-1 && w==y+z && square[u][w].ocp && team != square[u][w].piece.team) || (u==x+1 && w==y+z && square[u][w].ocp && team != square[u][w].piece.team))))
      return true;
    else
      return false;
  }
}
