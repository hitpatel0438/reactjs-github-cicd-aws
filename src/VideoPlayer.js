// VideoPlayer.js
import React from 'react';

const VideoPlayer = ({ videoUrl }) => {
    return (
        <div className="video-container">
            <iframe
                width="800"
                height="600"
                src={videoUrl}
                title="Video player"
                frameBorder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowFullScreen
                allowTransparency
                scrolling = "no"
            ></iframe>
        </div>
    );
};

export default VideoPlayer;