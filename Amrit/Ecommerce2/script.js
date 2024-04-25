const yourFirstVariable = 10;   // camel case 
const your_first_variable = 10;     // snake case
const YOUR_FIRST_VARIABLE = 10;     // constant case
const yourfirstvariable = 10;       
const YourFirstVariable = 10;   //Pascal case


// const title = document.getElementById('main-heading');
// console.log(title);
// console.log(typeof title);

// const className = document.getElementsByClassName('list-items');     // return type is array
// console.log(className);
// console.log(typeof className);

// const tagName = document.getElementsByTagName('li');
// console.log(tagName);
// console.log(typeof tagName);

// const querySelc = document.querySelector('.list-items');
// console.log(querySelc);
// console.log(typeof querySelc);

// const querySelcAll = document.querySelectorAll('.list-items');   // return type is NodeList (some kind of array) 
// console.log(querySelcAll);
// console.log(typeof querySelcAll);

// const listItems = document.querySelectorAll('.list-items');
//     //title[i].style.color = 'yellowgreen';     // this is called inline css style in js.
// for(let i = 0; i < listItems.length; i++){
//     listItems[i].style.color = 'yellowgreen';       // to apply css style in all class(.list-items)
//     listItems[i].style.fontSize = '1.5rem';                                            // it will not actually work. So to make it happen 
//                                                 // we need to loop through every element of title variable
//                                                 // because its return type is NodeList (some kind of array)
// }

// Creating elements

const ul = document.querySelector('ul');
const li = document.createElement('li');

// Adding Elements
ul.append(li);

// Modifying the text. Three ways to set text content of an element

// const firstListItem = document.querySelector('.list-items');
// console.log(firstListItem.innerText);
// console.log(firstListItem.textContent);
// console.log(firstListItem.innerHTML);

li.innerText = "X-men";
li.classList.remove('list-items');

console.log(li.classList.contains('list-items'));

//Remove elements
li.remove();

function sample(){
    const ul = document.querySelectorAll('.list-items');
    for(let i = 0; i < ul.length; i++){
        ul[i].style.backgroundColor = 'black';
        ul[i].style.color = 'yellowgreen';
        ul[i].style.fontSize = '1.5rem'
    }
}