const logoBtn = document.querySelector('#logo-btn');
const homeBtn = document.querySelector('#home-btn');
const benefitsBtn = document.querySelector('#benefits-btn');
const resourcesBtn = document.querySelector('#resources-btn');
const contactsBtn = document.querySelector('#contacts-btn');


logoBtn.addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({behavior: 'smooth', top: 0});
});

homeBtn.addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({behavior: 'smooth', top: 0});
});

benefitsBtn.addEventListener('click', (e) => {
    e.preventDefault();
    document.querySelector('#benefits-section').scrollIntoView({behavior: 'smooth'});
});

resourcesBtn.addEventListener('click', (e) => {
    e.preventDefault();
    document.querySelector('#resources-section').scrollIntoView({behavior: 'smooth'});
});

contactsBtn.addEventListener('click', (e) => {
    e.preventDefault();
    document.querySelector('#contacts-section').scrollIntoView({behavior: 'smooth'});
});