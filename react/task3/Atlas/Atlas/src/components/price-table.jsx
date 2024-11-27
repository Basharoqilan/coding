import React from 'react';

const Price = ({ plans }) => {
  return (
    <div className="container my-5 py-2" id="price-table">
      <h2 className="text-center font-weight-bold d-block mb-3">Check our pricing</h2>
      <div className="row">
        {plans.map((plan, index) => (
          <div
            key={index}
            data-aos={index === 1 ? 'fade-up' : (index === 0 ? 'fade-right' : 'fade-left')}
            data-aos-delay="200"
            data-aos-duration="1000"
            data-aos-once="true"
            className={`col-md-4 text-center py-4 mt-5 ${index === 1 ? 'rounded' : ''}`}
            id={`price-table__${plan.name.toLowerCase()}`}
          >
            <h4 className="my-4">{plan.name}</h4>
            <p className="font-weight-bold">$ <span className="display-2 font-weight-bold">{plan.price}</span> / MO.</p>
            <ul className="list-unstyled">
              {plan.features.map((feature, featureIndex) => (
                <li key={featureIndex}>{feature}</li>
              ))}
            </ul>
            <a href="#" className={`btn my-4 font-weight-bold atlas-cta ${plan.name === 'PREMIUM' ? 'cta-green' : 'cta-ghost'}`}>
              Get Free
            </a>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Price;
