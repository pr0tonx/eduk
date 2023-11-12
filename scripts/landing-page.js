const logoBtn = document.querySelector('#logo-btn');
const homeBtn = document.querySelector('#home-btn');
const benefitsBtn = document.querySelector('#benefits-btn');
const resourcesBtn = document.querySelector('#resources-btn');
const contactsBtn = document.querySelector('#contacts-btn');

const modalContainer = document.querySelector('#modal-container');
const overlay = document.querySelector('.overlay');
const openModalBtn = document.querySelector('#login-btn');
const closeModalBtn = document.querySelector('#close-btn');

const forgotPasswordBtn = document.querySelector('#forgot-password');
const middleOne = document.querySelector('#middle-one');
const bottomOne = document.querySelector('#bottom-one');
const middleTwo = document.querySelector('#middle-two');
const bottomTwo = document.querySelector('#bottom-two');
const middleThree = document.querySelector('#middle-three');
const bottomThree = document.querySelector('#bottom-three');

const fpBackBtn = document.querySelector('#fp-back-btn');
const submitFpBtn = document.querySelector('#submit-fp-btn');

const fpSuccessBackBtn = document.querySelector('#fp-success-back-btn');

logoBtn.addEventListener('click', () => {
    window.scrollTo({behavior: 'smooth', top: 0});
});

homeBtn.addEventListener('click', () => {
    window.scrollTo({behavior: 'smooth', top: 0});
});

benefitsBtn.addEventListener('click', () => {
    document.querySelector('#benefits-section').scrollIntoView({behavior: 'smooth'});
});

resourcesBtn.addEventListener('click', () => {
    document.querySelector('#resources-section').scrollIntoView({behavior: 'smooth'});
});

contactsBtn.addEventListener('click', () => {
    document.querySelector('#contacts-section').scrollIntoView({behavior: 'smooth'});
});

openModalBtn.addEventListener('click', () => {
    window.scrollTo({behavior: 'smooth', top: 0});

    modalContainer.classList.remove('hidden');
    overlay.classList.remove('hidden');

    middleOne.classList.remove('hidden');
    middleTwo.classList.add('hidden');
    middleThree.classList.add('hidden');

    bottomOne.classList.remove('hidden');
    bottomTwo.classList.add('hidden');
    bottomThree.classList.add('hidden');
});

closeModalBtn.addEventListener('click', () => {
    modalContainer.classList.add('hidden');
    overlay.classList.add('hidden');
});

forgotPasswordBtn.addEventListener('click', () => {
    middleOne.classList.add('hidden');
    middleTwo.classList.remove('hidden');
    bottomOne.classList.add('hidden');
    bottomTwo.classList.remove('hidden');
});

fpBackBtn.addEventListener('click', () => {
    middleTwo.classList.add('hidden');
    middleOne.classList.remove('hidden');
    bottomTwo.classList.add('hidden');
    bottomOne.classList.remove('hidden');
});

submitFpBtn.addEventListener('click', () => {
    middleTwo.classList.add('hidden');
    middleThree.classList.remove('hidden');
    bottomTwo.classList.add('hidden');
    bottomThree.classList.remove('hidden');
});

fpSuccessBackBtn.addEventListener('click', () => {
    middleThree.classList.add('hidden');
    middleOne.classList.remove('hidden');
    bottomThree.classList.add('hidden');
    bottomOne.classList.remove('hidden');
});

