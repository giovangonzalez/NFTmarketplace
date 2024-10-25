import axios from 'axios';
import { API_URL } from '../constants';

export const isAuthenticated = async (token: string | null) => {
  if (!token) return false;
  try {
    const response = await axios.get(API_URL + '/api/userinfo', {
      headers: {
        Authorization: `Bearer ${token}`
      }
    });
    return response.status === 200;
  } catch (error) {
    return false;
  }
};
