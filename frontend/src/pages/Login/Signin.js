import React, { useState } from "react";
import styled from "styled-components"; 

const Register = (props) => {
  return (
    <Form>
      <div className="Register">
        <h1>Registration</h1>
        <RegisterForm> 
          <input
            type="text"
            placeholder="Username..."
          />
          <input
            type="text"
            placeholder="Email..."
          />
          <input
            type="text"
            placeholder="Link Donation..."
          />
          <input
            type="password"
            placeholder="Password..."
          />
          <button>Register</button>
        </RegisterForm>
      </div>
    </Form>
  );
}

const Form = styled.div`
  width: 100%;
  height: 450px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`;

const RegisterForm = styled.div`
  display: flex;
  flex-direction: column;
  margin: 10px;
  width: 400px;
  height: 150px;
  font-size: 20px;
`;

export default Register;
