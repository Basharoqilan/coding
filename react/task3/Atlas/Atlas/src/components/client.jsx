import React from 'react';
import client1 from '../styles/img/client-1.png';
import client2 from '../styles/img/client-2.png';
import client3 from '../styles/img/client-3.png';
import client4 from '../styles/img/client-4.png';
import client5 from '../styles/img/client-5.png';
import client6 from '../styles/img/client-6.png';

const Client = () => {
  return (
    <div className="jumbotron jumbotron-fluid">
      <div className="container">
        <div className="row">
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client1} alt="Client 1" className="mx-auto d-block" />
          </div>
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client2} alt="Client 2" className="mx-auto d-block" />
          </div>
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client3} alt="Client 3" className="mx-auto d-block" />
          </div>
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client4} alt="Client 4" className="mx-auto d-block" />
          </div>
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client5} alt="Client 5" className="mx-auto d-block" />
          </div>
          <div className="col-sm-4 col-md-2 py-2 align-self-center">
            <img src={client6} alt="Client 6" className="mx-auto d-block" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Client;
