import React from 'react';
import ReactDOM from 'react-dom/client';
import './styles/css/bootstrap.min.css'; // Bootstrap CSS
import './styles/css/custom.css';        // Custom CSS
import './styles/font-awesome-4.7.0/css/font-awesome.min.css'; // Font Awesome
import 'aos/dist/aos.css';  // Import AOS CSS
import AOS from 'aos';      // Import AOS JavaScript
import reportWebVitals from './reportWebVitals';

// Import your components
import Banner from './components/banner';
import Threeblock from './components/three-block';
import Feature from './components/feature';
import Price from './components/price-table';
import Client from './components/client';
import Contact from './components/contact';
import Copyright from './components/copyright';

// Initialize AOS
AOS.init();

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Banner title="Welcome to Our Website" />
    <Threeblock />
    <Feature />
    <Price 
      plans={[
        { name: 'STARTUP', price: 0, features: ['Up to 5 Documents', 'Up to 3 Reviews', '5 team Members', 'Limited Support'] },
        { name: 'PREMIUM', price: 10, features: ['Up to 15 Documents', 'Up to 10 Reviews', '25 team Members', 'Limited Support'] },
        { name: 'PROFESSIONAL', price: 30, features: ['Unlimited Documents', 'Unlimited Reviews', 'Unlimited Members', 'Unlimited Support'] }
      ]}
    />
    <Client />
    <Contact />
    <Copyright />
  </React.StrictMode>
);

// Performance measurement function
reportWebVitals();
