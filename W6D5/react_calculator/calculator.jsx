import React from 'react';

class Calculator extends React.Component {
   constructor(props) {
      super(props);
      this.state = { num1: '', num2: '', result: '' };
      this.setNum1 = this.setNum1.bind(this);
      this.setNum2 = this.setNum2.bind(this);
      this.add = this.add.bind(this);
      this.subtract = this.subtract.bind(this);
      this.multiply = this.multiply.bind(this);
      this.divide = this.divide.bind(this);
   }

   //your code here
   add(e) {
      e.preventDefault();
      let res = parseInt(this.state.num1) + parseInt(this.state.num2);
      this.setState({ result: res }, this.resetNums);
   }

   subtract(e) {
      e.preventDefault();
      let res = parseInt(this.state.num1) - parseInt(this.state.num2);
      this.setState({ result: res }, this.resetNums);
   }

   multiply(e) {
      e.preventDefault();
      let res = parseInt(this.state.num1) * parseInt(this.state.num2);
      this.setState({ result: res }, this.resetNums);
   }

   divide(e) {
      e.preventDefault();
      let res = parseInt(this.state.num1) / parseInt(this.state.num2);
      this.setState({ result: res }, this.resetNums);
   }

   setNum1(e) {
      this.setState({ num1: e.target.value });
   }

   setNum2(e) {
      this.setState({ num2: e.target.value });
   }

   resetNums() {
      this.setState({ num1: '', num2: '' });
   }

   render() {
      return (
         <div>
            <h1>{this.state.result}</h1>
            <input
               type="text"
               name="num1"
               onChange={this.setNum1}
               value={this.state.num1}
            />
            <input
               type="text"
               name="num2"
               onChange={this.setNum2}
               value={this.state.num2}
            />
            <input type="submit" onClick={this.add} value="+" />

            <input type="submit" onClick={this.subtract} value="-" />

            <input type="submit" onClick={this.multiply} value="*" />

            <input type="submit" onClick={this.divide} value="/" />
         </div>
      );
   }
}

export default Calculator;
