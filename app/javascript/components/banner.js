import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Order a Potion", "We love Magic"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
