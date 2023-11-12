const logoBtn = document.querySelector('#logo-btn');
const homeBtn = document.querySelector('#home-btn');
const benefitsBtn = document.querySelector('#benefits-btn');
const resourcesBtn = document.querySelector('#resources-btn');
const contactsBtn = document.querySelector('#contacts-btn');

const modalContainer = document.querySelector('#modal-container');
const overlay = document.querySelector('.overlay');
const openModalBtn = document.querySelector('#login-btn');
const closeModalBtn = document.querySelector('#close-modal-btn');

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
    modalContainer.classList.remove('hidden');
    overlay.classList.remove('hidden');
});

closeModalBtn.addEventListener('click', () => {
    modalContainer.classList.add('hidden');
    overlay.classList.add('hidden');
});