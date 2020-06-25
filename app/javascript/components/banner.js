import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to Hogsmeade", "Order a drink"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
