import processing.video.*;
Movie movie;

void setup()
{
  size(640,480);
  movie =new Movie(this,"launch2.mp4");
  movie.loop();
}//要在我的硬碟的目錄裡面,開launch2.mp4檔
void draw()
{
  image(movie,0,0);
}
void movieEvent(Movie m)
{
  m.read();
}
