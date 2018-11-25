document.addEventListener('DOMContentLoaded', function() {
  let canvas = document.getElementById('mycanvas');
  let ctx = canvas.getContext('2d');
  ctx.fillStyle = 'rgb(255,0,0)';
  ctx.fillRect(10, 10, 55, 50);
  ctx.beginPath();
  ctx.arc(50, 50, 20, 0, 10);
  ctx.strokeStyle = 'blue';
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = 'rgb(255,0,255)';
  ctx.fill();
});
