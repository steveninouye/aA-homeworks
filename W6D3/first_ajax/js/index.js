console.log('Hello from the JavaScript console!');

// Your AJAX request here
fetch(
   'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b'
)
   .then((res) => console.log(res))
   .catch((err) => console.log(err, 'not working'));

// Add another console log here, outside your AJAX request
console.log('outside of AJAX request');
