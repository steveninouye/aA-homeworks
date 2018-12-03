export const fetchSearchGiphys = (searchTerm) => {
   return new Promise((res, rej) => {
      fetch(
         `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=dc6zaTOxFJmzC&limit=2`
      )
         .then((response) => response.json())
         .then((data) => res(data))
         .catch((err) => rej(err));
   });
};
