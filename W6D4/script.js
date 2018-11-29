document.addEventListener('DOMContentLoaded', () => {
   // toggling restaurants

   const toggleLi = (e) => {
      const li = e.target;
      if (li.className === 'visited') {
         li.className = '';
      } else {
         li.className = 'visited';
      }
   };

   document.querySelectorAll('#restaurants li').forEach((li) => {
      li.addEventListener('click', toggleLi);
   });

   // adding SF places as list items
   const places = document.getElementById('sf-places');
   const favForm = document.getElementById('fav-place-form');
   favForm.addEventListener('submit', (e) => {
      e.preventDefault();
      let inputBox = e.target[0];
      let li = document.createElement('li');
      li.textContent = inputBox.value;
      places.appendChild(li);
      inputBox.value = '';
   });
   // --- your code here!
   // adding new photos
   const dogPhotoList = document.getElementById('dog-photos-list');
   const btn = document.getElementById('add-new-dog-photo');
   btn.addEventListener('click', () => {
      fetch('https://dog.ceo/api/breeds/image/random')
         .then((res) => res.json())
         .then((data) => {
            let li = document.createElement('li');
            let img = document.createElement('img');
            img.setAttribute('src', data.message);
            li.appendChild(img);
            dogPhotoList.appendChild(li);
         });
   });

   // --- your code here!
});
