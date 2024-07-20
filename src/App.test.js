import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  console.log(screen.debug()); // Output the rendered HTML for debugging
  const linkElement = screen.getByText(/learn react/i); // Regex to match the text
  expect(linkElement).toBeInTheDocument();
});