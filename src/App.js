import logo from './logo.svg';
import './App.css';
import React from 'react';
import VideoPlayer from './VideoPlayer';

const App = () => {
  return (
      <div className="App">
          <h1>My Video Player</h1>
          <VideoPlayer videoUrl="https://shavetape.cash/v/VaA3We4xbltKBgZ/Men.In.Black.International.2019.1080p.10Bit.BluRay.Hindi.English.ESubs.MoviesHeist.Org.mkv.mp4" />
          <VideoPlayer videoUrl="https://shavetape.cash/v/yPa9x1mlW3C18aV/Fifty.Shades.Of.Grey.2015.1080p.10Bit.BRRip.Hindi.English.Esubs.Moviesmod.Com.mkv.mp4" />
      </div>
  );
};

export default App;