import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
   constructor() {
      super();
      this.state = { searchTerm: 'golden retriever' };
      this.handleChange = this.handleChange.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this);
   }

   componentDidMount() {
      this.props.fetchSearchGiphys('golden+retriever');
   }

   handleChange(e) {
      this.setState({ searchTerm: e.target.value });
   }

   handleSubmit(e) {
      e.preventDefault();
      let searchTerm = this.state.searchTerm.split(' ').join('+');
      this.props.fetchSearchGiphys(searchTerm);
   }

   render() {
      let { giphys } = this.props;

      return (
         <div>
            <form className="search-bar">
               <input
                  type="text"
                  value={this.state.searchTerm}
                  onChange={this.handleChange}
               />
               <input
                  type="submit"
                  onClick={this.handleSubmit}
                  value="Search"
               />
            </form>
            <GiphysIndex giphys={giphys} />
         </div>
      );
   }
}

export default GiphysSearch;
