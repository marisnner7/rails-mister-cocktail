import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Order a Potion", "We love mystery"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
