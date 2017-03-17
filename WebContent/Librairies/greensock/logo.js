CSSPlugin.defaultTransformPerspective = 400;
var playBtn = $("#playBtn"),
    pauseBtn = $("#pauseBtn"),
    resumeBtn = $("#resumeBtn"),
    time = $("#time"),
    progress = $("#progress"),
    timeScale = $("#timeScale"),
    buttons = [playBtn, pauseBtn, resumeBtn],
    //tagline = new SplitText(".tagline")
tl = new TimelineLite({onUpdate:updateSlider, delay:0.4});

TweenLite.set("#MainTitle", {visibility:"visible"})

tl.from("#timeline_txt", 0.2, {y:-30, opacity:0})
  .from("#lite_txt", 0.2, {y:30, opacity:0}, "-=0.3")
  .from("#tagdesc", 0.5, {y:30, opacity:0}, "0.2")
  .from("#tagdesc0", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc1", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc2", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc3", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc4", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc5", 0.2, {x:-30, opacity:0}, "0.2")
  .from("#tagdesc6", 0.2, {x:-30, opacity:0}, "0.2")
  //.staggerFrom(tagline.chars, 0.3, {rotation:90, scale:0, y:-60, ease:Back.easeOut}, 0.05)
  //.staggerFrom("li", 0.2, {y:20, opacity:0}, 0.1)
  .from("#timeline1_txt", 0.5, {x:-180, opacity:0})
  .from("#lite1_txt", 0.2, {y:70, opacity:0}, "-=0.1")
  .from("#logoTAS", 0.2, {y:70, opacity:0}, "-=0.1")

// controls

$( "#progressSlider" ).slider({
  range: false,
  min: 0,
  max: 1,
  step:.001,
  slide: function ( event, ui ) {
    tl.progress( ui.value ).pause();
  }
});	

function updateSlider() {
  $("#progressSlider").slider("value", tl.progress());
  time.html(tl.time().toFixed(2));
  progress.html(tl.progress().toFixed(2))
} 

$("#playBtn").on("click", function(){
  //Play the timeline forward from the current position.
  //If tween is complete, play() will have no effect
  tl.play();
});

$("#pauseBtn").on("click", function(){
  tl.pause();
});

$("#resumeBtn").on("click", function(){
  //Resume playback in current direction.
  tl.resume();
});

$("#reverseBtn").on("click", function(){
  tl.reverse();
});

$("#restartBtn").on("click", function(){
  tl.restart();
});



$("#timeScaleSlider").slider({
  value:1,
  range: false,
  min: 0.25,
  max: 4,
  step:0.25,
  slide: function ( event, ui ) {
    tl.timeScale(ui.value );
    timeScale.html(ui.value)
  },
  change: function() {
    if(tl.paused()){
      tl.resume();
    }
    
    if (tl.progress() == 1){
      tl.restart();
    }
    
    if(tl.reversed() && tl.progress() === 0){
      tl.restart();
    }
  }
  
});	

