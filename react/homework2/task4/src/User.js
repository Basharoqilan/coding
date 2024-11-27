import React, { useState } from 'react';

function User() {
  const [name, setName] = useState('');  
  const [email, setEmail] = useState('');  

  const handleSubmit = (event) => {
    event.preventDefault();  
  };

  return (
    <div>
      <h1>Update User Information</h1>
      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="name">Name: </label>
          <input
            type="text"
            id="name"
            value={name}
            onChange={(e) => setName(e.target.value)}  
            required
          />
        </div>

        <div>
          <label htmlFor="email">Email: </label>
          <input
            type="email"
            id="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}  
            required
          />
        </div>

        <button type="submit">Submit</button>
      </form>

  
        <div>
          <h2>User Information</h2>
          <p><strong>Name:</strong> {name}</p>
          <p><strong>Email:</strong> {email}</p>
        </div>
    
    </div>
  );
}

export default User;
